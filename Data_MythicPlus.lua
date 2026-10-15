-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Mythic+, 40 Spezialisierungen, erzeugt 2026-10-15 22:53.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Mythic+"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "mplus", {
    date = "2026-10-15", players = 75, ilvl = 333,
    minKey = 21, maxKey = 23,
    total = { median = 3457, mean = 3448, p25 = 3173, p75 = 3664 },
    share = { crit = 0.2536, haste = 0.3112, mastery = 0.1570, versatility = 0.2782 },
    gear = { players = 75,
        trinkets = { { 270164, 69 }, { 250215, 57 }, { 270169, 14 }, { 270167, 8 }, { 281215, 2 } },
        trinketPairs = { { 250215, 270164, 52 }, { 270164, 270169, 13 }, { 250215, 270167, 4 } },
        embellish = { { 239648, 57 }, { 245769, 49 }, { 245770, 14 }, { 239649, 10 }, { 239656, 5 } },
        embellishPairs = { { 239648, 245769, 38 }, { 239648, 245770, 8 }, { 239649, 245769, 4 } },
    },
})

-- Mage Fire
set(63, "mplus", {
    date = "2026-10-15", players = 93, ilvl = 326,
    minKey = 17, maxKey = 20,
    total = { median = 3078, mean = 3101, p25 = 3009, p75 = 3158 },
    share = { crit = 0.0737, haste = 0.4469, mastery = 0.2535, versatility = 0.2259 },
    gear = { players = 93,
        trinkets = { { 273796, 65 }, { 270164, 53 }, { 270167, 23 }, { 270169, 10 }, { 250144, 7 } },
        trinketPairs = { { 270164, 273796, 32 }, { 270167, 273796, 13 }, { 270164, 270167, 7 } },
        embellish = { { 239648, 77 }, { 245769, 45 }, { 245770, 28 }, { 239649, 10 }, { 239656, 9 } },
        embellishPairs = { { 239648, 245769, 38 }, { 239648, 245770, 21 }, { 239648, 239649, 6 } },
    },
})

-- Mage Frost
set(64, "mplus", {
    date = "2026-10-15", players = 89, ilvl = 327,
    minKey = 17, maxKey = 20,
    total = { median = 3170, mean = 3202, p25 = 3083, p75 = 3242 },
    share = { crit = 0.3618, haste = 0.2224, mastery = 0.3527, versatility = 0.0631 },
    gear = { players = 89,
        trinkets = { { 270164, 69 }, { 250215, 43 }, { 270167, 33 }, { 270168, 9 }, { 250214, 8 } },
        trinketPairs = { { 250215, 270164, 31 }, { 270164, 270167, 25 }, { 250215, 270167, 5 } },
        embellish = { { 239648, 57 }, { 245769, 37 }, { 239649, 29 }, { 245770, 29 }, { 239656, 8 } },
        embellishPairs = { { 239648, 245769, 25 }, { 239648, 245770, 16 }, { 239648, 239649, 9 } },
    },
})

-- Paladin Holy
set(65, "mplus", {
    date = "2026-10-15", players = 93, ilvl = 332,
    minKey = 22, maxKey = 24,
    total = { median = 3284, mean = 3368, p25 = 3167, p75 = 3562 },
    share = { crit = 0.2755, haste = 0.3570, mastery = 0.1096, versatility = 0.2578 },
    gear = { players = 93,
        trinkets = { { 270162, 90 }, { 270171, 41 }, { 270164, 40 }, { 270167, 12 }, { 250255, 1 } },
        trinketPairs = { { 270162, 270171, 38 }, { 270162, 270164, 37 }, { 270162, 270167, 12 } },
        embellish = { { 237834, 65 }, { 237828, 36 }, { 237843, 33 }, { 239656, 12 }, { 237831, 11 } },
        embellishPairs = { { 237828, 237834, 25 }, { 237834, 237843, 15 }, { 237834, 239656, 5 } },
    },
})

-- Paladin Protection
set(66, "mplus", {
    date = "2026-10-15", players = 92, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3163, mean = 3239, p25 = 3092, p75 = 3386 },
    share = { crit = 0.3733, haste = 0.3373, mastery = 0.1549, versatility = 0.1344 },
    gear = { players = 92,
        trinkets = { { 270175, 47 }, { 270173, 47 }, { 270164, 22 }, { 270165, 19 }, { 270160, 13 } },
        trinketPairs = { { 270173, 270175, 25 }, { 270164, 270175, 8 }, { 270164, 270165, 6 } },
        embellish = { { 237834, 40 }, { 237831, 35 }, { 237828, 29 }, { 237830, 26 }, { 239656, 17 } },
        embellishPairs = { { 237828, 237834, 14 }, { 237830, 237831, 9 }, { 237834, 239656, 8 } },
    },
})

-- Paladin Retribution
set(70, "mplus", {
    date = "2026-10-15", players = 82, ilvl = 329,
    minKey = 21, maxKey = 23,
    total = { median = 3240, mean = 3324, p25 = 3194, p75 = 3390 },
    share = { crit = 0.3188, haste = 0.2782, mastery = 0.3694, versatility = 0.0336 },
    gear = { players = 82,
        trinkets = { { 270175, 77 }, { 270173, 60 }, { 270165, 9 }, { 270164, 7 }, { 273796, 4 } },
        trinketPairs = { { 270173, 270175, 57 }, { 270165, 270175, 9 }, { 270164, 270175, 6 } },
        embellish = { { 237834, 64 }, { 251513, 42 }, { 237828, 27 }, { 237836, 8 }, { 239656, 8 } },
        embellishPairs = { { 237834, 251513, 31 }, { 237828, 237834, 18 }, { 237834, 237836, 6 } },
    },
})

-- Warrior Arms
set(71, "mplus", {
    date = "2026-10-15", players = 75, ilvl = 334,
    minKey = 22, maxKey = 24,
    total = { median = 3312, mean = 3370, p25 = 3228, p75 = 3546 },
    share = { crit = 0.4050, haste = 0.3144, mastery = 0.2435, versatility = 0.0370 },
    gear = { players = 75,
        trinkets = { { 270173, 60 }, { 270175, 49 }, { 270165, 37 }, { 270164, 3 }, { 270168, 1 } },
        trinketPairs = { { 270173, 270175, 37 }, { 270165, 270173, 22 }, { 270165, 270175, 12 } },
        embellish = { { 237834, 58 }, { 237828, 37 }, { 251513, 29 }, { 237836, 6 }, { 240949, 4 } },
        embellishPairs = { { 237828, 237834, 28 }, { 237834, 251513, 19 }, { 237828, 251513, 5 } },
    },
})

-- Warrior Fury
set(72, "mplus", {
    date = "2026-10-15", players = 92, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3417, mean = 3458, p25 = 3330, p75 = 3550 },
    share = { crit = 0.2827, haste = 0.3439, mastery = 0.3304, versatility = 0.0430 },
    gear = { players = 92,
        trinkets = { { 270173, 84 }, { 270175, 58 }, { 270165, 27 }, { 270164, 7 }, { 273796, 6 } },
        trinketPairs = { { 270173, 270175, 52 }, { 270165, 270173, 22 }, { 270173, 273796, 6 } },
        embellish = { { 237834, 75 }, { 237828, 57 }, { 237846, 27 }, { 237830, 8 }, { 251513, 5 } },
        embellishPairs = { { 237828, 237834, 43 }, { 237834, 237846, 18 }, { 237828, 237846, 8 } },
    },
})

-- Warrior Protection
set(73, "mplus", {
    date = "2026-10-15", players = 84, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3232, mean = 3289, p25 = 3128, p75 = 3474 },
    share = { crit = 0.2896, haste = 0.3870, mastery = 0.1790, versatility = 0.1444 },
    gear = { players = 84,
        trinkets = { { 270173, 43 }, { 270175, 41 }, { 270165, 35 }, { 270164, 13 }, { 270174, 11 } },
        trinketPairs = { { 270173, 270175, 21 }, { 270165, 270175, 10 }, { 270165, 270173, 10 } },
        embellish = { { 237834, 67 }, { 237828, 36 }, { 237831, 21 }, { 239656, 10 }, { 237830, 8 } },
        embellishPairs = { { 237828, 237834, 30 }, { 237831, 237834, 11 }, { 237834, 239656, 7 } },
    },
})

-- Druid Balance
set(102, "mplus", {
    date = "2026-10-15", players = 83, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3198, mean = 3227, p25 = 3088, p75 = 3278 },
    share = { crit = 0.2700, haste = 0.3083, mastery = 0.3829, versatility = 0.0388 },
    gear = { players = 83,
        trinkets = { { 270164, 47 }, { 270167, 40 }, { 273796, 38 }, { 250215, 27 }, { 270169, 9 } },
        trinketPairs = { { 270164, 273796, 19 }, { 270167, 273796, 19 }, { 250215, 270164, 17 } },
        embellish = { { 244576, 57 }, { 245769, 48 }, { 244569, 24 }, { 245770, 13 }, { 239656, 8 } },
        embellishPairs = { { 244576, 245769, 32 }, { 244576, 245770, 8 }, { 244569, 245769, 8 } },
    },
})

-- Druid Feral
set(103, "mplus", {
    date = "2026-10-15", players = 62, ilvl = 329,
    minKey = 20, maxKey = 22,
    total = { median = 3210, mean = 3249, p25 = 3176, p75 = 3275 },
    share = { crit = 0.2747, haste = 0.2561, mastery = 0.3983, versatility = 0.0709 },
    gear = { players = 62,
        trinkets = { { 270175, 51 }, { 270164, 22 }, { 270173, 21 }, { 270165, 12 }, { 273796, 6 } },
        trinketPairs = { { 270173, 270175, 17 }, { 270164, 270175, 15 }, { 270165, 270175, 11 } },
        embellish = { { 244576, 48 }, { 244569, 27 }, { 244575, 13 }, { 239656, 9 }, { 244573, 7 } },
        embellishPairs = { { 244569, 244576, 21 }, { 244575, 244576, 9 }, { 239656, 244576, 4 } },
    },
})

-- Druid Guardian
set(104, "mplus", {
    date = "2026-10-15", players = 95, ilvl = 330,
    minKey = 21, maxKey = 23,
    total = { median = 3559, mean = 3519, p25 = 3246, p75 = 3660 },
    share = { crit = 0.2783, haste = 0.3866, mastery = 0.1403, versatility = 0.1948 },
    gear = { players = 95,
        trinkets = { { 270175, 82 }, { 270165, 44 }, { 270164, 27 }, { 250245, 12 }, { 281215, 6 } },
        trinketPairs = { { 270165, 270175, 34 }, { 270164, 270175, 21 }, { 250245, 270175, 11 } },
        embellish = { { 244576, 67 }, { 244569, 51 }, { 239656, 35 }, { 244574, 9 }, { 244575, 6 } },
        embellishPairs = { { 244569, 244576, 30 }, { 239656, 244576, 18 }, { 239656, 244569, 11 } },
    },
})

-- Druid Restoration
set(105, "mplus", {
    date = "2026-10-15", players = 89, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3215, mean = 3243, p25 = 3106, p75 = 3280 },
    share = { crit = 0.0674, haste = 0.4717, mastery = 0.3448, versatility = 0.1160 },
    gear = { players = 89,
        trinkets = { { 270162, 73 }, { 270167, 46 }, { 270164, 22 }, { 250255, 19 }, { 250214, 5 } },
        trinketPairs = { { 270162, 270167, 39 }, { 270162, 270164, 13 }, { 250255, 270162, 11 } },
        embellish = { { 244576, 50 }, { 244572, 34 }, { 245769, 27 }, { 244569, 26 }, { 245770, 16 } },
        embellishPairs = { { 244572, 244576, 18 }, { 244572, 245769, 11 }, { 244569, 244576, 11 } },
    },
})

-- DeathKnight Blood
set(250, "mplus", {
    date = "2026-10-15", players = 71, ilvl = 334,
    minKey = 22, maxKey = 24,
    total = { median = 3625, mean = 3573, p25 = 3292, p75 = 3753 },
    share = { crit = 0.3287, haste = 0.3303, mastery = 0.1301, versatility = 0.2110 },
    gear = { players = 71,
        trinkets = { { 270175, 71 }, { 270173, 35 }, { 270165, 26 }, { 270164, 7 }, { 270163, 1 } },
        trinketPairs = { { 270173, 270175, 35 }, { 270165, 270175, 26 }, { 270164, 270175, 7 } },
        embellish = { { 237834, 57 }, { 237828, 31 }, { 237836, 17 }, { 239656, 10 }, { 237846, 10 } },
        embellishPairs = { { 237828, 237834, 23 }, { 237834, 237836, 15 }, { 237834, 239656, 6 } },
    },
})

-- DeathKnight Frost
set(251, "mplus", {
    date = "2026-10-15", players = 87, ilvl = 329,
    minKey = 20, maxKey = 22,
    total = { median = 3255, mean = 3301, p25 = 3210, p75 = 3314 },
    share = { crit = 0.4326, haste = 0.1621, mastery = 0.3695, versatility = 0.0358 },
    gear = { players = 87,
        trinkets = { { 270175, 85 }, { 270173, 51 }, { 270165, 21 }, { 270164, 10 }, { 250228, 4 } },
        trinketPairs = { { 270173, 270175, 50 }, { 270165, 270175, 20 }, { 270164, 270175, 10 } },
        embellish = { { 237834, 71 }, { 237828, 44 }, { 251513, 29 }, { 239656, 7 }, { 237830, 5 } },
        embellishPairs = { { 237828, 237834, 34 }, { 237834, 251513, 18 }, { 237828, 251513, 6 } },
    },
})

-- DeathKnight Unholy
set(252, "mplus", {
    date = "2026-10-15", players = 81, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3223, mean = 3315, p25 = 3190, p75 = 3362 },
    share = { crit = 0.4144, haste = 0.1836, mastery = 0.3588, versatility = 0.0432 },
    gear = { players = 81,
        trinkets = { { 270175, 81 }, { 270173, 36 }, { 270165, 31 }, { 270164, 7 }, { 250228, 3 } },
        trinketPairs = { { 270173, 270175, 36 }, { 270165, 270175, 31 }, { 270164, 270175, 7 } },
        embellish = { { 237834, 62 }, { 237828, 44 }, { 251513, 20 }, { 239656, 8 }, { 237846, 7 } },
        embellishPairs = { { 237828, 237834, 32 }, { 237834, 251513, 9 }, { 237834, 239656, 8 } },
    },
})

-- Hunter BeastMastery
set(253, "mplus", {
    date = "2026-10-15", players = 90, ilvl = 329,
    minKey = 20, maxKey = 23,
    total = { median = 3284, mean = 3362, p25 = 3234, p75 = 3561 },
    share = { crit = 0.3627, haste = 0.0726, mastery = 0.4332, versatility = 0.1315 },
    gear = { players = 90,
        trinkets = { { 270175, 75 }, { 270164, 50 }, { 270165, 16 }, { 250215, 8 }, { 281215, 8 } },
        trinketPairs = { { 270164, 270175, 39 }, { 270165, 270175, 15 }, { 250215, 270164, 6 } },
        embellish = { { 244584, 79 }, { 244581, 48 }, { 244582, 26 }, { 239656, 12 }, { 265337, 5 } },
        embellishPairs = { { 244581, 244584, 39 }, { 244582, 244584, 18 }, { 239656, 244584, 11 } },
    },
})

-- Hunter Marksmanship
set(254, "mplus", {
    date = "2026-10-15", players = 88, ilvl = 328,
    minKey = 18, maxKey = 21,
    total = { median = 3378, mean = 3396, p25 = 3272, p75 = 3424 },
    share = { crit = 0.4980, haste = 0.0754, mastery = 0.3508, versatility = 0.0759 },
    gear = { players = 88,
        trinkets = { { 270175, 79 }, { 270168, 60 }, { 270164, 12 }, { 270165, 5 }, { 270173, 4 } },
        trinketPairs = { { 270168, 270175, 55 }, { 270164, 270175, 10 }, { 270165, 270175, 5 } },
        embellish = { { 244584, 74 }, { 244581, 60 }, { 244582, 20 }, { 239656, 8 }, { 251513, 4 } },
        embellishPairs = { { 244581, 244584, 51 }, { 244582, 244584, 10 }, { 239656, 244584, 7 } },
    },
})

-- Hunter Survival
set(255, "mplus", {
    date = "2026-10-15", players = 74, ilvl = 328,
    minKey = 18, maxKey = 21,
    total = { median = 3256, mean = 3257, p25 = 3142, p75 = 3314 },
    share = { crit = 0.2923, haste = 0.2748, mastery = 0.4003, versatility = 0.0326 },
    gear = { players = 74,
        trinkets = { { 270175, 45 }, { 270165, 29 }, { 270173, 29 }, { 250215, 17 }, { 270164, 14 } },
        trinketPairs = { { 270165, 270175, 17 }, { 270173, 270175, 14 }, { 270164, 270175, 9 } },
        embellish = { { 244584, 59 }, { 244581, 52 }, { 244577, 10 }, { 239656, 8 }, { 244582, 4 } },
        embellishPairs = { { 244581, 244584, 40 }, { 239656, 244584, 6 }, { 244577, 244584, 5 } },
    },
})

-- Priest Discipline
set(256, "mplus", {
    date = "2026-10-15", players = 93, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3236, mean = 3279, p25 = 3107, p75 = 3351 },
    share = { crit = 0.3046, haste = 0.3812, mastery = 0.2527, versatility = 0.0615 },
    gear = { players = 93,
        trinkets = { { 270162, 67 }, { 270167, 52 }, { 270164, 47 }, { 270169, 8 }, { 270171, 5 } },
        trinketPairs = { { 270162, 270167, 30 }, { 270162, 270164, 30 }, { 270164, 270167, 15 } },
        embellish = { { 239648, 71 }, { 239649, 34 }, { 239656, 27 }, { 245769, 20 }, { 245770, 14 } },
        embellishPairs = { { 239648, 239656, 22 }, { 239648, 239649, 18 }, { 239648, 245769, 15 } },
    },
})

-- Priest Holy
set(257, "mplus", {
    date = "2026-10-15", players = 90, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3152, mean = 3192, p25 = 3084, p75 = 3243 },
    share = { crit = 0.2982, haste = 0.3430, mastery = 0.2388, versatility = 0.1200 },
    gear = { players = 90,
        trinkets = { { 270162, 79 }, { 270164, 51 }, { 270167, 19 }, { 270171, 13 }, { 250255, 8 } },
        trinketPairs = { { 270162, 270164, 42 }, { 270162, 270167, 17 }, { 270162, 270171, 10 } },
        embellish = { { 239648, 60 }, { 239649, 37 }, { 245769, 29 }, { 239656, 16 }, { 245770, 15 } },
        embellishPairs = { { 239648, 239649, 18 }, { 239648, 245769, 17 }, { 239649, 245769, 9 } },
    },
})

-- Priest Shadow
set(258, "mplus", {
    date = "2026-10-15", players = 86, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3226, mean = 3264, p25 = 3124, p75 = 3322 },
    share = { crit = 0.2801, haste = 0.3141, mastery = 0.3718, versatility = 0.0340 },
    gear = { players = 86,
        trinkets = { { 270167, 42 }, { 270164, 40 }, { 250215, 35 }, { 270169, 25 }, { 273796, 17 } },
        trinketPairs = { { 250215, 270164, 17 }, { 250215, 270167, 13 }, { 270164, 270169, 12 } },
        embellish = { { 239648, 69 }, { 239649, 40 }, { 245769, 31 }, { 239664, 8 }, { 239656, 7 } },
        embellishPairs = { { 239648, 239649, 31 }, { 239648, 245769, 21 }, { 239648, 239664, 8 } },
    },
})

-- Rogue Assassination
set(259, "mplus", {
    date = "2026-10-15", players = 81, ilvl = 332,
    minKey = 21, maxKey = 23,
    total = { median = 3391, mean = 3501, p25 = 3296, p75 = 3706 },
    share = { crit = 0.3818, haste = 0.2768, mastery = 0.2740, versatility = 0.0673 },
    gear = { players = 81,
        trinkets = { { 270175, 78 }, { 270165, 51 }, { 270168, 18 }, { 270164, 4 }, { 281215, 3 } },
        trinketPairs = { { 270165, 270175, 48 }, { 270168, 270175, 17 }, { 270164, 270175, 4 } },
        embellish = { { 237837, 61 }, { 244576, 51 }, { 244569, 24 }, { 239656, 8 }, { 251513, 5 } },
        embellishPairs = { { 237837, 244576, 37 }, { 237837, 244569, 12 }, { 244569, 244576, 8 } },
    },
})

-- Rogue Outlaw
set(260, "mplus", {
    date = "2026-10-15", players = 67, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3221, mean = 3278, p25 = 3166, p75 = 3362 },
    share = { crit = 0.4230, haste = 0.2930, mastery = 0.0839, versatility = 0.2001 },
    gear = { players = 67,
        trinkets = { { 270173, 56 }, { 270175, 54 }, { 270165, 8 }, { 250215, 5 }, { 270164, 4 } },
        trinketPairs = { { 270173, 270175, 43 }, { 270165, 270173, 5 }, { 250215, 270173, 5 } },
        embellish = { { 244569, 35 }, { 244576, 29 }, { 244573, 21 }, { 237839, 15 }, { 237837, 12 } },
        embellishPairs = { { 244569, 244576, 10 }, { 244569, 244573, 9 }, { 237839, 244576, 6 } },
    },
})

-- Rogue Subtlety
set(261, "mplus", {
    date = "2026-10-15", players = 84, ilvl = 331,
    minKey = 21, maxKey = 24,
    total = { median = 3291, mean = 3369, p25 = 3253, p75 = 3465 },
    share = { crit = 0.3029, haste = 0.2250, mastery = 0.3849, versatility = 0.0872 },
    gear = { players = 84,
        trinkets = { { 270175, 84 }, { 270164, 28 }, { 270165, 28 }, { 270173, 17 }, { 281215, 9 } },
        trinketPairs = { { 270164, 270175, 28 }, { 270165, 270175, 28 }, { 270173, 270175, 17 } },
        embellish = { { 237837, 70 }, { 244576, 56 }, { 244569, 26 }, { 239656, 5 }, { 244575, 3 } },
        embellishPairs = { { 237837, 244576, 47 }, { 237837, 244569, 17 }, { 244569, 244576, 5 } },
    },
})

-- Shaman Elemental
set(262, "mplus", {
    date = "2026-10-15", players = 79, ilvl = 333,
    minKey = 22, maxKey = 24,
    total = { median = 3126, mean = 3264, p25 = 3096, p75 = 3492 },
    share = { crit = 0.3733, haste = 0.2222, mastery = 0.3452, versatility = 0.0593 },
    gear = { players = 79,
        trinkets = { { 270164, 76 }, { 273796, 58 }, { 250215, 10 }, { 270169, 7 }, { 281215, 4 } },
        trinketPairs = { { 270164, 273796, 57 }, { 250215, 270164, 8 }, { 270164, 270169, 7 } },
        embellish = { { 244584, 67 }, { 244581, 29 }, { 239656, 19 }, { 251513, 14 }, { 237831, 8 } },
        embellishPairs = { { 244581, 244584, 22 }, { 239656, 244584, 13 }, { 244584, 251513, 9 } },
    },
})

-- Shaman Enhancement
set(263, "mplus", {
    date = "2026-10-15", players = 91, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3143, mean = 3196, p25 = 3114, p75 = 3190 },
    share = { crit = 0.2913, haste = 0.3167, mastery = 0.3591, versatility = 0.0329 },
    gear = { players = 91,
        trinkets = { { 270175, 68 }, { 270173, 62 }, { 273796, 18 }, { 270164, 17 }, { 270165, 8 } },
        trinketPairs = { { 270173, 270175, 55 }, { 270164, 273796, 11 }, { 270165, 270175, 5 } },
        embellish = { { 244584, 77 }, { 237850, 63 }, { 244581, 9 }, { 244577, 6 }, { 237845, 5 } },
        embellishPairs = { { 237850, 244584, 55 }, { 244581, 244584, 6 }, { 237845, 244584, 5 } },
    },
})

-- Shaman Restoration
set(264, "mplus", {
    date = "2026-10-15", players = 92, ilvl = 329,
    minKey = 21, maxKey = 23,
    total = { median = 3095, mean = 3182, p25 = 3042, p75 = 3336 },
    share = { crit = 0.4038, haste = 0.2315, mastery = 0.0879, versatility = 0.2768 },
    gear = { players = 92,
        trinkets = { { 270162, 91 }, { 250255, 61 }, { 270164, 18 }, { 270171, 10 }, { 270167, 2 } },
        trinketPairs = { { 250255, 270162, 61 }, { 270162, 270164, 17 }, { 270162, 270171, 10 } },
        embellish = { { 244584, 77 }, { 237831, 34 }, { 244577, 23 }, { 239656, 15 }, { 244581, 12 } },
        embellishPairs = { { 237831, 244584, 24 }, { 244577, 244584, 19 }, { 239656, 244584, 11 } },
    },
})

-- Warlock Affliction
set(265, "mplus", {
    date = "2026-10-15", players = 97, ilvl = 327,
    minKey = 18, maxKey = 21,
    total = { median = 3078, mean = 3130, p25 = 3025, p75 = 3193 },
    share = { crit = 0.3515, haste = 0.3999, mastery = 0.1861, versatility = 0.0625 },
    gear = { players = 97,
        trinkets = { { 270164, 65 }, { 273796, 61 }, { 270167, 29 }, { 273649, 9 }, { 270169, 8 } },
        trinketPairs = { { 270164, 273796, 36 }, { 270167, 273796, 17 }, { 270164, 273649, 7 } },
        embellish = { { 239648, 68 }, { 245769, 53 }, { 239649, 24 }, { 245770, 19 }, { 239656, 17 } },
        embellishPairs = { { 239648, 245769, 38 }, { 239648, 239649, 13 }, { 239648, 245770, 9 } },
    },
})

-- Warlock Demonology
set(266, "mplus", {
    date = "2026-10-15", players = 93, ilvl = 329,
    minKey = 20, maxKey = 22,
    total = { median = 3223, mean = 3267, p25 = 3090, p75 = 3443 },
    share = { crit = 0.4001, haste = 0.3038, mastery = 0.2297, versatility = 0.0664 },
    gear = { players = 93,
        trinkets = { { 270164, 78 }, { 273796, 56 }, { 270169, 18 }, { 270167, 15 }, { 273649, 5 } },
        trinketPairs = { { 270164, 273796, 44 }, { 270164, 270169, 17 }, { 270167, 273796, 10 } },
        embellish = { { 239648, 62 }, { 245769, 52 }, { 239656, 22 }, { 239649, 18 }, { 245770, 17 } },
        embellishPairs = { { 239648, 245769, 32 }, { 239648, 245770, 13 }, { 239656, 245769, 10 } },
    },
})

-- Warlock Destruction
set(267, "mplus", {
    date = "2026-10-15", players = 91, ilvl = 327,
    minKey = 18, maxKey = 21,
    total = { median = 3069, mean = 3108, p25 = 3006, p75 = 3175 },
    share = { crit = 0.3707, haste = 0.3180, mastery = 0.2536, versatility = 0.0577 },
    gear = { players = 91,
        trinkets = { { 270164, 64 }, { 250215, 61 }, { 270167, 27 }, { 270168, 6 }, { 273796, 6 } },
        trinketPairs = { { 250215, 270164, 41 }, { 270164, 270167, 14 }, { 250215, 270167, 11 } },
        embellish = { { 239648, 60 }, { 239649, 30 }, { 245770, 29 }, { 245769, 25 }, { 239656, 15 } },
        embellishPairs = { { 239648, 245769, 16 }, { 239648, 239649, 16 }, { 239648, 245770, 15 } },
    },
})

-- Monk Brewmaster
set(268, "mplus", {
    date = "2026-10-15", players = 54, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3200, mean = 3273, p25 = 3104, p75 = 3509 },
    share = { crit = 0.4061, haste = 0.0511, mastery = 0.2084, versatility = 0.3344 },
    gear = { players = 54,
        trinkets = { { 270175, 32 }, { 250245, 27 }, { 270164, 14 }, { 270173, 12 }, { 270174, 8 } },
        trinketPairs = { { 250245, 270175, 12 }, { 270164, 270175, 8 }, { 270173, 270175, 6 } },
        embellish = { { 251513, 43 }, { 244576, 30 }, { 244569, 20 }, { 239656, 4 }, { 237847, 4 } },
        embellishPairs = { { 244576, 251513, 23 }, { 244569, 251513, 11 }, { 244569, 244576, 5 } },
    },
})

-- Monk Windwalker
set(269, "mplus", {
    date = "2026-10-15", players = 80, ilvl = 330,
    minKey = 20, maxKey = 22,
    total = { median = 3229, mean = 3309, p25 = 3204, p75 = 3311 },
    share = { crit = 0.2672, haste = 0.2833, mastery = 0.4033, versatility = 0.0463 },
    gear = { players = 80,
        trinkets = { { 270175, 80 }, { 270173, 30 }, { 270165, 26 }, { 270164, 13 }, { 281215, 4 } },
        trinketPairs = { { 270173, 270175, 30 }, { 270165, 270175, 26 }, { 270164, 270175, 13 } },
        embellish = { { 244576, 67 }, { 244569, 59 }, { 251513, 15 }, { 239656, 11 }, { 244574, 3 } },
        embellishPairs = { { 244569, 244576, 50 }, { 239656, 244576, 9 }, { 244569, 251513, 6 } },
    },
})

-- Monk Mistweaver
set(270, "mplus", {
    date = "2026-10-15", players = 78, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3232, mean = 3263, p25 = 3122, p75 = 3291 },
    share = { crit = 0.1873, haste = 0.4166, mastery = 0.2616, versatility = 0.1344 },
    gear = { players = 78,
        trinkets = { { 270162, 73 }, { 270167, 29 }, { 250255, 18 }, { 270164, 11 }, { 270171, 9 } },
        trinketPairs = { { 270162, 270167, 28 }, { 250255, 270162, 16 }, { 270162, 270171, 9 } },
        embellish = { { 244576, 42 }, { 245770, 37 }, { 244569, 21 }, { 244573, 18 }, { 239656, 16 } },
        embellishPairs = { { 244576, 245770, 17 }, { 244569, 245770, 9 }, { 239656, 244576, 8 } },
    },
})

-- DemonHunter Havoc
set(577, "mplus", {
    date = "2026-10-15", players = 73, ilvl = 329,
    minKey = 20, maxKey = 23,
    total = { median = 3265, mean = 3333, p25 = 3206, p75 = 3415 },
    share = { crit = 0.4711, haste = 0.1251, mastery = 0.3708, versatility = 0.0330 },
    gear = { players = 73,
        trinkets = { { 270173, 69 }, { 270175, 58 }, { 270168, 12 }, { 270164, 3 }, { 281215, 2 } },
        trinketPairs = { { 270173, 270175, 54 }, { 270168, 270173, 11 }, { 270164, 270175, 2 } },
        embellish = { { 237840, 61 }, { 244576, 45 }, { 244569, 22 }, { 244570, 6 }, { 239656, 6 } },
        embellishPairs = { { 237840, 244576, 35 }, { 237840, 244569, 16 }, { 244569, 244576, 5 } },
    },
})

-- DemonHunter Vengeance
set(581, "mplus", {
    date = "2026-10-15", players = 83, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3280, mean = 3355, p25 = 3155, p75 = 3550 },
    share = { crit = 0.2854, haste = 0.4081, mastery = 0.1212, versatility = 0.1853 },
    gear = { players = 83,
        trinkets = { { 270175, 49 }, { 270173, 41 }, { 270164, 19 }, { 270165, 16 }, { 250215, 8 } },
        trinketPairs = { { 270173, 270175, 20 }, { 270164, 270175, 10 }, { 270165, 270175, 7 } },
        embellish = { { 237840, 64 }, { 244576, 55 }, { 244569, 12 }, { 239656, 11 }, { 244575, 5 } },
        embellishPairs = { { 237840, 244576, 43 }, { 237840, 244569, 5 }, { 237840, 244574, 4 } },
    },
})

-- Evoker Devastation
set(1467, "mplus", {
    date = "2026-10-15", players = 94, ilvl = 328,
    minKey = 18, maxKey = 21,
    total = { median = 3176, mean = 3189, p25 = 3098, p75 = 3234 },
    share = { crit = 0.4207, haste = 0.2505, mastery = 0.2736, versatility = 0.0552 },
    gear = { players = 94,
        trinkets = { { 270164, 67 }, { 270167, 54 }, { 273796, 41 }, { 250215, 4 }, { 250214, 3 } },
        trinketPairs = { { 270164, 270167, 37 }, { 270164, 273796, 21 }, { 270167, 273796, 13 } },
        embellish = { { 244584, 67 }, { 245769, 67 }, { 244581, 15 }, { 239656, 14 }, { 245770, 10 } },
        embellishPairs = { { 244584, 245769, 49 }, { 239656, 245769, 7 }, { 244581, 245769, 6 } },
    },
})

-- Evoker Preservation
set(1468, "mplus", {
    date = "2026-10-15", players = 77, ilvl = 328,
    minKey = 19, maxKey = 22,
    total = { median = 3228, mean = 3271, p25 = 3089, p75 = 3405 },
    share = { crit = 0.2492, haste = 0.3667, mastery = 0.1251, versatility = 0.2590 },
    gear = { players = 77,
        trinkets = { { 270162, 68 }, { 270164, 40 }, { 270167, 26 }, { 270171, 11 }, { 250215, 4 } },
        trinketPairs = { { 270162, 270164, 35 }, { 270162, 270167, 22 }, { 270162, 270171, 6 } },
        embellish = { { 244584, 50 }, { 245769, 36 }, { 239656, 18 }, { 244581, 16 }, { 245770, 14 } },
        embellishPairs = { { 244584, 245769, 19 }, { 244584, 245770, 12 }, { 239656, 244584, 11 } },
    },
})

-- Evoker Augmentation
set(1473, "mplus", {
    date = "2026-10-15", players = 84, ilvl = 328,
    minKey = 18, maxKey = 21,
    total = { median = 3234, mean = 3217, p25 = 3147, p75 = 3275 },
    share = { crit = 0.3117, haste = 0.1518, mastery = 0.5058, versatility = 0.0308 },
    gear = { players = 84,
        trinkets = { { 270168, 50 }, { 270161, 39 }, { 270164, 23 }, { 250224, 15 }, { 270167, 14 } },
        trinketPairs = { { 270161, 270168, 27 }, { 270164, 270168, 7 }, { 250224, 270161, 5 } },
        embellish = { { 244584, 61 }, { 245769, 42 }, { 244581, 20 }, { 239656, 16 }, { 245770, 7 } },
        embellishPairs = { { 244584, 245769, 31 }, { 244581, 244584, 11 }, { 239656, 244584, 8 } },
    },
})

-- DemonHunter Devourer
set(1480, "mplus", {
    date = "2026-10-15", players = 87, ilvl = 330,
    minKey = 20, maxKey = 23,
    total = { median = 3263, mean = 3300, p25 = 3194, p75 = 3331 },
    share = { crit = 0.2528, haste = 0.3237, mastery = 0.3797, versatility = 0.0438 },
    gear = { players = 87,
        trinkets = { { 270164, 60 }, { 270167, 55 }, { 250215, 35 }, { 270169, 13 }, { 281215, 5 } },
        trinketPairs = { { 270164, 270167, 32 }, { 250215, 270164, 20 }, { 250215, 270167, 13 } },
        embellish = { { 237840, 54 }, { 244576, 53 }, { 244569, 46 }, { 244570, 4 }, { 239656, 4 } },
        embellishPairs = { { 237840, 244576, 26 }, { 244569, 244576, 22 }, { 237840, 244569, 18 } },
    },
})
