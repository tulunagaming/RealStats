# Changelog

## 1.3.4

* **Zwei Eintraege waren keine Verzierungen.** Der Wochenlauf erkennt eine
  Verzierung daran, dass ihre Nummer nur auf verzierten Teilen vorkommt -
  geprueft je Spezialisierung. Bei zwei Nummern (13852, 14004) ging das schief:
  An einem Kampflog mit 400 Spielern stehen sie auch auf unverzierten Teilen.
  Sie werden nicht mehr angezeigt.

## 1.3.3

* **Fehler behoben:** Verzierungen, fuer die noch kein Erklaertext hinterlegt
  ist, wurden mit einem falschen Namen angezeigt - das Addon schlug die
  Bonus-Nummer als Gegenstand nach und fand irgendein altes Item ("The Grand
  Crusader's Command"). Jetzt steht dort "Unbekannte Verzierung (Nummer)".

## 1.3.2

* Traegst du selbst die haeufigste Kombination, steht **[BIS]** jetzt auch
  unter "Du traegst" - vorher nur oben in der Liste.
* Ein weiterer Erklaertext (Gesegneter Pango-Talisman).
* Beschreibung und README kennen jetzt den Reiter "Verzierung".

## 1.3.1

* Der Reiter **Trinkets** zeigt nur noch Schmuckstuecke. Der Block "Verzierte
  Teile" ist weg: Seine Prozentzahl zaehlte den *Gegenstand*, nicht die
  Verzierung darin - "88 % tragen diese Armschienen" sagt nichts darueber, was
  drinsteckt, und beim Ring des Loaanbeters laesst sich ueberhaupt nichts
  auftragen. Die Frage beantwortet seit 1.3.0 der Reiter "Verzierung" richtig.
* Dadurch passt der Trinkets-Reiter wieder in eine Spalte.

## 1.3.0

* **Neuer Reiter „Verzierung".** Er zeigt, welche Verzierungen die Besten
  deiner Spezialisierung nutzen - und zwar die Verzierung selbst, nicht nur das
  verzierte Teil. Dazu die haeufigsten Kombinationen mit [BIS]-Marke, je Eintrag
  ein Satz zur Wirkung und die Plaetze, auf denen sie tatsaechlich sitzen.
  Darunter deine eigene Kombination, wie verbreitet sie ist und was die Mehrheit
  stattdessen faehrt.
* **Edelsteinfarben erklaert.** Beim „Ring des Loaanbeters" entscheidet die
  Farbe deiner Sockelsteine, welcher Loa beschworen wird: Peridot ruft Akil'zon
  (+75 Tempo), Amethyst Halazzi (Schaden), und jede zusaetzliche Farbe senkt die
  Chance auf den gewuenschten. Der Reiter zaehlt deine Steine, nennt den Loa und
  sagt, welche Farbe die Besten bevorzugen. Das steht so in keinem Tooltip.
* Der Reiter „Die Besten" heisst jetzt **„Trinkets"**. Er und der neue Reiter
  zeigen ihren Inhalt in zwei Spalten, damit das Fenster nicht laenger wird als
  das Charakterfenster.
* **Ohne Flaeschchen und Essen** sagt das Addon es jetzt ausdruecklich - vorher
  stand da nur eine unerklaerte Luecke in der Summe.
* Die Ueberschrift „Verzierungen" heisst **„Verzierte Teile"**: Die Prozentzahl
  gilt dem Teil, nicht der Verzierung darin.
* „Top-Spieler" heisst jetzt **„Beste"** - auf der Alltagsstufe sind es die
  besten Spieler dieses Schluesselbands, nicht die Weltspitze.
* Der Inhalt springt beim Umschalten zwischen Mythic+ und Raid nicht mehr.
* Zielwerte vom 01.11.2026: 120 Abrufe ueber alle Spezialisierungen, 10279
  ausgewertete Spieler (kleinste Gruppe 52).

## 1.2.0

* **Zwei Leistungsstufen fuer Mythic+.** Ueber den Balken steht jetzt eine
  Zeile mit „Alltag +12-16" und „Push +22-24". Die Zielwerte der Spitze stammen
  von Spielern auf sehr hohen Schluesseln - wer +12 bis +16 laeuft, bekommt mit
  der Alltagsstufe die passenderen Zahlen. Vorgewaehlt ist der Alltag.
  Der Unterschied ist je nach Spezialisierung gross oder klein: Bei Heilern und
  Tanks dreht sich die Reihenfolge der Werte teils um (Heilig-Paladin,
  Bewahrer-Rufer, Wiederherstellungs-Schamane), bei den meisten
  Schadensverursachern aendert sich fast nichts. Ist der Unterschied gering,
  sagt das Addon es ausdruecklich, damit niemand einen Fehler vermutet.
  Die Stufe gilt auch fuer den Ausruestungs-Rechner und den Schmuck-Reiter und
  wird je Charakter und Spezialisierung gemerkt. Der Ausruestungs-Rechner legt
  je Stufe ein eigenes Set an („RealStats M+" und „RealStats M+ Everyday").
* Der Reiter „Die Besten" heisst jetzt **„Bester Schmuck"** - er zeigt
  Schmuckstuecke und Verzierungen, der alte Name versprach mehr.
* Das Fenster ist etwas breiter, damit die Reiterzeile vollstaendig hineinpasst.
* Zielwerte vom 31.10.2026: 120 Abrufe ueber alle Spezialisierungen in Mythic+
  (beide Stufen) und Raid, 10247 ausgewertete Spieler (kleinste Gruppe 52).

## 1.1.1

* Zielwerte vom 23.10.2026: 80 Abrufe ueber alle Spezialisierungen in Mythic+ und Raid, 6575 ausgewertete Spieler (kleinste Gruppe 49).
* Deutlichere Verschiebungen (ab 2 Prozentpunkten): Meucheln-Schurke (Raid), Windwandler-Moench (Raid), Waechter-Druide (Mythic+), Blut-Todesritter (Raid), Treffsicherheit-Jaeger (Raid), Feuer-Magier (Raid) und 12 weitere.
* Median-Itemlevel der Besten 329 -> 331, die Summen-Zeile steigt entsprechend mit.

## 1.1.0

* **Neuer Reiter „Die Besten".** Er zeigt, welche Schmuckstuecke und
  Verzierungen die besten Spieler deiner Spezialisierung tragen - in Prozent,
  getrennt nach Mythic+ und Raid, aus derselben Stichprobe wie die Zielwerte.
  Darunter steht, was du selbst traegst, mit [BIS] an dem, was die Besten
  ueblicherweise zusammen anlegen. Traegst du etwas Ungewoehnliches, steht es
  trotzdem da - mit dem Vermerk „selten".
  Keine Platz-fuer-Platz-Listen: Was ohne Bezug zur eigenen Ausruestung ist,
  kann eine Webseite besser.
* Zielwerte vom 15.10.2026: 80 Abrufe ueber alle Spezialisierungen in Mythic+
  und Raid, 6736 ausgewertete Spieler (kleinste Gruppe 51). Deutlichere
  Verschiebungen bei Taeuschung-Schurke, Windwandler-Moench, Verheerung- und
  Augmentation-Rufer sowie Tierherrschaft-Jaeger.
* Median-Itemlevel der Besten 327 -> 329, die Summen-Zeile steigt entsprechend mit.
* Die woechentliche Erhebung laeuft jetzt donnerstags statt mittwochs - am
  Reset-Tag ruesten die Spieler ihre Vault-Items erst im Lauf des Tages an.

## 1.0.4

* **Buffs und Ziele erklaert.** Feste Buffs zaehlen in die Summe und heben damit
  auch die Ziele der anderen Werte an. Das stand bisher nirgends und sah nach
  einem Rechenfehler aus. Jetzt sagt es eine Zeile unter den Balken (nur wenn
  ein Buff wirkt) und der Tooltip jedes Werts.
* Kopfzeile und Erklaertext benennen die Rechnung: "Die Summe deiner Werte" und
  "Ihre Anteile mal der Summe deiner Werte (3000) ergeben deine Ziele".
* Reiter Ausruestung: Die Liste der festgehaltenen Plaetze laeuft in zwei
  Spalten statt einer, der Hinweis "Berechnen prueft ..." entfaellt (der
  Regeltext darunter sagt dasselbe), und der Rahmen waechst jetzt mit dem Text
  mit - nichts ueberlagert sich mehr, egal wie viele Plaetze festgehalten sind.
* Nachgetragen: Einzelne Ausruestungsplaetze lassen sich festhalten, der
  Optimierer gleicht ueber die uebrigen aus (war bereits in 1.0.3 enthalten).

## 1.0.3

* Zielwerte vom 07.10.2026: 80 Abrufe ueber alle Spezialisierungen in Mythic+ und Raid, 7830 ausgewertete Spieler (kleinste Gruppe 33).
* Deutlichere Verschiebungen (ab 2 Prozentpunkten): Bewahrung-Rufer (Mythic+), Waechter-Druide (Mythic+), Nebelwirker-Moench (Mythic+), Braumeister-Moench (Mythic+), Arkan-Magier (Mythic+).
* Median-Itemlevel der Besten 326 -> 327, die Summen-Zeile steigt entsprechend mit.

## 1.0.2

Die ersten Rueckmeldungen von Nutzern, umgesetzt.

* Eigenes Symbol in der Addon-Liste statt des Fragezeichens.
* Andere Addons, die ebenfalls am Charakterfenster andocken, werden nicht mehr
  ueberlagert: RealStats bleibt am Charakterfenster, der Nachbar rueckt rechts
  daneben (unterstuetzt die Anmeldung von ClassCodex).
* Reiter Ausruestung, neu "Tauschen erlaubt": drei Haken dafuer, was der
  Optimierer anfassen darf - Teile mit Sockelplatz, verzierte Teile, Teile mit
  niedrigerem Itemlevel. Alle in dieselbe Richtung gedacht (Haken = erlaubt),
  anfangs leer und je Charakter und Spezialisierung gespeichert.
  Damit wird auch kein Primaerwert mehr fuer eine schoenere Verteilung geopfert.
* Reiter Ausruestung, neue Knoepfe: "Zurueck zu vorher" legt wieder an, was vor
  dem letzten Wechsel angelegt war, "Jetziges sichern" sichert den aktuellen
  Stand als Set und als Rueckweg.
* Beim Anlegen wird ein haengen gebliebenes Teil automatisch ein zweites Mal
  versucht; klappt es trotzdem nicht, nennt die Meldung Platz und Item.

## 1.0.1

* Zielwerte vom 01.10.2026: 80 Abrufe ueber alle Spezialisierungen in Mythic+ und Raid, 7926 ausgewertete Spieler (kleinste Gruppe 33).
* Keine Verteilung hat sich um mehr als 2 Prozentpunkte verschoben.

## 1.0.0

Erste stabile Version. Seit 0.1.0 lief das Addon vier Wochen ohne Fehlerbericht,
die Zielwerte werden woechentlich fuer alle 40 Spezialisierungen aktualisiert,
und die Pruefungen umfassen inzwischen 220 Faelle.

* Inhaltlich wie 0.1.3 - nur die Versionsnummer sagt jetzt, dass das Addon
  seinen vollen Funktionsumfang erreicht hat.

## 0.1.3

* Tooltip: neue Zeile "Bis zum Zielbereich" - wie viel du mindestens umschichten musst,
  damit der Wert gruen wird. Die Zahl am Balken nennt weiterhin den Abstand zum Ziel selbst.
* Zielwerte vom 01.10.2026: 7904 ausgewertete Spieler ueber alle 40 Spezialisierungen
  in Mythic+ und Raid (kleinste Gruppe 33). Deutlichere Verschiebungen (ab 2 Prozentpunkten):
  Disziplin-Priester, Rachsucht-Daemonenjaeger und Gesetzlosigkeit-Schurke (Mythic+),
  Unheilig-Todesritter (Raid), Braumeister- und Nebelwirker-Moench (Mythic+).
* Fuer Rachsucht-Daemonenjaeger, Verschlinger-Daemonenjaeger sowie alle drei Rufer-
  Spezialisierungen gelten im Raid noch die Werte der Vorwoche; sie werden nachgereicht.

## 0.1.2

* Zielwerte vom 26.09.2026: alle 40 Spezialisierungen in Mythic+ und Raid, 7890 ausgewertete Spieler.
  Deutlichere Verschiebungen bei Unheilig-Todesritter (Raid), Rachsucht-Dämonenjäger, Disziplin-Priester,
  Wächter-Druide und Überleben-Jäger; der Rest ist gegenüber der Vorwoche stabil.
* Median-Itemlevel der Besten 325 -> 326, die Summen-Zeile steigt entsprechend mit.

## 0.1.1

* Zielwerte vom 23.09.2026: Wochenlauf über alle 40 Spezialisierungen in Mythic+ und Raid.
  Die Verteilungen sind gegenüber der Vorwoche weitgehend stabil; deutlichere Verschiebungen
  gab es bei Bewahrungs-Rufer, Windwandler-Mönch, Überlebens-Jäger, Disziplin-Priester und Feuer-Magier.
* Median-Itemlevel der Besten 323 -> 325, die Summen-Zeile steigt entsprechend mit.

## 0.1.0

Erste Version.

* Sekundärwerte im Vergleich zur Verteilung der besten Spieler, umgerechnet auf
  die eigene Summe, mit ±5-%-Schablone. Werte mit unter 10 % Anteil nur als Strich.
* Zeile „Summe“ gegen den Median der Besten.
* Reiter Mythic+ und Raid mit eigenen Zielwerten.
* Zielwerte für alle Klassen und Spezialisierungen, wöchentlich aktualisiert.
* Reiter Ausrüstung: beste Kombination aus Ausrüstung und Taschen berechnen,
  anlegen und als Set im Ausrüstungsmanager speichern (erst nach dem Anlegen).
  Kampfweise bleibt: Zweihand, Einhand + Schild/Nebenhand, zwei Waffen, Fernkampf.
* Gesperrte („geheime") Werte aus WoW 12.x ohne Lua-Fehler.
* Keine Befehle und keine Einstellungen: Das Fenster hängt am Charakterfenster.
* Fläschchen und Essen als lila Anteil im Balken.
* Angedockt am Charakterfenster, einklappbar; im Kampf eingefroren.
