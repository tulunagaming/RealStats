-------------------------------------------------------------------------------
-- Ausrüstungs-Schnappschuss für die Auswertung außerhalb des Spiels.
--
-- Beim Ausloggen und bei jedem /reload schreibt WoW RealStatsDB auf die
-- Platte. Kurz davor (PLAYER_LOGOUT) legt RealStats dort ab, was angelegt ist
-- und was in den Taschen liegt -- mit den Werten, die das Spiel selbst für das
-- jeweilige Itemlevel meldet. Kopieren ist damit nicht mehr nötig.
--
-- /realstats export   Schnappschuss sofort nehmen (wirksam nach /reload)
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

-- Ausrüstungsplätze ohne Hemd (4) und Wappenrock (19)
local EQUIP_SLOTS = { 1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 }

local STAT_FIELDS = {
    crit        = "ITEM_MOD_CRIT_RATING_SHORT",
    haste       = "ITEM_MOD_HASTE_RATING_SHORT",
    mastery     = "ITEM_MOD_MASTERY_RATING_SHORT",
    versatility = "ITEM_MOD_VERSATILITY",
    strength    = "ITEM_MOD_STRENGTH_SHORT",
}

-- Waffen (2) und Rüstung (4); alles andere in den Taschen interessiert nicht.
local EQUIPPABLE_CLASSES = { [2] = true, [4] = true }

local function IsEmbellished(link)
    if not (C_TooltipInfo and C_TooltipInfo.GetHyperlink) then return false end
    local data = C_TooltipInfo.GetHyperlink(link)
    for _, line in ipairs(data and data.lines or {}) do
        local text = line.leftText
        if text and (text:find("Embellished", 1, true) or text:find("Verziert", 1, true)) then
            return true
        end
    end
    return false
end

local function Describe(link)
    if not link then return nil end
    local itemID, _, _, equipLoc, _, classID = C_Item.GetItemInfoInstant(link)
    if not itemID then return nil end

    local stats = C_Item.GetItemStats(link) or {}
    local entry = {
        link        = link,
        id          = itemID,
        equipLoc    = equipLoc,
        classID     = classID,
        ilvl        = C_Item.GetDetailedItemLevelInfo(link) or 0,
        embellished = IsEmbellished(link),
        sockets     = 0,
    }
    for key, field in pairs(STAT_FIELDS) do
        entry[key] = stats[field] or 0
    end
    -- Sockel: alle EMPTY_SOCKET_*-Einträge zusammenzählen
    for field, count in pairs(stats) do
        if type(field) == "string" and field:find("^EMPTY_SOCKET_") then
            entry.sockets = entry.sockets + count
        end
    end
    return entry
end

function ns.TakeSnapshot()
    local specIndex = GetSpecialization and GetSpecialization()
    local snapshot = {
        time      = time(),
        character = (UnitName("player") or "?") .. "-" .. (GetRealmName() or "?"),
        spec      = specIndex and (GetSpecializationInfo(specIndex)) or nil,
        ratings   = {
            crit        = GetCombatRating(CR_CRIT_MELEE) or 0,
            haste       = GetCombatRating(CR_HASTE_MELEE) or 0,
            mastery     = GetCombatRating(CR_MASTERY) or 0,
            versatility = GetCombatRating(CR_VERSATILITY_DAMAGE_DONE) or 0,
        },
        buffs     = ns.FixedBuffs and ns.FixedBuffs() or nil,   -- Fläschchen/Essen, stecken in "ratings"
        equipped  = {},
        bags      = {},
    }

    for _, slot in ipairs(EQUIP_SLOTS) do
        local item = Describe(GetInventoryItemLink("player", slot))
        if item then
            item.slot = slot
            snapshot.equipped[#snapshot.equipped + 1] = item
        end
    end

    -- Rucksack (0) und die vier Taschen (1-4); Bank und Materialtasche nicht.
    for bag = 0, 4 do
        local slots = C_Container.GetContainerNumSlots(bag) or 0
        for slot = 1, slots do
            local item = Describe(C_Container.GetContainerItemLink(bag, slot))
            if item and EQUIPPABLE_CLASSES[item.classID] and item.equipLoc and item.equipLoc ~= ""
               and item.equipLoc ~= "INVTYPE_NON_EQUIP_IGNORE" then
                snapshot.bags[#snapshot.bags + 1] = item
            end
        end
    end

    RealStatsDB = RealStatsDB or {}
    RealStatsDB.snapshot = snapshot
    return snapshot
end
