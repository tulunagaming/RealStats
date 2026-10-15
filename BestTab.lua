-------------------------------------------------------------------------------
-- Vierter Reiter: Was die Besten tragen.
--
-- Absichtlich schmal gehalten: nur Schmuckstuecke und Verzierungen, je als
-- Anteil der Top-Spieler, mit Haken an dem, was der Spieler selbst traegt.
-- Keine Platz-fuer-Platz-Listen -- was ohne Bezug zur eigenen Ausruestung ist,
-- kann eine Webseite besser.
--
-- Die Daten kommen aus demselben Wochenlauf wie die Zielwerte (Feld `gear` je
-- Spezialisierung): nur Item-IDs mit Anzahl. Namen und Symbole holt das Spiel.
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local MIN_SHARE   = 0.05     -- darunter ist es Rauschen (bei ~175 Spielern: 9)
local MAX_ROWS    = 4        -- je Block hoechstens so viele Zeilen
local ROW_H       = 16
local VALUE_W     = 40     -- rechte Spalte fuer den Anteil
local TRINKET_SLOTS = { 13, 14 }   -- INVSLOT_TRINKET1/2

local TARGETS_UI = { { key = "mplus", label = "Mythic+" }, { key = "raid", label = "Raid" } }

local panel
local pending = {}           -- Items, deren Name noch nachgeladen wird

local function UI() return ns.UI end

local function Mode()
    local s = UI().db()
    s.bestFor = s.bestFor or "mplus"
    return s.bestFor
end

local function TargetData()
    local ui = UI()
    local spec = ui.CurrentSpecID()
    local data = spec and ns.TARGETS and ns.TARGETS[spec]
    return data and data[Mode()]
end

-- Was traegt der Spieler selbst? Schmuckstuecke ueber die Plaetze, Verzierungen
-- ueber dieselbe Erkennung wie im Ausruestungs-Reiter.
local function OwnItems()
    local trinkets, embellished = {}, {}
    for _, slot in ipairs(TRINKET_SLOTS) do
        local link = GetInventoryItemLink("player", slot)
        local id = link and C_Item.GetItemInfoInstant(link)
        if id then trinkets[id] = true end
    end
    for slot = 1, 17 do
        local link = GetInventoryItemLink("player", slot)
        if link and ns.DescribeItem then
            local e = ns.DescribeItem(link)
            if e and e.embellished then embellished[e.id] = true end
        end
    end
    return trinkets, embellished
end

-- Name und Symbol zur Item-ID. Ist das Item dem Spiel noch unbekannt, merken
-- wir es vor und zeichnen neu, sobald es nachgeladen wurde.
local function ItemText(id)
    local name, link = C_Item.GetItemInfo(id)
    local icon = C_Item.GetItemIconByID and C_Item.GetItemIconByID(id)
    if not name then
        pending[id] = true
        if C_Item.RequestLoadItemDataByID then C_Item.RequestLoadItemDataByID(id) end
        return "|cff999999" .. (UI().L["Loading ..."]) .. "|r", icon
    end
    return link or name, icon
end

-- Jede Zeile besteht aus zwei Feldern: links Symbol und Name (bricht nie um,
-- lange Namen werden abgeschnitten), rechts der Anteil. So kann kein
-- abgeschnittener Prozentwert in der naechsten Zeile mehr entstehen.
local function HoleZeile(index)
    local row = panel.rows[index]
    if not row then
        row = CreateFrame("Frame", nil, panel.list)
        row:SetSize(panel.list:GetWidth(), ROW_H)
        row:SetPoint("TOPLEFT", 0, -(index - 1) * ROW_H)
        row.links = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        row.links:SetPoint("LEFT", 0, 0)
        row.links:SetJustifyH("LEFT")
        row.links:SetWordWrap(false)
        row.rechts = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        row.rechts:SetPoint("RIGHT", 0, 0)
        row.rechts:SetJustifyH("RIGHT")
        row.rechts:SetWidth(VALUE_W)
        row.links:SetPoint("RIGHT", row.rechts, "LEFT", -6, 0)
        panel.rows[index] = row
    end
    row:Show()
    return row
end

local function SetzeZeile(state, links, rechts)
    state.n = state.n + 1
    local row = HoleZeile(state.n)
    row.links:SetText(links or "")
    row.rechts:SetText(rechts or "")
end

local function Leerzeile(state)
    state.n = state.n + 1
    local row = HoleZeile(state.n)
    row.links:SetText("")
    row.rechts:SetText("")
end

local function ItemLinks(id, marke)
    local text, icon = ItemText(id)
    local bild = icon and ("|T" .. icon .. ":14:14:0:0|t ") or ""
    return (marke or "") .. bild .. text
end

local function AddRows(state, liste, gesamt, ui)
    local gezeigt = 0
    for _, eintrag in ipairs(liste or {}) do
        local anteil = gesamt > 0 and eintrag[2] / gesamt or 0
        if gezeigt < MAX_ROWS and anteil >= MIN_SHARE then
            gezeigt = gezeigt + 1
            SetzeZeile(state, ItemLinks(eintrag[1]),
                       string.format("|cff999999%d %%|r", ui.Round(anteil * 100)))
        end
    end
    if gezeigt == 0 then
        SetzeZeile(state, "|cff999999" .. ui.L["No data yet."] .. "|r", "")
    end
end

-- Was gilt als BIS? Das, was die Besten am haeufigsten zusammen tragen; gibt es
-- kein belastbares Paar, die beiden meistgetragenen Einzelteile. Beides steht
-- so in den Daten -- wir raten nichts.
local function BisSet(liste, paare, gesamt)
    local bis = {}
    local paar = paare and paare[1]
    if paar and gesamt > 0 and paar[3] / gesamt >= MIN_SHARE then
        bis[paar[1]], bis[paar[2]] = true, true
        return bis
    end
    for i = 1, math.min(2, #(liste or {})) do
        bis[liste[i][1]] = true
    end
    return bis
end

-- Eigener Block unter der Liste: was der Spieler traegt, mit dem Anteil bei den
-- Besten -- auch dann, wenn es dort gar nicht auftaucht.
local function AddOwn(state, liste, gesamt, eigene, ui, bis)
    local anteilVon = {}
    for _, eintrag in ipairs(liste or {}) do
        anteilVon[eintrag[1]] = gesamt > 0 and eintrag[2] / gesamt or 0
    end
    local ids = {}
    for id in pairs(eigene) do table.insert(ids, id) end
    table.sort(ids, function(a, b) return (anteilVon[a] or 0) > (anteilVon[b] or 0) end)
    if #ids == 0 then return end
    SetzeZeile(state, "|cff40bb4f" .. ui.L["You wear"] .. "|r", "")
    for _, id in ipairs(ids) do
        local marke = (bis and bis[id]) and "|cffffffff[BIS]|r " or ""
        local anteil = anteilVon[id]
        SetzeZeile(state, ItemLinks(id, marke),
                   anteil and string.format("|cff999999%d %%|r", ui.Round(anteil * 100))
                          or ("|cff999999" .. ui.L["rare"] .. "|r"))
    end
end

local function Render()
    if not panel then return end
    local ui, L = UI(), UI().L
    local data = TargetData()
    local g = data and data.gear
    for _, t in ipairs(panel.targets) do t.line:SetShown(t.key == Mode()) end

    local state = { n = 0 }
    local function fertig()
        for i = state.n + 1, #panel.rows do panel.rows[i]:Hide() end
        panel.zeilen = state.n
    end

    if not g or not g.players or g.players < 10 then
        local wo = Mode() == "raid" and L["Raid"] or L["Mythic+"]
        SetzeZeile(state, "|cff999999" .. string.format(L["No data for %s yet."], wo) .. "|r", "")
        return fertig()
    end

    local trinkets, embellished = OwnItems()
    SetzeZeile(state, "|cffffd100" .. L["Trinkets"] .. "|r", "")
    AddRows(state, g.trinkets, g.players, ui)

    -- Haeufigste Kombination: nur die beiden Symbole und der Anteil -- zwei
    -- ausgeschriebene Itemnamen passen in keine Zeile.
    local paar = g.trinketPairs and g.trinketPairs[1]
    if paar and (paar[3] / g.players) >= MIN_SHARE then
        local _, i1 = ItemText(paar[1])
        local _, i2 = ItemText(paar[2])
        local b1 = i1 and ("|T" .. i1 .. ":14:14:0:0|t") or ""
        local b2 = i2 and ("|T" .. i2 .. ":14:14:0:0|t") or ""
        SetzeZeile(state, string.format("|cff999999%s|r %s %s", L["Together:"], b1, b2),
                   string.format("|cff999999%d %%|r", ui.Round(paar[3] / g.players * 100)))
    end

    AddOwn(state, g.trinkets, g.players, trinkets, ui,
           BisSet(g.trinkets, g.trinketPairs, g.players))

    Leerzeile(state)
    SetzeZeile(state, "|cffffd100" .. L["Embellishments"] .. "|r", "")
    AddRows(state, g.embellish, g.players, ui)
    AddOwn(state, g.embellish, g.players, embellished, ui,
           BisSet(g.embellish, g.embellishPairs, g.players))

    fertig()
end

function ns.CreateBestTab(frame)
    local ui, L = UI(), UI().L
    panel = CreateFrame("Frame", nil, frame)
    panel:SetPoint("TOPLEFT", ui.PAD, -ui.HEADER)
    panel:SetSize(ui.WIDTH - ui.PAD * 2, 200)
    panel:Hide()

    panel.forText = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    panel.forText:SetPoint("TOPLEFT", 0, -3)
    panel.forText:SetText(L["Show:"])

    panel.targets = {}
    local previous = panel.forText
    for _, info in ipairs(TARGETS_UI) do
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
            UI().db().bestFor = self.key
            UI().Update()
        end)
        previous = b
        table.insert(panel.targets, b)
    end

    panel.list = CreateFrame("Frame", nil, panel)
    panel.list:SetPoint("TOPLEFT", 0, -26)
    panel.list:SetSize(ui.WIDTH - ui.PAD * 2, 1)
    panel.rows = {}
    panel.zeilen = 0

    ns.BestPanel = panel
    return panel
end

function ns.ShowBestTab()
    if not panel then return 0 end
    panel:Show()
    Render()
    return 30 + (panel.zeilen or 0) * ROW_H + 8
end

function ns.HideBestTab()
    if panel then panel:Hide() end
end

-- Ein nachgeladener Itemname macht die Anzeige vollstaendig.
function ns.BestItemLoaded(id)
    if pending[id] then
        pending[id] = nil
        if panel and panel:IsShown() then UI().Update() end
    end
end
