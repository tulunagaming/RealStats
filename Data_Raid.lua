-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Raid (mythisch), 40 Spezialisierungen, erzeugt 2026-10-15 22:53.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Raid (mythisch)"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "raid", {
    date = "2026-10-15", players = 60, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3110, mean = 3155, p25 = 3070, p75 = 3194 },
    share = { crit = 0.2810, haste = 0.3286, mastery = 0.1750, versatility = 0.2153 },
    gear = { players = 60,
        trinkets = { { 270164, 48 }, { 250215, 48 }, { 270169, 9 }, { 270167, 7 }, { 281215, 7 } },
        trinketPairs = { { 250215, 270164, 39 }, { 270164, 270169, 6 }, { 250215, 281215, 5 } },
        embellish = { { 245769, 49 }, { 239648, 48 }, { 245770, 7 }, { 239649, 7 }, { 239656, 6 } },
        embellishPairs = { { 239648, 245769, 39 }, { 239649, 245769, 7 }, { 239648, 245770, 5 } },
    },
})

-- Mage Fire
set(63, "raid", {
    date = "2026-10-15", players = 70, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3142, mean = 3128, p25 = 3074, p75 = 3188 },
    share = { crit = 0.0938, haste = 0.4379, mastery = 0.2848, versatility = 0.1836 },
    gear = { players = 70,
        trinkets = { { 270164, 44 }, { 273796, 41 }, { 270167, 26 }, { 270169, 9 }, { 250215, 6 } },
        trinketPairs = { { 270164, 273796, 20 }, { 270167, 273796, 15 }, { 270164, 270167, 7 } },
        embellish = { { 239648, 55 }, { 245769, 41 }, { 239656, 14 }, { 239649, 12 }, { 245770, 8 } },
        embellishPairs = { { 239648, 245769, 32 }, { 239648, 239656, 8 }, { 239648, 239649, 7 } },
    },
})

-- Mage Frost
set(64, "raid", {
    date = "2026-10-15", players = 97, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3191, mean = 3190, p25 = 3124, p75 = 3254 },
    share = { crit = 0.3557, haste = 0.2460, mastery = 0.2955, versatility = 0.1029 },
    gear = { players = 97,
        trinkets = { { 270164, 89 }, { 270167, 40 }, { 250215, 38 }, { 281215, 20 }, { 273796, 3 } },
        trinketPairs = { { 250215, 270164, 34 }, { 270164, 270167, 32 }, { 270164, 281215, 17 } },
        embellish = { { 239648, 84 }, { 245769, 70 }, { 239656, 14 }, { 239649, 12 }, { 239654, 3 } },
        embellishPairs = { { 239648, 245769, 60 }, { 239648, 239656, 11 }, { 239648, 239649, 6 } },
    },
})

-- Paladin Holy
set(65, "raid", {
    date = "2026-10-15", players = 99, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3183, mean = 3197, p25 = 3136, p75 = 3254 },
    share = { crit = 0.2348, haste = 0.3004, mastery = 0.4164, versatility = 0.0483 },
    gear = { players = 99,
        trinkets = { { 270162, 90 }, { 270164, 76 }, { 270171, 12 }, { 270167, 11 }, { 248583, 2 } },
        trinketPairs = { { 270162, 270164, 67 }, { 270162, 270171, 9 }, { 270162, 270167, 8 } },
        embellish = { { 237834, 39 }, { 237843, 32 }, { 237828, 19 }, { 237836, 18 }, { 239656, 17 } },
        embellishPairs = { { 237834, 237843, 9 }, { 237828, 237834, 8 }, { 237836, 237843, 6 } },
    },
})

-- Paladin Protection
set(66, "raid", {
    date = "2026-10-15", players = 94, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3194, mean = 3219, p25 = 3142, p75 = 3246 },
    share = { crit = 0.3817, haste = 0.3592, mastery = 0.1756, versatility = 0.0835 },
    gear = { players = 94,
        trinkets = { { 270173, 78 }, { 270175, 75 }, { 250245, 11 }, { 270165, 9 }, { 270164, 4 } },
        trinketPairs = { { 270173, 270175, 63 }, { 270165, 270175, 5 }, { 250245, 270173, 5 } },
        embellish = { { 237834, 66 }, { 237828, 33 }, { 237831, 30 }, { 239656, 15 }, { 237830, 11 } },
        embellishPairs = { { 237828, 237834, 21 }, { 237831, 237834, 17 }, { 237834, 239656, 8 } },
    },
})

-- Paladin Retribution
set(70, "raid", {
    date = "2026-10-15", players = 64, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3233, mean = 3239, p25 = 3211, p75 = 3266 },
    share = { crit = 0.3302, haste = 0.2740, mastery = 0.3646, versatility = 0.0312 },
    gear = { players = 64,
        trinkets = { { 270175, 60 }, { 270173, 60 }, { 270165, 2 }, { 274493, 1 }, { 281215, 1 } },
        trinketPairs = { { 270173, 270175, 56 }, { 270175, 274493, 1 }, { 270173, 281215, 1 } },
        embellish = { { 237834, 54 }, { 251513, 45 }, { 237828, 19 }, { 239656, 3 }, { 237830, 3 } },
        embellishPairs = { { 237834, 251513, 37 }, { 237828, 237834, 13 }, { 237828, 251513, 4 } },
    },
})

-- Warrior Arms
set(71, "raid", {
    date = "2026-10-15", players = 60, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3238, mean = 3244, p25 = 3180, p75 = 3292 },
    share = { crit = 0.4183, haste = 0.3415, mastery = 0.2041, versatility = 0.0360 },
    gear = { players = 60,
        trinkets = { { 270173, 59 }, { 270175, 48 }, { 270165, 10 }, { 270163, 1 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 47 }, { 270165, 270173, 9 }, { 270163, 270173, 1 } },
        embellish = { { 237834, 51 }, { 237828, 39 }, { 237835, 11 }, { 239656, 6 }, { 251513, 4 } },
        embellishPairs = { { 237828, 237834, 33 }, { 237834, 237835, 8 }, { 237834, 239656, 4 } },
    },
})

-- Warrior Fury
set(72, "raid", {
    date = "2026-10-15", players = 94, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3394, mean = 3359, p25 = 3278, p75 = 3443 },
    share = { crit = 0.2997, haste = 0.3396, mastery = 0.3299, versatility = 0.0309 },
    gear = { players = 94,
        trinkets = { { 270173, 90 }, { 270175, 68 }, { 270165, 25 }, { 281215, 2 }, { 270164, 2 } },
        trinketPairs = { { 270173, 270175, 65 }, { 270165, 270173, 21 }, { 270165, 270175, 3 } },
        embellish = { { 237834, 84 }, { 237828, 52 }, { 237846, 24 }, { 239656, 5 }, { 251513, 5 } },
        embellishPairs = { { 237828, 237834, 44 }, { 237834, 237846, 20 }, { 237828, 237846, 3 } },
    },
})

-- Warrior Protection
set(73, "raid", {
    date = "2026-10-15", players = 98, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3202, mean = 3195, p25 = 3159, p75 = 3236 },
    share = { crit = 0.3530, haste = 0.3833, mastery = 0.1888, versatility = 0.0749 },
    gear = { players = 98,
        trinkets = { { 270173, 86 }, { 270175, 79 }, { 270165, 14 }, { 270163, 4 }, { 270164, 3 } },
        trinketPairs = { { 270173, 270175, 68 }, { 270165, 270173, 7 }, { 270165, 270175, 6 } },
        embellish = { { 237834, 85 }, { 237828, 57 }, { 237831, 18 }, { 239656, 7 }, { 237830, 4 } },
        embellishPairs = { { 237828, 237834, 51 }, { 237831, 237834, 11 }, { 237834, 239656, 7 } },
    },
})

-- Druid Balance
set(102, "raid", {
    date = "2026-10-15", players = 96, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3164, mean = 3196, p25 = 3114, p75 = 3264 },
    share = { crit = 0.2823, haste = 0.2813, mastery = 0.4020, versatility = 0.0344 },
    gear = { players = 96,
        trinkets = { { 270164, 64 }, { 273796, 60 }, { 270167, 28 }, { 281215, 18 }, { 250215, 12 } },
        trinketPairs = { { 270164, 273796, 36 }, { 270167, 273796, 18 }, { 250215, 270164, 9 } },
        embellish = { { 245769, 74 }, { 244576, 56 }, { 244569, 29 }, { 245770, 10 }, { 244575, 10 } },
        embellishPairs = { { 244576, 245769, 43 }, { 244569, 245769, 17 }, { 244575, 245769, 8 } },
    },
})

-- Druid Feral
set(103, "raid", {
    date = "2026-10-15", players = 98, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3206, mean = 3212, p25 = 3185, p75 = 3238 },
    share = { crit = 0.2939, haste = 0.2960, mastery = 0.3748, versatility = 0.0353 },
    gear = { players = 98,
        trinkets = { { 270175, 93 }, { 270173, 47 }, { 270164, 29 }, { 281215, 10 }, { 270165, 9 } },
        trinketPairs = { { 270173, 270175, 46 }, { 270164, 270175, 25 }, { 270175, 281215, 10 } },
        embellish = { { 244576, 74 }, { 244569, 60 }, { 244575, 17 }, { 239656, 14 }, { 244573, 5 } },
        embellishPairs = { { 244569, 244576, 43 }, { 244575, 244576, 12 }, { 239656, 244576, 7 } },
    },
})

-- Druid Guardian
set(104, "raid", {
    date = "2026-10-15", players = 97, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3228, mean = 3225, p25 = 3193, p75 = 3262 },
    share = { crit = 0.2770, haste = 0.4114, mastery = 0.1658, versatility = 0.1459 },
    gear = { players = 97,
        trinkets = { { 270175, 83 }, { 270173, 32 }, { 270165, 25 }, { 270164, 18 }, { 250245, 12 } },
        trinketPairs = { { 270173, 270175, 26 }, { 270165, 270175, 20 }, { 270164, 270175, 15 } },
        embellish = { { 244576, 71 }, { 239656, 42 }, { 244569, 42 }, { 244573, 12 }, { 244574, 10 } },
        embellishPairs = { { 244569, 244576, 28 }, { 239656, 244576, 22 }, { 239656, 244569, 8 } },
    },
})

-- Druid Restoration
set(105, "raid", {
    date = "2026-10-15", players = 100, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3270, mean = 3277, p25 = 3234, p75 = 3318 },
    share = { crit = 0.0671, haste = 0.5110, mastery = 0.3570, versatility = 0.0649 },
    gear = { players = 100,
        trinkets = { { 270167, 73 }, { 270162, 59 }, { 270164, 30 }, { 270169, 24 }, { 251792, 4 } },
        trinketPairs = { { 270162, 270167, 43 }, { 270167, 270169, 13 }, { 270164, 270167, 12 } },
        embellish = { { 244576, 61 }, { 244572, 48 }, { 245769, 30 }, { 244569, 20 }, { 245770, 15 } },
        embellishPairs = { { 244572, 244576, 27 }, { 244572, 245769, 12 }, { 244576, 245769, 10 } },
    },
})

-- DeathKnight Blood
set(250, "raid", {
    date = "2026-10-15", players = 65, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3258, mean = 3269, p25 = 3217, p75 = 3290 },
    share = { crit = 0.3576, haste = 0.3626, mastery = 0.1633, versatility = 0.1165 },
    gear = { players = 65,
        trinkets = { { 270175, 63 }, { 270173, 60 }, { 270163, 2 }, { 250245, 2 }, { 270168, 1 } },
        trinketPairs = { { 270173, 270175, 59 }, { 250245, 270175, 2 }, { 270163, 270173, 1 } },
        embellish = { { 237834, 51 }, { 237828, 19 }, { 240949, 17 }, { 237836, 11 }, { 239656, 8 } },
        embellishPairs = { { 237828, 237834, 15 }, { 237834, 240949, 13 }, { 237834, 237836, 9 } },
    },
})

-- DeathKnight Frost
set(251, "raid", {
    date = "2026-10-15", players = 61, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3242, mean = 3242, p25 = 3210, p75 = 3284 },
    share = { crit = 0.4201, haste = 0.1742, mastery = 0.3741, versatility = 0.0315 },
    gear = { players = 61,
        trinkets = { { 270175, 61 }, { 270173, 42 }, { 270165, 8 }, { 270164, 6 }, { 250228, 2 } },
        trinketPairs = { { 270173, 270175, 42 }, { 270165, 270175, 8 }, { 270164, 270175, 6 } },
        embellish = { { 237834, 41 }, { 237828, 34 }, { 251513, 29 }, { 237839, 4 }, { 239656, 3 } },
        embellishPairs = { { 237828, 237834, 21 }, { 237834, 251513, 15 }, { 237828, 251513, 9 } },
    },
})

-- DeathKnight Unholy
set(252, "raid", {
    date = "2026-10-15", players = 97, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3220, mean = 3226, p25 = 3188, p75 = 3256 },
    share = { crit = 0.4175, haste = 0.1878, mastery = 0.3628, versatility = 0.0319 },
    gear = { players = 97,
        trinkets = { { 270175, 97 }, { 270173, 80 }, { 270165, 12 }, { 281215, 3 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 80 }, { 270165, 270175, 12 }, { 270175, 281215, 3 } },
        embellish = { { 237828, 80 }, { 237834, 71 }, { 251513, 15 }, { 239656, 9 }, { 237830, 8 } },
        embellishPairs = { { 237828, 237834, 59 }, { 237828, 251513, 6 }, { 237828, 239656, 5 } },
    },
})

-- Hunter BeastMastery
set(253, "raid", {
    date = "2026-10-15", players = 90, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3272, mean = 3309, p25 = 3236, p75 = 3324 },
    share = { crit = 0.3825, haste = 0.1364, mastery = 0.4275, versatility = 0.0536 },
    gear = { players = 90,
        trinkets = { { 270175, 84 }, { 270164, 28 }, { 270165, 28 }, { 270168, 19 }, { 281215, 15 } },
        trinketPairs = { { 270165, 270175, 26 }, { 270164, 270175, 24 }, { 270168, 270175, 17 } },
        embellish = { { 244584, 68 }, { 244581, 54 }, { 244582, 24 }, { 239656, 17 }, { 251513, 3 } },
        embellishPairs = { { 244581, 244584, 42 }, { 244582, 244584, 13 }, { 239656, 244584, 7 } },
    },
})

-- Hunter Marksmanship
set(254, "raid", {
    date = "2026-10-15", players = 56, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3443, mean = 3477, p25 = 3418, p75 = 3500 },
    share = { crit = 0.4912, haste = 0.0856, mastery = 0.3475, versatility = 0.0757 },
    gear = { players = 56,
        trinkets = { { 270168, 56 }, { 270175, 56 } },
        trinketPairs = { { 270168, 270175, 56 } },
        embellish = { { 244581, 40 }, { 244584, 37 }, { 244582, 16 }, { 251513, 4 }, { 239656, 4 } },
        embellishPairs = { { 244581, 244584, 26 }, { 244581, 244582, 9 }, { 244582, 244584, 5 } },
    },
})

-- Hunter Survival
set(255, "raid", {
    date = "2026-10-15", players = 95, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3295, mean = 3272, p25 = 3233, p75 = 3328 },
    share = { crit = 0.3158, haste = 0.2429, mastery = 0.4106, versatility = 0.0307 },
    gear = { players = 95,
        trinkets = { { 270175, 73 }, { 270173, 70 }, { 270165, 23 }, { 281215, 12 }, { 270164, 6 } },
        trinketPairs = { { 270173, 270175, 50 }, { 270165, 270175, 13 }, { 270165, 270173, 9 } },
        embellish = { { 244584, 79 }, { 244581, 68 }, { 244577, 14 }, { 239656, 9 }, { 237837, 4 } },
        embellishPairs = { { 244581, 244584, 57 }, { 244577, 244584, 9 }, { 239656, 244584, 5 } },
    },
})

-- Priest Discipline
set(256, "raid", {
    date = "2026-10-15", players = 99, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3297, mean = 3312, p25 = 3245, p75 = 3371 },
    share = { crit = 0.1621, haste = 0.5321, mastery = 0.2408, versatility = 0.0650 },
    gear = { players = 99,
        trinkets = { { 270167, 81 }, { 270169, 39 }, { 270164, 36 }, { 270162, 32 }, { 274493, 3 } },
        trinketPairs = { { 270167, 270169, 31 }, { 270164, 270167, 24 }, { 270162, 270167, 21 } },
        embellish = { { 239648, 64 }, { 245769, 42 }, { 239649, 37 }, { 239656, 20 }, { 245770, 9 } },
        embellishPairs = { { 239648, 245769, 20 }, { 239648, 239649, 18 }, { 239648, 239656, 12 } },
    },
})

-- Priest Holy
set(257, "raid", {
    date = "2026-10-15", players = 99, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3150, mean = 3172, p25 = 3102, p75 = 3253 },
    share = { crit = 0.3919, haste = 0.2187, mastery = 0.3254, versatility = 0.0639 },
    gear = { players = 99,
        trinkets = { { 270162, 74 }, { 270164, 72 }, { 270167, 24 }, { 251792, 8 }, { 270169, 7 } },
        trinketPairs = { { 270162, 270164, 56 }, { 270162, 270167, 12 }, { 270164, 270167, 7 } },
        embellish = { { 239648, 45 }, { 239649, 41 }, { 245769, 35 }, { 239656, 13 }, { 245770, 13 } },
        embellishPairs = { { 239648, 239649, 15 }, { 239648, 245769, 10 }, { 239649, 245769, 8 } },
    },
})

-- Priest Shadow
set(258, "raid", {
    date = "2026-10-15", players = 58, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3245, mean = 3286, p25 = 3141, p75 = 3319 },
    share = { crit = 0.2798, haste = 0.2789, mastery = 0.3952, versatility = 0.0460 },
    gear = { players = 58,
        trinkets = { { 270164, 26 }, { 270167, 20 }, { 270169, 20 }, { 250215, 19 }, { 281215, 15 } },
        trinketPairs = { { 270164, 270169, 9 }, { 250215, 270167, 8 }, { 270164, 273796, 7 } },
        embellish = { { 239648, 32 }, { 239649, 26 }, { 245769, 22 }, { 239651, 12 }, { 239664, 7 } },
        embellishPairs = { { 239648, 239649, 10 }, { 239648, 245769, 9 }, { 239649, 245769, 7 } },
    },
})

-- Rogue Assassination
set(259, "raid", {
    date = "2026-10-15", players = 61, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3354, mean = 3519, p25 = 3255, p75 = 3435 },
    share = { crit = 0.4118, haste = 0.2911, mastery = 0.2399, versatility = 0.0573 },
    gear = { players = 61,
        trinkets = { { 270175, 60 }, { 270168, 22 }, { 270165, 20 }, { 270173, 10 }, { 281215, 4 } },
        trinketPairs = { { 270168, 270175, 22 }, { 270165, 270175, 19 }, { 270173, 270175, 10 } },
        embellish = { { 237837, 54 }, { 244576, 43 }, { 244569, 11 }, { 239656, 8 }, { 244573, 3 } },
        embellishPairs = { { 237837, 244576, 38 }, { 237837, 239656, 8 }, { 244569, 244576, 5 } },
    },
})

-- Rogue Outlaw
set(260, "raid", {
    date = "2026-10-15", players = 100, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3216, mean = 3200, p25 = 3180, p75 = 3252 },
    share = { crit = 0.4201, haste = 0.3306, mastery = 0.0712, versatility = 0.1781 },
    gear = { players = 100,
        trinkets = { { 270173, 95 }, { 270175, 82 }, { 281215, 7 }, { 270165, 7 }, { 270164, 3 } },
        trinketPairs = { { 270173, 270175, 77 }, { 270173, 281215, 6 }, { 270165, 270175, 4 } },
        embellish = { { 244569, 59 }, { 244573, 43 }, { 244576, 34 }, { 239656, 18 }, { 237839, 12 } },
        embellishPairs = { { 244569, 244573, 28 }, { 239656, 244576, 9 }, { 244569, 244576, 9 } },
    },
})

-- Rogue Subtlety
set(261, "raid", {
    date = "2026-10-15", players = 93, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3261, mean = 3267, p25 = 3233, p75 = 3296 },
    share = { crit = 0.3103, haste = 0.2392, mastery = 0.3787, versatility = 0.0719 },
    gear = { players = 93,
        trinkets = { { 270175, 93 }, { 270165, 47 }, { 270173, 21 }, { 281215, 15 }, { 270164, 8 } },
        trinketPairs = { { 270165, 270175, 47 }, { 270173, 270175, 21 }, { 270175, 281215, 15 } },
        embellish = { { 244576, 77 }, { 237837, 76 }, { 244569, 18 }, { 239656, 8 }, { 244572, 1 } },
        embellishPairs = { { 237837, 244576, 62 }, { 244569, 244576, 10 }, { 237837, 244569, 6 } },
    },
})

-- Shaman Elemental
set(262, "raid", {
    date = "2026-10-15", players = 70, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3072, mean = 3077, p25 = 3042, p75 = 3104 },
    share = { crit = 0.3669, haste = 0.2465, mastery = 0.3477, versatility = 0.0389 },
    gear = { players = 70,
        trinkets = { { 270164, 62 }, { 273796, 50 }, { 281215, 16 }, { 250215, 4 }, { 270167, 4 } },
        trinketPairs = { { 270164, 273796, 42 }, { 270164, 281215, 11 }, { 273796, 281215, 5 } },
        embellish = { { 244584, 52 }, { 239656, 22 }, { 244581, 19 }, { 244577, 13 }, { 251513, 8 } },
        embellishPairs = { { 239656, 244584, 19 }, { 244581, 244584, 11 }, { 244577, 244584, 9 } },
    },
})

-- Shaman Enhancement
set(263, "raid", {
    date = "2026-10-15", players = 83, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3162, mean = 3163, p25 = 3130, p75 = 3192 },
    share = { crit = 0.2838, haste = 0.3136, mastery = 0.3700, versatility = 0.0325 },
    gear = { players = 83,
        trinkets = { { 270175, 73 }, { 270173, 61 }, { 281215, 9 }, { 273796, 8 }, { 270165, 5 } },
        trinketPairs = { { 270173, 270175, 61 }, { 270165, 270175, 5 }, { 270175, 281215, 5 } },
        embellish = { { 244584, 67 }, { 237850, 64 }, { 244581, 7 }, { 244577, 7 }, { 239656, 4 } },
        embellishPairs = { { 237850, 244584, 53 }, { 237850, 244581, 3 }, { 237845, 244584, 3 } },
    },
})

-- Shaman Restoration
set(264, "raid", {
    date = "2026-10-15", players = 100, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3100, mean = 3117, p25 = 3060, p75 = 3168 },
    share = { crit = 0.4836, haste = 0.2601, mastery = 0.0927, versatility = 0.1636 },
    gear = { players = 100,
        trinkets = { { 270162, 86 }, { 270164, 79 }, { 270167, 18 }, { 270169, 4 }, { 270171, 4 } },
        trinketPairs = { { 270162, 270164, 65 }, { 270162, 270167, 15 }, { 270164, 270169, 3 } },
        embellish = { { 244584, 80 }, { 237831, 32 }, { 244577, 21 }, { 239656, 17 }, { 244582, 14 } },
        embellishPairs = { { 237831, 244584, 20 }, { 244577, 244584, 17 }, { 239656, 244584, 16 } },
    },
})

-- Warlock Affliction
set(265, "raid", {
    date = "2026-10-15", players = 98, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3220, mean = 3211, p25 = 3103, p75 = 3280 },
    share = { crit = 0.3671, haste = 0.3669, mastery = 0.2044, versatility = 0.0616 },
    gear = { players = 98,
        trinkets = { { 270164, 75 }, { 270169, 41 }, { 273796, 31 }, { 270167, 17 }, { 281215, 11 } },
        trinketPairs = { { 270164, 270169, 33 }, { 270164, 273796, 23 }, { 270167, 270169, 6 } },
        embellish = { { 239648, 69 }, { 245769, 59 }, { 239649, 36 }, { 239656, 12 }, { 245770, 10 } },
        embellishPairs = { { 239648, 245769, 38 }, { 239648, 239649, 15 }, { 239649, 245769, 13 } },
    },
})

-- Warlock Demonology
set(266, "raid", {
    date = "2026-10-15", players = 56, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3088, mean = 3099, p25 = 3062, p75 = 3135 },
    share = { crit = 0.3951, haste = 0.2985, mastery = 0.2431, versatility = 0.0633 },
    gear = { players = 56,
        trinkets = { { 270164, 51 }, { 273796, 38 }, { 250215, 5 }, { 270167, 4 }, { 270169, 4 } },
        trinketPairs = { { 270164, 273796, 34 }, { 250215, 270164, 5 }, { 270164, 273649, 4 } },
        embellish = { { 239648, 39 }, { 245769, 38 }, { 239656, 13 }, { 239649, 9 }, { 245770, 4 } },
        embellishPairs = { { 239648, 245769, 26 }, { 239656, 245769, 6 }, { 239648, 239649, 5 } },
    },
})

-- Warlock Destruction
set(267, "raid", {
    date = "2026-10-15", players = 100, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3138, mean = 3163, p25 = 3090, p75 = 3230 },
    share = { crit = 0.3634, haste = 0.3070, mastery = 0.2679, versatility = 0.0617 },
    gear = { players = 100,
        trinkets = { { 270164, 79 }, { 250215, 52 }, { 270167, 30 }, { 281215, 16 }, { 273796, 10 } },
        trinketPairs = { { 250215, 270164, 37 }, { 250215, 270167, 13 }, { 270164, 270167, 12 } },
        embellish = { { 239648, 72 }, { 245769, 65 }, { 239649, 22 }, { 239656, 14 }, { 245770, 9 } },
        embellishPairs = { { 239648, 245769, 48 }, { 239648, 239649, 8 }, { 239649, 245769, 6 } },
    },
})

-- Monk Brewmaster
set(268, "raid", {
    date = "2026-10-15", players = 94, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3230, mean = 3259, p25 = 3195, p75 = 3266 },
    share = { crit = 0.4100, haste = 0.0992, mastery = 0.2372, versatility = 0.2537 },
    gear = { players = 94,
        trinkets = { { 270175, 73 }, { 270173, 41 }, { 270168, 22 }, { 270164, 12 }, { 281215, 10 } },
        trinketPairs = { { 270173, 270175, 31 }, { 270175, 281215, 9 }, { 270168, 270175, 9 } },
        embellish = { { 251513, 78 }, { 244576, 58 }, { 244569, 30 }, { 240949, 7 }, { 244573, 5 } },
        embellishPairs = { { 244576, 251513, 48 }, { 244569, 251513, 16 }, { 244569, 244576, 9 } },
    },
})

-- Monk Windwalker
set(269, "raid", {
    date = "2026-10-15", players = 95, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3356, mean = 3861, p25 = 3253, p75 = 4523 },
    share = { crit = 0.2488, haste = 0.2745, mastery = 0.3723, versatility = 0.1043 },
    gear = { players = 95,
        trinkets = { { 270175, 94 }, { 270173, 62 }, { 270165, 15 }, { 281215, 10 }, { 270164, 5 } },
        trinketPairs = { { 270173, 270175, 62 }, { 270165, 270175, 15 }, { 270175, 281215, 10 } },
        embellish = { { 244569, 75 }, { 244576, 65 }, { 244575, 12 }, { 251513, 12 }, { 239656, 11 } },
        embellishPairs = { { 244569, 244576, 49 }, { 244569, 244575, 8 }, { 244569, 251513, 7 } },
    },
})

-- Monk Mistweaver
set(270, "raid", {
    date = "2026-10-15", players = 98, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3277, mean = 3279, p25 = 3248, p75 = 3318 },
    share = { crit = 0.3118, haste = 0.5063, mastery = 0.0635, versatility = 0.1184 },
    gear = { players = 98,
        trinkets = { { 270162, 87 }, { 270167, 69 }, { 270171, 24 }, { 270164, 10 }, { 270169, 2 } },
        trinketPairs = { { 270162, 270167, 60 }, { 270162, 270171, 19 }, { 270164, 270167, 4 } },
        embellish = { { 245770, 49 }, { 244573, 42 }, { 244576, 39 }, { 239656, 34 }, { 244569, 13 } },
        embellishPairs = { { 244573, 245770, 19 }, { 244576, 245770, 15 }, { 239656, 244576, 11 } },
    },
})

-- DemonHunter Havoc
set(577, "raid", {
    date = "2026-10-15", players = 52, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3258, mean = 3270, p25 = 3224, p75 = 3302 },
    share = { crit = 0.4546, haste = 0.1481, mastery = 0.3645, versatility = 0.0327 },
    gear = { players = 52,
        trinkets = { { 270173, 51 }, { 270175, 28 }, { 270168, 23 }, { 270166, 1 }, { 250215, 1 } },
        trinketPairs = { { 270173, 270175, 27 }, { 270168, 270173, 22 }, { 270166, 270173, 1 } },
        embellish = { { 237840, 44 }, { 244576, 31 }, { 244569, 17 }, { 244570, 5 }, { 251513, 3 } },
        embellishPairs = { { 237840, 244576, 24 }, { 237840, 244569, 13 }, { 237840, 244570, 4 } },
    },
})

-- DemonHunter Vengeance
set(581, "raid", {
    date = "2026-10-15", players = 98, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3208, mean = 3200, p25 = 3126, p75 = 3262 },
    share = { crit = 0.3015, haste = 0.4054, mastery = 0.1674, versatility = 0.1257 },
    gear = { players = 98,
        trinkets = { { 270173, 85 }, { 270175, 66 }, { 270164, 10 }, { 270165, 7 }, { 250245, 6 } },
        trinketPairs = { { 270173, 270175, 57 }, { 270164, 270173, 7 }, { 270173, 281215, 6 } },
        embellish = { { 244576, 73 }, { 237840, 73 }, { 239656, 12 }, { 244573, 11 }, { 244569, 11 } },
        embellishPairs = { { 237840, 244576, 50 }, { 237840, 244573, 7 }, { 237840, 244569, 7 } },
    },
})

-- Evoker Devastation
set(1467, "raid", {
    date = "2026-10-15", players = 93, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3211, mean = 3200, p25 = 3120, p75 = 3262 },
    share = { crit = 0.4061, haste = 0.2286, mastery = 0.3169, versatility = 0.0483 },
    gear = { players = 93,
        trinkets = { { 270164, 74 }, { 270167, 58 }, { 273796, 21 }, { 281215, 14 }, { 270168, 5 } },
        trinketPairs = { { 270164, 270167, 42 }, { 270164, 273796, 15 }, { 270164, 281215, 10 } },
        embellish = { { 244584, 75 }, { 245769, 66 }, { 244581, 16 }, { 239656, 14 }, { 245770, 4 } },
        embellishPairs = { { 244584, 245769, 53 }, { 239656, 244584, 9 }, { 244581, 244584, 8 } },
    },
})

-- Evoker Preservation
set(1468, "raid", {
    date = "2026-10-15", players = 100, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3167, mean = 3184, p25 = 3117, p75 = 3238 },
    share = { crit = 0.3852, haste = 0.1725, mastery = 0.3964, versatility = 0.0459 },
    gear = { players = 100,
        trinkets = { { 270164, 82 }, { 270162, 81 }, { 270167, 21 }, { 270169, 4 }, { 270171, 4 } },
        trinketPairs = { { 270162, 270164, 65 }, { 270162, 270167, 12 }, { 270164, 270167, 7 } },
        embellish = { { 244584, 51 }, { 245769, 34 }, { 244581, 23 }, { 239656, 22 }, { 245770, 21 } },
        embellishPairs = { { 244584, 245770, 10 }, { 244581, 245769, 10 }, { 244584, 245769, 10 } },
    },
})

-- Evoker Augmentation
set(1473, "raid", {
    date = "2026-10-15", players = 51, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3301, mean = 3303, p25 = 3255, p75 = 3336 },
    share = { crit = 0.2853, haste = 0.1399, mastery = 0.5438, versatility = 0.0310 },
    gear = { players = 51,
        trinkets = { { 270168, 43 }, { 270161, 30 }, { 270170, 8 }, { 270164, 6 }, { 281215, 5 } },
        trinketPairs = { { 270161, 270168, 24 }, { 270168, 270170, 6 }, { 270168, 281215, 5 } },
        embellish = { { 244584, 34 }, { 245769, 22 }, { 244581, 15 }, { 239656, 13 }, { 245770, 5 } },
        embellishPairs = { { 244584, 245769, 15 }, { 244581, 244584, 8 }, { 239656, 244584, 5 } },
    },
})

-- DemonHunter Devourer
set(1480, "raid", {
    date = "2026-10-15", players = 98, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3220, mean = 3193, p25 = 3114, p75 = 3261 },
    share = { crit = 0.2719, haste = 0.3037, mastery = 0.3915, versatility = 0.0329 },
    gear = { players = 98,
        trinkets = { { 270164, 66 }, { 270167, 55 }, { 250215, 45 }, { 281215, 22 }, { 273796, 2 } },
        trinketPairs = { { 270164, 270167, 26 }, { 250215, 270164, 26 }, { 250215, 270167, 17 } },
        embellish = { { 244576, 62 }, { 244569, 58 }, { 237840, 56 }, { 239656, 6 }, { 244573, 4 } },
        embellishPairs = { { 237840, 244576, 32 }, { 244569, 244576, 28 }, { 237840, 244569, 18 } },
    },
})
