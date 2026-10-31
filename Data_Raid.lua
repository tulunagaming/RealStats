-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Raid (mythisch), erzeugt 2026-10-31 03:50.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local SOURCES = {
    ["raid"] = "Warcraft Logs · Top-Logs Raid (mythisch)",
}

local function set(spec, mode, t)
    t.source = SOURCES[mode]
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "raid", {
    date = "2026-10-30", players = 58, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3137, mean = 3199, p25 = 3079, p75 = 3203 },
    share = { crit = 0.2690, haste = 0.3210, mastery = 0.2033, versatility = 0.2066 },
    gear = { players = 58,
        trinkets = { { 270164, 41 }, { 250215, 39 }, { 281215, 17 }, { 270169, 9 }, { 270167, 5 } },
        trinketPairs = { { 250215, 270164, 27 }, { 250215, 281215, 10 }, { 270164, 281215, 5 } },
        embellish = { { 245769, 41 }, { 239648, 40 }, { 239656, 8 }, { 239649, 7 }, { 245770, 6 } },
        embellishPairs = { { 239648, 245769, 29 }, { 239649, 245769, 5 }, { 239648, 245770, 4 } },
    },
})

-- Mage Fire
set(63, "raid", {
    date = "2026-10-30", players = 95, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3229, mean = 3219, p25 = 3142, p75 = 3296 },
    share = { crit = 0.0876, haste = 0.4372, mastery = 0.2809, versatility = 0.1944 },
    gear = { players = 95,
        trinkets = { { 270164, 53 }, { 273796, 51 }, { 270167, 44 }, { 270169, 21 }, { 270168, 9 } },
        trinketPairs = { { 270167, 273796, 24 }, { 270164, 273796, 21 }, { 270164, 270169, 14 } },
        embellish = { { 239648, 82 }, { 245769, 67 }, { 239656, 18 }, { 239655, 7 }, { 239649, 7 } },
        embellishPairs = { { 239648, 245769, 58 }, { 239648, 239656, 11 }, { 239656, 245769, 5 } },
    },
})

-- Mage Frost
set(64, "raid", {
    date = "2026-10-30", players = 94, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3194, mean = 3200, p25 = 3150, p75 = 3238 },
    share = { crit = 0.3405, haste = 0.2401, mastery = 0.3211, versatility = 0.0983 },
    gear = { players = 94,
        trinkets = { { 270164, 80 }, { 281215, 68 }, { 250215, 23 }, { 270167, 16 }, { 270169, 1 } },
        trinketPairs = { { 270164, 281215, 54 }, { 250215, 270164, 15 }, { 270164, 270167, 10 } },
        embellish = { { 239648, 79 }, { 245769, 61 }, { 239656, 21 }, { 239649, 16 }, { 239653, 3 } },
        embellishPairs = { { 239648, 245769, 51 }, { 239648, 239656, 15 }, { 239648, 239649, 8 } },
    },
})

-- Paladin Holy
set(65, "raid", {
    date = "2026-10-30", players = 100, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3188, mean = 3207, p25 = 3141, p75 = 3274 },
    share = { crit = 0.2451, haste = 0.2792, mastery = 0.4098, versatility = 0.0659 },
    gear = { players = 100,
        trinkets = { { 270162, 91 }, { 270164, 77 }, { 270171, 16 }, { 270167, 12 }, { 270170, 1 } },
        trinketPairs = { { 270162, 270164, 68 }, { 270162, 270171, 12 }, { 270162, 270167, 9 } },
        embellish = { { 237834, 59 }, { 237828, 25 }, { 237830, 21 }, { 239656, 21 }, { 237836, 16 } },
        embellishPairs = { { 237828, 237834, 18 }, { 237830, 237834, 12 }, { 237834, 237836, 10 } },
    },
})

-- Paladin Protection
set(66, "raid", {
    date = "2026-10-30", players = 74, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3212, mean = 3218, p25 = 3160, p75 = 3258 },
    share = { crit = 0.3776, haste = 0.3603, mastery = 0.1992, versatility = 0.0629 },
    gear = { players = 74,
        trinkets = { { 270173, 65 }, { 270175, 59 }, { 270164, 6 }, { 270165, 5 }, { 281215, 4 } },
        trinketPairs = { { 270173, 270175, 51 }, { 270173, 281215, 4 }, { 270164, 270175, 3 } },
        embellish = { { 237834, 57 }, { 237828, 31 }, { 237831, 12 }, { 237830, 10 }, { 239656, 9 } },
        embellishPairs = { { 237828, 237834, 23 }, { 237830, 237834, 8 }, { 237834, 239656, 7 } },
    },
})

-- Paladin Retribution
set(70, "raid", {
    date = "2026-10-30", players = 56, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3275, mean = 3297, p25 = 3235, p75 = 3318 },
    share = { crit = 0.3203, haste = 0.2740, mastery = 0.3740, versatility = 0.0318 },
    gear = { players = 56,
        trinkets = { { 270175, 55 }, { 270173, 53 }, { 281215, 3 }, { 274493, 1 } },
        trinketPairs = { { 270173, 270175, 52 }, { 270175, 281215, 2 }, { 270175, 274493, 1 } },
        embellish = { { 237834, 51 }, { 251513, 35 }, { 237828, 15 }, { 237836, 3 }, { 239656, 2 } },
        embellishPairs = { { 237834, 251513, 31 }, { 237828, 237834, 12 }, { 237834, 237836, 3 } },
    },
})

-- Warrior Arms
set(71, "raid", {
    date = "2026-10-30", players = 56, ilvl = 337,
    difficulty = "mythic",
    total = { median = 3324, mean = 3354, p25 = 3242, p75 = 3355 },
    share = { crit = 0.4035, haste = 0.3248, mastery = 0.2354, versatility = 0.0363 },
    gear = { players = 56,
        trinkets = { { 270173, 56 }, { 270175, 41 }, { 270165, 9 }, { 281215, 6 } },
        trinketPairs = { { 270173, 270175, 41 }, { 270165, 270173, 9 }, { 270173, 281215, 6 } },
        embellish = { { 237834, 50 }, { 237828, 36 }, { 251513, 9 }, { 237830, 3 }, { 237835, 3 } },
        embellishPairs = { { 237828, 237834, 34 }, { 237834, 251513, 6 }, { 237834, 237835, 2 } },
    },
})

-- Warrior Fury
set(72, "raid", {
    date = "2026-10-30", players = 95, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3367, mean = 3373, p25 = 3268, p75 = 3461 },
    share = { crit = 0.2760, haste = 0.3307, mastery = 0.3614, versatility = 0.0320 },
    gear = { players = 95,
        trinkets = { { 270173, 93 }, { 270175, 66 }, { 270165, 17 }, { 281215, 10 }, { 270164, 2 } },
        trinketPairs = { { 270173, 270175, 64 }, { 270165, 270173, 15 }, { 270173, 281215, 10 } },
        embellish = { { 237834, 87 }, { 237828, 46 }, { 237846, 22 }, { 239656, 6 }, { 237830, 5 } },
        embellishPairs = { { 237828, 237834, 43 }, { 237834, 237846, 18 }, { 237830, 237834, 5 } },
    },
})

-- Warrior Protection
set(73, "raid", {
    date = "2026-10-30", players = 96, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3252, mean = 3244, p25 = 3190, p75 = 3298 },
    share = { crit = 0.3375, haste = 0.3841, mastery = 0.2066, versatility = 0.0718 },
    gear = { players = 96,
        trinkets = { { 270173, 87 }, { 270175, 75 }, { 270165, 16 }, { 281215, 8 }, { 250245, 3 } },
        trinketPairs = { { 270173, 270175, 68 }, { 270165, 270173, 8 }, { 270173, 281215, 7 } },
        embellish = { { 237834, 83 }, { 237828, 53 }, { 239656, 17 }, { 237831, 15 }, { 237836, 6 } },
        embellishPairs = { { 237828, 237834, 47 }, { 237834, 239656, 14 }, { 237831, 237834, 7 } },
    },
})

-- Druid Balance
set(102, "raid", {
    date = "2026-10-30", players = 93, ilvl = 335,
    difficulty = "mythic",
    total = { median = 3200, mean = 3233, p25 = 3156, p75 = 3308 },
    share = { crit = 0.2568, haste = 0.2916, mastery = 0.4161, versatility = 0.0355 },
    gear = { players = 93,
        trinkets = { { 281215, 64 }, { 273796, 43 }, { 270164, 42 }, { 270169, 22 }, { 270167, 12 } },
        trinketPairs = { { 273796, 281215, 24 }, { 270164, 281215, 20 }, { 270164, 273796, 14 } },
        embellish = { { 245769, 71 }, { 244576, 56 }, { 244569, 34 }, { 244575, 8 }, { 239656, 7 } },
        embellishPairs = { { 244576, 245769, 39 }, { 244569, 245769, 21 }, { 244569, 244576, 9 } },
    },
})

-- Druid Feral
set(103, "raid", {
    date = "2026-10-30", players = 98, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3270, mean = 3264, p25 = 3238, p75 = 3299 },
    share = { crit = 0.2700, haste = 0.3021, mastery = 0.3952, versatility = 0.0327 },
    gear = { players = 98,
        trinkets = { { 270175, 98 }, { 270173, 50 }, { 281215, 30 }, { 270164, 9 }, { 270165, 8 } },
        trinketPairs = { { 270173, 270175, 50 }, { 270175, 281215, 30 }, { 270164, 270175, 9 } },
        embellish = { { 244576, 87 }, { 244569, 51 }, { 244575, 28 }, { 239656, 13 }, { 244573, 8 } },
        embellishPairs = { { 244569, 244576, 43 }, { 244575, 244576, 23 }, { 239656, 244576, 10 } },
    },
})

-- Druid Guardian
set(104, "raid", {
    date = "2026-10-30", players = 96, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3266, mean = 3257, p25 = 3217, p75 = 3304 },
    share = { crit = 0.2695, haste = 0.4066, mastery = 0.2061, versatility = 0.1178 },
    gear = { players = 96,
        trinkets = { { 270175, 76 }, { 281215, 38 }, { 270173, 30 }, { 270165, 19 }, { 270164, 13 } },
        trinketPairs = { { 270173, 270175, 25 }, { 270175, 281215, 24 }, { 270165, 270175, 12 } },
        embellish = { { 244576, 78 }, { 244569, 45 }, { 239656, 37 }, { 244575, 8 }, { 244574, 6 } },
        embellishPairs = { { 244569, 244576, 33 }, { 239656, 244576, 24 }, { 239656, 244569, 9 } },
    },
})

-- Druid Restoration
set(105, "raid", {
    date = "2026-10-30", players = 99, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3322, mean = 3320, p25 = 3275, p75 = 3365 },
    share = { crit = 0.0796, haste = 0.4908, mastery = 0.3685, versatility = 0.0611 },
    gear = { players = 99,
        trinkets = { { 270167, 79 }, { 270162, 40 }, { 270164, 33 }, { 270169, 33 }, { 280835, 9 } },
        trinketPairs = { { 270162, 270167, 34 }, { 270164, 270167, 18 }, { 270167, 270169, 18 } },
        embellish = { { 244576, 65 }, { 244572, 41 }, { 244569, 37 }, { 245770, 22 }, { 245769, 10 } },
        embellishPairs = { { 244572, 244576, 27 }, { 244569, 244576, 19 }, { 244576, 245770, 13 } },
    },
})

-- DeathKnight Blood
set(250, "raid", {
    date = "2026-10-30", players = 59, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3303, mean = 3334, p25 = 3261, p75 = 3340 },
    share = { crit = 0.3663, haste = 0.3398, mastery = 0.2026, versatility = 0.0913 },
    gear = { players = 59,
        trinkets = { { 270175, 59 }, { 270173, 58 }, { 270165, 1 } },
        trinketPairs = { { 270173, 270175, 58 }, { 270165, 270175, 1 } },
        embellish = { { 237834, 50 }, { 240949, 19 }, { 237828, 17 }, { 239656, 9 }, { 237836, 8 } },
        embellishPairs = { { 237834, 240949, 16 }, { 237828, 237834, 15 }, { 237834, 239656, 6 } },
    },
})

-- DeathKnight Frost
set(251, "raid", {
    date = "2026-10-30", players = 56, ilvl = 335,
    difficulty = "mythic",
    total = { median = 3317, mean = 3315, p25 = 3274, p75 = 3352 },
    share = { crit = 0.4076, haste = 0.1969, mastery = 0.3641, versatility = 0.0313 },
    gear = { players = 56,
        trinkets = { { 270175, 56 }, { 270173, 47 }, { 270165, 3 }, { 270164, 3 }, { 281215, 3 } },
        trinketPairs = { { 270173, 270175, 47 }, { 270165, 270175, 3 }, { 270164, 270175, 3 } },
        embellish = { { 237834, 39 }, { 251513, 28 }, { 237828, 22 }, { 239656, 8 }, { 237836, 4 } },
        embellishPairs = { { 237834, 251513, 18 }, { 237828, 237834, 14 }, { 237828, 251513, 4 } },
    },
})

-- DeathKnight Unholy
set(252, "raid", {
    date = "2026-10-30", players = 73, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3258, mean = 3258, p25 = 3215, p75 = 3303 },
    share = { crit = 0.4111, haste = 0.1842, mastery = 0.3730, versatility = 0.0317 },
    gear = { players = 73,
        trinkets = { { 270175, 73 }, { 270173, 61 }, { 281215, 5 }, { 270165, 4 }, { 270164, 2 } },
        trinketPairs = { { 270173, 270175, 61 }, { 270175, 281215, 5 }, { 270165, 270175, 4 } },
        embellish = { { 237834, 59 }, { 237828, 45 }, { 251513, 20 }, { 239656, 8 }, { 237846, 4 } },
        embellishPairs = { { 237828, 237834, 37 }, { 237834, 251513, 11 }, { 237834, 239656, 6 } },
    },
})

-- Hunter BeastMastery
set(253, "raid", {
    date = "2026-10-30", players = 67, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3326, mean = 3437, p25 = 3260, p75 = 3427 },
    share = { crit = 0.3728, haste = 0.1452, mastery = 0.4205, versatility = 0.0614 },
    gear = { players = 67,
        trinkets = { { 270175, 49 }, { 270164, 29 }, { 281215, 27 }, { 270168, 10 }, { 270165, 8 } },
        trinketPairs = { { 270175, 281215, 18 }, { 270164, 270175, 14 }, { 270164, 281215, 9 } },
        embellish = { { 244584, 56 }, { 244581, 33 }, { 239656, 17 }, { 244582, 13 }, { 265337, 5 } },
        embellishPairs = { { 244581, 244584, 25 }, { 239656, 244584, 13 }, { 244582, 244584, 9 } },
    },
})

-- Hunter Marksmanship
set(254, "raid", {
    date = "2026-10-30", players = 99, ilvl = 335,
    difficulty = "mythic",
    total = { median = 3940, mean = 4121, p25 = 3484, p75 = 4768 },
    share = { crit = 0.4241, haste = 0.0960, mastery = 0.3231, versatility = 0.1568 },
    gear = { players = 99,
        trinkets = { { 270175, 97 }, { 270168, 89 }, { 281215, 9 }, { 270164, 1 }, { 273796, 1 } },
        trinketPairs = { { 270168, 270175, 87 }, { 270175, 281215, 8 }, { 270164, 270175, 1 } },
        embellish = { { 244584, 81 }, { 244581, 56 }, { 244577, 14 }, { 251513, 11 }, { 244582, 11 } },
        embellishPairs = { { 244581, 244584, 47 }, { 244577, 244584, 11 }, { 239656, 244584, 8 } },
    },
})

-- Hunter Survival
set(255, "raid", {
    date = "2026-10-30", players = 92, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3336, mean = 3319, p25 = 3268, p75 = 3379 },
    share = { crit = 0.3188, haste = 0.2409, mastery = 0.4097, versatility = 0.0306 },
    gear = { players = 92,
        trinkets = { { 270175, 72 }, { 270173, 58 }, { 281215, 32 }, { 270165, 11 }, { 270164, 8 } },
        trinketPairs = { { 270173, 270175, 41 }, { 270175, 281215, 18 }, { 270173, 281215, 12 } },
        embellish = { { 244584, 82 }, { 244581, 67 }, { 244577, 16 }, { 239656, 8 }, { 251513, 3 } },
        embellishPairs = { { 244581, 244584, 59 }, { 244577, 244584, 13 }, { 239656, 244584, 6 } },
    },
})

-- Priest Discipline
set(256, "raid", {
    date = "2026-10-30", players = 100, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3316, mean = 3324, p25 = 3256, p75 = 3393 },
    share = { crit = 0.1597, haste = 0.5159, mastery = 0.2509, versatility = 0.0736 },
    gear = { players = 100,
        trinkets = { { 270167, 79 }, { 270164, 45 }, { 270169, 37 }, { 270162, 29 }, { 281215, 3 } },
        trinketPairs = { { 270164, 270167, 29 }, { 270167, 270169, 27 }, { 270162, 270167, 19 } },
        embellish = { { 239648, 76 }, { 245769, 44 }, { 239649, 26 }, { 239656, 15 }, { 239651, 9 } },
        embellishPairs = { { 239648, 245769, 31 }, { 239648, 239649, 18 }, { 239648, 239656, 10 } },
    },
})

-- Priest Holy
set(257, "raid", {
    date = "2026-10-30", players = 100, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3153, mean = 3178, p25 = 3113, p75 = 3234 },
    share = { crit = 0.3913, haste = 0.2297, mastery = 0.3136, versatility = 0.0654 },
    gear = { players = 100,
        trinkets = { { 270162, 88 }, { 270164, 79 }, { 270167, 18 }, { 270171, 6 }, { 274493, 4 } },
        trinketPairs = { { 270162, 270164, 67 }, { 270162, 270167, 13 }, { 270162, 270171, 6 } },
        embellish = { { 239648, 63 }, { 239649, 41 }, { 245769, 31 }, { 245770, 25 }, { 239656, 12 } },
        embellishPairs = { { 239648, 245769, 18 }, { 239648, 239649, 17 }, { 239648, 245770, 12 } },
    },
})

-- Priest Shadow
set(258, "raid", {
    date = "2026-10-30", players = 66, ilvl = 335,
    difficulty = "mythic",
    total = { median = 3318, mean = 3407, p25 = 3180, p75 = 3436 },
    share = { crit = 0.2575, haste = 0.3040, mastery = 0.4025, versatility = 0.0360 },
    gear = { players = 66,
        trinkets = { { 281215, 40 }, { 270169, 36 }, { 270167, 18 }, { 270164, 17 }, { 250215, 15 } },
        trinketPairs = { { 270169, 281215, 21 }, { 250215, 281215, 10 }, { 270167, 270169, 10 } },
        embellish = { { 239648, 46 }, { 239649, 38 }, { 245769, 17 }, { 239656, 11 }, { 239651, 6 } },
        embellishPairs = { { 239648, 239649, 22 }, { 239648, 239656, 8 }, { 239649, 245769, 8 } },
    },
})

-- Rogue Assassination
set(259, "raid", {
    date = "2026-10-30", players = 93, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3447, mean = 3901, p25 = 3335, p75 = 4569 },
    share = { crit = 0.3796, haste = 0.2772, mastery = 0.2563, versatility = 0.0870 },
    gear = { players = 93,
        trinkets = { { 270175, 92 }, { 281215, 50 }, { 270173, 18 }, { 270168, 13 }, { 270165, 9 } },
        trinketPairs = { { 270175, 281215, 50 }, { 270173, 270175, 18 }, { 270168, 270175, 13 } },
        embellish = { { 237837, 77 }, { 244576, 69 }, { 244569, 22 }, { 239656, 9 }, { 244573, 4 } },
        embellishPairs = { { 237837, 244576, 55 }, { 237837, 244569, 12 }, { 244569, 244576, 9 } },
    },
})

-- Rogue Outlaw
set(260, "raid", {
    date = "2026-10-30", players = 100, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3238, mean = 3228, p25 = 3195, p75 = 3282 },
    share = { crit = 0.4315, haste = 0.3197, mastery = 0.0733, versatility = 0.1755 },
    gear = { players = 100,
        trinkets = { { 270173, 95 }, { 270175, 81 }, { 281215, 15 }, { 270165, 6 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 76 }, { 270173, 281215, 14 }, { 270165, 270173, 3 } },
        embellish = { { 244569, 64 }, { 244573, 46 }, { 244576, 36 }, { 239656, 24 }, { 244575, 9 } },
        embellishPairs = { { 244569, 244573, 34 }, { 244569, 244576, 10 }, { 239656, 244576, 10 } },
    },
})

-- Rogue Subtlety
set(261, "raid", {
    date = "2026-10-30", players = 56, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3285, mean = 3309, p25 = 3247, p75 = 3330 },
    share = { crit = 0.3184, haste = 0.2346, mastery = 0.3850, versatility = 0.0620 },
    gear = { players = 56,
        trinkets = { { 270175, 55 }, { 281215, 28 }, { 270173, 11 }, { 270165, 10 }, { 270164, 3 } },
        trinketPairs = { { 270175, 281215, 28 }, { 270173, 270175, 11 }, { 270165, 270175, 10 } },
        embellish = { { 237837, 49 }, { 244576, 46 }, { 244569, 8 }, { 239656, 4 }, { 244573, 1 } },
        embellishPairs = { { 237837, 244576, 40 }, { 237837, 244569, 4 }, { 244569, 244576, 3 } },
    },
})

-- Shaman Elemental
set(262, "raid", {
    date = "2026-10-31", players = 61, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3096, mean = 3104, p25 = 3067, p75 = 3141 },
    share = { crit = 0.3679, haste = 0.2471, mastery = 0.3466, versatility = 0.0384 },
    gear = { players = 61,
        trinkets = { { 270164, 47 }, { 273796, 34 }, { 281215, 33 }, { 250215, 4 }, { 270167, 2 } },
        trinketPairs = { { 270164, 273796, 23 }, { 270164, 281215, 21 }, { 273796, 281215, 10 } },
        embellish = { { 244584, 51 }, { 244581, 29 }, { 244577, 13 }, { 239656, 13 }, { 251513, 6 } },
        embellishPairs = { { 244581, 244584, 24 }, { 244577, 244584, 10 }, { 239656, 244584, 10 } },
    },
})

-- Shaman Enhancement
set(263, "raid", {
    date = "2026-10-31", players = 55, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3209, mean = 3226, p25 = 3150, p75 = 3259 },
    share = { crit = 0.3034, haste = 0.3021, mastery = 0.3613, versatility = 0.0332 },
    gear = { players = 55,
        trinkets = { { 270175, 45 }, { 270173, 39 }, { 281215, 10 }, { 273796, 7 }, { 270165, 3 } },
        trinketPairs = { { 270173, 270175, 33 }, { 270175, 281215, 7 }, { 270173, 273796, 4 } },
        embellish = { { 244584, 48 }, { 237850, 40 }, { 244581, 6 }, { 237841, 4 }, { 251513, 4 } },
        embellishPairs = { { 237850, 244584, 35 }, { 237841, 244584, 4 }, { 237850, 244581, 3 } },
    },
})

-- Shaman Restoration
set(264, "raid", {
    date = "2026-10-31", players = 99, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3124, mean = 3139, p25 = 3082, p75 = 3168 },
    share = { crit = 0.4879, haste = 0.2380, mastery = 0.1143, versatility = 0.1598 },
    gear = { players = 99,
        trinkets = { { 270162, 93 }, { 270164, 54 }, { 281215, 30 }, { 270167, 9 }, { 270171, 8 } },
        trinketPairs = { { 270162, 270164, 50 }, { 270162, 281215, 27 }, { 270162, 270167, 8 } },
        embellish = { { 244584, 84 }, { 237831, 31 }, { 244577, 25 }, { 244582, 13 }, { 239656, 13 } },
        embellishPairs = { { 237831, 244584, 24 }, { 244577, 244584, 22 }, { 239656, 244584, 11 } },
    },
})

-- Warlock Affliction
set(265, "raid", {
    date = "2026-10-31", players = 96, ilvl = 335,
    difficulty = "mythic",
    total = { median = 3287, mean = 3282, p25 = 3172, p75 = 3336 },
    share = { crit = 0.3463, haste = 0.3665, mastery = 0.2265, versatility = 0.0607 },
    gear = { players = 96,
        trinkets = { { 270164, 56 }, { 281215, 53 }, { 270169, 53 }, { 270167, 11 }, { 273796, 10 } },
        trinketPairs = { { 270164, 270169, 25 }, { 270164, 281215, 23 }, { 270169, 281215, 21 } },
        embellish = { { 239648, 65 }, { 245769, 63 }, { 239649, 27 }, { 239656, 13 }, { 245770, 8 } },
        embellishPairs = { { 239648, 245769, 45 }, { 239649, 245769, 13 }, { 239648, 239649, 7 } },
    },
})

-- Warlock Demonology
set(266, "raid", {
    date = "2026-10-31", players = 52, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3117, mean = 3131, p25 = 3064, p75 = 3206 },
    share = { crit = 0.3957, haste = 0.3041, mastery = 0.2481, versatility = 0.0520 },
    gear = { players = 52,
        trinkets = { { 270164, 37 }, { 273796, 26 }, { 281215, 16 }, { 270169, 15 }, { 270167, 5 } },
        trinketPairs = { { 270164, 273796, 19 }, { 270164, 270169, 9 }, { 273796, 281215, 6 } },
        embellish = { { 239648, 39 }, { 245769, 24 }, { 239649, 12 }, { 239656, 11 }, { 245770, 8 } },
        embellishPairs = { { 239648, 245769, 19 }, { 239648, 239649, 8 }, { 239648, 239656, 6 } },
    },
})

-- Warlock Destruction
set(267, "raid", {
    date = "2026-10-31", players = 99, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3168, mean = 3194, p25 = 3123, p75 = 3269 },
    share = { crit = 0.3468, haste = 0.2940, mastery = 0.2958, versatility = 0.0634 },
    gear = { players = 99,
        trinkets = { { 270164, 87 }, { 281215, 50 }, { 250215, 27 }, { 270167, 19 }, { 273796, 7 } },
        trinketPairs = { { 270164, 281215, 43 }, { 250215, 270164, 24 }, { 270164, 270167, 8 } },
        embellish = { { 239648, 75 }, { 245769, 58 }, { 239649, 31 }, { 239656, 15 }, { 245770, 7 } },
        embellishPairs = { { 239648, 245769, 43 }, { 239648, 239649, 17 }, { 239649, 245769, 7 } },
    },
})

-- Monk Brewmaster
set(268, "raid", {
    date = "2026-10-31", players = 75, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3250, mean = 3287, p25 = 3219, p75 = 3310 },
    share = { crit = 0.4258, haste = 0.0932, mastery = 0.2350, versatility = 0.2460 },
    gear = { players = 75,
        trinkets = { { 270175, 59 }, { 270173, 32 }, { 270168, 22 }, { 281215, 17 }, { 250245, 10 } },
        trinketPairs = { { 270173, 270175, 23 }, { 270175, 281215, 13 }, { 270168, 270175, 10 } },
        embellish = { { 251513, 61 }, { 244576, 46 }, { 244569, 25 }, { 240949, 6 }, { 239656, 3 } },
        embellishPairs = { { 244576, 251513, 34 }, { 244569, 251513, 14 }, { 244569, 244576, 10 } },
    },
})

-- Monk Windwalker
set(269, "raid", {
    date = "2026-10-31", players = 52, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3275, mean = 3286, p25 = 3233, p75 = 3315 },
    share = { crit = 0.2634, haste = 0.3011, mastery = 0.4028, versatility = 0.0327 },
    gear = { players = 52,
        trinkets = { { 270175, 52 }, { 270173, 30 }, { 281215, 12 }, { 270165, 9 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 30 }, { 270175, 281215, 12 }, { 270165, 270175, 9 } },
        embellish = { { 244569, 46 }, { 244576, 37 }, { 239656, 8 }, { 244575, 4 }, { 251513, 4 } },
        embellishPairs = { { 244569, 244576, 34 }, { 239656, 244569, 4 }, { 244569, 251513, 3 } },
    },
})

-- Monk Mistweaver
set(270, "raid", {
    date = "2026-10-31", players = 99, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3264, mean = 3259, p25 = 3192, p75 = 3314 },
    share = { crit = 0.3332, haste = 0.4858, mastery = 0.0860, versatility = 0.0951 },
    gear = { players = 99,
        trinkets = { { 270162, 77 }, { 270167, 51 }, { 270171, 23 }, { 270164, 14 }, { 280835, 5 } },
        trinketPairs = { { 270162, 270167, 36 }, { 270162, 270171, 18 }, { 270162, 270164, 7 } },
        embellish = { { 245770, 63 }, { 244573, 34 }, { 244576, 29 }, { 239656, 28 }, { 244569, 10 } },
        embellishPairs = { { 244573, 245770, 24 }, { 244576, 245770, 11 }, { 239656, 245770, 11 } },
    },
})

-- DemonHunter Havoc
set(577, "raid", {
    date = "2026-10-31", players = 74, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3366, mean = 3723, p25 = 3291, p75 = 4318 },
    share = { crit = 0.4321, haste = 0.1529, mastery = 0.3671, versatility = 0.0479 },
    gear = { players = 74,
        trinkets = { { 270173, 72 }, { 270175, 50 }, { 270168, 19 }, { 281215, 5 }, { 270166, 2 } },
        trinketPairs = { { 270173, 270175, 48 }, { 270168, 270173, 18 }, { 270173, 281215, 5 } },
        embellish = { { 237840, 53 }, { 244576, 40 }, { 244569, 27 }, { 251513, 13 }, { 244570, 4 } },
        embellishPairs = { { 237840, 244576, 22 }, { 237840, 244569, 14 }, { 244569, 244576, 10 } },
    },
})

-- DemonHunter Vengeance
set(581, "raid", {
    date = "2026-10-31", players = 98, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3198, mean = 3206, p25 = 3141, p75 = 3272 },
    share = { crit = 0.2843, haste = 0.4111, mastery = 0.1832, versatility = 0.1214 },
    gear = { players = 98,
        trinkets = { { 270173, 82 }, { 270175, 42 }, { 281215, 37 }, { 270165, 16 }, { 270164, 6 } },
        trinketPairs = { { 270173, 270175, 33 }, { 270173, 281215, 30 }, { 270165, 270173, 9 } },
        embellish = { { 244576, 68 }, { 237840, 65 }, { 239656, 11 }, { 244569, 10 }, { 244573, 8 } },
        embellishPairs = { { 237840, 244576, 41 }, { 244569, 244576, 6 }, { 237840, 239656, 5 } },
    },
})

-- Evoker Devastation
set(1467, "raid", {
    date = "2026-10-31", players = 85, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3209, mean = 3208, p25 = 3134, p75 = 3277 },
    share = { crit = 0.4158, haste = 0.2354, mastery = 0.2961, versatility = 0.0526 },
    gear = { players = 85,
        trinkets = { { 270164, 63 }, { 281215, 44 }, { 270167, 40 }, { 273796, 8 }, { 270161, 5 } },
        trinketPairs = { { 270164, 281215, 28 }, { 270164, 270167, 26 }, { 270167, 281215, 11 } },
        embellish = { { 244584, 66 }, { 245769, 60 }, { 239656, 21 }, { 244581, 12 }, { 245770, 5 } },
        embellishPairs = { { 244584, 245769, 45 }, { 239656, 244584, 11 }, { 239656, 245769, 9 } },
    },
})

-- Evoker Preservation
set(1468, "raid", {
    date = "2026-10-31", players = 100, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3175, mean = 3194, p25 = 3130, p75 = 3252 },
    share = { crit = 0.3760, haste = 0.1998, mastery = 0.3797, versatility = 0.0445 },
    gear = { players = 100,
        trinkets = { { 270164, 84 }, { 270162, 73 }, { 270167, 22 }, { 270171, 8 }, { 270169, 3 } },
        trinketPairs = { { 270162, 270164, 58 }, { 270164, 270167, 13 }, { 270162, 270167, 8 } },
        embellish = { { 244584, 68 }, { 245769, 29 }, { 244581, 28 }, { 245770, 21 }, { 239656, 15 } },
        embellishPairs = { { 244581, 244584, 16 }, { 244584, 245770, 15 }, { 244584, 245769, 13 } },
    },
})

-- Evoker Augmentation
set(1473, "raid", {
    date = "2026-10-31", players = 53, ilvl = 334,
    difficulty = "mythic",
    total = { median = 3346, mean = 3398, p25 = 3275, p75 = 3386 },
    share = { crit = 0.2706, haste = 0.1615, mastery = 0.5361, versatility = 0.0318 },
    gear = { players = 53,
        trinkets = { { 270168, 44 }, { 270161, 24 }, { 281215, 20 }, { 270164, 10 }, { 270169, 3 } },
        trinketPairs = { { 270161, 270168, 19 }, { 270168, 281215, 14 }, { 270164, 270168, 6 } },
        embellish = { { 244584, 36 }, { 245769, 23 }, { 239656, 16 }, { 244581, 14 }, { 245770, 4 } },
        embellishPairs = { { 244584, 245769, 16 }, { 244581, 244584, 7 }, { 239656, 245769, 6 } },
    },
})

-- DemonHunter Devourer
set(1480, "raid", {
    date = "2026-10-31", players = 93, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3217, mean = 3221, p25 = 3149, p75 = 3294 },
    share = { crit = 0.2543, haste = 0.3173, mastery = 0.3960, versatility = 0.0324 },
    gear = { players = 93,
        trinkets = { { 270164, 67 }, { 281215, 52 }, { 270167, 38 }, { 250215, 21 }, { 270169, 4 } },
        trinketPairs = { { 270164, 281215, 31 }, { 270164, 270167, 18 }, { 270167, 281215, 15 } },
        embellish = { { 244576, 57 }, { 244569, 55 }, { 237840, 41 }, { 239656, 9 }, { 251513, 8 } },
        embellishPairs = { { 244569, 244576, 27 }, { 237840, 244576, 17 }, { 237840, 244569, 17 } },
    },
})
