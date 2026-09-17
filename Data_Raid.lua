-- Automatisch erzeugt von tools/export_targets.py -- nicht von Hand aendern.
-- Quelle: Warcraft Logs, raid, 214 Top-Spieler, Stand 2026-09-17.

local _, ns = ...

ns.TARGETS = ns.TARGETS or {}
ns.TARGETS[70] = ns.TARGETS[70] or {}

ns.TARGETS[70].raid = {
    source  = "Warcraft Logs · Top-Logs Raid (mythisch)",
    date    = "2026-09-17",
    players = 214,
    difficulty = "mythic",
    ilvl    = 324,
    -- Summe von Crit + Haste + Mastery + Vers bei den Besten
    total = { median = 3129, mean = 3139, p25 = 3074, p75 = 3194 },
    -- Anteil an der Summe von Crit + Haste + Mastery + Vers
    share = {
        crit        = 0.3354,
        haste       = 0.2778,
        mastery     = 0.3554,
        versatility = 0.0313,
    },
}
