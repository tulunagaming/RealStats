-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Mythic+ / Warcraft Logs · Mythic+ Alltags-Schlüssel, erzeugt 2026-10-31 03:50.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local SOURCES = {
    ["mplus"] = "Warcraft Logs · Top-Logs Mythic+",
    ["mplusMid"] = "Warcraft Logs · Mythic+ Alltags-Schlüssel",
}

local function set(spec, mode, t)
    t.source = SOURCES[mode]
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- ------------------------------------------------------------
-- Spitzen-Schlüssel (40 Spezialisierungen)
-- ------------------------------------------------------------

-- Mage Arcane
set(62, "mplus", {
    date = "2026-10-30", players = 94, ilvl = 335,
    minKey = 22, maxKey = 24,
    total = { median = 3436, mean = 3460, p25 = 3201, p75 = 3602 },
    share = { crit = 0.2430, haste = 0.3140, mastery = 0.1645, versatility = 0.2785 },
    gear = { players = 94,
        trinkets = { { 250215, 64 }, { 270164, 54 }, { 281215, 42 }, { 270169, 17 }, { 270167, 11 } },
        trinketPairs = { { 250215, 270164, 35 }, { 250215, 281215, 22 }, { 270164, 281215, 9 } },
        embellish = { { 239648, 86 }, { 245769, 72 }, { 239649, 11 }, { 239656, 6 }, { 239653, 4 } },
        embellishPairs = { { 239648, 245769, 64 }, { 239648, 239649, 9 }, { 239648, 239656, 5 } },
    },
})

-- Mage Fire
set(63, "mplus", {
    date = "2026-10-30", players = 98, ilvl = 331,
    minKey = 18, maxKey = 22,
    total = { median = 3152, mean = 3181, p25 = 3081, p75 = 3248 },
    share = { crit = 0.0836, haste = 0.4265, mastery = 0.2587, versatility = 0.2311 },
    gear = { players = 98,
        trinkets = { { 273796, 67 }, { 270164, 61 }, { 270167, 26 }, { 270169, 16 }, { 281215, 11 } },
        trinketPairs = { { 270164, 273796, 40 }, { 270167, 273796, 11 }, { 270164, 270167, 9 } },
        embellish = { { 239648, 79 }, { 245769, 54 }, { 239656, 16 }, { 245770, 13 }, { 239649, 12 } },
        embellishPairs = { { 239648, 245769, 45 }, { 239648, 245770, 11 }, { 239648, 239656, 9 } },
    },
})

-- Mage Frost
set(64, "mplus", {
    date = "2026-10-30", players = 87, ilvl = 331,
    minKey = 18, maxKey = 22,
    total = { median = 3164, mean = 3209, p25 = 3106, p75 = 3244 },
    share = { crit = 0.3429, haste = 0.2351, mastery = 0.3481, versatility = 0.0740 },
    gear = { players = 87,
        trinkets = { { 270164, 73 }, { 281215, 42 }, { 250215, 30 }, { 270167, 19 }, { 270168, 4 } },
        trinketPairs = { { 270164, 281215, 36 }, { 250215, 270164, 21 }, { 270164, 270167, 10 } },
        embellish = { { 239648, 60 }, { 245769, 40 }, { 239649, 28 }, { 239656, 13 }, { 245770, 12 } },
        embellishPairs = { { 239648, 245769, 26 }, { 239648, 239649, 14 }, { 239648, 245770, 8 } },
    },
})

-- Paladin Holy
set(65, "mplus", {
    date = "2026-10-30", players = 94, ilvl = 336,
    minKey = 23, maxKey = 24,
    total = { median = 3344, mean = 3440, p25 = 3304, p75 = 3628 },
    share = { crit = 0.2703, haste = 0.3509, mastery = 0.1123, versatility = 0.2665 },
    gear = { players = 94,
        trinkets = { { 270162, 91 }, { 270171, 69 }, { 270164, 14 }, { 281215, 5 }, { 250255, 4 } },
        trinketPairs = { { 270162, 270171, 67 }, { 270162, 270164, 14 }, { 270162, 270167, 4 } },
        embellish = { { 237834, 78 }, { 237828, 46 }, { 239656, 18 }, { 237836, 12 }, { 237843, 10 } },
        embellishPairs = { { 237828, 237834, 41 }, { 237834, 239656, 12 }, { 237834, 237836, 9 } },
    },
})

-- Paladin Protection
set(66, "mplus", {
    date = "2026-10-30", players = 84, ilvl = 333,
    minKey = 21, maxKey = 23,
    total = { median = 3295, mean = 3395, p25 = 3193, p75 = 3622 },
    share = { crit = 0.3465, haste = 0.3270, mastery = 0.1896, versatility = 0.1368 },
    gear = { players = 84,
        trinkets = { { 270175, 54 }, { 270173, 52 }, { 281215, 21 }, { 270164, 16 }, { 270165, 8 } },
        trinketPairs = { { 270173, 270175, 28 }, { 270175, 281215, 11 }, { 270173, 281215, 9 } },
        embellish = { { 237834, 53 }, { 237828, 26 }, { 239656, 22 }, { 237831, 21 }, { 237836, 13 } },
        embellishPairs = { { 237828, 237834, 16 }, { 237834, 239656, 14 }, { 237831, 237834, 7 } },
    },
})

-- Paladin Retribution
set(70, "mplus", {
    date = "2026-10-30", players = 75, ilvl = 335,
    minKey = 22, maxKey = 24,
    total = { median = 3323, mean = 3394, p25 = 3273, p75 = 3416 },
    share = { crit = 0.3042, haste = 0.2760, mastery = 0.3866, versatility = 0.0331 },
    gear = { players = 75,
        trinkets = { { 270175, 71 }, { 270173, 68 }, { 281215, 4 }, { 270164, 4 }, { 270165, 2 } },
        trinketPairs = { { 270173, 270175, 64 }, { 270175, 281215, 3 }, { 270165, 270175, 2 } },
        embellish = { { 237834, 66 }, { 251513, 36 }, { 237828, 27 }, { 237836, 12 }, { 237835, 2 } },
        embellishPairs = { { 237834, 251513, 31 }, { 237828, 237834, 20 }, { 237834, 237836, 7 } },
    },
})

-- Warrior Arms
set(71, "mplus", {
    date = "2026-10-30", players = 90, ilvl = 338,
    minKey = 23, maxKey = 24,
    total = { median = 3360, mean = 3445, p25 = 3264, p75 = 3625 },
    share = { crit = 0.3849, haste = 0.3148, mastery = 0.2606, versatility = 0.0397 },
    gear = { players = 90,
        trinkets = { { 270173, 80 }, { 281215, 39 }, { 270175, 39 }, { 270165, 20 }, { 270164, 1 } },
        trinketPairs = { { 270173, 281215, 34 }, { 270173, 270175, 31 }, { 270165, 270173, 14 } },
        embellish = { { 237834, 71 }, { 251513, 46 }, { 237828, 44 }, { 237836, 8 }, { 240949, 5 } },
        embellishPairs = { { 237834, 251513, 31 }, { 237828, 237834, 31 }, { 237828, 251513, 9 } },
    },
})

-- Warrior Fury
set(72, "mplus", {
    date = "2026-10-30", players = 92, ilvl = 333,
    minKey = 20, maxKey = 23,
    total = { median = 3368, mean = 3397, p25 = 3223, p75 = 3508 },
    share = { crit = 0.2847, haste = 0.3384, mastery = 0.3431, versatility = 0.0338 },
    gear = { players = 92,
        trinkets = { { 270173, 88 }, { 270175, 45 }, { 270165, 23 }, { 281215, 23 }, { 270164, 3 } },
        trinketPairs = { { 270173, 270175, 43 }, { 270173, 281215, 21 }, { 270165, 270173, 20 } },
        embellish = { { 237834, 82 }, { 237828, 54 }, { 237846, 13 }, { 251513, 9 }, { 239656, 7 } },
        embellishPairs = { { 237828, 237834, 47 }, { 237834, 237846, 12 }, { 237834, 251513, 5 } },
    },
})

-- Warrior Protection
set(73, "mplus", {
    date = "2026-10-30", players = 71, ilvl = 333,
    minKey = 20, maxKey = 24,
    total = { median = 3474, mean = 3452, p25 = 3246, p75 = 3642 },
    share = { crit = 0.2868, haste = 0.3615, mastery = 0.2094, versatility = 0.1424 },
    gear = { players = 71,
        trinkets = { { 270175, 38 }, { 270165, 31 }, { 270173, 30 }, { 281215, 22 }, { 270164, 8 } },
        trinketPairs = { { 270173, 270175, 15 }, { 270165, 270175, 14 }, { 270173, 281215, 7 } },
        embellish = { { 237834, 52 }, { 237828, 37 }, { 237831, 14 }, { 239656, 9 }, { 237836, 7 } },
        embellishPairs = { { 237828, 237834, 27 }, { 237834, 239656, 6 }, { 237834, 237836, 5 } },
    },
})

-- Druid Balance
set(102, "mplus", {
    date = "2026-10-30", players = 86, ilvl = 333,
    minKey = 20, maxKey = 23,
    total = { median = 3207, mean = 3270, p25 = 3135, p75 = 3325 },
    share = { crit = 0.2526, haste = 0.3171, mastery = 0.3922, versatility = 0.0381 },
    gear = { players = 86,
        trinkets = { { 281215, 48 }, { 270164, 39 }, { 270167, 25 }, { 273796, 24 }, { 250215, 20 } },
        trinketPairs = { { 270164, 281215, 15 }, { 250215, 281215, 9 }, { 273796, 281215, 9 } },
        embellish = { { 245769, 59 }, { 244576, 55 }, { 244569, 33 }, { 239656, 9 }, { 244575, 6 } },
        embellishPairs = { { 244576, 245769, 36 }, { 244569, 245769, 15 }, { 244569, 244576, 11 } },
    },
})

-- Druid Feral
set(103, "mplus", {
    date = "2026-10-30", players = 63, ilvl = 335,
    minKey = 21, maxKey = 24,
    total = { median = 3299, mean = 3375, p25 = 3264, p75 = 3354 },
    share = { crit = 0.2651, haste = 0.2786, mastery = 0.4062, versatility = 0.0502 },
    gear = { players = 63,
        trinkets = { { 270175, 62 }, { 281215, 42 }, { 270173, 11 }, { 270164, 7 }, { 270165, 4 } },
        trinketPairs = { { 270175, 281215, 41 }, { 270173, 270175, 10 }, { 270164, 270175, 7 } },
        embellish = { { 244576, 55 }, { 244569, 36 }, { 244575, 14 }, { 239656, 6 }, { 251513, 5 } },
        embellishPairs = { { 244569, 244576, 30 }, { 244575, 244576, 11 }, { 239656, 244576, 4 } },
    },
})

-- Druid Guardian
set(104, "mplus", {
    date = "2026-10-30", players = 68, ilvl = 335,
    minKey = 22, maxKey = 24,
    total = { median = 3575, mean = 3542, p25 = 3332, p75 = 3700 },
    share = { crit = 0.2439, haste = 0.3755, mastery = 0.2040, versatility = 0.1766 },
    gear = { players = 68,
        trinkets = { { 270175, 49 }, { 281215, 46 }, { 270165, 26 }, { 270164, 10 }, { 250245, 2 } },
        trinketPairs = { { 270175, 281215, 28 }, { 270165, 281215, 13 }, { 270165, 270175, 12 } },
        embellish = { { 244576, 50 }, { 239656, 33 }, { 244569, 23 }, { 244574, 10 }, { 244573, 9 } },
        embellishPairs = { { 239656, 244576, 22 }, { 244569, 244576, 14 }, { 244573, 244576, 6 } },
    },
})

-- Druid Restoration
set(105, "mplus", {
    date = "2026-10-30", players = 93, ilvl = 332,
    minKey = 20, maxKey = 23,
    total = { median = 3302, mean = 3346, p25 = 3219, p75 = 3420 },
    share = { crit = 0.0691, haste = 0.4630, mastery = 0.3458, versatility = 0.1221 },
    gear = { players = 93,
        trinkets = { { 270162, 81 }, { 270167, 50 }, { 270164, 17 }, { 250255, 16 }, { 270171, 9 } },
        trinketPairs = { { 270162, 270167, 44 }, { 270162, 270164, 14 }, { 250255, 270162, 11 } },
        embellish = { { 244576, 63 }, { 244572, 35 }, { 245769, 27 }, { 244569, 26 }, { 239656, 10 } },
        embellishPairs = { { 244572, 244576, 21 }, { 244569, 244576, 15 }, { 244572, 245769, 10 } },
    },
})

-- DeathKnight Blood
set(250, "mplus", {
    date = "2026-10-30", players = 92, ilvl = 338,
    minKey = 23, maxKey = 24,
    total = { median = 3714, mean = 3631, p25 = 3348, p75 = 3786 },
    share = { crit = 0.2975, haste = 0.3251, mastery = 0.1613, versatility = 0.2161 },
    gear = { players = 92,
        trinkets = { { 270175, 92 }, { 270173, 69 }, { 281215, 10 }, { 270165, 7 }, { 270164, 6 } },
        trinketPairs = { { 270173, 270175, 69 }, { 270175, 281215, 10 }, { 270165, 270175, 7 } },
        embellish = { { 237834, 85 }, { 237828, 42 }, { 237836, 31 }, { 240949, 6 }, { 239656, 6 } },
        embellishPairs = { { 237828, 237834, 38 }, { 237834, 237836, 28 }, { 237834, 240949, 5 } },
    },
})

-- DeathKnight Frost
set(251, "mplus", {
    date = "2026-10-30", players = 79, ilvl = 335,
    minKey = 21, maxKey = 24,
    total = { median = 3342, mean = 3415, p25 = 3306, p75 = 3410 },
    share = { crit = 0.4165, haste = 0.1787, mastery = 0.3686, versatility = 0.0362 },
    gear = { players = 79,
        trinkets = { { 270175, 78 }, { 281215, 35 }, { 270173, 32 }, { 270165, 11 }, { 270164, 1 } },
        trinketPairs = { { 270175, 281215, 35 }, { 270173, 270175, 31 }, { 270165, 270175, 10 } },
        embellish = { { 237834, 66 }, { 237828, 46 }, { 251513, 24 }, { 239656, 8 }, { 237836, 4 } },
        embellishPairs = { { 237828, 237834, 36 }, { 237834, 251513, 16 }, { 237828, 251513, 6 } },
    },
})

-- DeathKnight Unholy
set(252, "mplus", {
    date = "2026-10-30", players = 89, ilvl = 333,
    minKey = 21, maxKey = 23,
    total = { median = 3279, mean = 3348, p25 = 3226, p75 = 3356 },
    share = { crit = 0.4117, haste = 0.1921, mastery = 0.3629, versatility = 0.0333 },
    gear = { players = 89,
        trinkets = { { 270175, 89 }, { 270173, 43 }, { 270165, 19 }, { 281215, 14 }, { 270164, 9 } },
        trinketPairs = { { 270173, 270175, 43 }, { 270165, 270175, 19 }, { 270175, 281215, 14 } },
        embellish = { { 237834, 74 }, { 237828, 57 }, { 251513, 14 }, { 237836, 10 }, { 237846, 6 } },
        embellishPairs = { { 237828, 237834, 47 }, { 237834, 237836, 8 }, { 237834, 251513, 7 } },
    },
})

-- Hunter BeastMastery
set(253, "mplus", {
    date = "2026-10-30", players = 92, ilvl = 335,
    minKey = 21, maxKey = 24,
    total = { median = 3402, mean = 3501, p25 = 3304, p75 = 3716 },
    share = { crit = 0.3337, haste = 0.0917, mastery = 0.4284, versatility = 0.1461 },
    gear = { players = 92,
        trinkets = { { 270175, 65 }, { 281215, 59 }, { 270164, 42 }, { 270165, 6 }, { 270168, 5 } },
        trinketPairs = { { 270175, 281215, 33 }, { 270164, 281215, 25 }, { 270164, 270175, 17 } },
        embellish = { { 244584, 79 }, { 244581, 54 }, { 244582, 20 }, { 239656, 18 }, { 265337, 2 } },
        embellishPairs = { { 244581, 244584, 44 }, { 244582, 244584, 14 }, { 239656, 244584, 12 } },
    },
})

-- Hunter Marksmanship
set(254, "mplus", {
    date = "2026-10-30", players = 94, ilvl = 334,
    minKey = 19, maxKey = 23,
    total = { median = 3381, mean = 3442, p25 = 3325, p75 = 3466 },
    share = { crit = 0.4640, haste = 0.1019, mastery = 0.3481, versatility = 0.0859 },
    gear = { players = 94,
        trinkets = { { 270175, 90 }, { 281215, 53 }, { 270168, 32 }, { 270164, 6 }, { 273796, 3 } },
        trinketPairs = { { 270175, 281215, 51 }, { 270168, 270175, 32 }, { 270164, 270175, 6 } },
        embellish = { { 244584, 82 }, { 244581, 53 }, { 244582, 33 }, { 239656, 10 }, { 244577, 3 } },
        embellishPairs = { { 244581, 244584, 43 }, { 244582, 244584, 27 }, { 239656, 244584, 8 } },
    },
})

-- Hunter Survival
set(255, "mplus", {
    date = "2026-10-30", players = 75, ilvl = 333,
    minKey = 19, maxKey = 23,
    total = { median = 3361, mean = 3370, p25 = 3297, p75 = 3395 },
    share = { crit = 0.2871, haste = 0.2974, mastery = 0.3832, versatility = 0.0322 },
    gear = { players = 75,
        trinkets = { { 270175, 59 }, { 281215, 44 }, { 270165, 16 }, { 270173, 14 }, { 270164, 9 } },
        trinketPairs = { { 270175, 281215, 36 }, { 270165, 270175, 9 }, { 270173, 270175, 8 } },
        embellish = { { 244584, 65 }, { 244581, 58 }, { 239656, 11 }, { 244582, 7 }, { 251513, 3 } },
        embellishPairs = { { 244581, 244584, 51 }, { 239656, 244584, 7 }, { 244582, 244584, 3 } },
    },
})

-- Priest Discipline
set(256, "mplus", {
    date = "2026-10-30", players = 93, ilvl = 334,
    minKey = 21, maxKey = 23,
    total = { median = 3334, mean = 3415, p25 = 3221, p75 = 3585 },
    share = { crit = 0.2805, haste = 0.3835, mastery = 0.2654, versatility = 0.0706 },
    gear = { players = 93,
        trinkets = { { 270162, 77 }, { 270167, 56 }, { 270164, 21 }, { 281215, 14 }, { 270171, 4 } },
        trinketPairs = { { 270162, 270167, 46 }, { 270162, 270164, 13 }, { 270162, 281215, 6 } },
        embellish = { { 239648, 69 }, { 239649, 43 }, { 239656, 24 }, { 245769, 19 }, { 245770, 4 } },
        embellishPairs = { { 239648, 239649, 30 }, { 239648, 239656, 15 }, { 239648, 245769, 10 } },
    },
})

-- Priest Holy
set(257, "mplus", {
    date = "2026-10-30", players = 92, ilvl = 334,
    minKey = 21, maxKey = 23,
    total = { median = 3206, mean = 3281, p25 = 3152, p75 = 3330 },
    share = { crit = 0.2863, haste = 0.3384, mastery = 0.2065, versatility = 0.1688 },
    gear = { players = 92,
        trinkets = { { 270162, 89 }, { 270164, 47 }, { 270171, 20 }, { 270167, 16 }, { 250255, 8 } },
        trinketPairs = { { 270162, 270164, 46 }, { 270162, 270171, 18 }, { 270162, 270167, 16 } },
        embellish = { { 239648, 63 }, { 239649, 42 }, { 245769, 22 }, { 239656, 13 }, { 239653, 11 } },
        embellishPairs = { { 239648, 239649, 25 }, { 239648, 245769, 11 }, { 239648, 239653, 8 } },
    },
})

-- Priest Shadow
set(258, "mplus", {
    date = "2026-10-30", players = 84, ilvl = 334,
    minKey = 20, maxKey = 23,
    total = { median = 3259, mean = 3329, p25 = 3167, p75 = 3387 },
    share = { crit = 0.2549, haste = 0.2996, mastery = 0.4107, versatility = 0.0348 },
    gear = { players = 84,
        trinkets = { { 281215, 55 }, { 270169, 32 }, { 270164, 31 }, { 270167, 20 }, { 250215, 18 } },
        trinketPairs = { { 270169, 281215, 19 }, { 270164, 281215, 11 }, { 250215, 281215, 10 } },
        embellish = { { 239648, 68 }, { 239649, 43 }, { 245769, 24 }, { 239656, 14 }, { 239664, 6 } },
        embellishPairs = { { 239648, 239649, 32 }, { 239648, 245769, 16 }, { 239648, 239656, 8 } },
    },
})

-- Rogue Assassination
set(259, "mplus", {
    date = "2026-10-30", players = 83, ilvl = 335,
    minKey = 22, maxKey = 24,
    total = { median = 3375, mean = 3489, p25 = 3314, p75 = 3707 },
    share = { crit = 0.3726, haste = 0.2712, mastery = 0.2890, versatility = 0.0672 },
    gear = { players = 83,
        trinkets = { { 270175, 82 }, { 270165, 35 }, { 281215, 31 }, { 270168, 9 }, { 270164, 4 } },
        trinketPairs = { { 270165, 270175, 34 }, { 270175, 281215, 31 }, { 270168, 270175, 8 } },
        embellish = { { 237837, 66 }, { 244576, 48 }, { 244569, 25 }, { 239656, 10 }, { 251513, 5 } },
        embellishPairs = { { 237837, 244576, 38 }, { 237837, 244569, 14 }, { 244569, 244576, 6 } },
    },
})

-- Rogue Outlaw
set(260, "mplus", {
    date = "2026-10-30", players = 58, ilvl = 329,
    minKey = 20, maxKey = 23,
    total = { median = 3225, mean = 3284, p25 = 3148, p75 = 3315 },
    share = { crit = 0.4164, haste = 0.2925, mastery = 0.0856, versatility = 0.2055 },
    gear = { players = 58,
        trinkets = { { 270173, 46 }, { 270175, 42 }, { 281215, 11 }, { 270165, 5 }, { 250215, 4 } },
        trinketPairs = { { 270173, 270175, 30 }, { 270173, 281215, 9 }, { 250215, 270173, 4 } },
        embellish = { { 244569, 31 }, { 244576, 27 }, { 244573, 21 }, { 237839, 13 }, { 237837, 9 } },
        embellishPairs = { { 244569, 244573, 10 }, { 244569, 244576, 10 }, { 237839, 244569, 5 } },
    },
})

-- Rogue Subtlety
set(261, "mplus", {
    date = "2026-10-30", players = 61, ilvl = 337,
    minKey = 23, maxKey = 24,
    total = { median = 3350, mean = 3465, p25 = 3326, p75 = 3611 },
    share = { crit = 0.3007, haste = 0.2253, mastery = 0.4104, versatility = 0.0636 },
    gear = { players = 61,
        trinkets = { { 270175, 60 }, { 281215, 39 }, { 270164, 9 }, { 270165, 6 }, { 270173, 5 } },
        trinketPairs = { { 270175, 281215, 38 }, { 270164, 270175, 9 }, { 270165, 270175, 6 } },
        embellish = { { 237837, 46 }, { 244576, 43 }, { 244569, 16 }, { 251513, 5 }, { 239656, 5 } },
        embellishPairs = { { 237837, 244576, 31 }, { 244569, 244576, 8 }, { 237837, 244569, 6 } },
    },
})

-- Shaman Elemental
set(262, "mplus", {
    date = "2026-10-30", players = 84, ilvl = 337,
    minKey = 23, maxKey = 24,
    total = { median = 3170, mean = 3313, p25 = 3138, p75 = 3554 },
    share = { crit = 0.3593, haste = 0.2381, mastery = 0.3495, versatility = 0.0531 },
    gear = { players = 84,
        trinkets = { { 270164, 57 }, { 281215, 53 }, { 273796, 46 }, { 250215, 5 }, { 270167, 4 } },
        trinketPairs = { { 270164, 273796, 28 }, { 270164, 281215, 26 }, { 273796, 281215, 18 } },
        embellish = { { 244584, 72 }, { 244581, 42 }, { 251513, 23 }, { 239656, 15 }, { 237831, 9 } },
        embellishPairs = { { 244581, 244584, 35 }, { 244584, 251513, 16 }, { 239656, 244584, 11 } },
    },
})

-- Shaman Enhancement
set(263, "mplus", {
    date = "2026-10-30", players = 88, ilvl = 334,
    minKey = 20, maxKey = 23,
    total = { median = 3233, mean = 3278, p25 = 3190, p75 = 3274 },
    share = { crit = 0.2916, haste = 0.2979, mastery = 0.3760, versatility = 0.0345 },
    gear = { players = 88,
        trinkets = { { 270175, 68 }, { 281215, 55 }, { 270173, 28 }, { 273796, 13 }, { 270164, 7 } },
        trinketPairs = { { 270175, 281215, 40 }, { 270173, 270175, 25 }, { 273796, 281215, 10 } },
        embellish = { { 244584, 73 }, { 237850, 54 }, { 244581, 12 }, { 239656, 9 }, { 244577, 8 } },
        embellishPairs = { { 237850, 244584, 45 }, { 239656, 244584, 6 }, { 244581, 244584, 6 } },
    },
})

-- Shaman Restoration
set(264, "mplus", {
    date = "2026-10-30", players = 85, ilvl = 334,
    minKey = 22, maxKey = 24,
    total = { median = 3178, mean = 3296, p25 = 3106, p75 = 3487 },
    share = { crit = 0.3980, haste = 0.2232, mastery = 0.1022, versatility = 0.2766 },
    gear = { players = 85,
        trinkets = { { 270162, 83 }, { 250255, 51 }, { 270171, 12 }, { 281215, 11 }, { 270164, 11 } },
        trinketPairs = { { 250255, 270162, 50 }, { 270162, 270171, 11 }, { 270162, 281215, 10 } },
        embellish = { { 244584, 79 }, { 244577, 19 }, { 244581, 18 }, { 237831, 17 }, { 239656, 9 } },
        embellishPairs = { { 244577, 244584, 18 }, { 244581, 244584, 17 }, { 237831, 244584, 15 } },
    },
})

-- Warlock Affliction
set(265, "mplus", {
    date = "2026-10-30", players = 92, ilvl = 331,
    minKey = 19, maxKey = 21,
    total = { median = 3172, mean = 3210, p25 = 3080, p75 = 3266 },
    share = { crit = 0.3418, haste = 0.3812, mastery = 0.2092, versatility = 0.0678 },
    gear = { players = 92,
        trinkets = { { 270164, 53 }, { 273796, 44 }, { 281215, 37 }, { 270167, 22 }, { 273649, 13 } },
        trinketPairs = { { 270164, 273796, 21 }, { 270164, 281215, 14 }, { 273796, 281215, 11 } },
        embellish = { { 239648, 60 }, { 245769, 52 }, { 239649, 29 }, { 239656, 21 }, { 239654, 6 } },
        embellishPairs = { { 239648, 245769, 35 }, { 239649, 245769, 10 }, { 239648, 239649, 9 } },
    },
})

-- Warlock Demonology
set(266, "mplus", {
    date = "2026-10-30", players = 89, ilvl = 334,
    minKey = 21, maxKey = 23,
    total = { median = 3285, mean = 3349, p25 = 3156, p75 = 3537 },
    share = { crit = 0.3736, haste = 0.3014, mastery = 0.2568, versatility = 0.0681 },
    gear = { players = 89,
        trinkets = { { 281215, 53 }, { 270164, 43 }, { 273796, 41 }, { 270169, 30 }, { 270167, 6 } },
        trinketPairs = { { 270169, 281215, 21 }, { 270164, 273796, 20 }, { 273796, 281215, 18 } },
        embellish = { { 239648, 62 }, { 245769, 52 }, { 239649, 24 }, { 239656, 21 }, { 245770, 7 } },
        embellishPairs = { { 239648, 245769, 29 }, { 239648, 239649, 15 }, { 239656, 245769, 11 } },
    },
})

-- Warlock Destruction
set(267, "mplus", {
    date = "2026-10-30", players = 84, ilvl = 331,
    minKey = 18, maxKey = 23,
    total = { median = 3132, mean = 3192, p25 = 3083, p75 = 3223 },
    share = { crit = 0.3552, haste = 0.3165, mastery = 0.2724, versatility = 0.0559 },
    gear = { players = 84,
        trinkets = { { 270164, 62 }, { 250215, 34 }, { 281215, 31 }, { 270167, 22 }, { 273796, 4 } },
        trinketPairs = { { 270164, 281215, 23 }, { 250215, 270164, 18 }, { 270164, 270167, 12 } },
        embellish = { { 239648, 59 }, { 245769, 39 }, { 239649, 24 }, { 239656, 18 }, { 245770, 11 } },
        embellishPairs = { { 239648, 245769, 24 }, { 239648, 239649, 15 }, { 239648, 239656, 9 } },
    },
})

-- Monk Brewmaster
set(268, "mplus", {
    date = "2026-10-30", players = 57, ilvl = 333,
    minKey = 21, maxKey = 23,
    total = { median = 3287, mean = 3336, p25 = 3179, p75 = 3506 },
    share = { crit = 0.3861, haste = 0.0796, mastery = 0.2053, versatility = 0.3289 },
    gear = { players = 57,
        trinkets = { { 281215, 29 }, { 270175, 29 }, { 270164, 18 }, { 250245, 14 }, { 270173, 11 } },
        trinketPairs = { { 270175, 281215, 11 }, { 270164, 281215, 10 }, { 250245, 281215, 5 } },
        embellish = { { 251513, 43 }, { 244576, 33 }, { 244569, 24 }, { 239656, 5 }, { 237847, 3 } },
        embellishPairs = { { 244576, 251513, 20 }, { 244569, 251513, 14 }, { 244569, 244576, 9 } },
    },
})

-- Monk Windwalker
set(269, "mplus", {
    date = "2026-10-30", players = 77, ilvl = 335,
    minKey = 21, maxKey = 23,
    total = { median = 3294, mean = 3364, p25 = 3265, p75 = 3352 },
    share = { crit = 0.2467, haste = 0.2930, mastery = 0.4271, versatility = 0.0332 },
    gear = { players = 77,
        trinkets = { { 270175, 77 }, { 281215, 40 }, { 270173, 19 }, { 270165, 11 }, { 270164, 6 } },
        trinketPairs = { { 270175, 281215, 40 }, { 270173, 270175, 19 }, { 270165, 270175, 11 } },
        embellish = { { 244576, 69 }, { 244569, 58 }, { 239656, 16 }, { 251513, 4 }, { 244574, 3 } },
        embellishPairs = { { 244569, 244576, 51 }, { 239656, 244576, 11 }, { 239656, 244569, 5 } },
    },
})

-- Monk Mistweaver
set(270, "mplus", {
    date = "2026-10-30", players = 69, ilvl = 333,
    minKey = 21, maxKey = 23,
    total = { median = 3288, mean = 3347, p25 = 3211, p75 = 3349 },
    share = { crit = 0.1805, haste = 0.4167, mastery = 0.2950, versatility = 0.1079 },
    gear = { players = 69,
        trinkets = { { 270162, 66 }, { 270167, 26 }, { 250255, 17 }, { 270171, 15 }, { 270164, 7 } },
        trinketPairs = { { 270162, 270167, 25 }, { 250255, 270162, 16 }, { 270162, 270171, 14 } },
        embellish = { { 244576, 38 }, { 245770, 24 }, { 244569, 20 }, { 244573, 16 }, { 239656, 15 } },
        embellishPairs = { { 244576, 245770, 9 }, { 239656, 244576, 8 }, { 244569, 244576, 7 } },
    },
})

-- DemonHunter Havoc
set(577, "mplus", {
    date = "2026-10-30", players = 60, ilvl = 335,
    minKey = 21, maxKey = 24,
    total = { median = 3329, mean = 3392, p25 = 3259, p75 = 3542 },
    share = { crit = 0.4389, haste = 0.1657, mastery = 0.3610, versatility = 0.0345 },
    gear = { players = 60,
        trinkets = { { 270173, 59 }, { 270175, 33 }, { 281215, 24 }, { 270168, 3 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 32 }, { 270173, 281215, 23 }, { 270168, 270173, 3 } },
        embellish = { { 237840, 44 }, { 244576, 39 }, { 244569, 18 }, { 251513, 7 }, { 239656, 4 } },
        embellishPairs = { { 237840, 244576, 26 }, { 244569, 244576, 8 }, { 237840, 244569, 7 } },
    },
})

-- DemonHunter Vengeance
set(581, "mplus", {
    date = "2026-10-30", players = 70, ilvl = 333,
    minKey = 20, maxKey = 23,
    total = { median = 3374, mean = 3415, p25 = 3227, p75 = 3573 },
    share = { crit = 0.2689, haste = 0.4003, mastery = 0.1804, versatility = 0.1505 },
    gear = { players = 70,
        trinkets = { { 270173, 50 }, { 281215, 38 }, { 270175, 25 }, { 270165, 9 }, { 270164, 8 } },
        trinketPairs = { { 270173, 281215, 28 }, { 270173, 270175, 14 }, { 270175, 281215, 4 } },
        embellish = { { 244576, 49 }, { 237840, 49 }, { 239656, 10 }, { 244569, 8 }, { 244575, 7 } },
        embellishPairs = { { 237840, 244576, 36 }, { 237840, 244575, 4 }, { 239656, 244576, 4 } },
    },
})

-- Evoker Devastation
set(1467, "mplus", {
    date = "2026-10-30", players = 89, ilvl = 332,
    minKey = 19, maxKey = 22,
    total = { median = 3204, mean = 3233, p25 = 3101, p75 = 3293 },
    share = { crit = 0.4033, haste = 0.2427, mastery = 0.2928, versatility = 0.0611 },
    gear = { players = 89,
        trinkets = { { 270164, 67 }, { 270167, 42 }, { 281215, 30 }, { 273796, 20 }, { 250224, 4 } },
        trinketPairs = { { 270164, 270167, 26 }, { 270164, 281215, 21 }, { 270164, 273796, 10 } },
        embellish = { { 245769, 64 }, { 244584, 62 }, { 239656, 19 }, { 244581, 16 }, { 245770, 7 } },
        embellishPairs = { { 244584, 245769, 42 }, { 244581, 245769, 8 }, { 239656, 244584, 8 } },
    },
})

-- Evoker Preservation
set(1468, "mplus", {
    date = "2026-10-30", players = 69, ilvl = 332,
    minKey = 20, maxKey = 23,
    total = { median = 3308, mean = 3356, p25 = 3205, p75 = 3478 },
    share = { crit = 0.2350, haste = 0.3576, mastery = 0.1260, versatility = 0.2815 },
    gear = { players = 69,
        trinkets = { { 270162, 63 }, { 270167, 25 }, { 270164, 22 }, { 270171, 14 }, { 281215, 7 } },
        trinketPairs = { { 270162, 270167, 23 }, { 270162, 270164, 18 }, { 270162, 270171, 12 } },
        embellish = { { 244584, 50 }, { 245769, 30 }, { 239656, 23 }, { 244581, 17 }, { 244582, 5 } },
        embellishPairs = { { 239656, 244584, 17 }, { 244584, 245769, 17 }, { 244581, 244584, 12 } },
    },
})

-- Evoker Augmentation
set(1473, "mplus", {
    date = "2026-10-30", players = 74, ilvl = 332,
    minKey = 19, maxKey = 22,
    total = { median = 3276, mean = 3282, p25 = 3198, p75 = 3328 },
    share = { crit = 0.2963, haste = 0.1578, mastery = 0.5128, versatility = 0.0331 },
    gear = { players = 74,
        trinkets = { { 270168, 49 }, { 270161, 37 }, { 281215, 26 }, { 270164, 13 }, { 250224, 6 } },
        trinketPairs = { { 270161, 270168, 22 }, { 270168, 281215, 14 }, { 270161, 281215, 8 } },
        embellish = { { 244584, 54 }, { 245769, 40 }, { 239656, 19 }, { 244581, 18 }, { 244582, 7 } },
        embellishPairs = { { 244584, 245769, 27 }, { 239656, 244584, 10 }, { 244581, 244584, 9 } },
    },
})

-- DemonHunter Devourer
set(1480, "mplus", {
    date = "2026-10-30", players = 79, ilvl = 334,
    minKey = 21, maxKey = 23,
    total = { median = 3298, mean = 3339, p25 = 3188, p75 = 3378 },
    share = { crit = 0.2468, haste = 0.3222, mastery = 0.3971, versatility = 0.0340 },
    gear = { players = 79,
        trinkets = { { 281215, 54 }, { 270164, 43 }, { 270167, 41 }, { 250215, 10 }, { 270169, 9 } },
        trinketPairs = { { 270164, 281215, 29 }, { 270167, 281215, 19 }, { 270164, 270167, 12 } },
        embellish = { { 244569, 56 }, { 244576, 53 }, { 237840, 24 }, { 239656, 8 }, { 251513, 7 } },
        embellishPairs = { { 244569, 244576, 34 }, { 237840, 244576, 12 }, { 237840, 244569, 10 } },
    },
})

-- ------------------------------------------------------------
-- Alltags-Schlüssel (40 Spezialisierungen)
-- ------------------------------------------------------------

-- Mage Arcane
set(62, "mplusMid", {
    date = "2026-10-31", players = 94, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3072, mean = 3089, p25 = 3039, p75 = 3116 },
    share = { crit = 0.2551, haste = 0.3330, mastery = 0.1863, versatility = 0.2256 },
    gear = { players = 94,
        trinkets = { { 250215, 71 }, { 270164, 57 }, { 281215, 32 }, { 270167, 6 }, { 270169, 5 } },
        trinketPairs = { { 250215, 270164, 39 }, { 250215, 281215, 20 }, { 270164, 281215, 11 } },
        embellish = { { 239648, 64 }, { 245769, 56 }, { 239656, 15 }, { 245770, 14 }, { 239649, 11 } },
        embellishPairs = { { 239648, 245769, 37 }, { 239648, 245770, 11 }, { 239656, 245769, 7 } },
    },
})

-- Mage Fire
set(63, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3130, mean = 3155, p25 = 3049, p75 = 3238 },
    share = { crit = 0.1180, haste = 0.4252, mastery = 0.2763, versatility = 0.1805 },
    gear = { players = 96,
        trinkets = { { 273796, 52 }, { 270164, 51 }, { 270167, 34 }, { 270169, 11 }, { 273649, 9 } },
        trinketPairs = { { 270164, 273796, 25 }, { 270167, 273796, 15 }, { 270164, 270167, 10 } },
        embellish = { { 239648, 64 }, { 245769, 46 }, { 239656, 17 }, { 245770, 17 }, { 239649, 16 } },
        embellishPairs = { { 239648, 245769, 32 }, { 239648, 245770, 10 }, { 239648, 239656, 7 } },
    },
})

-- Mage Frost
set(64, "mplusMid", {
    date = "2026-10-31", players = 98, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3136, mean = 3137, p25 = 3083, p75 = 3203 },
    share = { crit = 0.3446, haste = 0.2297, mastery = 0.3622, versatility = 0.0635 },
    gear = { players = 98,
        trinkets = { { 270164, 71 }, { 281215, 48 }, { 250215, 23 }, { 270167, 22 }, { 250224, 7 } },
        trinketPairs = { { 270164, 281215, 40 }, { 270164, 270167, 15 }, { 250215, 270164, 12 } },
        embellish = { { 239648, 62 }, { 245769, 35 }, { 239649, 31 }, { 245770, 23 }, { 239656, 18 } },
        embellishPairs = { { 239648, 245769, 21 }, { 239648, 239649, 17 }, { 239648, 245770, 10 } },
    },
})

-- Paladin Holy
set(65, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 325,
    minKey = 12, maxKey = 16,
    total = { median = 3074, mean = 3068, p25 = 3002, p75 = 3139 },
    share = { crit = 0.2386, haste = 0.3369, mastery = 0.3381, versatility = 0.0863 },
    gear = { players = 96,
        trinkets = { { 270162, 72 }, { 270164, 50 }, { 250214, 15 }, { 270171, 11 }, { 250215, 10 } },
        trinketPairs = { { 270162, 270164, 42 }, { 250214, 270162, 11 }, { 270162, 270171, 10 } },
        embellish = { { 237843, 62 }, { 237831, 44 }, { 237834, 31 }, { 237830, 13 }, { 237828, 10 } },
        embellishPairs = { { 237831, 237843, 36 }, { 237834, 237843, 11 }, { 237828, 237834, 6 } },
    },
})

-- Paladin Protection
set(66, "mplusMid", {
    date = "2026-10-31", players = 98, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3164, mean = 3186, p25 = 3063, p75 = 3252 },
    share = { crit = 0.3465, haste = 0.3467, mastery = 0.2056, versatility = 0.1012 },
    gear = { players = 98,
        trinkets = { { 270175, 51 }, { 270173, 46 }, { 270164, 17 }, { 270165, 14 }, { 273796, 14 } },
        trinketPairs = { { 270173, 270175, 28 }, { 270165, 270175, 5 }, { 270164, 270175, 5 } },
        embellish = { { 237834, 50 }, { 237831, 42 }, { 237828, 25 }, { 237830, 16 }, { 251513, 11 } },
        embellishPairs = { { 237831, 237834, 12 }, { 237834, 251513, 9 }, { 237828, 237834, 9 } },
    },
})

-- Paladin Retribution
set(70, "mplusMid", {
    date = "2026-10-31", players = 93, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3207, mean = 3198, p25 = 3100, p75 = 3274 },
    share = { crit = 0.3274, haste = 0.2655, mastery = 0.3742, versatility = 0.0329 },
    gear = { players = 93,
        trinkets = { { 270175, 69 }, { 270173, 65 }, { 273796, 14 }, { 281215, 12 }, { 250228, 7 } },
        trinketPairs = { { 270173, 270175, 57 }, { 270175, 281215, 5 }, { 270173, 281215, 4 } },
        embellish = { { 237834, 66 }, { 251513, 60 }, { 237828, 23 }, { 237846, 8 }, { 237830, 6 } },
        embellishPairs = { { 237834, 251513, 43 }, { 237828, 237834, 16 }, { 237828, 251513, 6 } },
    },
})

-- Warrior Arms
set(71, "mplusMid", {
    date = "2026-10-31", players = 88, ilvl = 331,
    minKey = 12, maxKey = 16,
    total = { median = 3134, mean = 3150, p25 = 3062, p75 = 3254 },
    share = { crit = 0.4021, haste = 0.3219, mastery = 0.2415, versatility = 0.0345 },
    gear = { players = 88,
        trinkets = { { 270173, 69 }, { 270175, 36 }, { 281215, 29 }, { 270165, 21 }, { 273796, 4 } },
        trinketPairs = { { 270173, 270175, 30 }, { 270173, 281215, 20 }, { 270165, 270173, 13 } },
        embellish = { { 237834, 74 }, { 237828, 57 }, { 251513, 15 }, { 239656, 5 }, { 237836, 3 } },
        embellishPairs = { { 237828, 237834, 48 }, { 237834, 251513, 13 }, { 237834, 239656, 3 } },
    },
})

-- Warrior Fury
set(72, "mplusMid", {
    date = "2026-10-31", players = 94, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3315, mean = 3301, p25 = 3194, p75 = 3386 },
    share = { crit = 0.2696, haste = 0.3356, mastery = 0.3625, versatility = 0.0323 },
    gear = { players = 94,
        trinkets = { { 270173, 72 }, { 270175, 50 }, { 270165, 18 }, { 281215, 12 }, { 250228, 7 } },
        trinketPairs = { { 270173, 270175, 41 }, { 270165, 270173, 14 }, { 270173, 281215, 7 } },
        embellish = { { 237834, 81 }, { 237828, 50 }, { 237846, 19 }, { 237830, 8 }, { 251513, 8 } },
        embellishPairs = { { 237828, 237834, 43 }, { 237834, 237846, 13 }, { 237830, 237834, 7 } },
    },
})

-- Warrior Protection
set(73, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 328,
    minKey = 12, maxKey = 16,
    total = { median = 3142, mean = 3152, p25 = 3048, p75 = 3240 },
    share = { crit = 0.3247, haste = 0.3935, mastery = 0.1886, versatility = 0.0932 },
    gear = { players = 96,
        trinkets = { { 270173, 43 }, { 270175, 40 }, { 270165, 21 }, { 270164, 15 }, { 273796, 10 } },
        trinketPairs = { { 270173, 270175, 28 }, { 270165, 270173, 8 }, { 250245, 273795, 5 } },
        embellish = { { 237834, 50 }, { 237831, 35 }, { 237828, 34 }, { 237830, 15 }, { 237839, 13 } },
        embellishPairs = { { 237828, 237834, 23 }, { 237831, 237839, 12 }, { 237831, 237834, 9 } },
    },
})

-- Druid Balance
set(102, "mplusMid", {
    date = "2026-10-31", players = 89, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3118, mean = 3127, p25 = 3044, p75 = 3181 },
    share = { crit = 0.2363, haste = 0.3198, mastery = 0.4060, versatility = 0.0379 },
    gear = { players = 89,
        trinkets = { { 270164, 46 }, { 281215, 42 }, { 273796, 38 }, { 270167, 19 }, { 250215, 16 } },
        trinketPairs = { { 270164, 273796, 17 }, { 270164, 281215, 16 }, { 273796, 281215, 12 } },
        embellish = { { 245769, 66 }, { 244576, 57 }, { 244569, 15 }, { 244575, 8 }, { 239656, 7 } },
        embellishPairs = { { 244576, 245769, 42 }, { 244569, 245769, 11 }, { 244575, 245769, 5 } },
    },
})

-- Druid Feral
set(103, "mplusMid", {
    date = "2026-10-31", players = 93, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3171, mean = 3148, p25 = 3070, p75 = 3241 },
    share = { crit = 0.2574, haste = 0.2966, mastery = 0.4037, versatility = 0.0422 },
    gear = { players = 93,
        trinkets = { { 270175, 64 }, { 281215, 39 }, { 270173, 16 }, { 273796, 14 }, { 270164, 12 } },
        trinketPairs = { { 270175, 281215, 31 }, { 270173, 270175, 12 }, { 270164, 270175, 9 } },
        embellish = { { 244576, 63 }, { 244569, 46 }, { 239656, 17 }, { 244573, 11 }, { 244575, 9 } },
        embellishPairs = { { 244569, 244576, 28 }, { 239656, 244576, 10 }, { 244573, 244576, 5 } },
    },
})

-- Druid Guardian
set(104, "mplusMid", {
    date = "2026-10-31", players = 94, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3189, mean = 3220, p25 = 3072, p75 = 3282 },
    share = { crit = 0.2780, haste = 0.3923, mastery = 0.1953, versatility = 0.1343 },
    gear = { players = 94,
        trinkets = { { 270175, 59 }, { 281215, 27 }, { 270165, 24 }, { 270164, 15 }, { 250245, 13 } },
        trinketPairs = { { 270175, 281215, 19 }, { 270165, 270175, 14 }, { 250245, 270175, 7 } },
        embellish = { { 244576, 63 }, { 244569, 35 }, { 239656, 26 }, { 244573, 17 }, { 245771, 11 } },
        embellishPairs = { { 244569, 244576, 20 }, { 239656, 244576, 19 }, { 244573, 244576, 6 } },
    },
})

-- Druid Restoration
set(105, "mplusMid", {
    date = "2026-10-31", players = 91, ilvl = 327,
    minKey = 12, maxKey = 16,
    total = { median = 3183, mean = 3177, p25 = 3089, p75 = 3225 },
    share = { crit = 0.0631, haste = 0.4972, mastery = 0.3622, versatility = 0.0775 },
    gear = { players = 91,
        trinkets = { { 270162, 67 }, { 270167, 62 }, { 270164, 15 }, { 250214, 13 }, { 273796, 4 } },
        trinketPairs = { { 270162, 270167, 47 }, { 270162, 270164, 8 }, { 250214, 270162, 6 } },
        embellish = { { 244576, 49 }, { 244572, 45 }, { 245770, 22 }, { 244569, 21 }, { 245769, 21 } },
        embellishPairs = { { 244572, 244576, 21 }, { 244576, 245769, 8 }, { 244572, 245769, 8 } },
    },
})

-- DeathKnight Blood
set(250, "mplusMid", {
    date = "2026-10-31", players = 88, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3248, mean = 3251, p25 = 3152, p75 = 3299 },
    share = { crit = 0.3466, haste = 0.3389, mastery = 0.1856, versatility = 0.1289 },
    gear = { players = 88,
        trinkets = { { 270175, 71 }, { 270173, 62 }, { 281215, 9 }, { 270165, 9 }, { 273796, 6 } },
        trinketPairs = { { 270173, 270175, 53 }, { 270175, 281215, 6 }, { 270165, 270175, 5 } },
        embellish = { { 237834, 70 }, { 237828, 33 }, { 237846, 13 }, { 240949, 12 }, { 239656, 11 } },
        embellishPairs = { { 237828, 237834, 28 }, { 237834, 237846, 8 }, { 237834, 239656, 8 } },
    },
})

-- DeathKnight Frost
set(251, "mplusMid", {
    date = "2026-10-31", players = 90, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3228, mean = 3225, p25 = 3172, p75 = 3286 },
    share = { crit = 0.4187, haste = 0.1840, mastery = 0.3655, versatility = 0.0318 },
    gear = { players = 90,
        trinkets = { { 270175, 79 }, { 270173, 45 }, { 281215, 24 }, { 270165, 6 }, { 250228, 6 } },
        trinketPairs = { { 270173, 270175, 39 }, { 270175, 281215, 23 }, { 270165, 270175, 6 } },
        embellish = { { 237834, 67 }, { 237828, 42 }, { 251513, 30 }, { 239656, 11 }, { 237839, 6 } },
        embellishPairs = { { 237828, 237834, 35 }, { 237834, 251513, 17 }, { 237834, 237836, 4 } },
    },
})

-- DeathKnight Unholy
set(252, "mplusMid", {
    date = "2026-10-31", players = 90, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3188, mean = 3175, p25 = 3110, p75 = 3244 },
    share = { crit = 0.4179, haste = 0.1912, mastery = 0.3572, versatility = 0.0338 },
    gear = { players = 90,
        trinkets = { { 270175, 70 }, { 270173, 57 }, { 281215, 15 }, { 250228, 11 }, { 270164, 6 } },
        trinketPairs = { { 270173, 270175, 49 }, { 270175, 281215, 13 }, { 250228, 270175, 5 } },
        embellish = { { 237834, 66 }, { 237828, 54 }, { 251513, 12 }, { 237830, 9 }, { 237846, 8 } },
        embellishPairs = { { 237828, 237834, 41 }, { 237834, 251513, 8 }, { 237834, 239656, 4 } },
    },
})

-- Hunter BeastMastery
set(253, "mplusMid", {
    date = "2026-10-31", players = 93, ilvl = 331,
    minKey = 12, maxKey = 16,
    total = { median = 3230, mean = 3247, p25 = 3129, p75 = 3308 },
    share = { crit = 0.3667, haste = 0.1210, mastery = 0.4419, versatility = 0.0704 },
    gear = { players = 93,
        trinkets = { { 270175, 58 }, { 281215, 48 }, { 270164, 22 }, { 250215, 9 }, { 270165, 8 } },
        trinketPairs = { { 270175, 281215, 31 }, { 270164, 281215, 12 }, { 270164, 270175, 8 } },
        embellish = { { 244584, 65 }, { 244581, 52 }, { 244582, 22 }, { 265337, 13 }, { 239656, 7 } },
        embellishPairs = { { 244581, 244584, 32 }, { 244582, 244584, 11 }, { 244584, 265337, 8 } },
    },
})

-- Hunter Marksmanship
set(254, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3295, mean = 3305, p25 = 3175, p75 = 3404 },
    share = { crit = 0.4633, haste = 0.1186, mastery = 0.3669, versatility = 0.0512 },
    gear = { players = 96,
        trinkets = { { 270175, 69 }, { 281215, 40 }, { 270168, 33 }, { 250215, 8 }, { 270173, 7 } },
        trinketPairs = { { 270175, 281215, 31 }, { 270168, 270175, 27 }, { 159617, 281215, 3 } },
        embellish = { { 244584, 74 }, { 244581, 64 }, { 244582, 9 }, { 239656, 7 }, { 265337, 6 } },
        embellishPairs = { { 244581, 244584, 52 }, { 244581, 244582, 5 }, { 244582, 244584, 4 } },
    },
})

-- Hunter Survival
set(255, "mplusMid", {
    date = "2026-10-31", players = 83, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3266, mean = 3249, p25 = 3135, p75 = 3330 },
    share = { crit = 0.2882, haste = 0.2584, mastery = 0.4218, versatility = 0.0316 },
    gear = { players = 83,
        trinkets = { { 270175, 52 }, { 281215, 31 }, { 270173, 28 }, { 270165, 14 }, { 250215, 12 } },
        trinketPairs = { { 270175, 281215, 23 }, { 270173, 270175, 13 }, { 270165, 270175, 9 } },
        embellish = { { 244584, 62 }, { 244581, 50 }, { 239656, 10 }, { 244577, 9 }, { 244582, 5 } },
        embellishPairs = { { 244581, 244584, 41 }, { 244577, 244584, 5 }, { 239656, 244584, 5 } },
    },
})

-- Priest Discipline
set(256, "mplusMid", {
    date = "2026-10-31", players = 94, ilvl = 327,
    minKey = 12, maxKey = 16,
    total = { median = 3164, mean = 3160, p25 = 3073, p75 = 3246 },
    share = { crit = 0.2469, haste = 0.4072, mastery = 0.2841, versatility = 0.0618 },
    gear = { players = 94,
        trinkets = { { 270162, 63 }, { 270167, 49 }, { 270164, 29 }, { 250214, 9 }, { 250215, 5 } },
        trinketPairs = { { 270162, 270167, 35 }, { 270162, 270164, 14 }, { 270164, 270167, 7 } },
        embellish = { { 239648, 61 }, { 245769, 37 }, { 239649, 33 }, { 245770, 19 }, { 239656, 13 } },
        embellishPairs = { { 239648, 245769, 26 }, { 239648, 239649, 16 }, { 239649, 245770, 8 } },
    },
})

-- Priest Holy
set(257, "mplusMid", {
    date = "2026-10-31", players = 97, ilvl = 326,
    minKey = 12, maxKey = 16,
    total = { median = 3077, mean = 3084, p25 = 3013, p75 = 3143 },
    share = { crit = 0.3426, haste = 0.2880, mastery = 0.2792, versatility = 0.0902 },
    gear = { players = 97,
        trinkets = { { 270162, 76 }, { 270164, 53 }, { 270167, 20 }, { 270171, 10 }, { 250215, 7 } },
        trinketPairs = { { 270162, 270164, 40 }, { 270162, 270167, 14 }, { 270162, 270171, 6 } },
        embellish = { { 239648, 64 }, { 239649, 52 }, { 245769, 25 }, { 245770, 14 }, { 239654, 7 } },
        embellishPairs = { { 239648, 239649, 37 }, { 239648, 245769, 12 }, { 239648, 245770, 6 } },
    },
})

-- Priest Shadow
set(258, "mplusMid", {
    date = "2026-10-31", players = 93, ilvl = 331,
    minKey = 12, maxKey = 16,
    total = { median = 3127, mean = 3154, p25 = 3045, p75 = 3228 },
    share = { crit = 0.2389, haste = 0.3129, mastery = 0.4142, versatility = 0.0340 },
    gear = { players = 93,
        trinkets = { { 281215, 49 }, { 250215, 42 }, { 270164, 31 }, { 270167, 21 }, { 270169, 17 } },
        trinketPairs = { { 250215, 281215, 18 }, { 270164, 281215, 12 }, { 250215, 270167, 10 } },
        embellish = { { 239648, 70 }, { 239649, 55 }, { 245769, 29 }, { 239664, 9 }, { 245770, 7 } },
        embellishPairs = { { 239648, 239649, 42 }, { 239648, 245769, 13 }, { 239649, 245769, 10 } },
    },
})

-- Rogue Assassination
set(259, "mplusMid", {
    date = "2026-10-31", players = 94, ilvl = 328,
    minKey = 12, maxKey = 16,
    total = { median = 3200, mean = 3196, p25 = 3083, p75 = 3275 },
    share = { crit = 0.3929, haste = 0.3037, mastery = 0.2542, versatility = 0.0492 },
    gear = { players = 94,
        trinkets = { { 270175, 68 }, { 281215, 35 }, { 270165, 23 }, { 273796, 14 }, { 270168, 13 } },
        trinketPairs = { { 270175, 281215, 27 }, { 270165, 270175, 17 }, { 270168, 270175, 9 } },
        embellish = { { 237837, 82 }, { 244576, 64 }, { 244569, 18 }, { 244573, 3 }, { 239656, 3 } },
        embellishPairs = { { 237837, 244576, 58 }, { 237837, 244569, 11 }, { 244569, 244576, 4 } },
    },
})

-- Rogue Outlaw
set(260, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 326,
    minKey = 12, maxKey = 16,
    total = { median = 3132, mean = 3138, p25 = 3035, p75 = 3211 },
    share = { crit = 0.4243, haste = 0.3224, mastery = 0.0733, versatility = 0.1800 },
    gear = { players = 96,
        trinkets = { { 270173, 70 }, { 270175, 51 }, { 281215, 15 }, { 270164, 8 }, { 270165, 7 } },
        trinketPairs = { { 270173, 270175, 40 }, { 270173, 281215, 12 }, { 270164, 270173, 4 } },
        embellish = { { 244569, 47 }, { 244576, 42 }, { 237839, 29 }, { 244573, 25 }, { 239656, 12 } },
        embellishPairs = { { 244569, 244573, 19 }, { 244569, 244576, 12 }, { 237839, 244576, 11 } },
    },
})

-- Rogue Subtlety
set(261, "mplusMid", {
    date = "2026-10-31", players = 84, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3224, mean = 3195, p25 = 3098, p75 = 3268 },
    share = { crit = 0.2965, haste = 0.2538, mastery = 0.3815, versatility = 0.0682 },
    gear = { players = 84,
        trinkets = { { 270175, 65 }, { 281215, 57 }, { 270165, 10 }, { 270173, 10 }, { 250215, 7 } },
        trinketPairs = { { 270175, 281215, 43 }, { 270173, 270175, 9 }, { 270165, 270175, 7 } },
        embellish = { { 237837, 72 }, { 244576, 50 }, { 244569, 19 }, { 239656, 6 }, { 244573, 5 } },
        embellishPairs = { { 237837, 244576, 40 }, { 237837, 244569, 13 }, { 244569, 244576, 4 } },
    },
})

-- Shaman Elemental
set(262, "mplusMid", {
    date = "2026-10-31", players = 98, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3054, mean = 3042, p25 = 2992, p75 = 3084 },
    share = { crit = 0.3370, haste = 0.2431, mastery = 0.3625, versatility = 0.0574 },
    gear = { players = 98,
        trinkets = { { 273796, 58 }, { 281215, 57 }, { 270164, 51 }, { 250215, 13 }, { 250224, 3 } },
        trinketPairs = { { 273796, 281215, 25 }, { 270164, 281215, 23 }, { 270164, 273796, 22 } },
        embellish = { { 244584, 72 }, { 244581, 25 }, { 239656, 24 }, { 244577, 19 }, { 237831, 15 } },
        embellishPairs = { { 239656, 244584, 18 }, { 244581, 244584, 15 }, { 244577, 244584, 13 } },
    },
})

-- Shaman Enhancement
set(263, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3126, mean = 3129, p25 = 3040, p75 = 3209 },
    share = { crit = 0.2827, haste = 0.3051, mastery = 0.3790, versatility = 0.0332 },
    gear = { players = 96,
        trinkets = { { 270175, 61 }, { 270173, 45 }, { 281215, 32 }, { 273796, 20 }, { 270164, 11 } },
        trinketPairs = { { 270173, 270175, 32 }, { 270175, 281215, 21 }, { 270173, 273796, 5 } },
        embellish = { { 237850, 79 }, { 244584, 70 }, { 244581, 14 }, { 244577, 9 }, { 239656, 5 } },
        embellishPairs = { { 237850, 244584, 56 }, { 237850, 244581, 7 }, { 244581, 244584, 6 } },
    },
})

-- Shaman Restoration
set(264, "mplusMid", {
    date = "2026-10-31", players = 95, ilvl = 326,
    minKey = 12, maxKey = 16,
    total = { median = 3005, mean = 3013, p25 = 2934, p75 = 3098 },
    share = { crit = 0.4348, haste = 0.2586, mastery = 0.1135, versatility = 0.1931 },
    gear = { players = 95,
        trinkets = { { 270162, 86 }, { 270164, 41 }, { 250255, 16 }, { 270167, 12 }, { 281215, 8 } },
        trinketPairs = { { 270162, 270164, 35 }, { 250255, 270162, 14 }, { 270162, 270167, 12 } },
        embellish = { { 244584, 70 }, { 237831, 53 }, { 244577, 24 }, { 244581, 12 }, { 239656, 8 } },
        embellishPairs = { { 237831, 244584, 33 }, { 244577, 244584, 16 }, { 237831, 244577, 7 } },
    },
})

-- Warlock Affliction
set(265, "mplusMid", {
    date = "2026-10-31", players = 99, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3109, mean = 3118, p25 = 3036, p75 = 3178 },
    share = { crit = 0.3388, haste = 0.3866, mastery = 0.2270, versatility = 0.0476 },
    gear = { players = 99,
        trinkets = { { 270164, 55 }, { 273796, 45 }, { 281215, 33 }, { 273649, 17 }, { 270167, 12 } },
        trinketPairs = { { 270164, 273796, 20 }, { 270164, 281215, 14 }, { 273796, 281215, 8 } },
        embellish = { { 239648, 66 }, { 245769, 51 }, { 239649, 31 }, { 239656, 18 }, { 245770, 14 } },
        embellishPairs = { { 239648, 245769, 29 }, { 239648, 239649, 14 }, { 239649, 245769, 12 } },
    },
})

-- Warlock Demonology
set(266, "mplusMid", {
    date = "2026-10-31", players = 93, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3088, mean = 3115, p25 = 3013, p75 = 3140 },
    share = { crit = 0.3704, haste = 0.3121, mastery = 0.2534, versatility = 0.0641 },
    gear = { players = 93,
        trinkets = { { 270164, 61 }, { 273796, 46 }, { 281215, 41 }, { 270167, 9 }, { 250215, 8 } },
        trinketPairs = { { 270164, 273796, 27 }, { 270164, 281215, 24 }, { 273796, 281215, 9 } },
        embellish = { { 239648, 61 }, { 245769, 46 }, { 239649, 25 }, { 239656, 21 }, { 245770, 14 } },
        embellishPairs = { { 239648, 245769, 32 }, { 239648, 239649, 10 }, { 239648, 239656, 9 } },
    },
})

-- Warlock Destruction
set(267, "mplusMid", {
    date = "2026-10-31", players = 97, ilvl = 328,
    minKey = 12, maxKey = 16,
    total = { median = 3077, mean = 3079, p25 = 2996, p75 = 3167 },
    share = { crit = 0.3477, haste = 0.3179, mastery = 0.2818, versatility = 0.0525 },
    gear = { players = 97,
        trinkets = { { 270164, 50 }, { 250215, 42 }, { 281215, 35 }, { 270167, 18 }, { 273796, 15 } },
        trinketPairs = { { 250215, 270164, 18 }, { 270164, 281215, 17 }, { 273796, 281215, 7 } },
        embellish = { { 239648, 66 }, { 245769, 39 }, { 239649, 26 }, { 245770, 23 }, { 239656, 18 } },
        embellishPairs = { { 239648, 245769, 27 }, { 239648, 239649, 13 }, { 239648, 245770, 12 } },
    },
})

-- Monk Brewmaster
set(268, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 328,
    minKey = 12, maxKey = 16,
    total = { median = 3168, mean = 3182, p25 = 3041, p75 = 3272 },
    share = { crit = 0.3971, haste = 0.0864, mastery = 0.2211, versatility = 0.2954 },
    gear = { players = 96,
        trinkets = { { 270175, 42 }, { 250245, 37 }, { 281215, 23 }, { 270173, 19 }, { 250228, 16 } },
        trinketPairs = { { 250245, 270175, 12 }, { 270175, 281215, 11 }, { 270173, 270175, 8 } },
        embellish = { { 251513, 65 }, { 244576, 49 }, { 244569, 23 }, { 239656, 9 }, { 237847, 5 } },
        embellishPairs = { { 244576, 251513, 32 }, { 244569, 251513, 13 }, { 244569, 244576, 6 } },
    },
})

-- Monk Windwalker
set(269, "mplusMid", {
    date = "2026-10-31", players = 98, ilvl = 330,
    minKey = 12, maxKey = 16,
    total = { median = 3198, mean = 3193, p25 = 3130, p75 = 3252 },
    share = { crit = 0.2603, haste = 0.2990, mastery = 0.3937, versatility = 0.0470 },
    gear = { players = 98,
        trinkets = { { 270175, 80 }, { 270173, 41 }, { 281215, 27 }, { 250215, 9 }, { 270164, 8 } },
        trinketPairs = { { 270173, 270175, 34 }, { 270175, 281215, 23 }, { 270165, 270175, 7 } },
        embellish = { { 244576, 75 }, { 244569, 60 }, { 239656, 16 }, { 244573, 9 }, { 251513, 9 } },
        embellishPairs = { { 244569, 244576, 51 }, { 239656, 244576, 13 }, { 244573, 244576, 3 } },
    },
})

-- Monk Mistweaver
set(270, "mplusMid", {
    date = "2026-10-31", players = 92, ilvl = 326,
    minKey = 12, maxKey = 16,
    total = { median = 3181, mean = 3162, p25 = 3086, p75 = 3256 },
    share = { crit = 0.2277, haste = 0.4587, mastery = 0.2245, versatility = 0.0891 },
    gear = { players = 92,
        trinkets = { { 270162, 73 }, { 270167, 45 }, { 270171, 15 }, { 281215, 8 }, { 270164, 7 } },
        trinketPairs = { { 270162, 270167, 35 }, { 270162, 270171, 8 }, { 270162, 281215, 6 } },
        embellish = { { 245770, 55 }, { 244576, 44 }, { 239656, 24 }, { 244573, 17 }, { 244569, 15 } },
        embellishPairs = { { 244576, 245770, 23 }, { 239656, 244576, 11 }, { 244569, 245770, 9 } },
    },
})

-- DemonHunter Havoc
set(577, "mplusMid", {
    date = "2026-10-31", players = 86, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3184, mean = 3188, p25 = 3092, p75 = 3250 },
    share = { crit = 0.4302, haste = 0.1654, mastery = 0.3703, versatility = 0.0341 },
    gear = { players = 86,
        trinkets = { { 270173, 70 }, { 270175, 34 }, { 281215, 23 }, { 270168, 17 }, { 250215, 10 } },
        trinketPairs = { { 270173, 270175, 31 }, { 270173, 281215, 18 }, { 270168, 270173, 14 } },
        embellish = { { 237840, 67 }, { 244576, 54 }, { 244569, 18 }, { 239656, 8 }, { 244573, 4 } },
        embellishPairs = { { 237840, 244576, 43 }, { 237840, 244569, 13 }, { 237840, 239656, 3 } },
    },
})

-- DemonHunter Vengeance
set(581, "mplusMid", {
    date = "2026-10-31", players = 91, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3132, mean = 3154, p25 = 3043, p75 = 3233 },
    share = { crit = 0.2886, haste = 0.3921, mastery = 0.1825, versatility = 0.1368 },
    gear = { players = 91,
        trinkets = { { 270173, 44 }, { 270175, 34 }, { 281215, 25 }, { 270164, 17 }, { 250245, 11 } },
        trinketPairs = { { 270173, 270175, 18 }, { 270173, 281215, 16 }, { 270164, 270173, 6 } },
        embellish = { { 237840, 63 }, { 244576, 57 }, { 244569, 19 }, { 239656, 8 }, { 244573, 7 } },
        embellishPairs = { { 237840, 244576, 38 }, { 244569, 244576, 9 }, { 237840, 244569, 7 } },
    },
})

-- Evoker Devastation
set(1467, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3114, mean = 3121, p25 = 3030, p75 = 3210 },
    share = { crit = 0.4009, haste = 0.2287, mastery = 0.3155, versatility = 0.0548 },
    gear = { players = 96,
        trinkets = { { 270164, 57 }, { 281215, 30 }, { 273796, 29 }, { 270167, 26 }, { 250215, 12 } },
        trinketPairs = { { 270164, 273796, 14 }, { 270164, 281215, 13 }, { 270164, 270167, 12 } },
        embellish = { { 244584, 65 }, { 245769, 48 }, { 239656, 16 }, { 244581, 16 }, { 245770, 12 } },
        embellishPairs = { { 244584, 245769, 33 }, { 239656, 245769, 8 }, { 244581, 244584, 8 } },
    },
})

-- Evoker Preservation
set(1468, "mplusMid", {
    date = "2026-10-31", players = 96, ilvl = 326,
    minKey = 12, maxKey = 16,
    total = { median = 3082, mean = 3095, p25 = 3010, p75 = 3192 },
    share = { crit = 0.3632, haste = 0.2552, mastery = 0.3229, versatility = 0.0587 },
    gear = { players = 96,
        trinkets = { { 270162, 77 }, { 270164, 49 }, { 270167, 23 }, { 270171, 10 }, { 250214, 8 } },
        trinketPairs = { { 270162, 270164, 36 }, { 270162, 270167, 17 }, { 270162, 270171, 6 } },
        embellish = { { 245769, 46 }, { 244584, 46 }, { 244581, 26 }, { 244582, 14 }, { 245770, 13 } },
        embellishPairs = { { 244584, 245769, 21 }, { 244582, 245769, 8 }, { 244581, 245769, 7 } },
    },
})

-- Evoker Augmentation
set(1473, "mplusMid", {
    date = "2026-10-31", players = 89, ilvl = 328,
    minKey = 12, maxKey = 16,
    total = { median = 3137, mean = 3119, p25 = 3035, p75 = 3238 },
    share = { crit = 0.3114, haste = 0.1594, mastery = 0.4804, versatility = 0.0488 },
    gear = { players = 89,
        trinkets = { { 270168, 36 }, { 270161, 35 }, { 281215, 25 }, { 270164, 23 }, { 250224, 10 } },
        trinketPairs = { { 270161, 270168, 17 }, { 270161, 281215, 9 }, { 270168, 281215, 8 } },
        embellish = { { 244584, 55 }, { 245769, 39 }, { 244581, 21 }, { 239656, 18 }, { 245770, 8 } },
        embellishPairs = { { 244584, 245769, 23 }, { 244581, 244584, 10 }, { 239656, 244584, 7 } },
    },
})

-- DemonHunter Devourer
set(1480, "mplusMid", {
    date = "2026-10-31", players = 92, ilvl = 329,
    minKey = 12, maxKey = 16,
    total = { median = 3136, mean = 3148, p25 = 3049, p75 = 3227 },
    share = { crit = 0.2413, haste = 0.3292, mastery = 0.3920, versatility = 0.0375 },
    gear = { players = 92,
        trinkets = { { 270164, 50 }, { 281215, 48 }, { 270167, 30 }, { 250215, 25 }, { 270168, 5 } },
        trinketPairs = { { 270164, 281215, 25 }, { 270167, 281215, 14 }, { 250215, 270164, 11 } },
        embellish = { { 244576, 60 }, { 237840, 52 }, { 244569, 43 }, { 244573, 5 }, { 237843, 4 } },
        embellishPairs = { { 237840, 244576, 28 }, { 244569, 244576, 25 }, { 237840, 244569, 14 } },
    },
})
