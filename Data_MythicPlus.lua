-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Mythic+, 40 Spezialisierungen, erzeugt 2026-10-23 02:53.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Mythic+"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "mplus", {
    date = "2026-10-22", players = 87, ilvl = 334,
    minKey = 22, maxKey = 23,
    total = { median = 3329, mean = 3428, p25 = 3187, p75 = 3620 },
    share = { crit = 0.2602, haste = 0.3142, mastery = 0.1536, versatility = 0.2720 },
    gear = { players = 87,
        trinkets = { { 270164, 64 }, { 250215, 64 }, { 270169, 19 }, { 281215, 17 }, { 270167, 9 } },
        trinketPairs = { { 250215, 270164, 47 }, { 270164, 270169, 13 }, { 250215, 281215, 9 } },
        embellish = { { 239648, 69 }, { 245769, 67 }, { 239649, 9 }, { 245770, 7 }, { 239656, 5 } },
        embellishPairs = { { 239648, 245769, 50 }, { 239649, 245769, 7 }, { 239648, 245770, 6 } },
    },
})

-- Mage Fire
set(63, "mplus", {
    date = "2026-10-22", players = 95, ilvl = 327,
    minKey = 18, maxKey = 22,
    total = { median = 3138, mean = 3146, p25 = 3050, p75 = 3178 },
    share = { crit = 0.0792, haste = 0.4399, mastery = 0.2525, versatility = 0.2284 },
    gear = { players = 95,
        trinkets = { { 273796, 67 }, { 270164, 60 }, { 270167, 28 }, { 270169, 11 }, { 273649, 7 } },
        trinketPairs = { { 270164, 273796, 35 }, { 270167, 273796, 13 }, { 270164, 270167, 12 } },
        embellish = { { 239648, 77 }, { 245769, 52 }, { 245770, 21 }, { 239656, 15 }, { 239649, 10 } },
        embellishPairs = { { 239648, 245769, 43 }, { 239648, 245770, 16 }, { 239648, 239656, 7 } },
    },
})

-- Mage Frost
set(64, "mplus", {
    date = "2026-10-22", players = 91, ilvl = 328,
    minKey = 18, maxKey = 20,
    total = { median = 3178, mean = 3196, p25 = 3098, p75 = 3242 },
    share = { crit = 0.3578, haste = 0.2247, mastery = 0.3498, versatility = 0.0677 },
    gear = { players = 91,
        trinkets = { { 270164, 77 }, { 250215, 39 }, { 270167, 35 }, { 281215, 9 }, { 270168, 7 } },
        trinketPairs = { { 270164, 270167, 31 }, { 250215, 270164, 30 }, { 270164, 281215, 8 } },
        embellish = { { 239648, 57 }, { 245769, 40 }, { 239649, 29 }, { 245770, 28 }, { 239656, 8 } },
        embellishPairs = { { 239648, 245769, 27 }, { 239648, 245770, 14 }, { 239649, 245769, 10 } },
    },
})

-- Paladin Holy
set(65, "mplus", {
    date = "2026-10-22", players = 95, ilvl = 333,
    minKey = 22, maxKey = 24,
    total = { median = 3335, mean = 3444, p25 = 3244, p75 = 3650 },
    share = { crit = 0.2671, haste = 0.3579, mastery = 0.1153, versatility = 0.2597 },
    gear = { players = 95,
        trinkets = { { 270162, 91 }, { 270171, 57 }, { 270164, 28 }, { 270167, 6 }, { 281215, 4 } },
        trinketPairs = { { 270162, 270171, 54 }, { 270162, 270164, 25 }, { 270162, 270167, 5 } },
        embellish = { { 237834, 75 }, { 237828, 45 }, { 237843, 16 }, { 239656, 16 }, { 237836, 10 } },
        embellishPairs = { { 237828, 237834, 36 }, { 237834, 237843, 10 }, { 237834, 239656, 9 } },
    },
})

-- Paladin Protection
set(66, "mplus", {
    date = "2026-10-22", players = 86, ilvl = 329,
    minKey = 20, maxKey = 22,
    total = { median = 3224, mean = 3305, p25 = 3150, p75 = 3496 },
    share = { crit = 0.3602, haste = 0.3316, mastery = 0.1662, versatility = 0.1420 },
    gear = { players = 86,
        trinkets = { { 270175, 50 }, { 270173, 47 }, { 270165, 16 }, { 270164, 15 }, { 281215, 10 } },
        trinketPairs = { { 270173, 270175, 29 }, { 270165, 270175, 5 }, { 270164, 270165, 5 } },
        embellish = { { 237834, 46 }, { 237828, 31 }, { 237831, 26 }, { 237830, 22 }, { 239656, 12 } },
        embellishPairs = { { 237828, 237834, 18 }, { 237831, 237834, 8 }, { 237830, 237831, 6 } },
    },
})

-- Paladin Retribution
set(70, "mplus", {
    date = "2026-10-22", players = 84, ilvl = 331,
    minKey = 21, maxKey = 23,
    total = { median = 3264, mean = 3317, p25 = 3218, p75 = 3328 },
    share = { crit = 0.3183, haste = 0.2706, mastery = 0.3783, versatility = 0.0329 },
    gear = { players = 84,
        trinkets = { { 270175, 79 }, { 270173, 68 }, { 270165, 9 }, { 270164, 4 }, { 281215, 2 } },
        trinketPairs = { { 270173, 270175, 64 }, { 270165, 270175, 8 }, { 270164, 270175, 3 } },
        embellish = { { 237834, 67 }, { 251513, 51 }, { 237828, 27 }, { 237836, 8 }, { 239656, 7 } },
        embellishPairs = { { 237834, 251513, 38 }, { 237828, 237834, 17 }, { 237828, 251513, 7 } },
    },
})

-- Warrior Arms
set(71, "mplus", {
    date = "2026-10-22", players = 76, ilvl = 337,
    minKey = 22, maxKey = 24,
    total = { median = 3322, mean = 3405, p25 = 3206, p75 = 3608 },
    share = { crit = 0.3963, haste = 0.3154, mastery = 0.2514, versatility = 0.0369 },
    gear = { players = 76,
        trinkets = { { 270173, 64 }, { 270175, 53 }, { 270165, 24 }, { 281215, 10 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 42 }, { 270165, 270173, 14 }, { 270165, 270175, 9 } },
        embellish = { { 237834, 54 }, { 251513, 39 }, { 237828, 38 }, { 237836, 7 }, { 240949, 6 } },
        embellishPairs = { { 237828, 237834, 26 }, { 237834, 251513, 20 }, { 237828, 251513, 10 } },
    },
})

-- Warrior Fury
set(72, "mplus", {
    date = "2026-10-22", players = 90, ilvl = 330,
    minKey = 20, maxKey = 23,
    total = { median = 3407, mean = 3426, p25 = 3306, p75 = 3482 },
    share = { crit = 0.2834, haste = 0.3486, mastery = 0.3352, versatility = 0.0329 },
    gear = { players = 90,
        trinkets = { { 270173, 83 }, { 270175, 56 }, { 270165, 25 }, { 281215, 10 }, { 270164, 3 } },
        trinketPairs = { { 270173, 270175, 51 }, { 270165, 270173, 22 }, { 270173, 281215, 7 } },
        embellish = { { 237834, 74 }, { 237828, 54 }, { 237846, 18 }, { 237830, 10 }, { 251513, 7 } },
        embellishPairs = { { 237828, 237834, 43 }, { 237834, 237846, 12 }, { 237828, 237830, 5 } },
    },
})

-- Warrior Protection
set(73, "mplus", {
    date = "2026-10-22", players = 77, ilvl = 329,
    minKey = 20, maxKey = 23,
    total = { median = 3284, mean = 3336, p25 = 3172, p75 = 3551 },
    share = { crit = 0.2911, haste = 0.3752, mastery = 0.1949, versatility = 0.1389 },
    gear = { players = 77,
        trinkets = { { 270175, 40 }, { 270165, 37 }, { 270173, 37 }, { 270164, 10 }, { 270160, 9 } },
        trinketPairs = { { 270165, 270175, 17 }, { 270173, 270175, 14 }, { 270165, 270173, 9 } },
        embellish = { { 237834, 59 }, { 237828, 36 }, { 237831, 16 }, { 239656, 8 }, { 237836, 6 } },
        embellishPairs = { { 237828, 237834, 27 }, { 237831, 237834, 8 }, { 237834, 239656, 7 } },
    },
})

-- Druid Balance
set(102, "mplus", {
    date = "2026-10-22", players = 86, ilvl = 330,
    minKey = 20, maxKey = 22,
    total = { median = 3162, mean = 3221, p25 = 3089, p75 = 3303 },
    share = { crit = 0.2502, haste = 0.3173, mastery = 0.3819, versatility = 0.0507 },
    gear = { players = 86,
        trinkets = { { 270164, 51 }, { 273796, 34 }, { 250215, 31 }, { 270167, 30 }, { 281215, 13 } },
        trinketPairs = { { 250215, 270164, 22 }, { 270164, 273796, 18 }, { 270167, 273796, 12 } },
        embellish = { { 244576, 55 }, { 245769, 55 }, { 244569, 23 }, { 239656, 10 }, { 245770, 10 } },
        embellishPairs = { { 244576, 245769, 33 }, { 244569, 245769, 11 }, { 244576, 245770, 7 } },
    },
})

-- Druid Feral
set(103, "mplus", {
    date = "2026-10-22", players = 54, ilvl = 330,
    minKey = 20, maxKey = 23,
    total = { median = 3247, mean = 3328, p25 = 3214, p75 = 3312 },
    share = { crit = 0.2701, haste = 0.2637, mastery = 0.4004, versatility = 0.0658 },
    gear = { players = 54,
        trinkets = { { 270175, 52 }, { 270164, 15 }, { 270173, 14 }, { 281215, 12 }, { 270165, 11 } },
        trinketPairs = { { 270173, 270175, 14 }, { 270164, 270175, 13 }, { 270175, 281215, 12 } },
        embellish = { { 244576, 44 }, { 244569, 34 }, { 244575, 10 }, { 239656, 8 }, { 244573, 3 } },
        embellishPairs = { { 244569, 244576, 26 }, { 244575, 244576, 7 }, { 239656, 244576, 5 } },
    },
})

-- Druid Guardian
set(104, "mplus", {
    date = "2026-10-22", players = 77, ilvl = 331,
    minKey = 22, maxKey = 24,
    total = { median = 3538, mean = 3484, p25 = 3273, p75 = 3641 },
    share = { crit = 0.2731, haste = 0.3689, mastery = 0.1742, versatility = 0.1838 },
    gear = { players = 77,
        trinkets = { { 270175, 64 }, { 270165, 33 }, { 281215, 26 }, { 270164, 16 }, { 250245, 6 } },
        trinketPairs = { { 270165, 270175, 23 }, { 270175, 281215, 17 }, { 270164, 270175, 13 } },
        embellish = { { 244576, 51 }, { 244569, 36 }, { 239656, 35 }, { 244574, 10 }, { 244573, 7 } },
        embellishPairs = { { 239656, 244576, 21 }, { 244569, 244576, 17 }, { 239656, 244569, 9 } },
    },
})

-- Druid Restoration
set(105, "mplus", {
    date = "2026-10-22", players = 92, ilvl = 329,
    minKey = 20, maxKey = 22,
    total = { median = 3244, mean = 3291, p25 = 3163, p75 = 3346 },
    share = { crit = 0.0847, haste = 0.4636, mastery = 0.3355, versatility = 0.1162 },
    gear = { players = 92,
        trinkets = { { 270162, 77 }, { 270167, 44 }, { 270164, 22 }, { 250255, 19 }, { 270171, 7 } },
        trinketPairs = { { 270162, 270167, 39 }, { 270162, 270164, 16 }, { 250255, 270162, 13 } },
        embellish = { { 244576, 58 }, { 244572, 32 }, { 244569, 24 }, { 245769, 24 }, { 239656, 10 } },
        embellishPairs = { { 244572, 244576, 18 }, { 244569, 244576, 13 }, { 244576, 245769, 11 } },
    },
})

-- DeathKnight Blood
set(250, "mplus", {
    date = "2026-10-22", players = 71, ilvl = 337,
    minKey = 22, maxKey = 24,
    total = { median = 3601, mean = 3588, p25 = 3316, p75 = 3753 },
    share = { crit = 0.3204, haste = 0.3351, mastery = 0.1382, versatility = 0.2064 },
    gear = { players = 71,
        trinkets = { { 270175, 71 }, { 270173, 49 }, { 270165, 12 }, { 281215, 8 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 49 }, { 270165, 270175, 12 }, { 270175, 281215, 8 } },
        embellish = { { 237834, 62 }, { 237828, 29 }, { 237836, 22 }, { 239656, 10 }, { 240949, 6 } },
        embellishPairs = { { 237828, 237834, 23 }, { 237834, 237836, 22 }, { 237834, 239656, 7 } },
    },
})

-- DeathKnight Frost
set(251, "mplus", {
    date = "2026-10-22", players = 80, ilvl = 332,
    minKey = 21, maxKey = 23,
    total = { median = 3284, mean = 3322, p25 = 3251, p75 = 3338 },
    share = { crit = 0.4280, haste = 0.1718, mastery = 0.3673, versatility = 0.0328 },
    gear = { players = 80,
        trinkets = { { 270175, 79 }, { 270173, 49 }, { 270165, 15 }, { 281215, 9 }, { 270164, 7 } },
        trinketPairs = { { 270173, 270175, 48 }, { 270165, 270175, 14 }, { 270175, 281215, 9 } },
        embellish = { { 237834, 62 }, { 237828, 40 }, { 251513, 27 }, { 237836, 6 }, { 239656, 5 } },
        embellishPairs = { { 237828, 237834, 30 }, { 237834, 251513, 13 }, { 237828, 251513, 7 } },
    },
})

-- DeathKnight Unholy
set(252, "mplus", {
    date = "2026-10-22", players = 87, ilvl = 329,
    minKey = 21, maxKey = 23,
    total = { median = 3237, mean = 3320, p25 = 3201, p75 = 3332 },
    share = { crit = 0.4139, haste = 0.1872, mastery = 0.3610, versatility = 0.0379 },
    gear = { players = 87,
        trinkets = { { 270175, 87 }, { 270173, 42 }, { 270165, 30 }, { 270164, 8 }, { 281215, 2 } },
        trinketPairs = { { 270173, 270175, 42 }, { 270165, 270175, 30 }, { 270164, 270175, 8 } },
        embellish = { { 237834, 69 }, { 237828, 53 }, { 251513, 18 }, { 239656, 9 }, { 237836, 6 } },
        embellishPairs = { { 237828, 237834, 38 }, { 237834, 239656, 9 }, { 237828, 251513, 9 } },
    },
})

-- Hunter BeastMastery
set(253, "mplus", {
    date = "2026-10-22", players = 78, ilvl = 331,
    minKey = 21, maxKey = 23,
    total = { median = 3408, mean = 3460, p25 = 3243, p75 = 3709 },
    share = { crit = 0.3581, haste = 0.0802, mastery = 0.4159, versatility = 0.1458 },
    gear = { players = 78,
        trinkets = { { 270175, 64 }, { 270164, 40 }, { 281215, 21 }, { 270165, 12 }, { 270168, 5 } },
        trinketPairs = { { 270164, 270175, 28 }, { 270175, 281215, 13 }, { 270165, 270175, 11 } },
        embellish = { { 244584, 66 }, { 244581, 40 }, { 244582, 22 }, { 239656, 17 }, { 265337, 4 } },
        embellishPairs = { { 244581, 244584, 32 }, { 244582, 244584, 17 }, { 239656, 244584, 10 } },
    },
})

-- Hunter Marksmanship
set(254, "mplus", {
    date = "2026-10-22", players = 90, ilvl = 329,
    minKey = 18, maxKey = 22,
    total = { median = 3384, mean = 3397, p25 = 3276, p75 = 3424 },
    share = { crit = 0.4960, haste = 0.0850, mastery = 0.3584, versatility = 0.0606 },
    gear = { players = 90,
        trinkets = { { 270175, 82 }, { 270168, 55 }, { 281215, 13 }, { 270164, 11 }, { 270173, 6 } },
        trinketPairs = { { 270168, 270175, 52 }, { 270175, 281215, 11 }, { 270164, 270175, 8 } },
        embellish = { { 244584, 72 }, { 244581, 62 }, { 244582, 21 }, { 239656, 10 }, { 251513, 6 } },
        embellishPairs = { { 244581, 244584, 51 }, { 244581, 244582, 9 }, { 239656, 244584, 9 } },
    },
})

-- Hunter Survival
set(255, "mplus", {
    date = "2026-10-22", players = 71, ilvl = 329,
    minKey = 19, maxKey = 23,
    total = { median = 3294, mean = 3302, p25 = 3205, p75 = 3355 },
    share = { crit = 0.2919, haste = 0.2772, mastery = 0.3975, versatility = 0.0333 },
    gear = { players = 71,
        trinkets = { { 270175, 51 }, { 270165, 30 }, { 270173, 24 }, { 270164, 14 }, { 250215, 10 } },
        trinketPairs = { { 270165, 270175, 19 }, { 270173, 270175, 17 }, { 270164, 270175, 10 } },
        embellish = { { 244584, 61 }, { 244581, 52 }, { 239656, 9 }, { 244577, 6 }, { 244582, 5 } },
        embellishPairs = { { 244581, 244584, 43 }, { 239656, 244584, 7 }, { 244582, 244584, 3 } },
    },
})

-- Priest Discipline
set(256, "mplus", {
    date = "2026-10-22", players = 94, ilvl = 330,
    minKey = 20, maxKey = 23,
    total = { median = 3264, mean = 3318, p25 = 3182, p75 = 3425 },
    share = { crit = 0.2835, haste = 0.3972, mastery = 0.2584, versatility = 0.0610 },
    gear = { players = 94,
        trinkets = { { 270162, 74 }, { 270167, 54 }, { 270164, 36 }, { 270169, 7 }, { 281215, 6 } },
        trinketPairs = { { 270162, 270167, 40 }, { 270162, 270164, 21 }, { 270164, 270167, 9 } },
        embellish = { { 239648, 73 }, { 239649, 36 }, { 239656, 23 }, { 245769, 21 }, { 245770, 9 } },
        embellishPairs = { { 239648, 239649, 24 }, { 239648, 239656, 17 }, { 239648, 245769, 14 } },
    },
})

-- Priest Holy
set(257, "mplus", {
    date = "2026-10-22", players = 96, ilvl = 330,
    minKey = 20, maxKey = 23,
    total = { median = 3224, mean = 3271, p25 = 3116, p75 = 3324 },
    share = { crit = 0.2988, haste = 0.3386, mastery = 0.2188, versatility = 0.1438 },
    gear = { players = 96,
        trinkets = { { 270162, 87 }, { 270164, 50 }, { 270171, 19 }, { 270167, 17 }, { 250255, 10 } },
        trinketPairs = { { 270162, 270164, 45 }, { 270162, 270171, 16 }, { 270162, 270167, 14 } },
        embellish = { { 239648, 69 }, { 239649, 37 }, { 245769, 30 }, { 239656, 20 }, { 245770, 10 } },
        embellishPairs = { { 239648, 239649, 19 }, { 239648, 245769, 16 }, { 239648, 239656, 9 } },
    },
})

-- Priest Shadow
set(258, "mplus", {
    date = "2026-10-22", players = 78, ilvl = 330,
    minKey = 20, maxKey = 23,
    total = { median = 3239, mean = 3258, p25 = 3110, p75 = 3312 },
    share = { crit = 0.2634, haste = 0.3075, mastery = 0.3940, versatility = 0.0351 },
    gear = { players = 78,
        trinkets = { { 270164, 36 }, { 270167, 27 }, { 270169, 26 }, { 250215, 25 }, { 281215, 22 } },
        trinketPairs = { { 250215, 270164, 15 }, { 270164, 270169, 12 }, { 270169, 281215, 9 } },
        embellish = { { 239648, 58 }, { 239649, 34 }, { 245769, 29 }, { 239656, 11 }, { 239664, 9 } },
        embellishPairs = { { 239648, 239649, 25 }, { 239648, 245769, 15 }, { 239648, 239664, 7 } },
    },
})

-- Rogue Assassination
set(259, "mplus", {
    date = "2026-10-22", players = 85, ilvl = 333,
    minKey = 21, maxKey = 23,
    total = { median = 3395, mean = 3508, p25 = 3303, p75 = 3706 },
    share = { crit = 0.3789, haste = 0.2746, mastery = 0.2766, versatility = 0.0700 },
    gear = { players = 85,
        trinkets = { { 270175, 82 }, { 270165, 54 }, { 270168, 13 }, { 281215, 9 }, { 270164, 4 } },
        trinketPairs = { { 270165, 270175, 51 }, { 270168, 270175, 12 }, { 270175, 281215, 9 } },
        embellish = { { 237837, 64 }, { 244576, 54 }, { 244569, 25 }, { 239656, 11 }, { 251513, 4 } },
        embellishPairs = { { 237837, 244576, 39 }, { 237837, 244569, 13 }, { 244569, 244576, 8 } },
    },
})

-- Rogue Outlaw
set(260, "mplus", {
    date = "2026-10-22", players = 56, ilvl = 328,
    minKey = 20, maxKey = 23,
    total = { median = 3220, mean = 3282, p25 = 3166, p75 = 3317 },
    share = { crit = 0.4182, haste = 0.2931, mastery = 0.0829, versatility = 0.2058 },
    gear = { players = 56,
        trinkets = { { 270173, 46 }, { 270175, 44 }, { 270165, 5 }, { 281215, 4 }, { 250215, 4 } },
        trinketPairs = { { 270173, 270175, 34 }, { 250215, 270173, 4 }, { 270165, 270173, 3 } },
        embellish = { { 244569, 30 }, { 244576, 24 }, { 244573, 17 }, { 237839, 13 }, { 237837, 10 } },
        embellishPairs = { { 244569, 244576, 9 }, { 244569, 244573, 7 }, { 237839, 244569, 5 } },
    },
})

-- Rogue Subtlety
set(261, "mplus", {
    date = "2026-10-22", players = 57, ilvl = 335,
    minKey = 22, maxKey = 24,
    total = { median = 3360, mean = 3471, p25 = 3328, p75 = 3661 },
    share = { crit = 0.3015, haste = 0.2248, mastery = 0.3979, versatility = 0.0758 },
    gear = { players = 57,
        trinkets = { { 270175, 57 }, { 281215, 20 }, { 270164, 18 }, { 270165, 11 }, { 270173, 8 } },
        trinketPairs = { { 270175, 281215, 20 }, { 270164, 270175, 18 }, { 270165, 270175, 11 } },
        embellish = { { 237837, 42 }, { 244576, 36 }, { 244569, 18 }, { 239656, 5 }, { 251513, 4 } },
        embellishPairs = { { 237837, 244576, 26 }, { 244569, 244576, 8 }, { 237837, 244569, 8 } },
    },
})

-- Shaman Elemental
set(262, "mplus", {
    date = "2026-10-22", players = 63, ilvl = 335,
    minKey = 22, maxKey = 24,
    total = { median = 3172, mean = 3308, p25 = 3121, p75 = 3546 },
    share = { crit = 0.3655, haste = 0.2346, mastery = 0.3454, versatility = 0.0545 },
    gear = { players = 63,
        trinkets = { { 270164, 47 }, { 273796, 38 }, { 281215, 26 }, { 250215, 7 }, { 270167, 5 } },
        trinketPairs = { { 270164, 273796, 27 }, { 270164, 281215, 11 }, { 273796, 281215, 11 } },
        embellish = { { 244584, 53 }, { 244581, 24 }, { 251513, 17 }, { 239656, 14 }, { 244582, 5 } },
        embellishPairs = { { 244581, 244584, 16 }, { 244584, 251513, 14 }, { 239656, 244584, 10 } },
    },
})

-- Shaman Enhancement
set(263, "mplus", {
    date = "2026-10-22", players = 89, ilvl = 330,
    minKey = 20, maxKey = 22,
    total = { median = 3167, mean = 3218, p25 = 3132, p75 = 3229 },
    share = { crit = 0.2935, haste = 0.3016, mastery = 0.3711, versatility = 0.0338 },
    gear = { players = 89,
        trinkets = { { 270175, 66 }, { 270173, 49 }, { 273796, 19 }, { 281215, 19 }, { 270164, 17 } },
        trinketPairs = { { 270173, 270175, 46 }, { 270175, 281215, 11 }, { 270164, 273796, 8 } },
        embellish = { { 244584, 73 }, { 237850, 60 }, { 244581, 10 }, { 244577, 8 }, { 239656, 6 } },
        embellishPairs = { { 237850, 244584, 47 }, { 244581, 244584, 7 }, { 244577, 244584, 6 } },
    },
})

-- Shaman Restoration
set(264, "mplus", {
    date = "2026-10-22", players = 88, ilvl = 331,
    minKey = 21, maxKey = 24,
    total = { median = 3149, mean = 3261, p25 = 3070, p75 = 3448 },
    share = { crit = 0.3938, haste = 0.2264, mastery = 0.0867, versatility = 0.2930 },
    gear = { players = 88,
        trinkets = { { 270162, 86 }, { 250255, 58 }, { 270164, 17 }, { 270171, 11 }, { 281215, 2 } },
        trinketPairs = { { 250255, 270162, 57 }, { 270162, 270164, 15 }, { 270162, 270171, 11 } },
        embellish = { { 244584, 78 }, { 237831, 35 }, { 244577, 15 }, { 244581, 11 }, { 244580, 9 } },
        embellishPairs = { { 237831, 244584, 28 }, { 244577, 244584, 14 }, { 244581, 244584, 9 } },
    },
})

-- Warlock Affliction
set(265, "mplus", {
    date = "2026-10-22", players = 95, ilvl = 329,
    minKey = 18, maxKey = 21,
    total = { median = 3156, mean = 3185, p25 = 3068, p75 = 3233 },
    share = { crit = 0.3459, haste = 0.3871, mastery = 0.2001, versatility = 0.0669 },
    gear = { players = 95,
        trinkets = { { 270164, 55 }, { 273796, 47 }, { 270167, 28 }, { 270169, 16 }, { 281215, 16 } },
        trinketPairs = { { 270164, 273796, 24 }, { 270167, 273796, 14 }, { 270164, 270169, 8 } },
        embellish = { { 239648, 66 }, { 245769, 49 }, { 239649, 29 }, { 239656, 19 }, { 245770, 10 } },
        embellishPairs = { { 239648, 245769, 33 }, { 239648, 239649, 14 }, { 239648, 239656, 7 } },
    },
})

-- Warlock Demonology
set(266, "mplus", {
    date = "2026-10-22", players = 93, ilvl = 331,
    minKey = 20, maxKey = 23,
    total = { median = 3289, mean = 3329, p25 = 3128, p75 = 3454 },
    share = { crit = 0.3846, haste = 0.3001, mastery = 0.2423, versatility = 0.0729 },
    gear = { players = 93,
        trinkets = { { 270164, 70 }, { 273796, 46 }, { 270169, 25 }, { 281215, 20 }, { 270167, 9 } },
        trinketPairs = { { 270164, 273796, 35 }, { 270164, 270169, 17 }, { 273796, 281215, 6 } },
        embellish = { { 239648, 68 }, { 245769, 53 }, { 239649, 23 }, { 239656, 23 }, { 245770, 9 } },
        embellishPairs = { { 239648, 245769, 31 }, { 239648, 239649, 13 }, { 239656, 245769, 12 } },
    },
})

-- Warlock Destruction
set(267, "mplus", {
    date = "2026-10-22", players = 96, ilvl = 328,
    minKey = 18, maxKey = 22,
    total = { median = 3094, mean = 3143, p25 = 3036, p75 = 3208 },
    share = { crit = 0.3692, haste = 0.3167, mastery = 0.2597, versatility = 0.0543 },
    gear = { players = 96,
        trinkets = { { 270164, 68 }, { 250215, 57 }, { 270167, 27 }, { 281215, 10 }, { 273796, 6 } },
        trinketPairs = { { 250215, 270164, 36 }, { 270164, 270167, 15 }, { 250215, 270167, 10 } },
        embellish = { { 239648, 72 }, { 245769, 36 }, { 239649, 29 }, { 245770, 22 }, { 239656, 14 } },
        embellishPairs = { { 239648, 245769, 26 }, { 239648, 239649, 18 }, { 239648, 245770, 13 } },
    },
})

-- Monk Brewmaster
set(268, "mplus", {
    date = "2026-10-22", players = 49, ilvl = 330,
    minKey = 20, maxKey = 23,
    total = { median = 3238, mean = 3283, p25 = 3175, p75 = 3383 },
    share = { crit = 0.4042, haste = 0.0701, mastery = 0.1981, versatility = 0.3275 },
    gear = { players = 49,
        trinkets = { { 270175, 32 }, { 270164, 15 }, { 250245, 15 }, { 281215, 10 }, { 270173, 10 } },
        trinketPairs = { { 270164, 270175, 9 }, { 270175, 281215, 7 }, { 250245, 270175, 7 } },
        embellish = { { 251513, 37 }, { 244576, 30 }, { 244569, 21 }, { 239656, 3 }, { 244573, 2 } },
        embellishPairs = { { 244576, 251513, 19 }, { 244569, 251513, 12 }, { 244569, 244576, 8 } },
    },
})

-- Monk Windwalker
set(269, "mplus", {
    date = "2026-10-22", players = 72, ilvl = 332,
    minKey = 21, maxKey = 23,
    total = { median = 3268, mean = 3330, p25 = 3212, p75 = 3322 },
    share = { crit = 0.2569, haste = 0.2890, mastery = 0.4201, versatility = 0.0341 },
    gear = { players = 72,
        trinkets = { { 270175, 71 }, { 270173, 24 }, { 281215, 21 }, { 270165, 14 }, { 270164, 9 } },
        trinketPairs = { { 270173, 270175, 24 }, { 270175, 281215, 20 }, { 270165, 270175, 14 } },
        embellish = { { 244576, 62 }, { 244569, 54 }, { 239656, 11 }, { 251513, 11 }, { 244574, 3 } },
        embellishPairs = { { 244569, 244576, 46 }, { 239656, 244576, 10 }, { 244576, 251513, 5 } },
    },
})

-- Monk Mistweaver
set(270, "mplus", {
    date = "2026-10-22", players = 80, ilvl = 330,
    minKey = 20, maxKey = 23,
    total = { median = 3243, mean = 3318, p25 = 3164, p75 = 3368 },
    share = { crit = 0.1828, haste = 0.4224, mastery = 0.2783, versatility = 0.1166 },
    gear = { players = 80,
        trinkets = { { 270162, 75 }, { 270167, 35 }, { 250255, 16 }, { 270171, 14 }, { 270164, 8 } },
        trinketPairs = { { 270162, 270167, 33 }, { 250255, 270162, 15 }, { 270162, 270171, 13 } },
        embellish = { { 244576, 47 }, { 245770, 32 }, { 239656, 21 }, { 244573, 20 }, { 244569, 18 } },
        embellishPairs = { { 239656, 244576, 13 }, { 244576, 245770, 13 }, { 244569, 245770, 6 } },
    },
})

-- DemonHunter Havoc
set(577, "mplus", {
    date = "2026-10-23", players = 68, ilvl = 331,
    minKey = 21, maxKey = 23,
    total = { median = 3308, mean = 3355, p25 = 3220, p75 = 3376 },
    share = { crit = 0.4541, haste = 0.1469, mastery = 0.3644, versatility = 0.0346 },
    gear = { players = 68,
        trinkets = { { 270173, 67 }, { 270175, 47 }, { 281215, 11 }, { 270168, 10 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 46 }, { 270173, 281215, 11 }, { 270168, 270173, 10 } },
        embellish = { { 237840, 53 }, { 244576, 44 }, { 244569, 19 }, { 239656, 6 }, { 251513, 6 } },
        embellishPairs = { { 237840, 244576, 34 }, { 237840, 244569, 10 }, { 244569, 244576, 6 } },
    },
})

-- DemonHunter Vengeance
set(581, "mplus", {
    date = "2026-10-23", players = 82, ilvl = 329,
    minKey = 20, maxKey = 22,
    total = { median = 3284, mean = 3368, p25 = 3128, p75 = 3593 },
    share = { crit = 0.2738, haste = 0.4073, mastery = 0.1422, versatility = 0.1767 },
    gear = { players = 82,
        trinkets = { { 270173, 50 }, { 270175, 46 }, { 270165, 16 }, { 281215, 16 }, { 270164, 15 } },
        trinketPairs = { { 270173, 270175, 23 }, { 270173, 281215, 13 }, { 270165, 270175, 7 } },
        embellish = { { 237840, 61 }, { 244576, 57 }, { 239656, 13 }, { 244569, 9 }, { 244575, 5 } },
        embellishPairs = { { 237840, 244576, 43 }, { 239656, 244576, 5 }, { 237840, 239656, 4 } },
    },
})

-- Evoker Devastation
set(1467, "mplus", {
    date = "2026-10-23", players = 95, ilvl = 329,
    minKey = 18, maxKey = 21,
    total = { median = 3189, mean = 3206, p25 = 3101, p75 = 3244 },
    share = { crit = 0.4155, haste = 0.2471, mastery = 0.2819, versatility = 0.0555 },
    gear = { players = 95,
        trinkets = { { 270164, 69 }, { 270167, 53 }, { 273796, 36 }, { 281215, 11 }, { 270168, 4 } },
        trinketPairs = { { 270164, 270167, 37 }, { 270164, 273796, 19 }, { 270167, 273796, 10 } },
        embellish = { { 244584, 71 }, { 245769, 70 }, { 244581, 17 }, { 239656, 14 }, { 245770, 9 } },
        embellishPairs = { { 244584, 245769, 53 }, { 244581, 245769, 7 }, { 239656, 245769, 7 } },
    },
})

-- Evoker Preservation
set(1468, "mplus", {
    date = "2026-10-23", players = 77, ilvl = 330,
    minKey = 20, maxKey = 22,
    total = { median = 3260, mean = 3299, p25 = 3123, p75 = 3370 },
    share = { crit = 0.2575, haste = 0.3735, mastery = 0.1285, versatility = 0.2406 },
    gear = { players = 77,
        trinkets = { { 270162, 67 }, { 270164, 35 }, { 270167, 27 }, { 270171, 15 }, { 250255, 3 } },
        trinketPairs = { { 270162, 270164, 27 }, { 270162, 270167, 23 }, { 270162, 270171, 11 } },
        embellish = { { 244584, 53 }, { 245769, 33 }, { 239656, 23 }, { 244581, 19 }, { 245770, 8 } },
        embellishPairs = { { 239656, 244584, 17 }, { 244584, 245769, 16 }, { 244581, 244584, 9 } },
    },
})

-- Evoker Augmentation
set(1473, "mplus", {
    date = "2026-10-23", players = 81, ilvl = 329,
    minKey = 18, maxKey = 22,
    total = { median = 3255, mean = 3246, p25 = 3194, p75 = 3294 },
    share = { crit = 0.3092, haste = 0.1464, mastery = 0.5132, versatility = 0.0313 },
    gear = { players = 81,
        trinkets = { { 270168, 53 }, { 270161, 39 }, { 270164, 17 }, { 270167, 16 }, { 281215, 13 } },
        trinketPairs = { { 270161, 270168, 27 }, { 270168, 281215, 9 }, { 270167, 270168, 5 } },
        embellish = { { 244584, 62 }, { 245769, 41 }, { 244581, 20 }, { 239656, 17 }, { 244582, 6 } },
        embellishPairs = { { 244584, 245769, 30 }, { 244581, 244584, 13 }, { 239656, 244584, 9 } },
    },
})

-- DemonHunter Devourer
set(1480, "mplus", {
    date = "2026-10-23", players = 83, ilvl = 331,
    minKey = 21, maxKey = 23,
    total = { median = 3306, mean = 3376, p25 = 3252, p75 = 3450 },
    share = { crit = 0.2562, haste = 0.3235, mastery = 0.3840, versatility = 0.0362 },
    gear = { players = 83,
        trinkets = { { 270167, 59 }, { 270164, 46 }, { 281215, 23 }, { 250215, 20 }, { 270169, 15 } },
        trinketPairs = { { 270164, 270167, 26 }, { 250215, 270167, 12 }, { 270167, 281215, 11 } },
        embellish = { { 244576, 57 }, { 244569, 49 }, { 237840, 37 }, { 251513, 6 }, { 239656, 5 } },
        embellishPairs = { { 244569, 244576, 28 }, { 237840, 244576, 21 }, { 237840, 244569, 13 } },
    },
})
