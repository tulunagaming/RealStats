-------------------------------------------------------------------------------
-- RealStats
-- Copyright (c) 2026 Tuluna. Alle Rechte vorbehalten / All rights reserved.
-- Zieldaten: Warcraft Logs (warcraftlogs.com), ausgewertete Top-Logs.
--
-- Zeigt deine Sekundärwerte im Vergleich zu den besten Spielern deiner
-- Spezialisierung. Verglichen werden nicht absolute Ratings, sondern das
-- Verhältnis: Die Anteile der Besten (Data_*.lua) werden auf die Summe deiner
-- eigenen Werte umgerechnet. So passt das Ziel zu jedem Itemlevel.
--
-- Beim Umrüsten, das nur Werte umverteilt, bleibt die Summe gleich -- die
-- Schablone steht still, und nur dein Balken wandert hinein oder heraus.
--
-- Feste Buffs (Fläschchen, Essen) stecken in deinen Werten wie in denen der
-- Besten. Damit sichtbar ist, was davon Ausrüstung ist, erscheint ihr Anteil
-- als lila Stück am Ende deines Balkens (Buffs.lua).
--
-- Zwei Reiter: Mythic+ und Raid. Die Besten verteilen ihre Werte je nach
-- Inhalt unterschiedlich, deshalb hat jeder Reiter eigene Zielwerte.
--
-- /realstats          Fenster ein-/ausblenden
-- /realstats dock     am Charakterfenster andocken / frei schweben
-- /realstats lock     Position sperren
-- /realstats scale X  Größe (0.5 - 3)
-- /realstats export   Ausrüstung + Taschen für die Auswertung speichern
-- /realstats reset    Position und Größe zurücksetzen
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local L = setmetatable({}, { __index = function(_, k) return k end })
if GetLocale() == "deDE" then
    L["Total"]             = "Summe"
    L["Your total"]        = "Deine Summe"
    L["Median of the best"] = "Median der Besten"
    L["Mean of the best"]  = "Mittel der Besten"
    L["Typical range (25-75 %)"] = "Typischer Bereich (25-75 %)"
    L["Your item level"]   = "Dein Itemlevel"
    L["Item level of the best"] = "Itemlevel der Besten"
    L["The gap is roughly what item upgrades can still give you."] =
        "Die Differenz ist ungefähr das, was dir Item-Upgrades noch bringen können."
    L["Mastery"]           = "Meisterschaft"
    L["Gear"]              = "Ausrüstung"
    L["Optimize for:"]     = "Optimieren für:"
    L["Calculate"]         = "Berechnen"
    L["Equip"]             = "Anlegen"
    L["Save as set: %s"]   = "Als Set speichern: %s"
    L["Set \"%s\" saved in the equipment manager."] = "Set \"%s\" im Ausrüstungsmanager gespeichert."
    L["Not possible during combat."] = "Im Kampf nicht möglich."
    L["Calculate checks your equipped items and bags."] = "Berechnen prüft deine angelegten Items und deine Taschen."
    L["Gear changed - calculate again."] = "Ausrüstung geändert - neu berechnen."
    L["No better combination found - your gear already fits best."] =
        "Keine bessere Kombination gefunden - deine Ausrüstung passt schon am besten."
    L["Changes (%d):"]     = "Wechsel (%d):"
    L["instead of"]        = "statt"
    L["no enchant"]        = "keine Verzauberung"
    L["%d empty socket(s)"] = "%d leere(r) Sockel"
    L["Equipped %d item(s)."] = "%d Item(s) angelegt."
    L["%d item(s) could not be equipped."] = "%d Item(s) konnten nicht angelegt werden."
    L["Only bound items from your bags, at most 2 embellishments, set bonus kept, trinkets stay. Gems and enchants move with the item."] =
        "Nur gebundene Items aus deinen Taschen, höchstens 2 Runenverzierungen, Set-Bonus bleibt, Schmuckstücke bleiben. Edelsteine und Verzauberungen wandern mit dem Item."
    L["Critical Strike"]   = "Kritischer Trefferwert"
    L["Haste"]             = "Tempo"
    L["Versatility"]       = "Vielseitigkeit"
    L["in target"]         = "im Ziel"
    L["Your stat total %d"] = "Deine Summe %d"
    L["No targets for this specialization yet."] = "Für diese Spezialisierung gibt es noch keine Zielwerte."
    L["No targets for this content yet."] = "Für diesen Inhalt gibt es noch keine Zielwerte."
    L["%d top players · mythic · as of %s"] = "%d Top-Spieler · mythisch · Stand %s"
    L["Targets: how the %d best players of your spec split their secondary stats (Warcraft Logs, keys +%d-%d), scaled to your total. In target = within ±5 %%."] =
        "Ziele: So verteilen die %d besten Spieler deiner Spezialisierung ihre Sekundärwerte (Warcraft Logs, Schlüssel +%d-%d), umgerechnet auf deine Summe. Im Ziel = höchstens ±5 %% Abweichung."
    L["Targets: how the %d best players of your spec split their secondary stats (Warcraft Logs, mythic raid), scaled to your total. In target = within ±5 %%."] =
        "Ziele: So verteilen die %d besten Spieler deiner Spezialisierung ihre Sekundärwerte (Warcraft Logs, Raid mythisch), umgerechnet auf deine Summe. Im Ziel = höchstens ±5 %% Abweichung."
    L["Frozen during combat"] = "Im Kampf eingefroren"
    L["%d top players · keys +%d-%d · as of %s"] = "%d Top-Spieler · +%d-%d · Stand %s"
    L["Your value"]        = "Dein Wert"
    L["from gear"]         = "davon Ausrüstung"
    L["Purple: fixed buffs (flask, food)"] = "Lila: feste Buffs (Fläschchen, Essen)"
    L["Purple part: fixed buffs such as flask and food. They are included for the best players, too."] =
        "Lila Anteil: feste Buffs wie Fläschchen und Essen. Bei den Besten sind sie ebenfalls enthalten."
    L["Target"]            = "Ziel"
    L["Target range"]      = "Zielbereich"
    L["Share among the best"] = "Anteil bei den Besten"
    L["Your share"]        = "Dein Anteil"
    L["Scaled to your stat total, so the target fits your item level."] =
        "Auf deine Summe umgerechnet, damit das Ziel zu deinem Itemlevel passt."
    L["Only shown as a guide line; the best players barely use it."] =
        "Nur als Orientierungsstrich; die Besten setzen kaum darauf."
    L["Shift + left click: move"] = "Umschalt + Linksklick: verschieben"
    L["shown."]  = "eingeblendet."
    L["hidden."] = "ausgeblendet."
    L["position locked."]   = "Position gesperrt."
    L["position unlocked."] = "Position entsperrt."
    L["reset."] = "zurückgesetzt."
    L["Commands: /realstats | dock | lock | scale <number> | export | reset"] =
        "Befehle: /realstats | dock | lock | scale <Zahl> | export | reset"
    L["Click: expand"]   = "Klick: ausklappen"
    L["Click: collapse"] = "Klick: einklappen"
    L["docked to the character window."] = "am Charakterfenster angedockt."
    L["floating window (shift + drag to move)."] = "freies Fenster (Umschalt + Ziehen zum Verschieben)."
    L["snapshot: %d equipped, %d in bags. Saved on the next /reload."] =
        "Schnappschuss: %d angelegt, %d in den Taschen. Wird beim nächsten /reload gespeichert."
end

-------------------------------------------------------------------------------
-- Aufbau
-------------------------------------------------------------------------------
local WIDTH       = 260
local PAD         = 12
local ROW_HEIGHT  = 34
local BAR_HEIGHT  = 8
local BAND        = 0.05      -- ±5 % um das Ziel
local TICK_AT     = 0.60      -- das Ziel sitzt immer bei 60 % der Balkenbreite
local TAB_H       = 18
local EXPLAIN_H   = 40        -- Platz für den grauen Erklärtext unten
local HEADER      = 38 + TAB_H + 8   -- Titel, Reiter, Abstand -- hier beginnen die Zeilen

-- Reiter: Schlüssel in ns.TARGETS[spec], Beschriftung bleibt in jeder Sprache gleich
local TABS = {
    { key = "mplus", label = "Mythic+" },
    { key = "raid",  label = "Raid" },
    { key = "gear",  label = "Gear" },
}

-- Reihenfolge und Beschriftung. Alle vier Werte bekommen die ±5-%-Schablone,
-- außer Werten mit unter 10 % Anteil bei den Besten: nur Strich (ns.IsGuide).
local STATS = {
    { key = "mastery",     label = "Mastery" },
    { key = "crit",        label = "Critical Strike" },
    { key = "haste",       label = "Haste" },
    { key = "versatility", label = "Versatility" },
}

-- Oberste Zeile: Summe der Sekundärwerte gegen die Besten. Schablone ist hier
-- nicht ±5 %, sondern der tatsächliche Bereich der Besten (25-75 %).
local TOTAL_DEF = { key = "total", label = "Total", total = true }

local COLORS = {
    ok    = { 0.25, 0.73, 0.31 },   -- im Zielbereich
    above = { 0.82, 0.60, 0.13 },   -- darüber
    below = { 0.90, 0.33, 0.29 },   -- darunter
    guide = { 0.55, 0.57, 0.62 },   -- Vielseitigkeit
    total = { 0.80, 0.80, 0.82 },   -- Summe: neutral, sagt nichts über richtig/falsch
    band  = { 0.16, 0.83, 0.94 },   -- Cyan: gemeinsame Akzentfarbe mit KeyBar und KickGuide
    buff  = { 0.64, 0.21, 0.93 },   -- Lila: feste Buffs (Fläschchen, Essen)
}

local DEFAULTS = { point = "CENTER", x = 320, y = 0, scale = 1.0, locked = false, hidden = false, docked = true, collapsed = false, tab = "mplus", optFor = "mplus" }

local frame
local rows = {}

local function Round(v)
    return math.floor(v + 0.5)
end
local inCombat = false
local RefreshTabs
local updateQueued = false

local function db()
    RealStatsDB = RealStatsDB or {}
    for k, v in pairs(DEFAULTS) do
        if RealStatsDB[k] == nil then RealStatsDB[k] = v end
    end
    return RealStatsDB
end

local function Print(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cff66ccffRealStats|r: " .. msg)
end

-------------------------------------------------------------------------------
-- Werte aus dem Spiel
-------------------------------------------------------------------------------
local function Rating(key)
    local id
    if key == "crit" then id = CR_CRIT_MELEE
    elseif key == "haste" then id = CR_HASTE_MELEE
    elseif key == "mastery" then id = CR_MASTERY
    elseif key == "versatility" then id = CR_VERSATILITY_DAMAGE_DONE
    end
    if not id then return 0 end
    return GetCombatRating(id) or 0
end

local function CurrentSpecID()
    local index = GetSpecialization and GetSpecialization()
    if not index then return nil end
    return (GetSpecializationInfo(index))
end

-- Liefert pro Wert: aktuell, Ziel, Zielbereich und Status. Reine Rechnung,
-- ohne Oberfläche -- damit lässt sie sich außerhalb des Spiels prüfen.
function ns.Evaluate(values, share)
    local total = 0
    for _, s in ipairs(STATS) do total = total + (values[s.key] or 0) end

    local result = { total = total }
    for _, s in ipairs(STATS) do
        local current = values[s.key] or 0
        local target  = (share[s.key] or 0) * total
        local low, high = target * (1 - BAND), target * (1 + BAND)
        local status
        if ns.IsGuide(share, s.key) then
            status = "guide"
        elseif current < low then
            status = "below"
        elseif current > high then
            status = "above"
        else
            status = "ok"
        end
        result[s.key] = {
            current = current,
            target  = target,
            low     = low,
            high    = high,
            delta   = current - target,
            status  = status,
            share   = total > 0 and current / total or 0,
        }
    end
    return result
end

-------------------------------------------------------------------------------
-- Tooltip
-------------------------------------------------------------------------------
local function ShowTotalTooltip(info)
    GameTooltip:AddLine(L["Total"], 1, 0.82, 0)
    GameTooltip:AddDoubleLine(L["Your total"], string.format("%d", Round(info.current)), 0.8, 0.8, 0.8, 1, 1, 1)
    if (info.buff or 0) > 0 then
        GameTooltip:AddDoubleLine("  " .. L["from gear"], string.format("%d", Round(info.current - info.buff)),
            0.6, 0.6, 0.6, 0.8, 0.8, 0.8)
        for _, b in ipairs(info.buffs or {}) do
            GameTooltip:AddDoubleLine("  " .. (b.name or "?"), string.format("+%d", Round(b.amount)),
                COLORS.buff[1], COLORS.buff[2], COLORS.buff[3], COLORS.buff[1], COLORS.buff[2], COLORS.buff[3])
        end
    end
    GameTooltip:AddDoubleLine(L["Median of the best"], string.format("%d", Round(info.target)), 0.8, 0.8, 0.8, 1, 1, 1)
    GameTooltip:AddDoubleLine(L["Mean of the best"], string.format("%d", Round(info.mean)), 0.6, 0.6, 0.6, 0.8, 0.8, 0.8)
    GameTooltip:AddDoubleLine(L["Typical range (25-75 %)"],
        string.format("%d - %d", Round(info.low), Round(info.high)), 0.6, 0.6, 0.6, 0.8, 0.8, 0.8)
    GameTooltip:AddLine(" ")
    if info.ilvl and info.topIlvl then
        GameTooltip:AddDoubleLine(L["Your item level"], string.format("%.1f", info.ilvl), 0.6, 0.6, 0.6, 0.8, 0.8, 0.8)
        GameTooltip:AddDoubleLine(L["Item level of the best"], string.format("%d", info.topIlvl), 0.6, 0.6, 0.6, 0.8, 0.8, 0.8)
        GameTooltip:AddLine(" ")
    end
    GameTooltip:AddLine(L["The gap is roughly what item upgrades can still give you."], 0.55, 0.55, 0.55, true)
    if (info.buff or 0) > 0 then
        GameTooltip:AddLine(L["Purple part: fixed buffs such as flask and food. They are included for the best players, too."],
            0.55, 0.55, 0.55, true)
    end
end

local function ShowRowTooltip(row)
    local info, def = row.info, row.def
    if not info then return end
    GameTooltip:SetOwner(frame, "ANCHOR_NONE")
    GameTooltip:ClearAllPoints()
    GameTooltip:SetPoint("TOPLEFT", frame, "TOPRIGHT", 6, 0)
    if def.total then
        ShowTotalTooltip(info)
        GameTooltip:Show()
        return
    end
    GameTooltip:AddLine(L[def.label], 1, 0.82, 0)
    GameTooltip:AddDoubleLine(L["Your value"], string.format("%d", Round(info.current)), 0.8, 0.8, 0.8, 1, 1, 1)
    if (info.buff or 0) > 0 then
        GameTooltip:AddDoubleLine("  " .. L["from gear"], string.format("%d", Round(info.current - info.buff)),
            0.6, 0.6, 0.6, 0.8, 0.8, 0.8)
        for _, b in ipairs(info.buffs or {}) do
            GameTooltip:AddDoubleLine("  " .. (b.name or "?"), string.format("+%d", Round(b.amount)),
                COLORS.buff[1], COLORS.buff[2], COLORS.buff[3], COLORS.buff[1], COLORS.buff[2], COLORS.buff[3])
        end
    end
    GameTooltip:AddDoubleLine(L["Target"], string.format("%d", Round(info.target)), 0.8, 0.8, 0.8, 1, 1, 1)
    if info.status ~= "guide" then
        GameTooltip:AddDoubleLine(L["Target range"],
            string.format("%d - %d", Round(info.low), Round(info.high)), 0.8, 0.8, 0.8, 1, 1, 1)
    end
    GameTooltip:AddLine(" ")
    GameTooltip:AddDoubleLine(L["Share among the best"],
        string.format("%.1f %%", (ns.activeShare[def.key] or 0) * 100), 0.6, 0.6, 0.6, 0.8, 0.8, 0.8)
    GameTooltip:AddDoubleLine(L["Your share"],
        string.format("%.1f %%", info.share * 100), 0.6, 0.6, 0.6, 0.8, 0.8, 0.8)
    GameTooltip:AddLine(" ")
    if info.status == "guide" then
        GameTooltip:AddLine(L["Only shown as a guide line; the best players barely use it."], 0.55, 0.55, 0.55, true)
    else
        GameTooltip:AddLine(L["Scaled to your stat total, so the target fits your item level."], 0.55, 0.55, 0.55, true)
    end
    if (info.buff or 0) > 0 then
        GameTooltip:AddLine(L["Purple part: fixed buffs such as flask and food. They are included for the best players, too."],
            0.55, 0.55, 0.55, true)
    end
    GameTooltip:Show()
end

-------------------------------------------------------------------------------
-- Oberfläche
-------------------------------------------------------------------------------
local function StartDrag()
    local s = db()
    if s.docked or s.locked or not IsShiftKeyDown() then return end
    frame:StartMoving()
    frame.isMoving = true
end

local function StopDrag()
    if not frame.isMoving then return end
    frame.isMoving = false
    frame:StopMovingOrSizing()
    local point, _, _, x, y = frame:GetPoint()
    local s = db()
    s.point, s.x, s.y = point, x, y
end

local function CreateRow(index, def)
    local row = CreateFrame("Frame", nil, frame)
    row:SetSize(WIDTH - PAD * 2, ROW_HEIGHT)
    row:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD, -(HEADER + (index - 1) * ROW_HEIGHT))
    row.def = def
    row.barWidth = WIDTH - PAD * 2

    row.name = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    row.name:SetPoint("TOPLEFT", 0, 0)
    row.name:SetText(L[def.label])

    row.status = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmallOutline")
    row.status:SetPoint("LEFT", row.name, "RIGHT", 6, 0)

    row.value = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    row.value:SetPoint("TOPRIGHT", 0, 0)
    row.value:SetJustifyH("RIGHT")

    -- Balkenbahn
    row.track = row:CreateTexture(nil, "BACKGROUND")
    row.track:SetColorTexture(0.17, 0.18, 0.21, 1)
    row.track:SetPoint("TOPLEFT", 0, -16)
    row.track:SetSize(row.barWidth, BAR_HEIGHT)

    -- Schablone (±5 %): Fläche mit Kanten
    row.band = row:CreateTexture(nil, "BORDER")
    row.band:SetColorTexture(COLORS.band[1], COLORS.band[2], COLORS.band[3], 0.16)
    row.bandLeft = row:CreateTexture(nil, "ARTWORK", nil, 2)
    row.bandLeft:SetColorTexture(COLORS.band[1], COLORS.band[2], COLORS.band[3], 0.75)
    row.bandRight = row:CreateTexture(nil, "ARTWORK", nil, 2)
    row.bandRight:SetColorTexture(COLORS.band[1], COLORS.band[2], COLORS.band[3], 0.75)

    -- eigener Wert
    row.fill = row:CreateTexture(nil, "ARTWORK")
    row.fill:SetPoint("TOPLEFT", row.track, "TOPLEFT", 0, -2)
    row.fill:SetHeight(BAR_HEIGHT - 4)

    -- feste Buffs, direkt hinter dem Ausrüstungsanteil
    row.buffFill = row:CreateTexture(nil, "ARTWORK")
    row.buffFill:SetColorTexture(COLORS.buff[1], COLORS.buff[2], COLORS.buff[3], 1)
    row.buffFill:SetHeight(BAR_HEIGHT - 4)
    row.buffFill:Hide()

    -- Ziel als Strich
    row.tick = row:CreateTexture(nil, "OVERLAY")
    row.tick:SetColorTexture(COLORS.band[1], COLORS.band[2], COLORS.band[3], 0.95)
    row.tick:SetSize(1, BAR_HEIGHT + 6)

    row:EnableMouse(true)
    row:SetScript("OnEnter", ShowRowTooltip)
    row:SetScript("OnLeave", function() GameTooltip:Hide() end)
    row:RegisterForDrag("LeftButton")
    row:SetScript("OnDragStart", StartDrag)
    row:SetScript("OnDragStop", StopDrag)

    rows[index] = row
    return row
end

-- Legt eine Textur zwischen zwei Werte auf die Bahn; "overhang" laesst sie
-- oben und unten um so viele Pixel ueber die Bahn hinausragen.
local function PositionOnBar(row, texture, fromValue, toValue, scale, overhang)
    local w = row.barWidth
    local x1 = math.min(math.max(fromValue / scale, 0), 1) * w
    local x2 = math.min(math.max(toValue / scale, 0), 1) * w
    texture:ClearAllPoints()
    texture:SetPoint("TOPLEFT", row.track, "TOPLEFT", math.floor(x1 + 0.5), overhang)
    texture:SetWidth(math.max(1, math.floor(x2 - x1 + 0.5)))
    texture:SetHeight(BAR_HEIGHT + overhang * 2)
end



local function DrawRow(row, info)
    row.info = info
    local def = row.def
    -- Das Ziel sitzt immer an derselben Stelle. Verteilst du nur um, bewegt
    -- sich die Schablone deshalb nicht -- nur dein Balken.
    local scale = info.target > 0 and info.target / TICK_AT or math.max(info.current, 1)

    local color = COLORS[info.status] or COLORS.guide
    row.fill:SetColorTexture(color[1], color[2], color[3], 1)
    local buff = math.max(0, math.min(info.buff or 0, info.current))
    local fullWidth = math.floor(math.min(info.current / scale, 1) * row.barWidth + 0.5)
    local gearWidth = math.floor(math.min((info.current - buff) / scale, 1) * row.barWidth + 0.5)
    row.fill:SetWidth(math.max(1, gearWidth))
    if buff > 0 and fullWidth > gearWidth then
        row.buffFill:ClearAllPoints()
        row.buffFill:SetPoint("TOPLEFT", row.track, "TOPLEFT", gearWidth, -2)
        row.buffFill:SetWidth(fullWidth - gearWidth)
        row.buffFill:Show()
    else
        row.buffFill:Hide()
    end

    local tickX = math.floor(math.min(info.target / scale, 1) * row.barWidth + 0.5)
    row.tick:ClearAllPoints()
    row.tick:SetPoint("TOPLEFT", row.track, "TOPLEFT", tickX, 3)

    if info.status == "guide" then
        row.band:Hide(); row.bandLeft:Hide(); row.bandRight:Hide()
        row.status:SetText("")
    elseif def.total then
        PositionOnBar(row, row.band, info.low, info.high, scale, 3)
        row.bandLeft:ClearAllPoints()
        row.bandLeft:SetPoint("TOPLEFT", row.band, "TOPLEFT", 0, 0)
        row.bandLeft:SetPoint("BOTTOMLEFT", row.band, "BOTTOMLEFT", 0, 0)
        row.bandLeft:SetWidth(1)
        row.bandRight:ClearAllPoints()
        row.bandRight:SetPoint("TOPRIGHT", row.band, "TOPRIGHT", 0, 0)
        row.bandRight:SetPoint("BOTTOMRIGHT", row.band, "BOTTOMRIGHT", 0, 0)
        row.bandRight:SetWidth(1)
        row.band:Show(); row.bandLeft:Show(); row.bandRight:Show()
        row.status:SetText(string.format("%+d", Round(info.delta)))
        row.status:SetTextColor(COLORS.total[1], COLORS.total[2], COLORS.total[3])
    else
        PositionOnBar(row, row.band, info.low, info.high, scale, 3)
        row.bandLeft:ClearAllPoints()
        row.bandLeft:SetPoint("TOPLEFT", row.band, "TOPLEFT", 0, 0)
        row.bandLeft:SetPoint("BOTTOMLEFT", row.band, "BOTTOMLEFT", 0, 0)
        row.bandLeft:SetWidth(1)
        row.bandRight:ClearAllPoints()
        row.bandRight:SetPoint("TOPRIGHT", row.band, "TOPRIGHT", 0, 0)
        row.bandRight:SetPoint("BOTTOMRIGHT", row.band, "BOTTOMRIGHT", 0, 0)
        row.bandRight:SetWidth(1)
        row.band:Show(); row.bandLeft:Show(); row.bandRight:Show()

        if info.status == "ok" then
            row.status:SetText(L["in target"])
        else
            row.status:SetText(string.format("%+d", Round(info.delta)))
        end
        row.status:SetTextColor(color[1], color[2], color[3])
    end

    row.value:SetText(string.format("|cffffffff%d|r / %d", Round(info.current), Round(info.target)))
end

-- Angedockt übernimmt das Fenster die Höhe des Charakterfensters.
local function PanelHeight(natural)
    if db().docked and CharacterFrame and CharacterFrame.GetHeight then
        return math.max(natural, CharacterFrame:GetHeight() or 0)
    end
    return natural
end

-- "2026-09-16" -> "16.09.2026" auf Deutsch, sonst unverändert.
local function FormatDate(iso)
    local y, m, d = tostring(iso or ""):match("^(%d+)-(%d+)-(%d+)$")
    if y and GetLocale() == "deDE" then return d .. "." .. m .. "." .. y end
    return iso or ""
end

local function Update()
    updateQueued = false
    if not frame then return end
    if inCombat then return end      -- Buffs im Kampf würden die Balken springen lassen

    local specID = CurrentSpecID()
    local specData = specID and ns.TARGETS and ns.TARGETS[specID]
    local data = specData and specData[db().tab]

    -- Dritter Reiter: Ausrüstung optimieren
    if db().tab == "gear" then
        for _, row in ipairs(rows) do row:Hide() end
        frame.legend:Hide()
        frame.message:Hide()
        frame.explain:ClearAllPoints()
        frame.explain:SetPoint("BOTTOMLEFT", PAD, 24)
        frame.explain:SetText(L["Only bound items from your bags, at most 2 embellishments, set bonus kept, trinkets stay. Gems and enchants move with the item."])
        frame.explain:Show()
        frame.footer:SetText("")
        local total = 0
        for _, st in ipairs(STATS) do total = total + Rating(st.key) end
        frame.subtitle:SetText(string.format(L["Your stat total %d"], Round(total)))
        local h = ns.ShowGearTab and ns.ShowGearTab() or 0
        frame:SetHeight(PanelHeight(HEADER + h + EXPLAIN_H + 24))
        return
    end
    if ns.HideGearTab then ns.HideGearTab() end

    if not data then
        for _, row in ipairs(rows) do row:Hide() end
        frame.legend:Hide()
        frame.explain:Hide()
        frame.subtitle:SetText("")
        frame.message:SetText(specData and L["No targets for this content yet."]
                              or L["No targets for this specialization yet."])
        frame.message:Show()
        frame.footer:SetText("")
        frame:SetHeight(PanelHeight(HEADER + 46))
        return
    end

    frame.message:Hide()
    ns.activeShare = data.share

    local values = {}
    for _, s in ipairs(STATS) do values[s.key] = Rating(s.key) end
    local result = ns.Evaluate(values, data.share)

    local buffs = ns.FixedBuffs and ns.FixedBuffs() or { list = {} }
    local buffTotal = 0
    for _, def in ipairs(STATS) do
        local r = result[def.key]
        r.buff, r.buffs = buffs[def.key] or 0, {}
        for _, b in ipairs(buffs.list or {}) do
            if b.stat == def.key then table.insert(r.buffs, b) end
        end
        buffTotal = buffTotal + r.buff
    end
    frame.legend:SetShown(buffTotal > 0)
    frame.explain:ClearAllPoints()
    frame.explain:SetPoint("BOTTOMLEFT", PAD, buffTotal > 0 and 40 or 24)

    local t = data.total
    if t then
        local totalRow = rows[1] or CreateRow(1, TOTAL_DEF)
        DrawRow(totalRow, {
            current = result.total, target = t.median, mean = t.mean,
            low = t.p25, high = t.p75, delta = result.total - t.median, status = "total",
            ilvl = GetAverageItemLevel and select(2, GetAverageItemLevel()) or nil,
            topIlvl = data.ilvl,
            buff = buffTotal, buffs = buffs.list,
        })
        totalRow:Show()
    end

    for i, def in ipairs(STATS) do
        local row = rows[i + 1] or CreateRow(i + 1, def)
        DrawRow(row, result[def.key])
        row:Show()
    end

    frame.subtitle:SetText(string.format(L["Your stat total %d"], Round(result.total)))
    if data.minKey then
        frame.explain:SetText(string.format(L["Targets: how the %d best players of your spec split their secondary stats (Warcraft Logs, keys +%d-%d), scaled to your total. In target = within ±5 %%."],
            data.players, data.minKey, data.maxKey))
    else
        frame.explain:SetText(string.format(L["Targets: how the %d best players of your spec split their secondary stats (Warcraft Logs, mythic raid), scaled to your total. In target = within ±5 %%."],
            data.players))
    end
    frame.explain:Show()
    if data.minKey then
        frame.footer:SetText(string.format(L["%d top players · keys +%d-%d · as of %s"],
            data.players, data.minKey, data.maxKey, FormatDate(data.date)))
    else
        frame.footer:SetText(string.format(L["%d top players · mythic · as of %s"],
            data.players, FormatDate(data.date)))
    end
    frame:SetHeight(PanelHeight(HEADER + (#STATS + 1) * ROW_HEIGHT + 38 + EXPLAIN_H))
end

-- Beim Umrüsten feuern mehrere Ereignisse kurz nacheinander. Eine einzige
-- Aktualisierung im nächsten Frame genügt.
local function QueueUpdate()
    if updateQueued then return end
    updateQueued = true
    C_Timer.After(0.1, Update)
end

-- Angedockt hängt das Fenster rechts am Charakterfenster. Verankert wird am
-- PaperDollFrame, dem sichtbaren Inhaltsbereich: Das CharacterFrame selbst ist
-- größer als das, was man sieht. Versatz wie bei ClassCodex, dort erprobt.
local toggle

local function DockHost()
    if PaperDollFrame then return PaperDollFrame, -2, 0 end
    if CharacterFrame then return CharacterFrame, -2, -1 end
    return nil
end

local function ApplySettings()
    local s = db()
    local host, dx, dy = DockHost()
    frame:SetScale(s.scale)
    frame:ClearAllPoints()

    if s.docked and host then
        frame:SetParent(CharacterFrame or host)
        frame:SetFrameStrata("DIALOG")
        frame:SetPoint("TOPLEFT", host, "TOPRIGHT", dx, dy)
        frame:SetShown(not s.hidden and not s.collapsed and host:IsShown())
        if toggle then
            toggle:SetShown(not s.hidden and host:IsShown())
            toggle:ClearAllPoints()
            if s.collapsed then
                toggle:SetPoint("LEFT", host, "RIGHT", -6, 0)
            else
                toggle:SetPoint("LEFT", frame, "RIGHT", -4, 0)
            end
            toggle:SetNormalTexture(s.collapsed
                and "Interface/Buttons/UI-SpellbookIcon-NextPage-Up"
                or  "Interface/Buttons/UI-SpellbookIcon-PrevPage-Up")
        end
    else
        frame:SetParent(UIParent)
        frame:SetFrameStrata("MEDIUM")
        frame:SetPoint(s.point, UIParent, s.point, s.x, s.y)
        frame:SetShown(not s.hidden)
        if toggle then toggle:Hide() end
    end
end

-- Lasche an der rechten Kante des Charakterfensters: klappt RealStats ein und aus.
local function CreateToggle()
    local host = DockHost()
    if not host then return end
    toggle = CreateFrame("Button", "RealStatsToggle", host)
    toggle:SetSize(24, 24)
    toggle:SetPoint("LEFT", host, "RIGHT", -6, 0)
    toggle:SetFrameStrata("DIALOG")
    toggle:SetFrameLevel(100)
    toggle:SetHighlightTexture("Interface/Buttons/UI-Common-MouseHilight", "ADD")
    toggle:SetScript("OnClick", function()
        local s = db()
        s.collapsed = not s.collapsed
        ApplySettings()
        if not s.collapsed then QueueUpdate() end
    end)
    toggle:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:AddLine("RealStats", 1, 0.82, 0)
        GameTooltip:AddLine(db().collapsed and L["Click: expand"] or L["Click: collapse"], 0.8, 0.8, 0.8)
        GameTooltip:Show()
    end)
    toggle:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

-- Öffnen, Schließen und Größenänderung des Charakterfensters verfolgen.
local function HookCharacterWindow()
    local function Refresh()
        ApplySettings()
        -- Andere Addons verschieben das Charakterfenster teils erst nach uns.
        C_Timer.After(0, ApplySettings)
        QueueUpdate()
    end
    if PaperDollFrame and PaperDollFrame.HookScript then
        PaperDollFrame:HookScript("OnShow", Refresh)
        PaperDollFrame:HookScript("OnHide", function()
            if db().docked then
                frame:Hide()
                if toggle then toggle:Hide() end
            end
        end)
    end
    if CharacterFrame and CharacterFrame.HookScript then
        CharacterFrame:HookScript("OnSizeChanged", function()
            if db().docked then Refresh() end
        end)
    end
end

function RefreshTabs()
    if not frame or not frame.tabs then return end
    local current = db().tab
    for _, tab in ipairs(frame.tabs) do
        tab.line:SetShown(tab.key == current)
    end
end

ns.UI = {
    L = L, db = db, PAD = PAD, WIDTH = WIDTH, HEADER = HEADER, COLORS = COLORS,
    Round = Round, Rating = Rating, CurrentSpecID = CurrentSpecID,
    IsInCombat = function() return inCombat end,
    Update = function() Update() end,
}

local function CreateMainFrame()
    frame = CreateFrame("Frame", "RealStatsFrame", UIParent, "BackdropTemplate")
    frame:SetSize(WIDTH, 200)
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:SetBackdrop({
        bgFile   = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 12,
        insets = { left = 3, right = 3, top = 3, bottom = 3 },
    })
    -- Gleiches Erscheinungsbild wie KeyBar und KickGuide
    frame:SetBackdropColor(0, 0, 0, 0.6)
    frame:SetBackdropBorderColor(0.35, 0.35, 0.35, 0.8)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", StartDrag)
    frame:SetScript("OnDragStop", StopDrag)

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    frame.title:SetPoint("TOPLEFT", PAD, -10)
    frame.title:SetText("RealStats")

    frame.subtitle = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.subtitle:SetPoint("TOPRIGHT", -PAD, -12)

    -- Reiter wie in KickGuide: Text, darunter die Cyan-Linie beim gewählten
    frame.tabs = {}
    local previous
    for _, info in ipairs(TABS) do
        local tab = CreateFrame("Button", nil, frame)
        tab.key = info.key
        tab.text = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        tab.text:SetPoint("CENTER")
        tab.text:SetText(L[info.label])
        tab:SetSize(math.ceil(tab.text:GetStringWidth() or 40) + 12, TAB_H)
        tab.line = tab:CreateTexture(nil, "OVERLAY")
        tab.line:SetPoint("BOTTOMLEFT")
        tab.line:SetPoint("BOTTOMRIGHT")
        tab.line:SetHeight(2)
        tab.line:SetColorTexture(COLORS.band[1], COLORS.band[2], COLORS.band[3], 0.9)
        tab.highlight = tab:CreateTexture(nil, "HIGHLIGHT")
        tab.highlight:SetAllPoints()
        tab.highlight:SetColorTexture(1, 1, 1, 0.08)
        tab:SetScript("OnClick", function(self)
            db().tab = self.key
            RefreshTabs()
            Update()           -- im Kampf bleibt die Anzeige eingefroren
        end)
        if previous then
            tab:SetPoint("LEFT", previous, "RIGHT", 4, 0)
        else
            tab:SetPoint("TOPLEFT", PAD - 6, -34)
        end
        previous = tab
        table.insert(frame.tabs, tab)
    end
    RefreshTabs()

    if ns.CreateGearTab then ns.CreateGearTab(frame) end

    frame.message = frame:CreateFontString(nil, "OVERLAY", "GameFontDisable")
    frame.message:SetPoint("TOPLEFT", PAD, -HEADER)
    frame.message:SetPoint("RIGHT", -PAD, 0)
    frame.message:SetJustifyH("LEFT")
    frame.message:Hide()

    frame.legend = CreateFrame("Frame", nil, frame)
    frame.legend:SetSize(WIDTH - PAD * 2, 12)
    frame.legend:SetPoint("BOTTOMLEFT", PAD, 24)
    frame.legend.swatch = frame.legend:CreateTexture(nil, "ARTWORK")
    frame.legend.swatch:SetSize(10, 4)
    frame.legend.swatch:SetPoint("LEFT", 0, 0)
    frame.legend.swatch:SetColorTexture(COLORS.buff[1], COLORS.buff[2], COLORS.buff[3], 1)
    frame.legend.text = frame.legend:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    frame.legend.text:SetPoint("LEFT", frame.legend.swatch, "RIGHT", 5, 0)
    frame.legend.text:SetText(L["Purple: fixed buffs (flask, food)"])
    frame.legend:Hide()

    -- grauer Erklärtext: woher die Ziele kommen
    frame.explain = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    frame.explain:SetWidth(WIDTH - PAD * 2)
    frame.explain:SetJustifyH("LEFT")
    frame.explain:SetWordWrap(true)
    frame.explain:SetPoint("BOTTOMLEFT", PAD, 24)
    frame.explain:Hide()

    frame.footer = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    frame.footer:SetPoint("BOTTOMLEFT", PAD, 8)
    frame.footer:SetPoint("RIGHT", -PAD, 0)
    frame.footer:SetJustifyH("LEFT")

    frame:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_NONE")
        GameTooltip:ClearAllPoints()
        GameTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT", 6, 0)
        GameTooltip:AddLine("RealStats", 1, 0.82, 0)
        GameTooltip:AddLine(L["Shift + left click: move"], 0.6, 0.6, 0.6)
        GameTooltip:Show()
    end)
    frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
    -- Öffnet sich mit dem Charakterfenster: dann die aktuellen Werte zeigen.
    frame:SetScript("OnShow", QueueUpdate)
end

-------------------------------------------------------------------------------
-- Slash-Befehle
-------------------------------------------------------------------------------
SLASH_REALSTATS1 = "/realstats"
SlashCmdList["REALSTATS"] = function(input)
    local s = db()
    local command, argument = strsplit(" ", strtrim(input or ""), 2)
    command = (command or ""):lower()

    if command == "" then
        s.hidden = not s.hidden
        ApplySettings()
        if not s.hidden then Update() end
        Print(s.hidden and L["hidden."] or L["shown."])
    elseif command == "dock" then
        s.docked = not s.docked
        ApplySettings()
        Update()                -- Höhe hängt am Andocken
        Print(s.docked and L["docked to the character window."] or L["floating window (shift + drag to move)."])

    elseif command == "lock" then
        s.locked = not s.locked
        Print(s.locked and L["position locked."] or L["position unlocked."])
    elseif command == "scale" then
        local value = tonumber(argument)
        if value and value >= 0.5 and value <= 3 then
            s.scale = value
            ApplySettings()
        end
    elseif command == "export" then
        local snap = ns.TakeSnapshot and ns.TakeSnapshot()
        if snap then
            Print(string.format(L["snapshot: %d equipped, %d in bags. Saved on the next /reload."],
                #snap.equipped, #snap.bags))
        end

    elseif command == "buffs" then
        if ns.DebugBuffs then ns.DebugBuffs(Print) end

    elseif command == "reset" then
        s.point, s.x, s.y, s.scale, s.locked, s.hidden, s.docked, s.collapsed =
            DEFAULTS.point, DEFAULTS.x, DEFAULTS.y, DEFAULTS.scale, false, false, true, false
        ApplySettings()
        Print(L["reset."])
    else
        Print(L["Commands: /realstats | dock | lock | scale <number> | export | reset"])
    end
end

-------------------------------------------------------------------------------
-- Ereignisse
-------------------------------------------------------------------------------
-- Diese feuern bei Buffs und Procs laufend; im Kampf werden sie abgemeldet.
local LIVE_EVENTS = { "COMBAT_RATING_UPDATE", "PLAYER_EQUIPMENT_CHANGED", "UNIT_AURA" }

local events = CreateFrame("Frame")
events:RegisterEvent("ADDON_LOADED")
events:RegisterEvent("PLAYER_ENTERING_WORLD")
events:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
events:RegisterEvent("PLAYER_REGEN_DISABLED")
events:RegisterEvent("PLAYER_REGEN_ENABLED")
events:RegisterEvent("PLAYER_LOGOUT")          -- feuert auch bei /reload, kurz vor dem Speichern
local function RegisterLive()
    for _, e in ipairs(LIVE_EVENTS) do
        if e == "UNIT_AURA" and events.RegisterUnitEvent then
            events:RegisterUnitEvent(e, "player")
        else
            events:RegisterEvent(e)
        end
    end
end
RegisterLive()

events:SetScript("OnEvent", function(_, event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 ~= ADDON_NAME then return end
        db()
        CreateMainFrame()
        CreateToggle()
        HookCharacterWindow()
        ApplySettings()

    elseif event == "PLAYER_LOGOUT" then
        if ns.TakeSnapshot then ns.TakeSnapshot() end

    elseif event == "PLAYER_REGEN_DISABLED" then
        inCombat = true
        for _, e in ipairs(LIVE_EVENTS) do events:UnregisterEvent(e) end
        if frame then frame.footer:SetText(L["Frozen during combat"]) end
        if ns.RefreshGearTab then ns.RefreshGearTab() end

    elseif event == "PLAYER_REGEN_ENABLED" then
        inCombat = false
        RegisterLive()
        QueueUpdate()

    elseif event == "PLAYER_SPECIALIZATION_CHANGED" then
        if arg1 == nil or arg1 == "player" then QueueUpdate() end

    elseif event == "PLAYER_ENTERING_WORLD" then
        inCombat = UnitAffectingCombat and UnitAffectingCombat("player") and true or false
        QueueUpdate()

    elseif event == "PLAYER_EQUIPMENT_CHANGED" then
        if ns.GearChanged then ns.GearChanged() end
        QueueUpdate()

    elseif event == "UNIT_AURA" then
        if arg1 == "player" then QueueUpdate() end

    else
        QueueUpdate()
    end
end)
