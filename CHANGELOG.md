# Changelog

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
