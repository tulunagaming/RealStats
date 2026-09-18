-- Automatisch erzeugt von tools/export_targets.py -- nicht von Hand aendern.
-- Quelle: Warcraft Logs, mplus, 77 Top-Spieler, Stand 2026-09-18.

local _, ns = ...

ns.TARGETS = ns.TARGETS or {}
ns.TARGETS[70] = ns.TARGETS[70] or {}

ns.TARGETS[70].mplus = {
    source  = "Warcraft Logs · Top-Logs Mythic+",
    date    = "2026-09-18",
    players = 77,
    minKey  = 19,
    maxKey  = 22,
    ilvl    = 323,
    -- Summe von Crit + Haste + Mastery + Vers bei den Besten
    total = { median = 3120, mean = 3145, p25 = 3058, p75 = 3186 },
    -- Anteil an der Summe von Crit + Haste + Mastery + Vers
    share = {
        crit        = 0.3118,
        haste       = 0.2926,
        mastery     = 0.3632,
        versatility = 0.0324,
    },
}
