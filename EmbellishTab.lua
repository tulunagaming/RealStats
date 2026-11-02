-- Reiter "Verzierung": was die Besten an Verzierungen tragen, welche
-- Kombinationen sie fahren, und was deine eigene Wahl bedeutet.
--
-- Anders als die uebrigen Reiter erklaert dieser auch die Mechanik -- Namen und
-- Wirkungen stehen in Data_Embellish.lua, die Haeufigkeiten kommen aus dem
-- Wochenlauf. Der wichtigste Teil steht unten: die Einordnung der eigenen
-- Edelsteinfarben, weil dort der groesste Hebel liegt (siehe
-- konzept-verzierungen.md: 9 Punkte Statwert gegen einen Buff von +75).

local ADDON_NAME, ns = ...

local ROW_H    = 16
local VALUE_W  = 40
-- Dieser Reiter ist der einzige mit zwei Spalten: der Inhalt waere sonst
-- laenger als das Charakterfenster, und nach unten hinauszuwachsen sieht aus
-- wie ein Fehler (Roy, 01.11.2026). Breiter werden ist die ruhigere Loesung.
local COL_W    = 300          -- Breite einer Spalte
local COL_GAP  = 16
local MIN_SHARE = 0.05
local MAX_ROWS  = 4

local panel
local pending = {}

local function UI() return ns.UI end

local function Daten()
    local ui = UI()
    local spec = ui.CurrentSpecID()
    local data = spec and ns.TARGETS and ns.TARGETS[spec]
    local mode = ui.ActiveMode and ui.ActiveMode(ui.db().bestFor or "mplus") or "mplus"
    return data and data[mode]
end

-- Name und Symbol: Verzierungen ueber ihr Reagenz, eingebaute ueber den
-- Gegenstand selbst. Beides holt das Spiel, damit jeder Client seine Sprache
-- bekommt und wir keine Namen pflegen muessen.
-- Bonus-IDs sind klein (vierstellig), Gegenstands-IDs sechsstellig. Eine
-- unbekannte Bonus-ID darf nicht als Gegenstand nachgeschlagen werden -- sonst
-- steht dort ein beliebiges altes Item (13852 waere "The Grand Crusader's
-- Command"). Dann lieber ehrlich "Verzierung #13852" (02.11.2026).
local ITEM_ID_AB = 100000

local function Beschreibe(id)
    local info = ns.EMBELLISH and ns.EMBELLISH[id]
    local eingebaut = ns.EMBELLISH_ITEMS and ns.EMBELLISH_ITEMS[id]
    if not info and not eingebaut and id < ITEM_ID_AB then
        return string.format(UI().L["Embellishment #%d"], id), nil, nil, nil, nil
    end
    local item = info and info.item or id
    local name, link = C_Item.GetItemInfo(item)
    local icon = C_Item.GetItemIconByID and C_Item.GetItemIconByID(item)
    if not name then
        pending[item] = true
        if C_Item.RequestLoadItemDataByID then C_Item.RequestLoadItemDataByID(item) end
        name = UI().L["Loading ..."]
    end
    local text = info and info.text or (eingebaut and eingebaut.text)
    local slot = info and info.slot or (eingebaut and eingebaut.slot)
    return (link or name), icon, text, slot, (info or eingebaut)
end

-- Zeilen fuellen erst die linke Spalte, dann die rechte. Wie viele je Spalte
-- passen, haengt an der Hoehe des Charakterfensters.
local function HoleZeile(index)
    local proSpalte = panel.proSpalte or 20
    local spalte = math.floor((index - 1) / proSpalte)
    local zeile = (index - 1) % proSpalte
    local row = panel.rows[index]
    if not row then
        row = CreateFrame("Frame", nil, panel.list)
        row:SetSize(COL_W, ROW_H)
        row:SetPoint("TOPLEFT", spalte * (COL_W + COL_GAP), -zeile * ROW_H)
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
    row:SetSize(COL_W, ROW_H)
    row:ClearAllPoints()
    row:SetPoint("TOPLEFT", spalte * (COL_W + COL_GAP), -zeile * ROW_H)
    row:Show()
    if spalte > 0 then panel.zweispaltig = true end
    return row
end

local function Zeile(state, links, rechts)
    state.n = state.n + 1
    local row = HoleZeile(state.n)
    row.links:SetWordWrap(false)
    row.links:SetHeight(ROW_H)
    row.rechts:SetWidth(VALUE_W)
    row.links:SetText(links or "")
    row.rechts:SetText(rechts or "")
end

-- Erklaerzeilen sind laenger als eine Zeile breit ist. Sie bekommen die volle
-- Breite (keine Wertspalte) und duerfen umbrechen; dafuer belegen sie zwei
-- Zeilenhoehen, damit nichts uebereinander rutscht.
local function Fliesstext(state, text)
    state.n = state.n + 1
    local row = HoleZeile(state.n)
    row.rechts:SetText("")
    row.rechts:SetWidth(0)
    row.links:SetWordWrap(true)
    row.links:SetHeight(ROW_H * 2)
    row.links:SetText(text or "")
    state.n = state.n + 1          -- zweite Zeilenhoehe freihalten
    HoleZeile(state.n):Hide()
end

local function Ueberschrift(state, text)
    Zeile(state, "|cffffd100" .. text .. "|r", "")
end

-- Welche Verzierung steckt im Gegenstand? Sie steht als Bonus-ID im Link.
-- Statt auf die Feldposition zu bauen (die sich zwischen Erweiterungen
-- verschoben hat), pruefen wir alle Zahlen des Links gegen die bekannten
-- Verzierungen. Verwechslungen sind ausgeschlossen: in ns.EMBELLISH stehen
-- nur echte Verzierungs-IDs, keine Gegenstands- oder Edelstein-IDs.
local function VerzierungenImLink(link)
    local out = {}
    if not (link and ns.EMBELLISH) then return out end
    for zahl in link:gmatch("(%d+)") do
        local id = tonumber(zahl)
        if id and ns.EMBELLISH[id] then out[#out + 1] = id end
    end
    return out
end

-- Welche Edelsteinfarben traegt der Spieler, und welche Verzierungen?
local function EigeneAusruestung()
    local farben, steine, verz, jewel = {}, 0, {}, false
    for slot = 1, 17 do
        local link = GetInventoryItemLink("player", slot)
        if link then
            if ns.DescribeItem then
                local e = ns.DescribeItem(link)
                if e and e.embellished then
                    -- Welche Verzierung steckt drin? Dieselbe Regel wie im
                    -- Wochenlauf: die Bonus-ID verraet sie; fehlt sie, bringt
                    -- der Gegenstand seine Verzierung selbst mit.
                    local gefunden = false
                    for _, b in ipairs(VerzierungenImLink(link)) do
                        -- (VerzierungenImLink prueft bereits ns.EMBELLISH)
                        verz[b] = true
                        gefunden = true
                    end
                    if not gefunden then verz[e.id] = true end
                    local fest = ns.EMBELLISH_ITEMS and ns.EMBELLISH_ITEMS[e.id]
                    if fest and fest.jewel then jewel = true end
                end
            end
            -- Die Sockelsteine stehen im Gegenstandslink an Position 3 bis 6
            -- (item:ID:Verzauberung:Stein1..Stein4), genau wie im Optimierer.
            local fields = { link:match("item:(%d+):([^:]*):([^:]*):([^:]*):([^:]*):([^:]*)") }
            for i = 3, 6 do
                local gid = tonumber(fields[i])
                local farbe = gid and ns.GEM_COLOR and ns.GEM_COLOR[gid]
                if farbe then
                    farben[farbe] = (farben[farbe] or 0) + 1
                    steine = steine + 1
                end
            end
        end
    end
    return farben, steine, verz, jewel
end

local function Render()
    if not panel then return end
    local ui, L = UI(), UI().L
    panel.proSpalte = ui.RowsPerColumn and ui.RowsPerColumn(ui.HEADER + 44, ROW_H) or 20
    panel.zweispaltig = false
    for _, t in ipairs(panel.targets) do t.line:SetShown(t.key == (ui.db().bestFor or "mplus")) end
    for _, row in pairs(panel.rows) do row:Hide() end
    local state = { n = 0 }
    local d = Daten()
    local g = d and d.gear
    if not g or not g.embIDs then
        Zeile(state, "|cff999999" .. L["No data yet."] .. "|r", "")
        panel.zeilen = state.n
        return
    end

    -- Kombinationen zuerst: das ist die eigentliche Entscheidung
    Ueberschrift(state, L["Most common combinations"])
    local gesamt = g.players or 1
    local gezeigt = 0
    for _, p in ipairs(g.embIDPairs or {}) do
        local anteil = p[3] / gesamt
        local raus = ns.NOT_EMBELLISH and (ns.NOT_EMBELLISH[p[1]] or ns.NOT_EMBELLISH[p[2]])
        if gezeigt < 3 and anteil >= MIN_SHARE and not raus then
            gezeigt = gezeigt + 1
            -- Zwei Namen passen nicht in eine Zeile. Der zweite steht darunter,
            -- eingerueckt und mit Pluszeichen -- so bleibt nichts abgeschnitten.
            local a, iconA = Beschreibe(p[1])
            -- Die haeufigste Kombination ist das, was die Besten ueblicherweise
            -- zusammen tragen -- dieselbe Marke wie im Trinkets-Reiter.
            local kopf = (gezeigt == 1 and "|cffffffff[BIS]|r " or "")
                .. (iconA and ("|T" .. iconA .. ":14:14:0:0|t ") or "")
            if p[2] == p[1] then kopf = kopf .. "2x " end
            kopf = kopf .. a
            if p[2] == 0 then kopf = kopf .. " |cff999999(" .. L["alone"] .. ")|r" end
            Zeile(state, kopf, string.format("|cff999999%d %%|r", ui.Round(anteil * 100)))
            if p[2] ~= 0 and p[2] ~= p[1] then
                local b, iconB = Beschreibe(p[2])
                Zeile(state, "  + " .. (iconB and ("|T" .. iconB .. ":14:14:0:0|t ") or "") .. b, "")
            end
        end
    end

    -- Einzeln, mit Platzgruppe und Wirkung. Der Anteil zaehlt *Spieler*, nicht
    -- Vorkommen -- wer zweimal dieselbe Verzierung traegt, zaehlt einmal. Sonst
    -- stuenden dort ueber 100 % (31.10.2026 aufgefallen).
    local traeger = {}
    for _, p in ipairs(g.embIDPairs or {}) do
        traeger[p[1]] = (traeger[p[1]] or 0) + p[3]
        if p[2] ~= 0 and p[2] ~= p[1] then
            traeger[p[2]] = (traeger[p[2]] or 0) + p[3]
        end
    end
    Zeile(state, "", "")
    Ueberschrift(state, L["Single"])
    local n = 0
    for _, e in ipairs(g.embIDs or {}) do
        local anteil = (traeger[e[1]] or e[2]) / gesamt
        if anteil > 1 then anteil = 1 end
        if ns.NOT_EMBELLISH and ns.NOT_EMBELLISH[e[1]] then anteil = 0 end
        if n < MAX_ROWS and anteil >= MIN_SHARE then
            n = n + 1
            local name, icon, text, slot = Beschreibe(e[1])
            local kopf = (icon and ("|T" .. icon .. ":14:14:0:0|t ") or "") .. name
            Zeile(state, kopf, string.format("|cff999999%d %%|r", ui.Round(anteil * 100)))
            if text then
                -- Wo sitzt sie bei den Besten? Die gemessenen Plaetze sagen mehr
                -- als die erlaubte Gruppe: die beste Waffe kommt aus dem Raid,
                -- also sitzt eine Ruestungs-Verzierung nie dort.
                -- Nur bei Reagenzien, die man frei setzen kann. Bringt ein
                -- Gegenstand seine Verzierung mit, ist der Platz der Gegenstand
                -- selbst -- "Ring - meist Ring" waere doppelt.
                local frei = ns.EMBELLISH and ns.EMBELLISH[e[1]] ~= nil
                local plaetze = frei and g.embSlots and g.embSlots[e[1]]
                local wo = ""
                if plaetze and ns.SLOT_NAME then
                    local namen, gesehen = {}, {}
                    for _, nr in ipairs(plaetze) do
                        local nm = ns.SLOT_NAME[nr]
                        if nm and not gesehen[nm] then
                            gesehen[nm] = true
                            namen[#namen + 1] = nm
                        end
                    end
                    if #namen > 0 then
                        wo = " · " .. string.format(L["mostly %s"], table.concat(namen, ", "))
                    end
                end
                Fliesstext(state, "|cff808080  " .. (slot and (L[slot] .. " · ") or "")
                    .. text .. wo .. "|r")
            end
        end
    end

    -- Eigene Lage
    local farben, steine, eigene, jewel = EigeneAusruestung()
    Zeile(state, "", "")
    Ueberschrift(state, L["You wear"])
    -- Erst feststellen, ob die eigene Kombination die haeufigste ist -- dann
    -- bekommt sie dieselbe [BIS]-Marke wie oben in der Liste.
    local meine = {}
    for id in pairs(eigene) do table.insert(meine, id) end
    table.sort(meine)
    local treffer, bester
    for _, p in ipairs(g.embIDPairs or {}) do
        if not bester then bester = p end
        local passt
        if #meine == 1 then
            passt = (p[1] == meine[1] and (p[2] == 0 or p[2] == meine[1]))
        elseif #meine == 2 then
            passt = (p[1] == meine[1] and p[2] == meine[2])
                     or (p[1] == meine[2] and p[2] == meine[1])
        end
        if passt then treffer = p end
    end
    local istBis = treffer ~= nil and treffer == bester

    local hat = false
    for _, id in ipairs(meine) do
        hat = true
        local name, icon = Beschreibe(id)
        Zeile(state, (istBis and "|cffffffff[BIS]|r " or "")
            .. (icon and ("|T" .. icon .. ":14:14:0:0|t ") or "") .. name, "")
    end
    if not hat then
        Zeile(state, "|cff999999" .. L["No embellishment equipped."] .. "|r", "")
    end

    -- Wie verbreitet ist die eigene Kombination? Kein Urteil, nur die Zahl --
    -- und daneben, was die Mehrheit stattdessen faehrt. Den Schluss zieht der
    -- Spieler (siehe konzept-verzierungen.md).
    if hat and g.embIDPairs then
        if treffer then
            Fliesstext(state, string.format("|cff808080  %s|r", string.format(
                L["%d %% of the best use this combination."],
                ui.Round(treffer[3] / gesamt * 100))))
            if bester and bester ~= treffer then
                local a1 = Beschreibe(bester[1])
                local wort = a1
                if bester[2] == bester[1] then wort = "2x " .. a1
                elseif bester[2] ~= 0 then wort = a1 .. " + " .. (Beschreibe(bester[2])) end
                Fliesstext(state, string.format("|cff808080  %s|r", string.format(
                    L["Most common instead: %s (%d %%)."], wort,
                    ui.Round(bester[3] / gesamt * 100))))
            end
        else
            Fliesstext(state, "|cff808080  " .. L["This combination is rare among the best."] .. "|r")
            if bester then
                local a1 = Beschreibe(bester[1])
                local wort = a1
                if bester[2] == bester[1] then wort = "2x " .. a1
                elseif bester[2] ~= 0 then wort = a1 .. " + " .. (Beschreibe(bester[2])) end
                Fliesstext(state, string.format("|cff808080  %s|r", string.format(
                    L["Most common instead: %s (%d %%)."], wort,
                    ui.Round(bester[3] / gesamt * 100))))
            end
        end
    end

    -- Wirkt die Verdopplung? Nur mit einer Juwelierskunst-Verzierung.
    for id in pairs(eigene) do
        local info = ns.EMBELLISH and ns.EMBELLISH[id]
        if info and info.needsJewel then
            if jewel then
                Fliesstext(state, "|cff40bb4f  " .. L["Works - you wear a jewelcrafting embellishment."] .. "|r")
            else
                Fliesstext(state, "|cffe6a23c  " .. L["Does nothing without a jewelcrafting embellishment."] .. "|r")
            end
        end
    end

    -- Edelsteinfarben: der groesste Hebel
    if steine > 0 then
        Zeile(state, "", "")
        Ueberschrift(state, L["Your gem colours"])
        local anzahl = 0
        local haeufigste, max = nil, 0
        for farbe, k in pairs(farben) do
            anzahl = anzahl + 1
            if k > max then haeufigste, max = farbe, k end
        end
        local loa = ns.LOA and ns.LOA[haeufigste]
        if loa then
            -- Drei Saetze: was du traegst, was es bewirkt, was die Alternative
            -- bewirkt. Keine Empfehlung -- die Wirkungen stehen nebeneinander,
            -- den Schluss zieht der Spieler.
            Fliesstext(state, string.format("|cffffffff  %s|r", string.format(
                L["You wear %d gems, %d of them %s."], steine, max, loa.color)))
            -- Wie oft zieht man diesen Loa? Capybara ist immer im Topf, jede
            -- weitere Farbe verduennt.
            local chance = math.floor(100 / (anzahl + 1) + 0.5)
            Fliesstext(state, string.format("|cff808080  %s|r", string.format(
                L["That summons %s: %s, in about %d %% of procs."],
                loa.name, loa.effect, chance)))
            -- Was die Besten sockeln. Kein Urteil ueber "besser", sondern die
            -- gemessene Mehrheit -- und daneben, was deren Loa bewirkt.
            local mehrheit, anteilM
            for _, e in ipairs(g.gemColors or {}) do
                if not mehrheit then
                    mehrheit = e[1]
                    anteilM = e[2] / (g.gemPlayers or gesamt)
                end
            end
            if mehrheit and mehrheit ~= haeufigste and ns.LOA[mehrheit] then
                local m = ns.LOA[mehrheit]
                Fliesstext(state, string.format("|cffe6a23c  %s|r", string.format(
                    L["%d %% of the best wear %s - that summons %s: %s."],
                    ui.Round(anteilM * 100), m.color, m.name, m.effect)))
            elseif mehrheit and mehrheit == haeufigste then
                Fliesstext(state, string.format("|cff40bb4f  %s|r", string.format(
                    L["%d %% of the best wear the same colour."],
                    ui.Round(anteilM * 100))))
            end
            if anzahl > 1 then
                Fliesstext(state, "|cff808080  " .. L["Each extra colour adds another Loa and lowers the chance."] .. "|r")
            end
        end
    end

    panel.zeilen = state.n
end

function ns.CreateEmbellishTab(frame)
    local ui, L = UI(), UI().L
    panel = CreateFrame("Frame", nil, frame)
    panel:SetPoint("TOPLEFT", ui.PAD, -ui.HEADER)
    panel:SetSize(COL_W * 2 + COL_GAP, 200)
    panel:Hide()

    panel.forText = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    panel.forText:SetPoint("TOPLEFT", 0, -3)
    panel.forText:SetText(L["Show:"])

    panel.targets = {}
    local previous = panel.forText
    for _, info in ipairs({ { key = "mplus", label = "Mythic+" }, { key = "raid", label = "Raid" } }) do
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
    panel.list:SetSize(COL_W * 2 + COL_GAP, 1)
    panel.rows = {}
    panel.zeilen = 0

    ns.EmbellishPanel = panel
    return panel
end

function ns.ShowEmbellishTab()
    if not panel then return 0 end
    panel:Show()
    Render()
    local proSpalte = panel.proSpalte or 20
    local zeilen = math.min(panel.zeilen or 0, proSpalte)
    return 30 + zeilen * ROW_H + 8
end

-- Braucht der Reiter gerade zwei Spalten? Danach richtet sich die Fensterbreite.
function ns.EmbellishWidth()
    if not panel then return nil end
    local spalten = panel.zweispaltig and 2 or 1
    return spalten * COL_W + (spalten - 1) * COL_GAP
end

function ns.HideEmbellishTab()
    if panel then panel:Hide() end
end

function ns.EmbellishItemLoaded(id)
    if pending[id] then
        pending[id] = nil
        if panel and panel:IsShown() then UI().Update() end
    end
end
