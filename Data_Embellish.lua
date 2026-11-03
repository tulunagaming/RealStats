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
    L["Chance for a random secondary stat, +50 %% on an outdoor hunt"] =
        "Chance auf einen zufälligen Sekundärwert - auf Beutejagd im Freien 50 %% mehr"
    L["Secondary stats, depends on the enemy"]   = "Sekundärwerte, abhängig vom Gegner"
    L["Rotting roots, nature damage over time, up to ten stacks"] =
        "Verfaulende Wurzeln: Naturschaden über Zeit, bis zu zehnfach stapelbar"
    L["Summons a Loa, depends on your gem colours"] = "Beschwört einen Loa, je nach Edelsteinfarben"
    L["Armor"]    = "Rüstung"
    L["Weapon"]   = "Waffe"
    L["Any slot"] = "Alle Plätze"
    L["Ring"]      = "Ring"
    L["Jewellery"] = "Schmuck"
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
    L["Chance for more haste, better on wounded targets"] =
        "Chance auf mehr Tempo - umso höher, je weniger Leben das Ziel hat"
    L["Chance for +40 versatility"] = "Chance auf +40 Vielseitigkeit"
    L["Periodic effects raise primary stat, stacking"] =
        "Effekte über Zeit erhöhen den Primärwert, stapelbar"
    L["Critical strikes build a stacking crit blessing, burst at full stacks"] =
        "Kritische Treffer bauen einen stapelbaren Segen auf kritischen Trefferwert auf; bei voller Stapelzahl folgt ein Schadensimpuls"
    L["Secondary stat bonus, grows with each gem colour"] =
        "Bonus auf Sekundärwerte, wächst mit jeder Edelsteinfarbe"
    L["Devouring bolts, raises your highest secondary"] =
        "Verschlingende Blitze, erhöhen deinen höchsten Sekundärwert"
    L["Arcane beam, stronger with more gem colours"] =
        "Arkaner Lichtstrahl, stärker mit mehr Edelsteinfarben"
    L["Healing can grant your target versatility"] =
        "Heilzauber können dem Ziel Vielseitigkeit geben"
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
-- jewel = true: aus der Juwelierskunst. Nur diese verdoppelt der
-- Stabilisierende Juwelenschultergurt -- sie standen gemeinsam im Reagenzien-
-- Fenster eines Juwelierskunst-Rezepts (Roys Screenshots, 02.11.2026).
ns.EMBELLISH = {
    [12384] = { item = 240167, slot = "Armor",   text = L["Mana wyrm, raises primary stat"] },
    [13454] = { item = 251490, slot = "Any slot", text = L["Doubles jewelcrafting embellishments"],
                -- Wirkt nur mit einer Juwelierskunst-Verzierung. Das Addon
                -- prueft das an der eigenen Ausruestung.
                needsJewel = true },
    -- Nur Schmiedekunst-Waffen, nicht jede Waffe.
    [13771] = { item = 273060, slot = "Weapon",
                text = L["Chance for a random secondary stat, +50 %% on an outdoor hunt"] },
    [12693] = { item = 245876, slot = "Weapon",  text = L["Secondary stats, depends on the enemy"] },
    [12692] = { item = 245878, slot = "Weapon",  text = L["Rotting roots, nature damage over time, up to ten stacks"] },
    -- Nachgetragen nach dem Wochenlauf vom 01.11.2026, als diese drei in den
    -- Daten auftauchten; Effekttexte am Spiel-Tooltip geprueft.
    [13767] = { item = 273069, slot = "Any slot", text = L["Chance for more haste, better on wounded targets"] },
    [13640] = { item = 245874, slot = "Weapon",   text = L["Chance for +40 versatility"] },
    [12385] = { item = 240165, slot = "Armor",    text = L["Periodic effects raise primary stat, stacking"] },
    [12686] = { item = 244604, slot = "Any slot", text = L["Healing can grant your target versatility"],
                jewel = true },
    -- 13453: im Kampflog belegt -- der einzige Traeger loest als einziger
    -- "Prismatische Fokusiris" aus (02.11.2026). Sie belohnt *viele*
    -- verschiedene Edelsteinfarben, anders als der Loa-Ring.
    [13453] = { item = 251488, slot = "Any slot", text = L["Arcane beam, stronger with more gem colours"],
                likesColors = true, jewel = true },
    -- 12685: im Kampflog belegt -- der einzige Traeger ist der einzige, der
    -- "Verschlingender Blitz" wirkt (02.11.2026).
    [12685] = { item = 244675, slot = "Any slot", text = L["Devouring bolts, raises your highest secondary"] },
    -- 13768: belegt am Ring eines Blut-Todesritters aus den Logs
    -- (Meisterlicher Ring der Sin'dorei, 240949) -- sein Tooltip nennt
    -- "Polierter Ammolit" ausdruecklich (02.11.2026).
    [13768] = { item = 273066, slot = "Jewellery", text = L["Critical strikes build a stacking crit blessing, burst at full stacks"],
                jewel = true },
}

-- Keine Verzierungen, obwohl der Wochenlauf sie dafuer haelt. Sein Filter
-- prueft je Spezialisierung, ob eine Bonus-ID nur auf verzierten Teilen
-- vorkommt; faellt die Stichprobe unguenstig, rutscht etwas durch. An Roys
-- Kampflog gemessen (02.11.2026, 400 Spieler): 13852 steht 39-mal auf
-- verzierten und 6-mal auf unverzierten Teilen, 14004 26-mal zu 8-mal.
-- Beide sind also ein anderes Merkmal und werden nicht angezeigt.
ns.NOT_EMBELLISH = { [13852] = true, [14004] = true }

-- Gegenstaende, die ihre Verzierung fest mitbringen. Sie tauchen im Wochenlauf
-- mit ihrer Gegenstands-ID auf, nicht mit einer Bonus-ID.
ns.EMBELLISH_ITEMS = {
    [251513] = { slot = "Ring", text = L["Summons a Loa, depends on your gem colours"],
                 jewel = true,      -- zaehlt als Juwelierskunst-Verzierung
                 fewColors = true },-- jede weitere Farbe verduennt den Loa
    -- Dreht die Logik um: hier zahlt sich *jede* zusaetzliche Farbe aus
    -- (Roys Fund, 02.11.2026).
    [241140] = { slot = "Ring", text = L["Secondary stat bonus, grows with each gem colour"],
                 likesColors = true },
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
