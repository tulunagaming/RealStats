-- Von Hand gepflegt (anders als Data_MythicPlus/Data_Raid, die der Wochenlauf
-- erzeugt). Hier steht, was die Logs nicht hergeben: welche Verzierung hinter
-- einer Bonus-ID steckt, was sie bewirkt, und welcher Loa zu welcher
-- Edelsteinfarbe gehoert.
--
-- Beschafft am 31.10.2026 aus den Spiel-Tooltips (nether.wowhead.com/tooltip),
-- die Loa-Zuordnung zusaetzlich an Roys eigenem Kampflog gegengeprueft:
-- "Akil'zons Siegesschrei" erscheint dort nur bei Peridot-Traegern.
-- Pflege: einmal je Saison, siehe konzept-verzierungen.md.

local ADDON_NAME, ns = ...
local L = setmetatable({}, { __index = function(_, k) return k end })
if GetLocale and GetLocale() == "deDE" then
    L["Mana wyrm, raises primary stat"]          = "Mana-Wyrm, erhöht den Primärwert"
    L["Doubles jewelcrafting embellishments"]    = "Verdoppelt Juwelierskunst-Verzierungen"
    L["Chance for a random secondary stat"]      = "Chance auf einen zufälligen Sekundärwert"
    L["Secondary stats, depends on the enemy"]   = "Sekundärwerte, abhängig vom Gegner"
    L["Nature damage over time"]                 = "Naturschaden über Zeit"
    L["Summons a Loa, depends on your gem colours"] = "Beschwört einen Loa, je nach Edelsteinfarben"
    L["Armor"]    = "Rüstung"
    L["Weapon"]   = "Waffe"
    L["Any slot"] = "Alle Plätze"
    L["Ring"]     = "Ring"
    L["Head"]     = "Kopf"
    L["Neck"]     = "Hals"
    L["Shoulder"] = "Schulter"
    L["Chest"]    = "Brust"
    L["Waist"]    = "Taille"
    L["Legs"]     = "Beine"
    L["Feet"]     = "Füße"
    L["Wrist"]    = "Handgelenk"
    L["Hands"]    = "Hände"
    L["Back"]     = "Rücken"
    L["Off hand"] = "Schildhand"
    L["Chance for more haste"] = "Chance auf mehr Tempo"
    L["Chance for +40 versatility"] = "Chance auf +40 Vielseitigkeit"
    L["Periodic effects raise primary stat, stacking"] =
        "Effekte über Zeit erhöhen den Primärwert, stapelbar"
    L["Peridot (green)"]   = "Peridot (grün)"
    L["Amethyst (purple)"] = "Amethyst (lila)"
    L["Garnet (red)"]      = "Granat (rot)"
    L["Lapis (blue)"]      = "Lapis (blau)"
    L["+75 haste and +24 speed"] = "+75 Tempo und +24 Lauftempo"
    L["physical damage to your target"] = "Schaden am Ziel"
    L["up to +40 critical strike, stacking"] = "bis zu +40 kritischer Trefferwert, stapelbar"
    L["area damage"] = "Flächenschaden"
    L["primary stat"] = "Primärwert"
end

-- Bonus-ID -> Reagenz (fuer Name und Symbol ueber C_Item.GetItemInfo),
-- Platzgruppe und ein Satz zur Wirkung. Die Zuordnung entsteht durch Vergleich
-- der Effekttexte: Bonus-ID und Reagenz zeigen denselben Satz.
ns.EMBELLISH = {
    [12384] = { item = 240167, slot = "Armor",   text = L["Mana wyrm, raises primary stat"] },
    [13454] = { item = 251490, slot = "Any slot", text = L["Doubles jewelcrafting embellishments"],
                -- Wirkt nur mit einer Juwelierskunst-Verzierung. Das Addon
                -- prueft das an der eigenen Ausruestung.
                needsJewel = true },
    [13771] = { item = 273060, slot = "Weapon",  text = L["Chance for a random secondary stat"] },
    [12693] = { item = 245876, slot = "Weapon",  text = L["Secondary stats, depends on the enemy"] },
    [12692] = { item = 245878, slot = "Weapon",  text = L["Nature damage over time"] },
    -- Nachgetragen nach dem Wochenlauf vom 01.11.2026, als diese drei in den
    -- Daten auftauchten; Effekttexte am Spiel-Tooltip geprueft.
    [13767] = { item = 273069, slot = "Any slot", text = L["Chance for more haste"] },
    [13640] = { item = 245874, slot = "Weapon",   text = L["Chance for +40 versatility"] },
    [12385] = { item = 240165, slot = "Armor",    text = L["Periodic effects raise primary stat, stacking"] },
}

-- Gegenstaende, die ihre Verzierung fest mitbringen. Sie tauchen im Wochenlauf
-- mit ihrer Gegenstands-ID auf, nicht mit einer Bonus-ID.
ns.EMBELLISH_ITEMS = {
    [251513] = { slot = "Ring", text = L["Summons a Loa, depends on your gem colours"],
                 jewel = true },   -- zaehlt als Juwelierskunst-Verzierung
}

-- Edelsteinfarbe -> Loa. Jede verschiedene Farbe in der Ausruestung wirft einen
-- weiteren Loa in den Topf; beim Ausloesen wird zufaellig einer gezogen.
-- Weniger Farben heisst also hoehere Chance auf den gewuenschten.
-- Die Grenzen sind einzeln am Spiel-Tooltip geprueft (31.10.2026), nicht aus
-- einem Muster geschlossen: Ein erster Versuch mit gleich grossen Bloecken lag
-- um eine Stelle daneben, dadurch galt Roys Amethyst 240896 als Peridot.
-- Je Farbe gibt es mehrere Varianten (Hauptwert +16 oder +14, dazu ein
-- Zweitwert); nur die Farbe entscheidet, welcher Loa beschworen wird.
ns.GEM_COLOR = {}
for id = 240890, 240894 do ns.GEM_COLOR[id] = "peridot"  end   -- +Tempo
for id = 240895, 240902 do ns.GEM_COLOR[id] = "amethyst" end   -- +Meisterschaft
for id = 240903, 240910 do ns.GEM_COLOR[id] = "garnet"   end   -- +kritischer Trefferwert
for id = 240911, 240918 do ns.GEM_COLOR[id] = "lapis"    end   -- +Vielseitigkeit

-- Der Primaerwert-Diamant ist einmal sockelbar und gehoert zu keiner Farbe.
ns.GEM_PRIMARY = { [240967] = true, [240983] = true }

-- Platznummern wie im gear-Array der Logdaten (0 = Kopf). Damit zeigt der
-- Reiter, wo die Besten ihre Verzierungen tatsaechlich hinsetzen -- die
-- Tooltip-Gruppe sagt nur, wo es erlaubt waere.
ns.SLOT_NAME = {
    [0] = L["Head"], [1] = L["Neck"], [2] = L["Shoulder"], [4] = L["Chest"],
    [5] = L["Waist"], [6] = L["Legs"], [7] = L["Feet"], [8] = L["Wrist"],
    [9] = L["Hands"], [10] = L["Ring"], [11] = L["Ring"], [14] = L["Back"],
    [15] = L["Weapon"], [16] = L["Off hand"],
}

ns.LOA = {
    peridot  = { name = "Akil'zon", gain = "stats",
                 color = L["Peridot (green)"],   effect = L["+75 haste and +24 speed"] },
    amethyst = { name = "Halazzi",  gain = "damage",
                 color = L["Amethyst (purple)"], effect = L["physical damage to your target"] },
    garnet   = { name = "Nalorakk", gain = "stats",
                 color = L["Garnet (red)"],      effect = L["up to +40 critical strike, stacking"] },
    lapis    = { name = "Jan'alai", gain = "damage",
                 color = L["Lapis (blue)"],      effect = L["area damage"] },
}
ns.LOA_ALWAYS = { name = "Capybara", effect = L["primary stat"] }
