-------------------------------------------------------------------------------
-- Reiter "BiS": was die Besten auf jedem Platz tragen -- und wo du abweichst.
--
-- Der Reiter beantwortet eine andere Frage als "Beste Schmuck": nicht "was ist
-- beliebt", sondern "wo stehe ich anders da als das Feld". Deshalb stehen die
-- Abweichungen oben und bekommen eine eigene Zeile mit dem eigenen Teil --
-- der Rest folgt als Bestaetigung darunter.
--
-- Keine Empfehlung, keine Wertung: nur, wie viele der Besten welches Teil
-- tragen. Ein niedriger Anteil kann an der eigenen Gegenstandsstufe liegen,
-- nicht an einer falschen Wahl -- das entscheidet der Spieler.
--
-- Daten: ns.TARGETS[spec][mode].gear.slots aus dem Wochenlauf. Platznummern
-- wie im gear-Array der Logdaten (0 = Kopf), also WoW-Inventarplatz minus 1.
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local ROW_H     = 20       -- Platz fuer 18er-Symbole (Roy, 04.11.2026)
local ICON      = 18
local VALUE_W   = 40
local COL_W     = 300
local COL_GAP   = 16
local MIN_SHARE = 0.05       -- darunter ist es Rauschen

-- Ringe und Schmuckstuecke sind untereinander austauschbar: Platz 10 und 11
-- halten dasselbe Angebot. Ohne diese Paarung meldete der Reiter Abweichungen,
-- wo keine sind -- nur weil zwei Ringe vertauscht stecken.
local PARTNER = { [10] = 11, [11] = 10, [12] = 13, [13] = 12 }

-- Reihenfolge der Anzeige: so, wie das Charakterfenster sie auflistet.
local ORDER = { 0, 1, 2, 14, 4, 8, 9, 5, 6, 7, 10, 11, 12, 13, 15, 16 }

local panel
local pending = {}

local function UI() return ns.UI end

-- Die Slot-Verteilung steckt im selben Block wie die Zielwerte: ein Dateistand,
-- eine Absicherung. Gegenstandsstufe und Spielerzahl kommen deshalb aus dem
-- Block selbst, die Teile aus seinem gear-Teil.
local function Daten()
    local ui = UI()
    local spec = ui.CurrentSpecID()
    local data = spec and ns.TARGETS and ns.TARGETS[spec]
    local mode = ui.ActiveMode and ui.ActiveMode(ui.db().bestFor or "mplus") or "mplus"
    local t = data and data[mode]
    local gear = t and t.gear
    if not (gear and gear.slots) then return nil, mode end
    return { players = gear.players or t.players, ilvl = t.ilvl, slots = gear.slots }, mode
end

local function PlatzName(platz)
    local L = UI().L
    if platz == 12 or platz == 13 then return L["Trinket"] end
    return (ns.SLOT_NAME and ns.SLOT_NAME[platz]) or tostring(platz)
end

local function ItemText(id)
    local name, link = C_Item.GetItemInfo(id)
    local icon = C_Item.GetItemIconByID and C_Item.GetItemIconByID(id)
    if not name then
        pending[id] = true
        if C_Item.RequestLoadItemDataByID then C_Item.RequestLoadItemDataByID(id) end
        return "|cff999999" .. UI().L["Loading ..."] .. "|r", icon
    end
    return link or name, icon
end

local function Symbol(icon)
    return icon and ("|T" .. icon .. ":" .. ICON .. ":" .. ICON .. ":0:0|t ") or ""
end

local function ItemZeile(id)
    local text, icon = ItemText(id)
    return Symbol(icon) .. text
end

-- Das eigene Teil zeigen wir mit seinem echten Link aus dem Platz: der traegt
-- Aufwertungsstufe und Qualitaet. Ueber die ID (GetItemInfo) kaeme nur der
-- Grundgegenstand heraus -- bei einem Nutzer erschienen so Held- und
-- Mythos-Teile blau (11.11.2026).
local function EigeneZeile(e)
    if not e.meinLink then return ItemZeile(e.meins) end
    local icon = select(5, C_Item.GetItemInfoInstant(e.meinLink))
    return Symbol(icon or (C_Item.GetItemIconByID and C_Item.GetItemIconByID(e.meins))) .. e.meinLink
end

-- Maus ueber einer Zeile zeigt den vollen Gegenstands-Tooltip. Die Zeile merkt
-- sich dafuer die Item-ID; Zeilen ohne Gegenstand (Ueberschriften) bleiben
-- stumm und lassen Klicks durch.
local function SetzeTooltip(row, id, invSlot)
    -- "or false" statt nil: ein leeres Feld fragt sonst die Metatabelle des
    -- Rahmens, und die liefert nicht in jeder Umgebung nil (Testattrappe).
    row.itemID = id or false
    -- Eigenes Teil: Tooltip direkt vom Platz, mit Stufe, Edelsteinen und
    -- Verzauberung. Teil des Felds: nur der Grundgegenstand ist bekannt.
    row.invSlot = invSlot or false
    -- Ohne Gegenstand nimmt die Zeile keine Maus an, damit Ueberschriften und
    -- Leerzeilen keine Klicks wegfangen. Die Skripte haengen fest an der Zeile
    -- (siehe HoleZeile) und fragen itemID selbst ab.
    row:EnableMouse(id and true or false)
end

-- Was steckt bei mir auf diesem Platz? WoW zaehlt ab 1, die Logdaten ab 0.
local function EigenesItem(platz)
    local link = GetInventoryItemLink("player", platz + 1)
    if not link then return nil end
    return (C_Item.GetItemInfoInstant(link)), link
end

-------------------------------------------------------------------------------
-- Zeilen
-------------------------------------------------------------------------------

local function HoleZeile(index)
    local proSpalte = panel.proSpalte or 20
    local spalte = math.floor((index - 1) / proSpalte)
    local zeile = (index - 1) % proSpalte
    local row = panel.rows[index]
    if not row then
        row = CreateFrame("Frame", nil, panel.list)
        row.links = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        row.links:SetPoint("LEFT", 0, 0)
        row.links:SetJustifyH("LEFT")
        row.links:SetWordWrap(false)
        row.rechts = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        row.rechts:SetPoint("RIGHT", 0, 0)
        row.rechts:SetJustifyH("RIGHT")
        row.rechts:SetWidth(VALUE_W)
        row.links:SetPoint("RIGHT", row.rechts, "LEFT", -6, 0)
        -- Maus-Over zeigt den vollen Gegenstands-Tooltip. Welcher Gegenstand,
        -- sagt itemID -- das setzt SetzeTooltip bei jedem Zeichnen neu.
        row:SetScript("OnEnter", function(self)
            if not self.itemID then return end
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            if self.invSlot then
                GameTooltip:SetInventoryItem("player", self.invSlot)
            else
                GameTooltip:SetItemByID(self.itemID)
            end
            GameTooltip:Show()
        end)
        row:SetScript("OnLeave", function() GameTooltip:Hide() end)
        panel.rows[index] = row
    end
    row:SetSize(COL_W, ROW_H)
    row:ClearAllPoints()
    row:SetPoint("TOPLEFT", spalte * (COL_W + COL_GAP), -zeile * ROW_H)
    row:Show()
    if spalte > 0 then panel.zweispaltig = true end
    return row
end

local function Setze(state, links, rechts, id, invSlot)
    state.n = state.n + 1
    local row = HoleZeile(state.n)
    row.links:SetText(links or "")
    row.rechts:SetText(rechts or "")
    SetzeTooltip(row, id, invSlot)
end

local function Anteil(n, gesamt)
    if not n or not gesamt or gesamt <= 0 then return nil end
    return n / gesamt
end

local function AnteilText(wert)
    if not wert then return "|cff999999" .. UI().L["rare"] .. "|r" end
    return string.format("|cff999999%d %%|r", UI().Round(wert * 100))
end

-------------------------------------------------------------------------------
-- Auswertung: je Platz vergleichen, was ich trage, mit dem, was das Feld traegt
-------------------------------------------------------------------------------

local function Pruefe(daten)
    local gleich, anders, ohne = {}, {}, 0
    for _, platz in ipairs(ORDER) do
        local liste = daten.slots and daten.slots[platz]
        if liste and liste[1] then
            local meins, meinLink = EigenesItem(platz)
            -- Anteile beider Plaetze eines Paares zusammenlegen, damit ein
            -- vertauschter Ring nicht als Abweichung gilt.
            local anteile = {}
            for _, e in ipairs(liste) do anteile[e[1]] = e[2] end
            local partner = PARTNER[platz] and daten.slots[PARTNER[platz]]
            if partner then
                for _, e in ipairs(partner) do
                    anteile[e[1]] = math.max(anteile[e[1]] or 0, e[2])
                end
            end
            local eintrag = {
                platz = platz,
                top = liste[1][1],
                topAnteil = Anteil(liste[1][2], daten.players),
                meins = meins,
                meinLink = meinLink,
                meinAnteil = meins and Anteil(anteile[meins], daten.players) or nil,
            }
            if not meins then
                ohne = ohne + 1
            elseif eintrag.meinAnteil and eintrag.meinAnteil >= MIN_SHARE then
                table.insert(gleich, eintrag)
            else
                table.insert(anders, eintrag)
            end
        end
    end
    -- Die deutlichste Abweichung zuerst: wo das Feld am einigsten ist.
    table.sort(anders, function(a, b) return (a.topAnteil or 0) > (b.topAnteil or 0) end)
    table.sort(gleich, function(a, b) return (a.meinAnteil or 0) > (b.meinAnteil or 0) end)
    return gleich, anders, ohne
end

local function Render()
    if not panel then return end
    local ui, L = UI(), UI().L
    panel.proSpalte = ui.RowsPerColumn and ui.RowsPerColumn(ui.HEADER + 26, ROW_H) or 20
    panel.zweispaltig = false

    local state = { n = 0 }
    local function fertig()
        for i = state.n + 1, #panel.rows do panel.rows[i]:Hide() end
        panel.zeilen = state.n
    end

    local daten = Daten()
    if not daten or (daten.players or 0) < 10 then
        Setze(state, "|cff999999" .. L["No data for your specialization yet."] .. "|r", "")
        return fertig()
    end

    local gleich, anders = Pruefe(daten)
    local gesamt = #gleich + #anders

    Setze(state, string.format("|cff999999" .. L["%d of the best, item level %d"] .. "|r",
                               daten.players, daten.ilvl or 0), "")
    Setze(state, string.format("|cffffd100" .. L["%d of %d slots like the field"] .. "|r",
                               #gleich, gesamt), "")

    if #anders > 0 then
        Setze(state, "", "")
        Setze(state, "|cffffd100" .. L["Where you differ"] .. "|r", "")
        for _, e in ipairs(anders) do
            Setze(state, string.format("|cffffffff%s|r  %s", PlatzName(e.platz), ItemZeile(e.top)),
                  AnteilText(e.topAnteil), e.top)
            Setze(state, "   |cff40bb4f" .. L["You"] .. ":|r " .. EigeneZeile(e),
                  AnteilText(e.meinAnteil), e.meins, e.platz + 1)
        end
    end

    if #gleich > 0 then
        Setze(state, "", "")
        Setze(state, "|cffffd100" .. L["Same as the field"] .. "|r", "")
        for _, e in ipairs(gleich) do
            Setze(state, string.format("|cffffffff%s|r  %s", PlatzName(e.platz), EigeneZeile(e)),
                  AnteilText(e.meinAnteil), e.meins, e.platz + 1)
        end
    end

    Setze(state, "", "")
    Setze(state, "|cff999999" .. L["Share = how many of the best wear this item."] .. "|r", "")

    fertig()
end

-------------------------------------------------------------------------------
-- Aufbau
-------------------------------------------------------------------------------

function ns.CreateBisTab(frame)
    local ui = UI()
    panel = CreateFrame("Frame", nil, frame)
    panel:SetPoint("TOPLEFT", ui.PAD, -ui.HEADER)
    panel:SetSize(COL_W * 2 + COL_GAP, 200)
    panel:Hide()

    panel.list = CreateFrame("Frame", nil, panel)
    panel.list:SetPoint("TOPLEFT", 0, 0)
    panel.list:SetSize(COL_W * 2 + COL_GAP, 1)
    panel.rows = {}
    panel.zeilen = 0

    ns.BisPanel = panel
    return panel
end

function ns.ShowBisTab()
    if not panel then return 0 end
    panel:Show()
    Render()
    local proSpalte = panel.proSpalte or 20
    return math.min(panel.zeilen or 0, proSpalte) * ROW_H + 8
end

function ns.BisWidth()
    if not panel then return nil end
    local spalten = panel.zweispaltig and 2 or 1
    return spalten * COL_W + (spalten - 1) * COL_GAP
end

function ns.HideBisTab()
    if panel then panel:Hide() end
end

function ns.BisItemLoaded(id)
    if pending[id] then
        pending[id] = nil
        if panel and panel:IsShown() then Render() end
    end
end
