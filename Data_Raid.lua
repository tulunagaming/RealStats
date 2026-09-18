-- Automatisch erzeugt von tools/export_targets.py -- nicht von Hand aendern.
-- Quelle: Warcraft Logs, raid, 209 Top-Spieler, Stand 2026-09-18.

local _, ns = ...

ns.TARGETS = ns.TARGETS or {}
ns.TARGETS[70] = ns.TARGETS[70] or {}

ns.TARGETS[70].raid = {
    source  = "Warcraft Logs · Top-Logs Raid (mythisch)",
    date    = "2026-09-18",
    players = 209,
    difficulty = "mythic",
    ilvl    = 324,
    -- Summe von Crit + Haste + Mastery + Vers bei den Besten
    total = { median = 3138, mean = 3144, p25 = 3091, p75 = 3197 },
    -- Anteil an der Summe von Crit + Haste + Mastery + Vers
    share = {
        crit        = 0.3339,
        haste       = 0.2820,
        mastery     = 0.3529,
        versatility = 0.0312,
    },
}
