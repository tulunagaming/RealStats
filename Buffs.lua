-------------------------------------------------------------------------------
-- Feste Buffs auf Sekundärwerte: Fläschchen und Essen.
--
-- Fest heißt: feste Wertung und lange Laufzeit (20 Minuten bis 3 Stunden).
-- Procs und kurze Effekte fallen damit heraus -- sie ändern sich im Kampf
-- ohnehin laufend. Ebenso die Vantus-Rune (eine Woche, wirkt nur am Boss)
-- und Prozent-Buffs wie Himmelszorn, die keine Wertung geben.
--
-- Wie viel ein Buff gibt, steht in seinem Tooltip. So braucht neues Essen
-- keine Pflege. Fläschchen sind zusätzlich fest hinterlegt, falls der Tooltip
-- (noch) nichts liefert.
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local MIN_DURATION = 20 * 60
local MAX_DURATION = 3 * 60 * 60
local FLASK_DEFAULT = 165

-- Suchwörter je Wert, Englisch und Deutsch. Deutsch wird gebeugt
-- ("kritischen Trefferwert"), deshalb nur ein fester Wortteil.
local WORDS = {
    crit        = { "Critical Strike", "ritische" },
    haste       = { "Haste", "Tempo" },
    mastery     = { "Mastery", "Meisterschaft" },
    versatility = { "Versatility", "Vielseitigkeit" },
}

ns.STAT_WORDS = WORDS

-- Fläschchen aus Midnight: Zauber-ID -> Wert
local FLASKS = {
    [1235108] = "mastery",       -- Fläschchen der Magister
    [1235110] = "haste",         -- Fläschchen der Blutritter
    [1235111] = "crit",          -- Fläschchen der Zerschmetterten Sonne
    [1235057] = "versatility",   -- Fläschchen des thalassischen Widerstands
}

local function IsSecret(v)
    return issecretvalue and issecretvalue(v)
end

-- Größte Zahl in text[from, to]; Prozentwerte zählen nicht. Die größte, weil
-- im Satz auch die Laufzeit stehen kann ("1 Stunde lang um 165").
local function LargestNumber(text, from, to)
    local best, pos = nil, from
    while true do
        local s, e, digits = text:find("(%d[%d%.,]*%d)", pos)
        if not s then s, e, digits = text:find("(%d)", pos) end
        if not s or s > to then return best end
        local after = text:sub(e + 1, e + 2)
        if not after:find("^%s?%%") then
            local value = tonumber((digits:gsub("[%.,]", "")))
            if value and (not best or value > best) then best = value end
        end
        pos = e + 1
    end
end

-- Liest aus einer Tooltip-Zeile, welche Werte um wie viel steigen.
-- "Increases Critical Strike and Haste by 80" -> crit 80, haste 80
-- "Erhöht Euer Tempo um 80 und Eure Meisterschaft um 40" -> haste 80, mastery 40
-- Jeder Wert bekommt die Zahl aus seinem Abschnitt (bis zum nächsten Wert);
-- steht dort keine, gilt die des nächsten Abschnitts ("Crit und Tempo um 80").
function ns.ParseStatLine(text, out)
    out = out or {}
    if type(text) ~= "string" or IsSecret(text) then return out end

    local found = {}
    for key, words in pairs(WORDS) do
        for _, word in ipairs(words) do
            local at = text:find(word, 1, true)
            if at then
                table.insert(found, { key = key, from = at, to = at + #word })
                break
            end
        end
    end
    table.sort(found, function(a, b) return a.from < b.from end)

    local carry
    for i = #found, 1, -1 do
        local stop = found[i + 1] and found[i + 1].from - 1 or #text
        local value = LargestNumber(text, found[i].to, stop) or carry
        if value and value > 0 then
            out[found[i].key] = (out[found[i].key] or 0) + value
            carry = value
        end
    end
    return out
end

local function TooltipStats(auraInstanceID)
    local stats = {}
    if not (C_TooltipInfo and C_TooltipInfo.GetUnitBuffByAuraInstanceID) then return stats end
    local data = C_TooltipInfo.GetUnitBuffByAuraInstanceID("player", auraInstanceID, "HELPFUL")
    for i, line in ipairs(data and data.lines or {}) do
        if i > 1 then ns.ParseStatLine(line.leftText, stats) end   -- Zeile 1 ist der Name
    end
    return stats
end

-- /realstats buffs: zeigt im Chat, was RealStats in jedem Buff sieht.
function ns.DebugBuffs(print)
    if not (C_UnitAuras and C_UnitAuras.GetAuraDataByIndex) then
        print("C_UnitAuras.GetAuraDataByIndex fehlt"); return
    end
    if C_Secrets and C_Secrets.ShouldAurasBeSecret and C_Secrets.ShouldAurasBeSecret() then
        print("Auren sind gerade geheim (C_Secrets.ShouldAurasBeSecret)"); return
    end
    for index = 1, 40 do
        local aura = C_UnitAuras.GetAuraDataByIndex("player", index, "HELPFUL")
        if not aura then break end
        local function show(v)
            if IsSecret(v) then return "GEHEIM" end
            return tostring(v)
        end
        print(string.format("%d: %s id=%s dauer=%s points=%s", index, show(aura.name), show(aura.spellId),
            show(aura.duration), show(aura.points and aura.points[1])))
        if C_TooltipInfo and C_TooltipInfo.GetUnitBuffByAuraInstanceID then
            local data = C_TooltipInfo.GetUnitBuffByAuraInstanceID("player", aura.auraInstanceID, "HELPFUL")
            for i, line in ipairs(data and data.lines or {}) do
                if i > 1 and line.leftText and line.leftText ~= "" then
                    local found = ns.ParseStatLine(line.leftText)
                    local parts = {}
                    for k, v in pairs(found) do parts[#parts + 1] = k .. "=" .. v end
                    print("    \"" .. show(line.leftText) .. "\" -> " .. (#parts > 0 and table.concat(parts, ", ") or "-"))
                end
            end
        else
            print("    GetUnitBuffByAuraInstanceID fehlt")
        end
    end
end

-- { crit = n, haste = n, mastery = n, versatility = n, list = { {name, spellId, stat, amount}, ... } }
function ns.FixedBuffs()
    local result = { crit = 0, haste = 0, mastery = 0, versatility = 0, list = {} }
    if not (C_UnitAuras and C_UnitAuras.GetAuraDataByIndex) then return result end
    -- Sind Auren gerade geheim, ist schon das Lesen ein harter Fehler.
    if C_Secrets and C_Secrets.ShouldAurasBeSecret and C_Secrets.ShouldAurasBeSecret() then
        result.locked = true
        return result
    end

    for index = 1, 255 do
        local aura = C_UnitAuras.GetAuraDataByIndex("player", index, "HELPFUL")
        if not aura then break end
        local duration = aura.duration
        local flask = not IsSecret(aura.spellId) and FLASKS[aura.spellId]
        -- Fläschchen zählen immer: gleiche Fläschchen stapeln ihre Laufzeit
        -- (je +1 Stunde), die Laufzeitgrenze würde sie sonst aussortieren.
        local timed = not IsSecret(duration) and type(duration) == "number"
                      and duration >= MIN_DURATION and duration <= MAX_DURATION
        if flask or timed then
            local stats = TooltipStats(aura.auraInstanceID)
            if flask then
                local amount = stats[flask]
                if not amount then
                    local points = aura.points and aura.points[1]
                    amount = (type(points) == "number" and not IsSecret(points) and points > 0)
                             and points or FLASK_DEFAULT
                end
                stats = { [flask] = amount }
            end
            for key, amount in pairs(stats) do
                result[key] = result[key] + amount
                table.insert(result.list, { name = aura.name, spellId = aura.spellId, stat = key, amount = amount })
            end
        end
    end
    return result
end
