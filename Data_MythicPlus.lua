-- Automatisch erzeugt von tools/export_targets.py -- nicht von Hand aendern.
-- Quelle: Warcraft Logs, mplus, 76 Top-Spieler, Stand 2026-09-17.

local _, ns = ...

ns.TARGETS = ns.TARGETS or {}
ns.TARGETS[70] = ns.TARGETS[70] or {}

ns.TARGETS[70].mplus = {
    source  = "Warcraft Logs · Top-Logs Mythic+",
    date    = "2026-09-17",
    players = 76,
    minKey  = 19,
    maxKey  = 22,
    ilvl    = 323,
    -- Summe von Crit + Haste + Mastery + Vers bei den Besten
    total = { median = 3106, mean = 3124, p25 = 3032, p75 = 3177 },
    -- Anteil an der Summe von Crit + Haste + Mastery + Vers
    share = {
        crit        = 0.3088,
        haste       = 0.2937,
        mastery     = 0.3647,
        versatility = 0.0328,
    },
}
