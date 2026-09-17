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
    [16] = "INVTYPE_2HWEAPON",
}
local TARGETS = { { key = "mplus", label = "Mythic+" }, { key = "raid", label = "Raid" } }
-- Name des Sets im Ausrüstungsmanager (höchstens 16 Zeichen)
local SET_NAMES = { mplus = "RealStats M+", raid = "RealStats Raid" }
local SET_ICON = 134400   -- Fragezeichen; wird durch das Waffensymbol ersetzt, wenn vorhanden

local panel
local state = { result = nil, stale = false, busy = false, message = nil }

local function UI() return ns.UI end

local function Hex(color)
    return string.format("%02x%02x%02x", math.floor(color[1] * 255 + 0.5), math.floor(color[2] * 255 + 0.5), math.floor(color[3] * 255 + 0.5))
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
    panel.calc:SetEnabled(not combat and not state.busy)
    panel.saveSet:SetEnabled(not combat and not state.busy and C_EquipmentSet ~= nil)
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
    local ratings = {}
    for _, k in ipairs(KEYS) do ratings[k] = ui.Rating(k) end
    state.result = ns.Optimize(ns.CollectGear(), ratings, data.share)
end

-- Speichert die gerade angelegte Ausrüstung als Set im Ausrüstungsmanager.
-- Gibt es das Set schon, wird es überschrieben.
function ns.SaveGearSet(key)
    local L = UI().L
    local name = SET_NAMES[key] or SET_NAMES.mplus
    if not C_EquipmentSet or UI().IsInCombat() or (InCombatLockdown and InCombatLockdown()) then return false end
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

local function Apply()
    local L = UI().L
    local result = state.result
    if not result or #result.changes == 0 or UI().IsInCombat() then return end
    state.busy = true
    Render()
    ns.EquipChanges(result.changes, function(ok, failed)
        state.busy, state.result = false, nil
        if #failed == 0 then
            state.message = "|cff40bb4f" .. string.format(L["Equipped %d item(s)."], ok) .. "|r"
        else
            state.message = "|cffe6544a" .. string.format(L["%d item(s) could not be equipped."], #failed) .. "|r"
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
            if state.result then state.stale = true end
            Render()
        end)
        previous = b
        table.insert(panel.targets, b)
    end

    panel.calc = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.calc:SetSize(110, 22)
    panel.calc:SetPoint("TOPLEFT", 0, -24)
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
    panel.saveSet:SetScript("OnClick", function()
        if ns.SaveGearSet(UI().db().optFor) then UI().Update() end
    end)

    panel.text = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    panel.text:SetPoint("TOPLEFT", 0, -82)
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
    return 82 + (type(h) == "number" and h or 200) + 8
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
