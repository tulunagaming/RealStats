-------------------------------------------------------------------------------
-- Ausrüstung optimieren: Welche Kombination aus angelegten Items und Items in
-- den Taschen bringt die Sekundärwerte am nächsten an die Ziele?
--
-- Regeln
--   * nur gebundene, für dich nutzbare Items (keine "Beim Anlegen gebunden"-Frage)
--   * höchstens 2 Runenverzierungen und nicht weniger, als du gerade trägst
--   * Set-Bonus bleibt: bei 4 Teilen mindestens 4, bei 2 mindestens 2
--   * Schmuckstücke, Nebenhand, Hemd und Wappenrock bleiben unberührt
--   * Werte je Item aus dem Item-Tooltip: Grundwerte, Edelsteine und
--     Verzauberungen wandern mit dem Item
--
-- Rangfolge: 1. wenig Abweichung außerhalb ±5 %  2. höheres Itemlevel
--            3. näher am Ziel  4. weniger Wechsel
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local KEYS = { "crit", "haste", "mastery", "versatility" }
local unpack = unpack or table.unpack
-- Werte, denen die Besten kaum Gewicht geben (Anteil unter 10 %), gelten als
-- unwichtig für die Spezialisierung: nur Orientierungsstrich, keine Schablone,
-- zählen nicht in der Ausrüstungs-Rechnung. Gilt für alle Klassen und Werte.
ns.GUIDE_SHARE = 0.10
function ns.IsGuide(share, key)
    return (share and share[key] or 0) < ns.GUIDE_SHARE
end
local BAND = 0.05
local PENALTY_TOLERANCE = 0.005          -- darunter gelten zwei Lösungen als gleich gut
local EXHAUSTIVE_LIMIT = 150000          -- mehr Kombinationen: schrittweise Suche

local SINGLE_SLOTS = {
    { slot = 1,  locs = { INVTYPE_HEAD = true },     armor = true },
    { slot = 2,  locs = { INVTYPE_NECK = true } },
    { slot = 3,  locs = { INVTYPE_SHOULDER = true }, armor = true },
    { slot = 5,  locs = { INVTYPE_CHEST = true, INVTYPE_ROBE = true }, armor = true },
    { slot = 6,  locs = { INVTYPE_WAIST = true },    armor = true },
    { slot = 7,  locs = { INVTYPE_LEGS = true },     armor = true },
    { slot = 8,  locs = { INVTYPE_FEET = true },     armor = true },
    { slot = 9,  locs = { INVTYPE_WRIST = true },    armor = true },
    { slot = 10, locs = { INVTYPE_HAND = true },     armor = true },
    { slot = 15, locs = { INVTYPE_CLOAK = true } },
    { slot = 16, locs = { INVTYPE_2HWEAPON = true }, twoHand = true },
}
local RING_SLOTS = { 11, 12 }

-------------------------------------------------------------------------------
-- Items lesen
-------------------------------------------------------------------------------
-- "+228 Kritischer Trefferwert", "+16 Tempo und +7 kritischer Trefferwert"
function ns.ParsePlusLine(text, out)
    out = out or {}
    if type(text) ~= "string" or (issecretvalue and issecretvalue(text)) then return out end
    for digits, rest in text:gmatch("%+%s*(%d[%d%.,]*)%s*([^%+]*)") do
        local value = tonumber((digits:gsub("[%.,]", "")))
        local best, bestKey
        for key, words in pairs(ns.STAT_WORDS or {}) do
            for _, word in ipairs(words) do
                local at = rest:find(word, 1, true)
                if at and (not best or at < best) then best, bestKey = at, key end
            end
        end
        -- nur direkt folgende Wörter zählen ("+120 Stärke & Tempo" wäre kein Tempo)
        if bestKey and value and best <= 3 then
            out[bestKey] = (out[bestKey] or 0) + value
        end
    end
    return out
end

local function Describe(link)
    if not link then return nil end
    local id, _, _, equipLoc, _, classID, subclassID = C_Item.GetItemInfoInstant(link)
    if not id then return nil end
    local e = { link = link, id = id, equipLoc = equipLoc, classID = classID, subclassID = subclassID,
                ilvl = C_Item.GetDetailedItemLevelInfo(link) or 0, embellished = false,
                crit = 0, haste = 0, mastery = 0, versatility = 0 }
    if C_Item.GetItemInfo then
        local info = { C_Item.GetItemInfo(link) }
        e.minLevel, e.setID = info[5], info[16]
    end

    local stats = {}
    local data = C_TooltipInfo and C_TooltipInfo.GetHyperlink and C_TooltipInfo.GetHyperlink(link)
    for _, line in ipairs(data and data.lines or {}) do
        local text = line.leftText
        if type(text) == "string" then
            if text:find("Embellished", 1, true) or text:find("Verziert", 1, true) then e.embellished = true end
            ns.ParsePlusLine(text, stats)
        end
    end
    local raw = C_Item.GetItemStats(link) or {}
    if not next(stats) then             -- Tooltip leer (noch nicht geladen): Grundwerte des Items
        stats = { crit = raw.ITEM_MOD_CRIT_RATING_SHORT, haste = raw.ITEM_MOD_HASTE_RATING_SHORT,
                  mastery = raw.ITEM_MOD_MASTERY_RATING_SHORT, versatility = raw.ITEM_MOD_VERSATILITY }
    end
    for _, k in ipairs(KEYS) do e[k] = stats[k] or 0 end

    local sockets = 0
    for field, count in pairs(raw) do
        if type(field) == "string" and field:find("^EMPTY_SOCKET_") then sockets = sockets + count end
    end
    local fields = { link:match("item:(%d+):([^:]*):([^:]*):([^:]*):([^:]*):([^:]*)") }
    local gems = 0
    for i = 3, 6 do if fields[i] and fields[i] ~= "" then gems = gems + 1 end end
    e.emptySockets = math.max(0, sockets - gems)
    e.enchanted = fields[2] ~= nil and fields[2] ~= ""
    return e
end
ns.DescribeItem = Describe

local function IsBound(bag, slot)
    if not (C_Item.IsBound and ItemLocation and ItemLocation.CreateFromBagAndSlot) then return true end
    local ok, bound = pcall(C_Item.IsBound, ItemLocation:CreateFromBagAndSlot(bag, slot))
    return not ok or bound
end

local function CanUse(e, armorSubclass)
    if C_PlayerInfo and C_PlayerInfo.CanUseItem and not C_PlayerInfo.CanUseItem(e.id) then return false end
    if e.minLevel and UnitLevel and e.minLevel > (UnitLevel("player") or 0) then return false end
    return true
end

-- { equipped = { [slot] = item }, bags = { item, ... }, armorSubclass = n }
function ns.CollectGear()
    local gear = { equipped = {}, bags = {} }
    for _, s in ipairs(SINGLE_SLOTS) do
        gear.equipped[s.slot] = Describe(GetInventoryItemLink("player", s.slot))
    end
    for _, slot in ipairs(RING_SLOTS) do
        gear.equipped[slot] = Describe(GetInventoryItemLink("player", slot))
    end
    local chest = gear.equipped[5]
    gear.armorSubclass = chest and chest.classID == 4 and chest.subclassID or nil

    for bag = 0, 4 do
        for slot = 1, (C_Container.GetContainerNumSlots(bag) or 0) do
            local link = C_Container.GetContainerItemLink(bag, slot)
            local e = link and Describe(link)
            if e and (e.classID == 2 or e.classID == 4) and IsBound(bag, slot) and CanUse(e) then
                e.bag, e.bagSlot = bag, slot
                table.insert(gear.bags, e)
            end
        end
    end
    return gear
end

-------------------------------------------------------------------------------
-- Bewerten
-------------------------------------------------------------------------------
function ns.ScoreStats(values, share)
    local total = 0
    for _, k in ipairs(KEYS) do total = total + (values[k] or 0) end
    local penalty, deviation = 0, 0
    local per = {}
    for _, k in ipairs(KEYS) do
        local target = (share[k] or 0) * total
        local v = values[k] or 0
        local status = "guide"
        if not ns.IsGuide(share, k) and target > 0 then
            local off = math.abs(v - target)
            penalty = penalty + math.max(0, off - BAND * target) / target
            deviation = deviation + off / target
            status = v < target * (1 - BAND) and "below" or v > target * (1 + BAND) and "above" or "ok"
        end
        per[k] = { value = v, target = target, status = status }
    end
    return { penalty = penalty, deviation = deviation, total = total, stats = per }
end

local function Better(a, b)
    if not b then return true end
    if math.abs(a.penalty - b.penalty) > PENALTY_TOLERANCE then return a.penalty < b.penalty end
    if a.ilvl ~= b.ilvl then return a.ilvl > b.ilvl end
    if math.abs(a.deviation - b.deviation) > 1e-6 then return a.deviation < b.deviation end
    return a.swaps < b.swaps
end

-- Streicht nur exakte Doppel (gleiche Werte, gleiches Itemlevel, gleiche
-- Verzierung und gleiches Set). Mehr darf nicht wegfallen: Beim Ziel
-- "Verteilung" kann ein Item mit weniger von einem Wert das bessere sein.
local function Prune(items, keep)
    local out, seen = {}, {}
    if keep then
        table.insert(out, keep)
    end
    for _, a in ipairs(items) do
        local key = table.concat({ a.ilvl, a.crit, a.haste, a.mastery, a.versatility,
                                   tostring(a.embellished), tostring(a.setID), a.id }, ":")
        if keep and a == keep then
            seen[key] = true
        elseif not seen[key] then
            seen[key] = true
            table.insert(out, a)
        end
    end
    return out
end

local function MainSet(equipped)
    local count = {}
    for _, e in pairs(equipped) do
        if e.setID and e.setID ~= 0 then count[e.setID] = (count[e.setID] or 0) + 1 end
    end
    local best, n = nil, 0
    for id, c in pairs(count) do if c > n then best, n = id, c end end
    return best, n
end

-- gear: aus CollectGear, ratings: aktuelle Wertungen (mit Edelsteinen, Buffs),
-- share: Zielanteile. Liefert { changes, before, after }.
function ns.Optimize(gear, ratings, share)
    local equipped = gear.equipped
    local setID, setCount = MainSet(equipped)
    local setNeed = setCount >= 4 and 4 or setCount >= 2 and 2 or 0
    local embNow = 0
    for _, e in pairs(equipped) do if e.embellished then embNow = embNow + 1 end end
    local embMin, embMax = math.min(embNow, 2), math.max(2, embNow)

    -- Gruppen: je Platz eine Liste von Optionen; eine Option belegt 1 oder 2 Plätze
    local groups = {}
    local base = {}
    for _, k in ipairs(KEYS) do base[k] = ratings[k] or 0 end

    local function option(items, slots)
        local o = { items = items, slots = slots, ilvl = 0, emb = 0, set = 0, swaps = 0,
                    crit = 0, haste = 0, mastery = 0, versatility = 0 }
        for i, e in ipairs(items) do
            for _, k in ipairs(KEYS) do o[k] = o[k] + e[k] end
            o.ilvl = o.ilvl + e.ilvl
            if e.embellished then o.emb = o.emb + 1 end
            if setID and e.setID == setID then o.set = o.set + 1 end
            if equipped[slots[i]] ~= e then o.swaps = o.swaps + 1 end
        end
        return o
    end

    for _, s in ipairs(SINGLE_SLOTS) do
        local current = equipped[s.slot]
        local usable = current ~= nil and (not s.twoHand or current.equipLoc == "INVTYPE_2HWEAPON")
        if usable then
            for _, k in ipairs(KEYS) do base[k] = base[k] - current[k] end
            local list = { current }
            for _, e in ipairs(gear.bags) do
                if s.locs[e.equipLoc] and (not s.armor or e.classID ~= 4 or not gear.armorSubclass
                                           or e.subclassID == gear.armorSubclass) then
                    table.insert(list, e)
                end
            end
            local g = { options = {} }
            for _, e in ipairs(Prune(list, current)) do
                table.insert(g.options, option({ e }, { s.slot }))
            end
            table.insert(groups, g)
        end
    end

    -- Ringe: Paare verschiedener Items, zugeordnet mit möglichst wenig Bewegung
    local r1, r2 = equipped[11], equipped[12]
    if r1 and r2 then
        for _, k in ipairs(KEYS) do base[k] = base[k] - r1[k] - r2[k] end
        local rings = { r1, r2 }
        for _, e in ipairs(gear.bags) do
            if e.equipLoc == "INVTYPE_FINGER" then table.insert(rings, e) end
        end
        local keepBoth = Prune(rings, nil)
        local function has(list, x) for _, v in ipairs(list) do if v == x then return true end end end
        if not has(keepBoth, r1) then table.insert(keepBoth, 1, r1) end
        if not has(keepBoth, r2) then table.insert(keepBoth, 2, r2) end
        local g = { options = {} }
        for i = 1, #keepBoth do
            for j = i + 1, #keepBoth do
                local a, b = keepBoth[i], keepBoth[j]
                if a.id ~= b.id then          -- Ringe sind einzigartig anlegbar
                    if a == r2 or b == r1 then a, b = b, a end
                    table.insert(g.options, option({ a, b }, { 11, 12 }))
                end
            end
        end
        -- aktuelle Kombination zuerst
        table.sort(g.options, function(x, y) return x.swaps < y.swaps end)
        table.insert(groups, g)
    end

    local evaluated = 0
    local function evaluate(choice)
        evaluated = evaluated + 1
        local v = { crit = base.crit, haste = base.haste, mastery = base.mastery, versatility = base.versatility }
        local ilvl, emb, set, swaps = 0, 0, 0, 0
        for gi, g in ipairs(groups) do
            local o = g.options[choice[gi]]
            for _, k in ipairs(KEYS) do v[k] = v[k] + o[k] end
            ilvl, emb, set, swaps = ilvl + o.ilvl, emb + o.emb, set + o.set, swaps + o.swaps
        end
        if emb < embMin or emb > embMax or set < setNeed then return nil end
        local s = ns.ScoreStats(v, share)
        s.ilvl, s.swaps, s.choice, s.values = ilvl, swaps, { unpack(choice) }, v
        return s
    end

    local current = {}
    local combos = 1
    for gi, g in ipairs(groups) do
        current[gi] = 1              -- Option 1 ist jeweils die angelegte Ausrüstung
        combos = combos * #g.options
    end
    local before = evaluate(current) or ns.ScoreStats(ratings, share)
    if not before.choice then before.choice, before.ilvl, before.swaps = current, 0, 0 end
    local best = evaluate(current)

    if combos <= EXHAUSTIVE_LIMIT then
        local choice = {}
        local function walk(gi)
            if gi > #groups then
                local s = evaluate(choice)
                if s and Better(s, best) then best = s end
                return
            end
            for oi = 1, #groups[gi].options do
                choice[gi] = oi
                walk(gi + 1)
            end
        end
        walk(1)
    else
        -- Schrittweise: immer die beste Änderung an einem oder zwei Plätzen übernehmen
        local choice = { unpack(current) }
        for _ = 1, 30 do
            local improved
            for gi, g in ipairs(groups) do
                for oi = 1, #g.options do
                    if oi ~= choice[gi] then
                        local old = choice[gi]
                        choice[gi] = oi
                        local s = evaluate(choice)
                        if s and Better(s, improved or best) then improved = s end
                        for gj = gi + 1, #groups do
                            for oj = 1, #groups[gj].options do
                                if oj ~= choice[gj] then
                                    local oldj = choice[gj]
                                    choice[gj] = oj
                                    local s2 = evaluate(choice)
                                    if s2 and Better(s2, improved or best) then improved = s2 end
                                    choice[gj] = oldj
                                end
                            end
                        end
                        choice[gi] = old
                    end
                end
            end
            if not improved then break end
            best = improved
            choice = { unpack(improved.choice) }
        end
    end

    best = best or before
    ns.lastOptimize = { combinations = combos, evaluated = evaluated,
                        exhaustive = combos <= EXHAUSTIVE_LIMIT }
    local changes = {}
    for gi, g in ipairs(groups) do
        local o = g.options[best.choice[gi]]
        for i, e in ipairs(o.items) do
            local slot = o.slots[i]
            local old = equipped[slot]
            if old ~= e then
                table.insert(changes, { slot = slot, old = old, new = e,
                    loseEnchant = old and old.enchanted and not e.enchanted or false,
                    emptySockets = e.emptySockets or 0 })
            end
        end
    end
    table.sort(changes, function(a, b) return a.slot < b.slot end)
    return { changes = changes, before = before, after = best }
end

-------------------------------------------------------------------------------
-- Anlegen
-------------------------------------------------------------------------------
local function ItemID(link)
    return link and (C_Item.GetItemInfoInstant(link))
end

-- Legt die Änderungen nacheinander an (kurze Pause dazwischen, damit das
-- Spiel jeden Tausch verarbeitet). onDone(okCount, failedChanges)
function ns.EquipChanges(changes, onDone)
    if InCombatLockdown and InCombatLockdown() then
        if onDone then onDone(0, changes) end
        return
    end
    local equip = (C_Item and C_Item.EquipItemByName) or EquipItemByName
    -- Items, die schon angelegt sind und nur den Platz wechseln (Ringe), zuerst
    local queue = {}
    for _, c in ipairs(changes) do
        if c.new.bag == nil then table.insert(queue, 1, c) else table.insert(queue, c) end
    end
    local index = 0
    local function step()
        index = index + 1
        local c = queue[index]
        if not c then
            local failed = {}
            for _, ch in ipairs(changes) do
                if ItemID(GetInventoryItemLink("player", ch.slot)) ~= ch.new.id then table.insert(failed, ch) end
            end
            if onDone then onDone(#changes - #failed, failed) end
            return
        end
        if InCombatLockdown and InCombatLockdown() then
            local failed = {}
            for i = index, #queue do table.insert(failed, queue[i]) end
            if onDone then onDone(index - 1, failed) end
            return
        end
        equip(c.new.link, c.slot)
        C_Timer.After(0.3, step)
    end
    step()
end
