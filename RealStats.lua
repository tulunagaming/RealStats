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
-- Keine Befehle, kein Optionsmenü: Das Fenster hängt am Charakterfenster und
-- lässt sich mit dem Pfeil einklappen. Mehr braucht es nicht.
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
    -- Ohne "Als": mit dem laengeren Set-Namen "RealStats M+ Everyday" lief die
    -- Beschriftung sonst ueber den Knopf hinaus (31.10.2026).
    L["Save as set: %s"]   = "Set speichern: %s"
    L["Calculate and equip first, then save the result as a set."] =
        "Erst berechnen und anlegen, dann das Ergebnis als Set speichern."
    L["Set \"%s\" saved in the equipment manager."] = "Set \"%s\" im Ausrüstungsmanager gespeichert."
    L["Not possible during combat."] = "Im Kampf nicht möglich."
    L["Calculate checks your equipped items and bags."] = "Berechnen prüft deine angelegten Items und deine Taschen."
    L["May be swapped:"]   = "Tauschen erlaubt:"
    L["Keep in place:"]    = "Soll nicht getauscht werden:"
    L["Choose slot"]       = "Platz wählen"
    L["Release"]           = "Lösen"
    L["No better combination - %d slot(s) are kept in place."] =
        "Keine bessere Kombination – %d Plätze sind festgehalten."
    L["Items with a socket"] = "Teile mit Sockelplatz"
    L["Embellished items"] = "Verzierte Teile"
    L["Items with lower item level"] = "Teile mit niedrigerem Itemlevel"
    L["Back to previous"]  = "Zurück zu vorher"
    L["Save current"]      = "Jetziges sichern"
    L["Gear as of %s"]     = "Ausrüstung von %s"
    L["Equips what you wore before the last change. The items have to be in your bags."] =
        "Legt wieder an, was du vor dem letzten Wechsel getragen hast. Die Teile müssen in deinen Taschen liegen."
    L["Saves what you are wearing now as set \"%s\" and as the way back."] =
        "Sichert, was du gerade trägst, als Set \"%s\" und als Rückweg."
    L["Your gear already matches the saved state."] = "Deine Ausrüstung entspricht bereits dem gesicherten Stand."
    L["Gear changed - calculate again."] = "Ausrüstung geändert - neu berechnen."
    L["No better combination found - your gear already fits best."] =
        "Keine bessere Kombination gefunden - deine Ausrüstung passt schon am besten."
    L["Changes (%d):"]     = "Wechsel (%d):"
    L["instead of"]        = "statt"
    L["no enchant"]        = "keine Verzauberung"
    L["%d empty socket(s)"] = "%d leere(r) Sockel"
    L["Equipped %d item(s)."] = "%d Item(s) angelegt."
    L["%d item(s) could not be equipped."] = "%d Item(s) konnten nicht angelegt werden."
    L["Check your bag space and whether the game asked you something."] =
        "Prüfe deinen Taschenplatz und ob das Spiel dich etwas gefragt hat."
    L["Only bound items from your bags, at most 2 embellishments, set bonus and weapon style kept, trinkets stay. Gems and enchants move with the item."] =
        "Nur gebundene Items aus deinen Taschen, höchstens 2 Runenverzierungen, Set-Bonus und Kampfweise (Zweihand, Schild, zwei Waffen) bleiben, Schmuckstücke bleiben. Edelsteine und Verzauberungen wandern mit dem Item."
    L["Critical Strike"]   = "Kritischer Trefferwert"
    L["Haste"]             = "Tempo"
    L["Versatility"]       = "Vielseitigkeit"
    L["in target"]         = "im Ziel"
    L["Your stat total %d"] = "Die Summe deiner Werte %d"
    L["No targets for this specialization yet."] = "Für diese Spezialisierung gibt es noch keine Zielwerte."
    L["No targets for this content yet."] = "Für diesen Inhalt gibt es noch keine Zielwerte."
    L["%d best · mythic · as of %s"] = "%d Beste · mythisch · Stand %s"
    L["Targets: how the %d best players of your spec split their secondary stats (Warcraft Logs, keys +%d-%d). Their shares times your stat total (%d) give your targets. In target = within ±5 %%."] =
        "Ziele: So verteilen die %d besten Spieler deiner Spezialisierung ihre Sekundärwerte (Warcraft Logs, Schlüssel +%d-%d). Ihre Anteile mal der Summe deiner Werte (%d) ergeben deine Ziele. Im Ziel = höchstens ±5 %% Abweichung."
    L["Targets: how the %d best players of your spec split their secondary stats (Warcraft Logs, mythic raid). Their shares times your stat total (%d) give your targets. In target = within ±5 %%."] =
        "Ziele: So verteilen die %d besten Spieler deiner Spezialisierung ihre Sekundärwerte (Warcraft Logs, Raid mythisch). Ihre Anteile mal der Summe deiner Werte (%d) ergeben deine Ziele. Im Ziel = höchstens ±5 %% Abweichung."
    L["Push keys"]          = "Push"
    L["Everyday keys"]      = "Alltag"
    L["+%d-%d"]             = "+%d-%d"
    L["No flask or food active - the best players have both, part of the gap comes from that."] =
        "Ohne Fläschchen und Essen - die Besten haben beides, ein Teil des Rückstands kommt daher."
    L["For this spec both levels give almost the same targets - switching changes little."] =
        "Bei dieser Spezialisierung sind die Ziele auf beiden Stufen fast gleich - Umschalten ändert kaum etwas."
    L["No data for everyday keys yet."] = "Für Alltags-Schlüssel gibt es noch keine Daten."
    L["Frozen during combat"] = "Im Kampf eingefroren"
    L["Stats are hidden by the game right now - showing the last values."] =
        "Werte gerade vom Spiel gesperrt - Anzeige zeigt den letzten Stand."
    -- "Beste auf +12-16" statt "Top-Spieler": auf der Alltagsstufe sind es die
    -- besten Logs dieses Schluesselbands, nicht die Weltspitze (31.10.2026).
    L["%d best on keys +%d-%d · as of %s"] = "%d Beste auf +%d-%d · Stand %s"
    L["Your value"]        = "Dein Wert"
    L["from gear"]         = "davon Ausrüstung"
    L["Purple: fixed buffs (flask, food)"] = "Lila: feste Buffs (Fläschchen, Essen)"
    L["Flask and food count towards your total - that is why they raise the targets of the other stats as well."] =
        "Fläschchen und Essen zählen in deine Summe - deshalb heben sie auch die Ziele der anderen Werte an."
    L["Purple part: fixed buffs such as flask and food. They are included for the best players, too. Because they count towards your total, they also raise the targets of the other stats."] =
        "Lila Anteil: feste Buffs wie Fläschchen und Essen. Bei den Besten sind sie ebenfalls enthalten. "
        .. "Weil sie in deine Summe zählen, heben sie auch die Ziele der anderen Werte an."
    L["Target"]            = "Ziel"
    L["Target range"]      = "Zielbereich"
    L["To the target range"] = "Bis zum Zielbereich"
    L["Share among the best"] = "Anteil bei den Besten"
    L["Your share"]        = "Dein Anteil"
    L["Scaled to your stat total, so the target fits your item level."] =
        "Auf deine Summe umgerechnet, damit das Ziel zu deinem Itemlevel passt."
    L["Only shown as a guide line; the best players barely use it."] =
        "Nur als Orientierungsstrich; die Besten setzen kaum darauf."
    L["Trinkets tab"]      = "Trinkets"
    L["Embellishment tab"] = "Verzierung"
    L["BiS tab"]           = "BiS"
    L["Trinket"]           = "Schmuck"
    L["You"]               = "Du"
    L["Where you differ"]  = "Hier weichst du ab"
    L["Same as the field"] = "Wie das Feld"
    L["%d of %d slots like the field"] = "%d von %d Plätzen wie das Feld"
    L["%d of the best, item level %d"] = "%d der Besten, Stufe %d"
    L["Share = how many of the best wear this item."] =
        "Anteil = wie viele der Besten es tragen"
    L["No data for your specialization yet."] =
        "Für deine Spezialisierung liegen noch keine Daten vor."
    L["Slot by slot: what the best players of your spec wear, and where your own gear differs. A low share can simply mean your item level - it is not a verdict."] =
        "Platz für Platz: was die Besten deiner Spezialisierung tragen und wo deine Ausrüstung abweicht. Ein kleiner Anteil kann schlicht an deiner Gegenstandsstufe liegen - er ist kein Urteil."
    L["Which embellishments the best players of your spec use, and what your own gem colours mean."] =
        "Welche Verzierungen die Besten deiner Spezialisierung nutzen - und was deine eigenen Edelsteinfarben bedeuten."
    L["Embellishment #%d"] = "Unbekannte Verzierung (%d)"
    L["Most common combinations"] = "Häufigste Kombinationen"
    L["Single"]            = "Einzeln"
    L["alone"]             = "allein"
    L["Armor"]             = "Rüstung"
    L["Weapon"]            = "Waffe"
    L["Any slot"]          = "Alle Plätze"
    L["Ring"]              = "Ring"
    L["Jewellery"]         = "Schmuck"
    L["No embellishment equipped."] = "Du trägst keine Verzierung."
    L["Works - you wear a jewelcrafting embellishment."] =
        "Wirkt - du trägst eine Juwelierskunst-Verzierung."
    L["Does nothing without a jewelcrafting embellishment."] =
        "Ohne Juwelierskunst-Verzierung wirkungslos."
    L["%d %% of the best use this combination."] =
        "%d %% der Besten fahren diese Kombination."
    L["Most common instead: %s (%d %%)."] = "Häufiger ist: %s (%d %%)."
    L["This combination is rare among the best."] =
        "Diese Kombination ist bei den Besten selten."
    L["mostly %s"]         = "meist %s"
    L["Your gem colours"]  = "Deine Edelsteinfarben"
    L["You wear %d gems, %d of them %s."] = "Du trägst %d Steine, davon %d in %s."
    L["That summons %s: %s, in about %d %% of procs."] =
        "Das beschwört %s: %s, bei etwa %d %% der Auslösungen."
    L["%s would summon %s instead: %s."] = "%s würde stattdessen %s beschwören: %s."
    L["%d %% of the best wear %s - that summons %s: %s."] =
        "%d %% der Besten tragen %s - das beschwört %s: %s."
    L["%d %% of the best wear the same colour."] =
        "%d %% der Besten tragen dieselbe Farbe."
    L["Your gear rewards every additional colour."] =
        "Deine Ausrüstung belohnt jede weitere Farbe."
    L["Your items disagree: one rewards many colours, another few."] =
        "Deine Teile widersprechen sich: eines belohnt viele Farben, ein anderes wenige."
    L["Each extra colour adds another Loa and lowers the chance."] =
        "Jede weitere Farbe wirft einen Loa mehr in den Topf und senkt die Chance."
    L["%d best players"]   = "%d beste Spieler"
    L["Trinkets"]          = "Schmuckstücke"
    L["Embellished items"] = "Verzierte Teile"
    L["Most common pair:"] = "Häufigste Kombination:"
    L["You wear"]          = "Du trägst"
    L["rare among the best"] = "bei den Besten selten"
    L["rare"]              = "selten"
    L["Together:"]         = "Zusammen:"
    L["Loading ..."]       = "lädt ..."
    L["No data yet."]      = "Noch keine Daten."
    L["No data for %s yet."] = "Für %s gibt es hier noch keine Daten."
    L["Show:"]             = "Anzeigen:"
    L["What the %d best players of your spec wear. Same sample as the targets."] =
        "Was die %d besten Spieler deiner Spezialisierung tragen - dieselbe Stichprobe wie bei den Zielwerten."
    L["Embellished items: the logs only say that a piece is embellished, not which embellishment is in it."] =
        "Verzierte Teile: Die Logs sagen nur, dass ein Teil verziert ist - nicht, welche Verzierung darin steckt."
    L["Click: expand"]   = "Klick: ausklappen"
    L["Click: collapse"] = "Klick: einklappen"
end

-------------------------------------------------------------------------------
-- Aufbau
-------------------------------------------------------------------------------
local WIDTH       = 382     -- die sechs Reiter brauchen rund 373 px; bei 260
                            -- stand "Bester Schmuck" ueber dem Rand
                            -- (31.10.2026), bei 350 passte der BiS-Reiter nicht
                            -- mehr dazu (04.11.2026). Breiter ist in Ordnung,
                            -- das Charakterfenster hat 424. Der Rest etwas Luft fuer
                            -- laengere Uebersetzungen.
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
    { key = "best",  label = "Trinkets tab" },
    { key = "emb",   label = "Embellishment tab" },
    { key = "bis",   label = "BiS tab" },
}

-- Zwei Leistungsstufen für Mythic+: die Spitze wie bisher, dazu ein Alltagsband.
-- Gemessen am 29.10.2026: bei Heilern verschiebt sich die Verteilung deutlich
-- (Wiederherstellung Schamane, Vielseitigkeit 29 % -> 16 %), bei vielen
-- Schadensausteilern kaum (Vergeltung: unter 1 Prozentpunkt). Beschriftet wird
-- mit den echten Schlüsselstufen aus den Daten, damit niemand rätseln muss,
-- welche Stichprobe er gerade sieht.
-- Von links nach rechts aufsteigend: erst die Alltags-Schluessel, dann die
-- hohen. "Push" ist der uebliche Sprachgebrauch fuer das Hochspielen.
local STAGES = {
    { key = "mplusMid", label = "Everyday keys" },
    { key = "mplus",    label = "Push keys" },
}
local STAGE_H     = 18       -- Höhe der Stufenzeile, nur im Mythic+-Reiter
local STAGE_SAME  = 0.03     -- unter 3 Pp. Unterschied: sagen, dass es gleich ist
-- 3 statt 2 Pp.: ueber alle 40 Spezialisierungen gemessen (31.10.2026) aendert
-- sich unter diesem Abstand die Reihenfolge der Werte nirgends, der Vorschlag
-- bleibt also derselbe -- bei 2 Pp. blieb der Hinweis z. B. bei Vergeltung aus
-- (2,3 Pp.), obwohl dort beide Stufen dasselbe empfehlen.

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
local RefreshStages
local updateQueued = false

local function db()
    RealStatsDB = RealStatsDB or {}
    for k, v in pairs(DEFAULTS) do
        if RealStatsDB[k] == nil then RealStatsDB[k] = v end
    end
    return RealStatsDB
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

-- In 12.x liefert das Spiel in manchen Lagen geheime Zahlen. Mit ihnen darf
-- ein Addon nicht rechnen (harter Fehler, "execution tainted").
local function IsSecret(v)
    return issecretvalue ~= nil and issecretvalue(v) and true or false
end

-- Alle vier Wertungen, oder nil, wenn eine davon geheim ist.
local function ReadRatings()
    local values = {}
    for _, key in ipairs({ "crit", "haste", "mastery", "versatility" }) do
        local v = Rating(key)
        if IsSecret(v) then return nil end
        values[key] = v
    end
    return values
end

local function CurrentSpecID()
    local index = GetSpecialization and GetSpecialization()
    if not index then return nil end
    return (GetSpecializationInfo(index))
end

-------------------------------------------------------------------------------
-- Einstellungen des Ausruestungs-Reiters: je Charakter und Spezialisierung.
-- Ein Vergelter raeumt anders auf als ein Schutz-Paladin, deshalb nicht global.
-------------------------------------------------------------------------------
local GEAR_OPT_DEFAULTS = { sockets = false, embellished = false, lowerIlvl = false }

local function CharData()
    local s = db()
    s.chars = s.chars or {}
    local key = (UnitGUID and UnitGUID("player")) or "unknown"
    s.chars[key] = s.chars[key] or {}
    return s.chars[key]
end

local function GearOpts()
    local c = CharData()
    c.gear = c.gear or {}
    local spec = CurrentSpecID() or 0
    local o = c.gear[spec]
    if not o then
        o = {}
        c.gear[spec] = o
    end
    for k, v in pairs(GEAR_OPT_DEFAULTS) do
        if o[k] == nil then o[k] = v end
    end
    return o
end

-------------------------------------------------------------------------------
-- Leistungsstufe: gilt pro Charakter und Spezialisierung, wie die Haken im
-- Ausruestungs-Reiter. Sie wirkt auf alle Reiter, damit Ziele, Optimierer und
-- "Die Besten" nie aus verschiedenen Stichproben rechnen.
-------------------------------------------------------------------------------
local function StageData(key)
    local spec = CurrentSpecID()
    local d = spec and ns.TARGETS and ns.TARGETS[spec]
    d = d and d[key]
    return (d and (d.players or 0) > 0) and d or nil
end

-- Die gespeicherte Wahl. Fehlen die Daten der Alltagsstufe (alte Datendatei,
-- abgebrochener Lauf), gilt wieder die Spitze -- die ist immer vorhanden.
-- Vorgewaehlt sind die Alltags-Schluessel: dort spielt der groesste Teil der
-- Nutzer, die Spitzenwerte sind der Sonderfall. Fehlen Daten der gewaehlten
-- Stufe (alte Datendatei), gilt die andere.
local DEFAULT_STAGE = "mplusMid"

local function Stage()
    local c = CharData()
    c.stage = c.stage or {}
    local key = c.stage[CurrentSpecID() or 0] or DEFAULT_STAGE
    if not StageData(key) then
        return key == DEFAULT_STAGE and "mplus" or DEFAULT_STAGE
    end
    return key
end

local function SetStage(key)
    local c = CharData()
    c.stage = c.stage or {}
    if c.stage[CurrentSpecID() or 0] == key then return end
    c.stage[CurrentSpecID() or 0] = key
    -- Die Ausruestungs-Rechnung gilt immer fuer eine Stufe: nach dem Wechsel
    -- muss sie neu laufen, sonst landete sie unter dem Set-Namen der anderen.
    if ns.StageChanged then ns.StageChanged() end
end

-- Welcher Schluessel in ns.TARGETS gilt gerade? Fuer Mythic+ die Stufe, sonst
-- der Reiter selbst.
local function ActiveMode(tab)
    tab = tab or db().tab
    if tab == "mplus" then return Stage() end
    return tab
end

-- Liegen beide Stufen praktisch gleich? Dann sagen wir das lieber, als den
-- Nutzer raetseln zu lassen, warum sich beim Umschalten nichts bewegt.
local function StagesAlike()
    local a, b = StageData("mplus"), StageData("mplusMid")
    if not (a and b and a.share and b.share) then return false end
    for key, value in pairs(a.share) do
        if math.abs(value - (b.share[key] or 0)) > STAGE_SAME then return false end
    end
    return true
end

-- Wie weit ist der Wert vom Zielbereich entfernt? Gerundet und vorzeichenbehaftet:
-- negativ = so viel abgeben, positiv = so viel dazu, 0 = schon im Ziel.
-- Die Zahl neben dem Balken nennt dagegen den Abstand zum Ziel selbst.
function ns.ToRange(info)
    if not info or info.status == "guide" then return 0 end
    if info.current > info.high then return -math.floor(info.current - info.high + 0.5) end
    if info.current < info.low  then return  math.floor(info.low - info.current + 0.5) end
    return 0
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
        GameTooltip:AddLine(L["Purple part: fixed buffs such as flask and food. They are included for the best players, too. Because they count towards your total, they also raise the targets of the other stats."],
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
        -- Wie weit fehlt bis in den gruenen Bereich? Die Zeile oben nennt den Abstand
        -- zum Ziel selbst, hier steht das Mindestmass fuer "im Ziel".
        local toRange = ns.ToRange(info)
        if toRange ~= 0 then
            local c = COLORS[info.status] or { 1, 1, 1 }
            GameTooltip:AddDoubleLine(L["To the target range"],
                string.format("%+d", toRange), 0.8, 0.8, 0.8, c[1], c[2], c[3])
        end
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
        GameTooltip:AddLine(L["Purple part: fixed buffs such as flask and food. They are included for the best players, too. Because they count towards your total, they also raise the targets of the other stats."],
            0.55, 0.55, 0.55, true)
    end
    GameTooltip:Show()
end

-------------------------------------------------------------------------------
-- Oberfläche
-------------------------------------------------------------------------------
local function StartDrag()
    local s = db()
    -- Verschieben nur, wenn es kein Charakterfenster zum Andocken gibt
    if (s.docked and (PaperDollFrame or CharacterFrame)) or s.locked or not IsShiftKeyDown() then return end
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
-- Angedockt richtet sich das Fenster nach dem Charakterfenster: nie kuerzer,
-- aber auch nie laenger -- darunter hinauszuwachsen sieht aus wie ein Fehler
-- (Roy, 01.11.2026). Passt der Inhalt nicht, weicht er in eine zweite Spalte
-- aus, das Fenster wird breiter statt hoeher.
-- deckeln = true: Der Reiter verteilt seinen Inhalt notfalls auf Spalten, dann
-- bleibt die Hoehe beim Charakterfenster. Ohne das waechst das Fenster weiter
-- nach unten -- noetig beim Ausruestungs-Reiter, dessen Wechselliste bis zu
-- 670 Pixel braucht und sich nicht umbrechen laesst.
local function PanelHeight(natural, deckeln)
    if db().docked and CharacterFrame and CharacterFrame.GetHeight then
        local h = CharacterFrame:GetHeight() or natural
        if deckeln then return h end
        return math.max(natural, h)
    end
    return natural
end

-- Wie viele Zeilen passen neben das Charakterfenster? Fuer Reiter, die ihren
-- Inhalt auf Spalten verteilen.
function ns.RowsPerColumn(top, rowHeight)
    local hoehe = (db().docked and CharacterFrame and CharacterFrame.GetHeight
                   and CharacterFrame:GetHeight()) or 520
    return math.max(6, math.floor((hoehe - top - 60) / (rowHeight or 16)))
end

-- "2026-09-16" -> "16.09.2026" auf Deutsch, sonst unverändert.
local function FormatDate(iso)
    local y, m, d = tostring(iso or ""):match("^(%d+)-(%d+)-(%d+)$")
    if y and GetLocale() == "deDE" then return d .. "." .. m .. "." .. y end
    return iso or ""
end

-- Die Zeilen haengen bei ihrer Erzeugung an HEADER. Kommt die Stufenzeile
-- hinzu, muessen sie um deren Hoehe nach unten -- deshalb hier jedes Mal neu.
local function PlaceRows(top)
    for i, row in ipairs(rows) do
        row:ClearAllPoints()
        row:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD, -(top + (i - 1) * ROW_HEIGHT))
    end
end

local function Update()
    updateQueued = false
    if not frame then return end
    if inCombat then return end      -- Buffs im Kampf würden die Balken springen lassen
    ns.updateCount = (ns.updateCount or 0) + 1   -- für die Leistungstests

    local specID = CurrentSpecID()
    local specData = specID and ns.TARGETS and ns.TARGETS[specID]
    local data = specData and specData[ActiveMode()]
    -- Der Platz der Stufenzeile bleibt in jedem Reiter frei, auch wo sie nie
    -- erscheint (Raid). Sonst springt der Inhalt beim Umschalten nach oben
    -- (Roy, 01.11.2026).
    RefreshStages()
    local top = HEADER + STAGE_H

    -- Vierter Reiter: Was die Besten tragen
    -- Fuenfter Reiter: Verzierungen und Edelsteinfarben
    -- Sechster Reiter: Ausruestung Platz fuer Platz, mit den eigenen Abweichungen
    if db().tab == "bis" then
        for _, row in ipairs(rows) do row:Hide() end
        frame.legend:Hide()
        frame.buffNote:Hide()
        frame.message:Hide()
        frame.stageNote:Hide()
        frame.noBuffNote:Hide()
        if ns.HideGearTab then ns.HideGearTab() end
        if ns.HideBestTab then ns.HideBestTab() end
        if ns.HideEmbellishTab then ns.HideEmbellishTab() end
        frame.subtitle:SetText("")
        if ns.BisPanel then
            ns.BisPanel:ClearAllPoints()
            ns.BisPanel:SetPoint("TOPLEFT", PAD, -top)
        end
        local h = ns.ShowBisTab and ns.ShowBisTab() or 0
        local breiteBis = (ns.BisWidth and ns.BisWidth() or 0) + PAD * 2
        frame:SetWidth(math.max(WIDTH, breiteBis))
        frame.explain:SetWidth(math.max(WIDTH, breiteBis) - PAD * 2)
        frame.explain:ClearAllPoints()
        frame.explain:SetPoint("BOTTOMLEFT", PAD, 24)
        frame.explain:SetText(L["Slot by slot: what the best players of your spec wear, and where your own gear differs. A low share can simply mean your item level - it is not a verdict."])
        frame.explain:SetShown(true)
        frame.footer:SetText("")
        local ehBis = frame.explain:GetStringHeight()
        ehBis = math.max(EXPLAIN_H, (type(ehBis) == "number" and ehBis or 0) + 10)
        frame:SetHeight(PanelHeight(top + h + ehBis + 24, true))
        return
    end
    if ns.HideBisTab then ns.HideBisTab() end
    if db().tab == "emb" then
        for _, row in ipairs(rows) do row:Hide() end
        frame.legend:Hide()
        frame.buffNote:Hide()
        frame.message:Hide()
        frame.stageNote:Hide()
        frame.noBuffNote:Hide()
        if ns.HideGearTab then ns.HideGearTab() end
        if ns.HideBestTab then ns.HideBestTab() end
        local data = specData and specData[ActiveMode(db().bestFor or "mplus")]
        local g = data and data.gear
        frame.subtitle:SetText(g and g.players
            and string.format(L["%d best players"] or "%d", g.players) or "")
        if ns.EmbellishPanel then
            ns.EmbellishPanel:ClearAllPoints()
            ns.EmbellishPanel:SetPoint("TOPLEFT", PAD, -top)
        end
        local h = ns.ShowEmbellishTab and ns.ShowEmbellishTab() or 0
        -- Nur dieser Reiter wird breit, und nur wenn er zwei Spalten braucht.
        local breite = (ns.EmbellishWidth and ns.EmbellishWidth() or 0) + PAD * 2
        frame:SetWidth(math.max(WIDTH, breite))
        frame.explain:SetWidth(math.max(WIDTH, breite) - PAD * 2)
        frame.explain:ClearAllPoints()
        frame.explain:SetPoint("BOTTOMLEFT", PAD, 24)
        frame.explain:SetText(L["Which embellishments the best players of your spec use, and what your own gem colours mean."])
        frame.explain:SetShown(true)
        frame.footer:SetText("")
        local eh = frame.explain:GetStringHeight()
        eh = math.max(EXPLAIN_H, (type(eh) == "number" and eh or 0) + 10)
        frame:SetHeight(PanelHeight(top + h + eh + 24, true))
        return
    end
    if ns.HideEmbellishTab then ns.HideEmbellishTab() end
    frame:SetWidth(WIDTH)
    frame.explain:SetWidth(WIDTH - PAD * 2)

    if db().tab == "best" then
        for _, row in ipairs(rows) do row:Hide() end
        frame.legend:Hide()
        frame.buffNote:Hide()
        frame.message:Hide()
        frame.stageNote:Hide()
        frame.noBuffNote:Hide()
        if ns.HideGearTab then ns.HideGearTab() end
        -- Gleiche Stichprobe wie die Zielwerte: im Mythic+-Teil gilt die Stufe.
        local data = specData and specData[ActiveMode(db().bestFor or "mplus")]
        local g = data and data.gear
        frame.subtitle:SetText(g and g.players
            and string.format(L["%d best players"] or "%d", g.players) or "")
        if ns.BestPanel then
            ns.BestPanel:ClearAllPoints()
            ns.BestPanel:SetPoint("TOPLEFT", PAD, -top)
        end
        local h = ns.ShowBestTab and ns.ShowBestTab() or 0
        local breiteB = (ns.BestWidth and ns.BestWidth() or 0) + PAD * 2
        frame:SetWidth(math.max(WIDTH, breiteB))
        frame.explain:SetWidth(math.max(WIDTH, breiteB) - PAD * 2)
        frame.explain:ClearAllPoints()
        if ns.BestPanel and ns.BestPanel.text then
            frame.explain:SetPoint("TOPLEFT", ns.BestPanel.text, "BOTTOMLEFT", 0, -10)
        else
            frame.explain:SetPoint("BOTTOMLEFT", PAD, 24)
        end
        frame.explain:SetText(g and g.players
            and string.format(L["What the %d best players of your spec wear. Same sample as the targets."], g.players)
            or "")
        frame.explain:SetShown(g ~= nil)
        frame.footer:SetText("")
        local eh = frame.explain:GetStringHeight()
        eh = math.max(EXPLAIN_H, (type(eh) == "number" and eh or 0) + 10)
        frame:SetHeight(PanelHeight(top + h + eh + 24, true))
        return
    end
    if ns.HideBestTab then ns.HideBestTab() end
    frame:SetWidth(WIDTH)
    frame.explain:SetWidth(WIDTH - PAD * 2)

    -- Dritter Reiter: Ausrüstung optimieren
    if db().tab == "gear" then
        for _, row in ipairs(rows) do row:Hide() end
        frame.legend:Hide()
        frame.buffNote:Hide()
        frame.message:Hide()
        frame.stageNote:Hide()
        frame.noBuffNote:Hide()
        frame.explain:ClearAllPoints()
        -- Im Ausruestungs-Reiter haengt der Regeltext UNTER dem Ergebnis, nicht
        -- am Fensterboden: festgehaltene Plaetze und Wechselliste schieben den
        -- Inhalt nach unten, sonst ueberlagern sich beide Texte.
        if ns.GearPanel and ns.GearPanel.text then
            frame.explain:SetPoint("TOPLEFT", ns.GearPanel.text, "BOTTOMLEFT", 0, -10)
        else
            frame.explain:SetPoint("BOTTOMLEFT", PAD, 24)
        end
        frame.explain:SetText(L["Only bound items from your bags, at most 2 embellishments, set bonus and weapon style kept, trinkets stay. Gems and enchants move with the item."])
        frame.explain:Show()
        frame.footer:SetText("")
        local ratings = ReadRatings()
        if ratings then
            local total = 0
            for _, st in ipairs(STATS) do total = total + ratings[st.key] end
            frame.subtitle:SetText(string.format(L["Your stat total %d"], Round(total)))
        end
        if ns.GearPanel then
            ns.GearPanel:ClearAllPoints()
            ns.GearPanel:SetPoint("TOPLEFT", PAD, -top)
        end
        local h = ns.ShowGearTab and ns.ShowGearTab() or 0
        -- Echte Hoehe des Regeltexts nehmen, nicht die Pauschale: er ist je nach
        -- Sprache vier bis sechs Zeilen hoch und haengt unter dem Ergebnis.
        -- Sonst endet der Rahmen mitten im Text.
        local eh = frame.explain:GetStringHeight()
        eh = math.max(EXPLAIN_H, (type(eh) == "number" and eh or 0) + 10)
        frame:SetHeight(PanelHeight(top + h + eh + 24))
        return
    end
    if ns.HideGearTab then ns.HideGearTab() end

    if not data then
        for _, row in ipairs(rows) do row:Hide() end
        frame.legend:Hide()
        frame.buffNote:Hide()
        frame.explain:Hide()
        frame.stageNote:Hide()
        frame.noBuffNote:Hide()
        frame.subtitle:SetText("")
        frame.message:SetText(specData and L["No targets for this content yet."]
                              or L["No targets for this specialization yet."])
        frame.message:Show()
        frame.footer:SetText("")
        frame:SetHeight(PanelHeight(HEADER + 46))
        return
    end

    -- Geheime Werte: nichts rechnen, letzten Stand stehen lassen
    local values = ReadRatings()
    local buffs = ns.FixedBuffs and ns.FixedBuffs() or { list = {} }
    if not values or buffs.locked then
        frame.footer:SetText(L["Stats are hidden by the game right now - showing the last values."])
        return
    end

    frame.message:Hide()
    ns.activeShare = data.share
    local result = ns.Evaluate(values, data.share)

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

    -- Zwei Hinweiszeilen unter den Balken, beide in derselben Spur: der lila
    -- Buff-Hinweis hat Vorrang, sonst der Satz zu gleichen Stufen. Wer etwas
    -- einblendet, muss es ueberall ausblenden -- deshalb beide hier entscheiden.
    local noteTop = -(top + (#STATS + 1) * ROW_HEIGHT + 6)
    frame.buffNote:ClearAllPoints()
    frame.buffNote:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD, noteTop)
    frame.buffNote:SetShown(buffTotal > 0)
    -- Ohne feste Buffs liegt die eigene Summe unter der der Besten, die beim
    -- Kampfbeginn Flaeschchen und Essen hatten. Das sagen wir, statt den Nutzer
    -- vor einer unerklaerten Luecke stehen zu lassen.
    local fehltBuff = buffTotal == 0 and data.total ~= nil
        and result.total < data.total.median
    frame.noBuffNote:ClearAllPoints()
    frame.noBuffNote:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD, noteTop)
    frame.noBuffNote:SetShown(fehltBuff)
    frame.stageNote:ClearAllPoints()
    frame.stageNote:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD, noteTop)
    frame.stageNote:SetShown(buffTotal == 0 and not fehltBuff
        and db().tab == "mplus" and StagesAlike())

    local t = data.total
    if t then
        local totalRow = rows[1] or CreateRow(1, TOTAL_DEF)
        DrawRow(totalRow, {
            current = result.total, target = t.median, mean = t.mean,
            low = t.p25, high = t.p75, delta = result.total - t.median, status = "total",
            ilvl = (function()
                if not GetAverageItemLevel then return nil end
                local _, equipped = GetAverageItemLevel()   -- lokal: globales "_" wäre Taint
                if equipped == nil or IsSecret(equipped) then return nil end
                return equipped
            end)(),
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
    PlaceRows(top)

    frame.subtitle:SetText(string.format(L["Your stat total %d"], Round(result.total)))
    if data.minKey then
        frame.explain:SetText(string.format(L["Targets: how the %d best players of your spec split their secondary stats (Warcraft Logs, keys +%d-%d). Their shares times your stat total (%d) give your targets. In target = within ±5 %%."],
            data.players, data.minKey, data.maxKey, Round(result.total)))
    else
        frame.explain:SetText(string.format(L["Targets: how the %d best players of your spec split their secondary stats (Warcraft Logs, mythic raid). Their shares times your stat total (%d) give your targets. In target = within ±5 %%."],
            data.players, Round(result.total)))
    end
    frame.explain:Show()
    if data.minKey then
        frame.footer:SetText(string.format(L["%d best on keys +%d-%d · as of %s"],
            data.players, data.minKey, data.maxKey, FormatDate(data.date)))
    else
        frame.footer:SetText(string.format(L["%d best · mythic · as of %s"],
            data.players, FormatDate(data.date)))
    end
    frame:SetHeight(PanelHeight(top + (#STATS + 1) * ROW_HEIGHT + 38 + EXPLAIN_H))
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

-- Andere Addons, die ebenfalls am Charakterfenster andocken, sollen sich rechts
-- an unser Fenster haengen statt sich darueberzulegen. ClassCodex bietet dafuer
-- eine Anmeldung an; Prioritaet ueber 10 schlaegt dort das Charakterfenster.
-- Ist das Addon nicht da oder aendert es seine Schnittstelle, passiert nichts.
local function RegisterAsDockHost()
    local cc = _G.ClassCodex
    if not (cc and type(cc.RegisterDockHost) == "function" and frame) then return end
    pcall(cc.RegisterDockHost, frame, { priority = 50, parent = CharacterFrame,
        point = "TOPLEFT", relativePoint = "TOPRIGHT", xOffset = -2, yOffset = 0 })
end

-- Nach jeder eigenen Bewegung: Nachbarn neu ausrichten lassen. Sind wir
-- eingeklappt oder zu, faellt das andere Addon von selbst auf das
-- Charakterfenster zurueck.
local function RefreshNeighbours()
    local cc = _G.ClassCodex
    if cc and type(cc.RefreshDock) == "function" then pcall(cc.RefreshDock) end
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
    RefreshNeighbours()
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
        RefreshNeighbours()
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

-- Beschriftung, Linie und Verfuegbarkeit der Stufenzeile. Die Schluesselstufen
-- kommen aus den Daten, nicht aus festen Zahlen -- verschiebt sich das Band
-- naechste Woche, stimmt die Anzeige trotzdem.
function RefreshStages()
    if not frame or not frame.stages then return end
    -- Sichtbar im Mythic+-Reiter und im Ausruestungs-Reiter, solange der gegen
    -- Mythic+ rechnet. Beide Stellen schalten dieselbe gespeicherte Stufe.
    local show = db().tab == "mplus"
        or (db().tab == "gear" and (db().optFor or "mplus") == "mplus")
        or (db().tab == "best" and (db().bestFor or "mplus") == "mplus")
        or (db().tab == "emb" and (db().bestFor or "mplus") == "mplus")
        or (db().tab == "bis" and (db().bestFor or "mplus") == "mplus")
    local active = Stage()
    local previous
    for _, b in ipairs(frame.stages) do
        b:SetShown(show)
        if show then
            local data = StageData(b.key)
            local text = L[b.label]
            if data and data.minKey then
                text = text .. " +" .. data.minKey
                if data.maxKey and data.maxKey ~= data.minKey then
                    text = text .. "-" .. data.maxKey
                end
            end
            b.text:SetText(text)
            b:SetWidth(math.ceil(b.text:GetStringWidth() or 40) + 12)
            if data then
                b.text:SetTextColor(1, 1, 1)
            else
                -- Keine Daten: ausgegraut statt leer, damit der Reiter benutzbar bleibt
                b.text:SetTextColor(0.45, 0.45, 0.45)
            end
            b.line:SetShown(b.key == active)
            b:ClearAllPoints()
            if previous then
                b:SetPoint("LEFT", previous, "RIGHT", 8, 0)
            else
                b:SetPoint("TOPLEFT", PAD - 6, -(34 + TAB_H + 2))
            end
            previous = b
        end
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
    RowsPerColumn = ns.RowsPerColumn,
    Round = Round, Rating = Rating, ReadRatings = ReadRatings, CurrentSpecID = CurrentSpecID,
    GearOpts = GearOpts, CharData = CharData,
    ActiveMode = ActiveMode, Stage = Stage, StageData = StageData,
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

    -- Stufenzeile unter den Reitern: gleiche Mechanik wie die Reiter selbst
    -- (Text, darunter die Cyan-Linie beim gewählten), nur kleiner. Sichtbar ist
    -- sie allein im Mythic+-Reiter.
    frame.stages = {}
    local prevStage
    for _, info in ipairs(STAGES) do
        local b = CreateFrame("Button", nil, frame)
        b.key = info.key
        b.label = info.label
        b.text = b:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        b.text:SetPoint("CENTER")
        b.text:SetText(L[info.label])
        b:SetSize(math.ceil(b.text:GetStringWidth() or 40) + 12, STAGE_H - 2)
        b.line = b:CreateTexture(nil, "OVERLAY")
        b.line:SetPoint("BOTTOMLEFT")
        b.line:SetPoint("BOTTOMRIGHT")
        b.line:SetHeight(2)
        b.line:SetColorTexture(COLORS.band[1], COLORS.band[2], COLORS.band[3], 0.9)
        b.highlight = b:CreateTexture(nil, "HIGHLIGHT")
        b.highlight:SetAllPoints()
        b.highlight:SetColorTexture(1, 1, 1, 0.08)
        b:SetScript("OnClick", function(self)
            if not StageData(self.key) then return end     -- ausgegraut: nichts tun
            SetStage(self.key)
            Update()
        end)
        if prevStage then
            b:SetPoint("LEFT", prevStage, "RIGHT", 8, 0)
        else
            b:SetPoint("TOPLEFT", PAD - 6, -(34 + TAB_H + 2))
        end
        prevStage = b
        table.insert(frame.stages, b)
    end

    if ns.CreateGearTab then ns.CreateGearTab(frame) end
    if ns.CreateBestTab then ns.CreateBestTab(frame) end
    if ns.CreateEmbellishTab then ns.CreateEmbellishTab(frame) end
    if ns.CreateBisTab then ns.CreateBisTab(frame) end

    frame.message = frame:CreateFontString(nil, "OVERLAY", "GameFontDisable")
    frame.message:SetPoint("TOPLEFT", PAD, -HEADER)
    frame.message:SetPoint("RIGHT", -PAD, 0)
    frame.message:SetJustifyH("LEFT")
    frame.message:Hide()

    -- Hinweis unter den Balken: erscheint nur, wenn ein fester Buff wirkt.
    -- In der Buff-Farbe, damit der Bezug zum lila Balkenanteil sofort klar ist.
    frame.buffNote = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    frame.buffNote:SetWidth(WIDTH - PAD * 2)
    frame.buffNote:SetJustifyH("LEFT")
    frame.buffNote:SetWordWrap(true)
    -- Direkt unter der letzten Wertzeile: Summe + vier Werte, dann ein wenig Luft
    frame.buffNote:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD,
        -(HEADER + (#STATS + 1) * ROW_HEIGHT + 6))
    frame.buffNote:SetTextColor(COLORS.buff[1], COLORS.buff[2], COLORS.buff[3])
    frame.buffNote:SetText(L["Flask and food count towards your total - that is why they raise the targets of the other stats as well."])
    frame.buffNote:Hide()

    -- Grauer Hinweis in derselben Spur wie der Buff-Hinweis: erscheint, wenn
    -- beide Stufen praktisch gleich verteilen. Sonst wundert sich der Nutzer,
    -- warum das Umschalten nichts bewegt.
    frame.stageNote = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    frame.stageNote:SetWidth(WIDTH - PAD * 2)
    frame.stageNote:SetJustifyH("LEFT")
    frame.stageNote:SetWordWrap(true)
    frame.stageNote:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD,
        -(HEADER + STAGE_H + (#STATS + 1) * ROW_HEIGHT + 6))
    frame.stageNote:SetText(L["For this spec both levels give almost the same targets - switching changes little."])
    frame.stageNote:Hide()

    -- Fehlen Flaeschchen und Essen, sieht der Nutzer sonst nur einen
    -- unerklaerten Rueckstand in der Summe -- die Besten haben beides beim
    -- Kampfbeginn (aufgefallen 31.10.2026 an Roys eigener Anzeige).
    frame.noBuffNote = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    frame.noBuffNote:SetWidth(WIDTH - PAD * 2)
    frame.noBuffNote:SetJustifyH("LEFT")
    frame.noBuffNote:SetWordWrap(true)
    frame.noBuffNote:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD,
        -(HEADER + STAGE_H + (#STATS + 1) * ROW_HEIGHT + 6))
    frame.noBuffNote:SetText(L["No flask or food active - the best players have both, part of the gap comes from that."])
    frame.noBuffNote:Hide()

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
    frame.buffNote:Hide()

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

    -- Öffnet sich mit dem Charakterfenster: dann die aktuellen Werte zeigen.
    frame:SetScript("OnShow", QueueUpdate)
end

-------------------------------------------------------------------------------
-- Ereignisse
-------------------------------------------------------------------------------
-- Diese feuern bei Buffs und Procs laufend; im Kampf werden sie abgemeldet.
-- SOCKET_INFO_SUCCESS und ITEM_CHANGED: beim Umsockeln aendert sich der
-- Gegenstand, ohne dass er aus- und angelegt wird -- ohne diese beiden
-- blieb die Edelsteinfarbe stehen (31.10.2026 bemerkt).
local LIVE_EVENTS = { "COMBAT_RATING_UPDATE", "PLAYER_EQUIPMENT_CHANGED", "UNIT_AURA",
                      "SOCKET_INFO_SUCCESS", "ITEM_CHANGED" }

local events = CreateFrame("Frame")
events:RegisterEvent("ADDON_LOADED")
events:RegisterEvent("PLAYER_ENTERING_WORLD")
events:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
events:RegisterEvent("PLAYER_REGEN_DISABLED")
events:RegisterEvent("PLAYER_REGEN_ENABLED")
events:RegisterEvent("GET_ITEM_INFO_RECEIVED")
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
        if arg1 ~= ADDON_NAME then
            -- Ein anderes Addon ist dazugekommen: melden, dass es sich rechts
            -- an uns haengen soll (die Anmeldung ueberschreibt sich selbst).
            if frame then RegisterAsDockHost() end
            return
        end
        -- Frühere Einstellungen (Befehle gibt es nicht mehr) auf den festen Stand bringen
        local s = db()
        s.docked, s.hidden, s.locked, s.scale = true, false, false, 1.0
        CreateMainFrame()
        CreateToggle()
        HookCharacterWindow()
        ApplySettings()
        RegisterAsDockHost()

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

    elseif event == "GET_ITEM_INFO_RECEIVED" then
        if ns.BestItemLoaded then ns.BestItemLoaded(arg1) end
        if ns.EmbellishItemLoaded then ns.EmbellishItemLoaded(arg1) end
        if ns.BisItemLoaded then ns.BisItemLoaded(arg1) end

    elseif event == "PLAYER_EQUIPMENT_CHANGED" or event == "SOCKET_INFO_SUCCESS"
           or event == "ITEM_CHANGED" then
        if ns.GearChanged then ns.GearChanged() end
        QueueUpdate()

    elseif event == "UNIT_AURA" then
        if arg1 == "player" then QueueUpdate() end

    else
        QueueUpdate()
    end
end)
