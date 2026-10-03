-------------------------------------------------------------------------------
-- Dritter Reiter: Ausrüstung automatisch auf die Ziele optimieren.
-- Rechnung in Optimizer.lua; hier nur Anzeige und Knöpfe.
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local KEYS = { "crit", "haste", "mastery", "versatility" }
local LABELS = { crit = "Critical Strike", haste = "Haste", mastery = "Mastery", versatility = "Versatility" }
local SLOT_GLOBALS = {
    [1] = "INVTYPE_HEAD", [2] = "INVTYPE_NECK", [3] = "INVTYPE_SHOULDER", [5] = "INVTYPE_CHEST",
    [6] = "INVTYPE_WAIST", [7] = "INVTYPE_LEGS", [8] = "INVTYPE_FEET", [9] = "INVTYPE_WRIST",
    [10] = "INVTYPE_HAND", [11] = "INVTYPE_FINGER", [12] = "INVTYPE_FINGER", [15] = "INVTYPE_CLOAK",
    [16] = "INVTYPE_WEAPONMAINHAND", [17] = "INVTYPE_WEAPONOFFHAND",
}
local TARGETS = { { key = "mplus", label = "Mythic+" }, { key = "raid", label = "Raid" } }
-- Name des Sets im Ausrüstungsmanager (höchstens 16 Zeichen)
local SET_NAMES = { mplus = "RealStats M+", raid = "RealStats Raid" }
local BACKUP_SET = "RealStats vorher"
-- Schalter im Reiter. Alle in dieselbe Richtung gedacht: Haken = darf getauscht
-- werden, leer = bleibt unangetastet. Gespeichert je Charakter und Spezialisierung.
local SWITCHES = {
    { key = "sockets",     label = "Items with a socket" },
    { key = "embellished", label = "Embellished items" },
    { key = "lowerIlvl",   label = "Items with lower item level" },
}
local TEXT_TOP = 186      -- Umschalter, drei Haken und drei Knopfreihen darueber
local SET_ICON = 134400   -- Fragezeichen; wird durch das Waffensymbol ersetzt, wenn vorhanden

local panel
local state = { result = nil, stale = false, busy = false, message = nil, ready = nil }

-- Plätze, die der Optimierer verwaltet; daran wird erkannt, ob seit dem
-- Anlegen umgerüstet wurde.
local MANAGED_SLOTS = { 1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 15, 16, 17 }

local function EquippedIDs()
    local parts = {}
    for _, slot in ipairs(MANAGED_SLOTS) do
        local link = GetInventoryItemLink("player", slot)
        parts[#parts + 1] = link and tostring((C_Item.GetItemInfoInstant(link))) or "-"
    end
    return table.concat(parts, ",")
end

-- Speichern als Set erst, wenn die berechnete Ausrüstung für dieses Ziel
-- wirklich angelegt ist (oder die Rechnung keine Wechsel ergab) und seitdem
-- nichts umgerüstet wurde.
local function MarkReady(key) state.ready = { key = key, ids = EquippedIDs() } end
local function CanSave(key)
    return state.ready ~= nil and state.ready.key == key and state.ready.ids == EquippedIDs()
end

local function UI() return ns.UI end

local function Hex(color)
    return string.format("%02x%02x%02x", math.floor(color[1] * 255 + 0.5), math.floor(color[2] * 255 + 0.5), math.floor(color[3] * 255 + 0.5))
end

-- Vor dem Anlegen merken, was angelegt war -- getrennt je Charakter, damit der
-- Rueckweg auch nach einem /reload noch da ist.
local function RememberGear()
    local c = UI().CharData()
    local links = {}
    for _, slot in ipairs(MANAGED_SLOTS) do
        links[slot] = GetInventoryItemLink("player", slot)
    end
    c.previousGear = { links = links, time = (date and date("%d.%m. %H:%M")) or "" }
end

-- Gibt es etwas, das sich vom jetzigen Stand unterscheidet?
local function PreviousChanges()
    local prev = UI().CharData().previousGear
    if not prev or not prev.links then return nil end
    local changes = {}
    for _, slot in ipairs(MANAGED_SLOTS) do
        local want, have = prev.links[slot], GetInventoryItemLink("player", slot)
        if want and want ~= have then
            local e = ns.DescribeItem(want)
            if e then table.insert(changes, { slot = slot, old = have and ns.DescribeItem(have) or nil,
                                              new = e, loseEnchant = false, emptySockets = 0 }) end
        end
    end
    return changes
end

local function SlotName(slot)
    local name = _G[SLOT_GLOBALS[slot] or ""]
    return type(name) == "string" and name or ("#" .. slot)
end

local function Render()
    if not panel then return end
    local ui, L = UI(), UI().L
    local s = ui.db()
    for _, t in ipairs(panel.targets) do t.line:SetShown(t.key == s.optFor) end

    local combat = ui.IsInCombat()
    local result = state.result
    local opts = ui.GearOpts()
    for _, cb in ipairs(panel.switches) do
        cb:SetChecked(opts[cb.key] and true or false)
        cb:SetEnabled(not combat and not state.busy)
    end
    local previous = PreviousChanges()
    panel.restore:SetEnabled(not combat and not state.busy and previous ~= nil and #previous > 0)
    panel.backup:SetEnabled(not combat and not state.busy and C_EquipmentSet ~= nil)
    panel.calc:SetEnabled(not combat and not state.busy)
    panel.saveSet:SetEnabled(not combat and not state.busy and C_EquipmentSet ~= nil and CanSave(s.optFor))
    panel.saveSet:SetText(string.format(L["Save as set: %s"], SET_NAMES[s.optFor] or SET_NAMES.mplus))
    panel.apply:SetEnabled(not combat and not state.busy and result ~= nil
                           and #result.changes > 0 and not state.stale)

    local lines = {}
    local function add(text) table.insert(lines, text) end
    if combat then add("|cffff9933" .. L["Not possible during combat."] .. "|r") end
    if state.message then add(state.message) end

    if not result then
        if not state.message then add("|cff999999" .. L["Calculate checks your equipped items and bags."] .. "|r") end
    else
        if state.stale then add("|cffff9933" .. L["Gear changed - calculate again."] .. "|r") end
        if #result.changes == 0 then
            add(L["No better combination found - your gear already fits best."])
        else
            add(string.format("|cffffd100" .. L["Changes (%d):"] .. "|r", #result.changes))
            for _, c in ipairs(result.changes) do
                add(string.format("%s: %s", SlotName(c.slot), c.new.link))
                if c.old then add("  |cff999999" .. L["instead of"] .. " " .. c.old.link .. "|r") end
                if c.loseEnchant then add("  |cffff9933" .. L["no enchant"] .. "|r") end
                if c.emptySockets > 0 then
                    add("  |cffff9933" .. string.format(L["%d empty socket(s)"], c.emptySockets) .. "|r")
                end
            end
        end
        add(" ")
        for _, k in ipairs(KEYS) do
            local b, a = result.before.stats[k], result.after.stats[k]
            local color = ui.COLORS[a.status] or ui.COLORS.guide
            add(string.format("|cff%s%s: %d -> %d|r |cff999999(%s %d)|r", Hex(color), L[LABELS[k]],
                ui.Round(b.value), ui.Round(a.value), L["Target"], ui.Round(a.target)))
        end
        add(string.format("%s: %d -> %d", L["Total"], ui.Round(result.before.total), ui.Round(result.after.total)))
    end
    panel.text:SetText(table.concat(lines, "\n"))
end

local function TargetData()
    local ui = UI()
    local spec = ui.CurrentSpecID()
    local data = spec and ns.TARGETS and ns.TARGETS[spec]
    return data and data[ui.db().optFor]
end

local function Calculate()
    local ui, L = UI(), UI().L
    local data = TargetData()
    state.stale, state.message = false, nil
    if not data then
        state.result = nil
        state.message = L["No targets for this content yet."]
        return
    end
    local ratings = ui.ReadRatings()
    if not ratings then
        state.result = nil
        state.message = "|cffff9933" .. L["Stats are hidden by the game right now - showing the last values."] .. "|r"
        return
    end
    state.result = ns.Optimize(ns.CollectGear(), ratings, data.share, ui.GearOpts())
    state.ready = nil
    if #state.result.changes == 0 then MarkReady(ui.db().optFor) end   -- schon die beste Ausrüstung
end

-- Speichert die gerade angelegte Ausrüstung als Set im Ausrüstungsmanager.
-- Gibt es das Set schon, wird es überschrieben.
function ns.SaveGearSet(key)
    local L = UI().L
    local name = SET_NAMES[key] or SET_NAMES.mplus
    if not C_EquipmentSet or UI().IsInCombat() or (InCombatLockdown and InCombatLockdown()) then return false end
    if not CanSave(key) then return false end
    local icon = GetInventoryItemTexture and GetInventoryItemTexture("player", 16) or SET_ICON
    local id = C_EquipmentSet.GetEquipmentSetID(name)
    if id then
        C_EquipmentSet.SaveEquipmentSet(id, icon)
    else
        C_EquipmentSet.CreateEquipmentSet(name, icon)
    end
    state.message = "|cff40bb4f" .. string.format(L["Set \"%s\" saved in the equipment manager."], name) .. "|r"
    return true
end

-- Welche Teile sind haengen geblieben? Platz und Item nennen, damit man es
-- selbst anlegen oder den Grund sehen kann (Taschenplatz, offene Nachfrage).
local function FailedList(failed)
    local L = UI().L
    local lines = {}
    for _, c in ipairs(failed) do
        table.insert(lines, "  |cffff9933" .. SlotName(c.slot) .. ": " .. (c.new.link or "?") .. "|r")
    end
    table.insert(lines, "|cff999999" .. L["Check your bag space and whether the game asked you something."] .. "|r")
    return table.concat(lines, "\n")
end

-- Zurueck zu dem, was vor dem letzten Anlegen angelegt war.
local function Restore()
    local L = UI().L
    local changes = PreviousChanges()
    if not changes or UI().IsInCombat() then return end
    if #changes == 0 then
        state.message = "|cff999999" .. L["Your gear already matches the saved state."] .. "|r"
        UI().Update()
        return
    end
    state.busy = true
    Render()
    ns.EquipChanges(changes, function(ok, failed)
        state.busy, state.result, state.ready = false, nil, nil
        if #failed == 0 then
            state.message = "|cff40bb4f" .. string.format(L["Equipped %d item(s)."], ok) .. "|r"
        else
            state.message = "|cffe6544a" .. string.format(L["%d item(s) could not be equipped."], #failed)
                .. "|r\n" .. FailedList(failed)
        end
        UI().Update()
    end)
end

-- Den jetzigen Stand als Set im Ausruestungsmanager sichern, unabhaengig von
-- jeder Rechnung -- der Rueckweg fuer alle, die lieber Sets nutzen.
local function SaveCurrentAsSet()
    local L = UI().L
    if not C_EquipmentSet or UI().IsInCombat() or (InCombatLockdown and InCombatLockdown()) then return end
    local icon = GetInventoryItemTexture and GetInventoryItemTexture("player", 16) or SET_ICON
    local id = C_EquipmentSet.GetEquipmentSetID(BACKUP_SET)
    if id then
        C_EquipmentSet.SaveEquipmentSet(id, icon)
    else
        C_EquipmentSet.CreateEquipmentSet(BACKUP_SET, icon)
    end
    RememberGear()
    state.message = "|cff40bb4f" .. string.format(L["Set \"%s\" saved in the equipment manager."], BACKUP_SET) .. "|r"
    UI().Update()
end

local function Apply()
    local L = UI().L
    local result = state.result
    if not result or #result.changes == 0 or UI().IsInCombat() then return end
    RememberGear()
    state.busy = true
    Render()
    ns.EquipChanges(result.changes, function(ok, failed)
        state.busy, state.result = false, nil
        if #failed == 0 then
            MarkReady(UI().db().optFor)
            state.message = "|cff40bb4f" .. string.format(L["Equipped %d item(s)."], ok) .. "|r"
        else
            state.message = "|cffe6544a" .. string.format(L["%d item(s) could not be equipped."], #failed)
                .. "|r\n" .. FailedList(failed)
        end
        UI().Update()
    end)
end

function ns.CreateGearTab(frame)
    local ui, L = UI(), UI().L
    panel = CreateFrame("Frame", nil, frame)
    panel:SetPoint("TOPLEFT", ui.PAD, -ui.HEADER)
    panel:SetSize(ui.WIDTH - ui.PAD * 2, 300)
    panel:Hide()

    panel.forText = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    panel.forText:SetPoint("TOPLEFT", 0, -3)
    panel.forText:SetText(L["Optimize for:"])

    panel.targets = {}
    local previous = panel.forText
    for _, info in ipairs(TARGETS) do
        local b = CreateFrame("Button", nil, panel)
        b.key = info.key
        b.text = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        b.text:SetPoint("CENTER")
        b.text:SetText(info.label)
        b:SetSize(math.ceil(b.text:GetStringWidth() or 40) + 12, 18)
        b.line = b:CreateTexture(nil, "OVERLAY")
        b.line:SetPoint("BOTTOMLEFT")
        b.line:SetPoint("BOTTOMRIGHT")
        b.line:SetHeight(2)
        b.line:SetColorTexture(ui.COLORS.band[1], ui.COLORS.band[2], ui.COLORS.band[3], 0.9)
        b:SetPoint("LEFT", previous, "RIGHT", 6, 0)
        b:SetScript("OnClick", function(self)
            ui.db().optFor = self.key
            state.ready = nil
            if state.result then state.stale = true end
            Render()
        end)
        previous = b
        table.insert(panel.targets, b)
    end

    -- "Tauschen erlaubt": alle Haken in dieselbe Richtung. Je Charakter und
    -- Spezialisierung gespeichert, deshalb beim Anzeigen neu gelesen.
    panel.switchHeader = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    panel.switchHeader:SetPoint("TOPLEFT", 0, -26)
    panel.switchHeader:SetText(L["May be swapped:"])

    panel.switches = {}
    local above = panel.switchHeader
    for _, info in ipairs(SWITCHES) do
        local cb = CreateFrame("CheckButton", nil, panel, "UICheckButtonTemplate")
        cb.key = info.key
        cb:SetSize(20, 20)
        -- Alle Haken buendig mit Ueberschrift und Knoepfen an der linken Kante
        cb:SetPoint("TOPLEFT", above, "BOTTOMLEFT", 0, above == panel.switchHeader and -2 or 0)
        -- Eigene Beschriftung statt der des Templates: die heisst je nach
        -- Spielversion anders.
        cb.label = cb:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        cb.label:SetPoint("LEFT", cb, "RIGHT", 2, 0)
        cb.label:SetText(L[info.label])
        cb:SetScript("OnClick", function(self)
            UI().GearOpts()[self.key] = self:GetChecked() and true or false
            -- Das alte Ergebnis passt nicht mehr zu den Regeln
            state.result, state.ready, state.message = nil, nil, nil
            state.stale = false
            UI().Update()
        end)
        above = cb
        table.insert(panel.switches, cb)
    end

    panel.calc = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.calc:SetSize(110, 22)
    panel.calc:SetPoint("TOPLEFT", panel.switches[#panel.switches], "BOTTOMLEFT", 0, -6)
    panel.calc:SetText(L["Calculate"])
    panel.calc:SetScript("OnClick", function()
        if UI().IsInCombat() then return end
        Calculate()
        UI().Update()
    end)

    panel.apply = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.apply:SetSize(110, 22)
    panel.apply:SetPoint("LEFT", panel.calc, "RIGHT", 8, 0)
    panel.apply:SetText(L["Equip"])
    panel.apply:SetScript("OnClick", Apply)

    panel.saveSet = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.saveSet:SetSize(228, 22)
    panel.saveSet:SetPoint("TOPLEFT", panel.calc, "BOTTOMLEFT", 0, -4)
    panel.saveSet:SetMotionScriptsWhileDisabled(true)
    panel.saveSet:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:AddLine(L["Calculate and equip first, then save the result as a set."], 1, 1, 1, true)
        GameTooltip:Show()
    end)
    panel.saveSet:SetScript("OnLeave", function() GameTooltip:Hide() end)
    panel.saveSet:SetScript("OnClick", function()
        if ns.SaveGearSet(UI().db().optFor) then UI().Update() end
    end)

    panel.restore = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.restore:SetSize(110, 22)
    panel.restore:SetPoint("TOPLEFT", panel.saveSet, "BOTTOMLEFT", 0, -4)
    panel.restore:SetText(L["Back to previous"])
    panel.restore:SetMotionScriptsWhileDisabled(true)
    panel.restore:SetScript("OnEnter", function(self)
        local prev = UI().CharData().previousGear
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        if prev and prev.time ~= "" then
            GameTooltip:AddLine(string.format(L["Gear as of %s"], prev.time), 1, 1, 1)
        end
        GameTooltip:AddLine(L["Equips what you wore before the last change. The items have to be in your bags."], 1, 1, 1, true)
        GameTooltip:Show()
    end)
    panel.restore:SetScript("OnLeave", function() GameTooltip:Hide() end)
    panel.restore:SetScript("OnClick", Restore)

    panel.backup = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.backup:SetSize(110, 22)
    panel.backup:SetPoint("LEFT", panel.restore, "RIGHT", 8, 0)
    panel.backup:SetText(L["Save current"])
    panel.backup:SetMotionScriptsWhileDisabled(true)
    panel.backup:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:AddLine(string.format(L["Saves what you are wearing now as set \"%s\" and as the way back."], BACKUP_SET), 1, 1, 1, true)
        GameTooltip:Show()
    end)
    panel.backup:SetScript("OnLeave", function() GameTooltip:Hide() end)
    panel.backup:SetScript("OnClick", SaveCurrentAsSet)

    panel.text = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    panel.text:SetPoint("TOPLEFT", 0, -TEXT_TOP)
    panel.text:SetWidth(ui.WIDTH - ui.PAD * 2)
    panel.text:SetJustifyH("LEFT")
    panel.text:SetJustifyV("TOP")
    panel.text:SetWordWrap(true)

    ns.GearPanel = panel
    return panel
end

-- Wird von Update() gerufen, wenn der Reiter aktiv ist. Liefert die Höhe.
function ns.ShowGearTab()
    if not panel then return 0 end
    panel:Show()
    Render()
    local h = panel.text:GetStringHeight()
    return TEXT_TOP + (type(h) == "number" and h or 200) + 8
end

function ns.HideGearTab()
    if panel then panel:Hide() end
end

-- Kampfbeginn/-ende: nur Knöpfe und Hinweis neu, der Rest bleibt eingefroren.
function ns.RefreshGearTab()
    if panel and panel:IsShown() then Render() end
end

function ns.GearChanged()
    if state.result and not state.busy then state.stale = true end
end

ns.GearState = state
