-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Raid (mythisch), 40 Spezialisierungen, erzeugt 2026-10-23 02:53.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Raid (mythisch)"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "raid", {
    date = "2026-10-23", players = 56, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3106, mean = 3160, p25 = 3076, p75 = 3175 },
    share = { crit = 0.2695, haste = 0.3276, mastery = 0.1846, versatility = 0.2183 },
    gear = { players = 56,
        trinkets = { { 270164, 41 }, { 250215, 39 }, { 281215, 16 }, { 270169, 7 }, { 270167, 5 } },
        trinketPairs = { { 250215, 270164, 28 }, { 250215, 281215, 8 }, { 270164, 281215, 7 } },
        embellish = { { 245769, 43 }, { 239648, 42 }, { 239649, 7 }, { 245770, 6 }, { 239656, 5 } },
        embellishPairs = { { 239648, 245769, 34 }, { 239649, 245769, 5 }, { 239648, 245770, 3 } },
    },
})

-- Mage Fire
set(63, "raid", {
    date = "2026-10-23", players = 97, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3156, mean = 3149, p25 = 3087, p75 = 3206 },
    share = { crit = 0.0688, haste = 0.4421, mastery = 0.2897, versatility = 0.1994 },
    gear = { players = 97,
        trinkets = { { 273796, 68 }, { 270164, 54 }, { 270167, 41 }, { 270169, 9 }, { 270168, 5 } },
        trinketPairs = { { 270164, 273796, 30 }, { 270167, 273796, 27 }, { 270164, 270167, 10 } },
        embellish = { { 239648, 81 }, { 245769, 63 }, { 239649, 14 }, { 245770, 12 }, { 239656, 11 } },
        embellishPairs = { { 239648, 245769, 54 }, { 239648, 245770, 8 }, { 239648, 239656, 7 } },
    },
})

-- Mage Frost
set(64, "raid", {
    date = "2026-10-23", players = 96, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3182, mean = 3197, p25 = 3134, p75 = 3254 },
    share = { crit = 0.3510, haste = 0.2404, mastery = 0.2979, versatility = 0.1106 },
    gear = { players = 96,
        trinkets = { { 270164, 78 }, { 281215, 48 }, { 250215, 31 }, { 270167, 26 }, { 270169, 3 } },
        trinketPairs = { { 270164, 281215, 38 }, { 250215, 270164, 24 }, { 270164, 270167, 13 } },
        embellish = { { 239648, 83 }, { 245769, 66 }, { 239656, 14 }, { 239649, 13 }, { 239654, 4 } },
        embellishPairs = { { 239648, 245769, 57 }, { 239648, 239656, 10 }, { 239648, 239649, 7 } },
    },
})

-- Paladin Holy
set(65, "raid", {
    date = "2026-10-23", players = 100, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3177, mean = 3184, p25 = 3121, p75 = 3226 },
    share = { crit = 0.2366, haste = 0.2908, mastery = 0.4192, versatility = 0.0534 },
    gear = { players = 100,
        trinkets = { { 270162, 87 }, { 270164, 83 }, { 270167, 14 }, { 270171, 10 }, { 274493, 3 } },
        trinketPairs = { { 270162, 270164, 70 }, { 270164, 270167, 8 }, { 270162, 270171, 8 } },
        embellish = { { 237834, 50 }, { 237830, 26 }, { 239656, 23 }, { 237828, 21 }, { 237836, 20 } },
        embellishPairs = { { 237828, 237834, 11 }, { 237834, 237836, 10 }, { 237830, 237834, 9 } },
    },
})

-- Paladin Protection
set(66, "raid", {
    date = "2026-10-23", players = 84, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3202, mean = 3213, p25 = 3162, p75 = 3252 },
    share = { crit = 0.3834, haste = 0.3589, mastery = 0.1822, versatility = 0.0755 },
    gear = { players = 84,
        trinkets = { { 270173, 73 }, { 270175, 70 }, { 270164, 6 }, { 270163, 5 }, { 270165, 4 } },
        trinketPairs = { { 270173, 270175, 60 }, { 270165, 270175, 3 }, { 270164, 270175, 3 } },
        embellish = { { 237834, 68 }, { 237828, 30 }, { 237831, 21 }, { 237830, 11 }, { 239656, 10 } },
        embellishPairs = { { 237828, 237834, 24 }, { 237831, 237834, 15 }, { 237830, 237834, 9 } },
    },
})

-- Paladin Retribution
set(70, "raid", {
    date = "2026-10-23", players = 57, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3240, mean = 3239, p25 = 3213, p75 = 3281 },
    share = { crit = 0.3232, haste = 0.2714, mastery = 0.3741, versatility = 0.0313 },
    gear = { players = 57,
        trinkets = { { 270175, 52 }, { 270173, 49 }, { 270164, 4 }, { 281215, 3 }, { 270602, 2 } },
        trinketPairs = { { 270173, 270175, 47 }, { 270175, 274493, 1 }, { 248583, 270175, 1 } },
        embellish = { { 237834, 47 }, { 251513, 37 }, { 237828, 12 }, { 237830, 4 }, { 237846, 3 } },
        embellishPairs = { { 237834, 251513, 29 }, { 237828, 237834, 10 }, { 237830, 251513, 3 } },
    },
})

-- Warrior Arms
set(71, "raid", {
    date = "2026-10-23", players = 56, ilvl = 335,
    difficulty = "mythic",
    total = { median = 3288, mean = 3358, p25 = 3182, p75 = 3342 },
    share = { crit = 0.4179, haste = 0.3332, mastery = 0.2115, versatility = 0.0374 },
    gear = { players = 56,
        trinkets = { { 270173, 55 }, { 270175, 38 }, { 270165, 14 }, { 281215, 5 } },
        trinketPairs = { { 270173, 270175, 37 }, { 270165, 270173, 13 }, { 270173, 281215, 5 } },
        embellish = { { 237834, 46 }, { 237828, 37 }, { 251513, 10 }, { 239656, 6 }, { 237836, 3 } },
        embellishPairs = { { 237828, 237834, 32 }, { 237834, 239656, 5 }, { 237828, 251513, 4 } },
    },
})

-- Warrior Fury
set(72, "raid", {
    date = "2026-10-23", players = 95, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3386, mean = 3367, p25 = 3286, p75 = 3460 },
    share = { crit = 0.2862, haste = 0.3330, mastery = 0.3499, versatility = 0.0309 },
    gear = { players = 95,
        trinkets = { { 270173, 93 }, { 270175, 70 }, { 270165, 20 }, { 281215, 3 }, { 270164, 3 } },
        trinketPairs = { { 270173, 270175, 68 }, { 270165, 270173, 18 }, { 270173, 281215, 3 } },
        embellish = { { 237834, 80 }, { 237828, 50 }, { 237846, 26 }, { 239656, 8 }, { 237830, 6 } },
        embellishPairs = { { 237828, 237834, 39 }, { 237834, 237846, 19 }, { 237830, 237834, 5 } },
    },
})

-- Warrior Protection
set(73, "raid", {
    date = "2026-10-23", players = 98, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3236, mean = 3225, p25 = 3178, p75 = 3269 },
    share = { crit = 0.3395, haste = 0.3813, mastery = 0.2045, versatility = 0.0747 },
    gear = { players = 98,
        trinkets = { { 270173, 87 }, { 270175, 81 }, { 270165, 17 }, { 250245, 4 }, { 281215, 3 } },
        trinketPairs = { { 270173, 270175, 73 }, { 270165, 270173, 8 }, { 270165, 270175, 6 } },
        embellish = { { 237834, 82 }, { 237828, 58 }, { 237831, 20 }, { 239656, 16 }, { 237839, 5 } },
        embellishPairs = { { 237828, 237834, 50 }, { 237834, 239656, 11 }, { 237831, 237834, 10 } },
    },
})

-- Druid Balance
set(102, "raid", {
    date = "2026-10-23", players = 99, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3183, mean = 3217, p25 = 3135, p75 = 3299 },
    share = { crit = 0.2711, haste = 0.2856, mastery = 0.4090, versatility = 0.0343 },
    gear = { players = 99,
        trinkets = { { 270164, 54 }, { 281215, 50 }, { 273796, 49 }, { 270167, 24 }, { 270169, 14 } },
        trinketPairs = { { 270164, 273796, 24 }, { 270164, 281215, 20 }, { 273796, 281215, 15 } },
        embellish = { { 245769, 80 }, { 244576, 56 }, { 244569, 32 }, { 244575, 10 }, { 245770, 6 } },
        embellishPairs = { { 244576, 245769, 44 }, { 244569, 245769, 20 }, { 244575, 245769, 9 } },
    },
})

-- Druid Feral
set(103, "raid", {
    date = "2026-10-23", players = 98, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3227, mean = 3226, p25 = 3204, p75 = 3255 },
    share = { crit = 0.2720, haste = 0.3072, mastery = 0.3840, versatility = 0.0368 },
    gear = { players = 98,
        trinkets = { { 270175, 96 }, { 270173, 51 }, { 270164, 18 }, { 281215, 18 }, { 270165, 9 } },
        trinketPairs = { { 270173, 270175, 50 }, { 270164, 270175, 18 }, { 270175, 281215, 18 } },
        embellish = { { 244576, 81 }, { 244569, 47 }, { 244575, 24 }, { 239656, 14 }, { 244573, 8 } },
        embellishPairs = { { 244569, 244576, 35 }, { 244575, 244576, 19 }, { 239656, 244576, 10 } },
    },
})

-- Druid Guardian
set(104, "raid", {
    date = "2026-10-23", players = 96, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3232, mean = 3218, p25 = 3178, p75 = 3273 },
    share = { crit = 0.2690, haste = 0.4143, mastery = 0.1671, versatility = 0.1496 },
    gear = { players = 96,
        trinkets = { { 270175, 73 }, { 270173, 34 }, { 270165, 23 }, { 270164, 15 }, { 281215, 13 } },
        trinketPairs = { { 270173, 270175, 28 }, { 270165, 270175, 13 }, { 270164, 270175, 9 } },
        embellish = { { 244576, 73 }, { 239656, 36 }, { 244569, 34 }, { 244573, 10 }, { 244575, 8 } },
        embellishPairs = { { 239656, 244576, 25 }, { 244569, 244576, 23 }, { 244573, 244576, 6 } },
    },
})

-- Druid Restoration
set(105, "raid", {
    date = "2026-10-23", players = 100, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3276, mean = 3273, p25 = 3213, p75 = 3323 },
    share = { crit = 0.0804, haste = 0.4879, mastery = 0.3708, versatility = 0.0609 },
    gear = { players = 100,
        trinkets = { { 270167, 68 }, { 270162, 48 }, { 270164, 44 }, { 270169, 26 }, { 280835, 6 } },
        trinketPairs = { { 270162, 270167, 32 }, { 270164, 270167, 16 }, { 270167, 270169, 14 } },
        embellish = { { 244576, 65 }, { 244572, 37 }, { 244569, 34 }, { 245770, 25 }, { 245769, 10 } },
        embellishPairs = { { 244572, 244576, 22 }, { 244569, 244576, 19 }, { 244576, 245770, 15 } },
    },
})

-- DeathKnight Blood
set(250, "raid", {
    date = "2026-10-23", players = 60, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3276, mean = 3299, p25 = 3230, p75 = 3306 },
    share = { crit = 0.3577, haste = 0.3426, mastery = 0.1947, versatility = 0.1051 },
    gear = { players = 60,
        trinkets = { { 270175, 60 }, { 270173, 57 }, { 270165, 3 } },
        trinketPairs = { { 270173, 270175, 57 }, { 270165, 270175, 3 } },
        embellish = { { 237834, 51 }, { 240949, 21 }, { 237828, 17 }, { 239656, 9 }, { 237836, 6 } },
        embellishPairs = { { 237834, 240949, 19 }, { 237828, 237834, 13 }, { 237834, 239656, 7 } },
    },
})

-- DeathKnight Frost
set(251, "raid", {
    date = "2026-10-23", players = 58, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3274, mean = 3277, p25 = 3242, p75 = 3309 },
    share = { crit = 0.4241, haste = 0.1791, mastery = 0.3657, versatility = 0.0311 },
    gear = { players = 58,
        trinkets = { { 270175, 58 }, { 270173, 45 }, { 270165, 6 }, { 270164, 4 }, { 281215, 2 } },
        trinketPairs = { { 270173, 270175, 45 }, { 270165, 270175, 6 }, { 270164, 270175, 4 } },
        embellish = { { 237834, 43 }, { 251513, 30 }, { 237828, 26 }, { 239656, 6 }, { 237830, 3 } },
        embellishPairs = { { 237828, 237834, 19 }, { 237834, 251513, 18 }, { 237828, 251513, 5 } },
    },
})

-- DeathKnight Unholy
set(252, "raid", {
    date = "2026-10-23", players = 87, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3243, mean = 3242, p25 = 3210, p75 = 3263 },
    share = { crit = 0.4147, haste = 0.1816, mastery = 0.3721, versatility = 0.0317 },
    gear = { players = 87,
        trinkets = { { 270175, 87 }, { 270173, 70 }, { 270165, 6 }, { 270164, 4 }, { 281215, 4 } },
        trinketPairs = { { 270173, 270175, 70 }, { 270165, 270175, 6 }, { 270164, 270175, 4 } },
        embellish = { { 237834, 73 }, { 237828, 68 }, { 251513, 14 }, { 239656, 7 }, { 237846, 2 } },
        embellishPairs = { { 237828, 237834, 58 }, { 237834, 251513, 7 }, { 237828, 239656, 4 } },
    },
})

-- Hunter BeastMastery
set(253, "raid", {
    date = "2026-10-23", players = 83, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3284, mean = 3323, p25 = 3248, p75 = 3370 },
    share = { crit = 0.3775, haste = 0.1549, mastery = 0.4188, versatility = 0.0487 },
    gear = { players = 83,
        trinkets = { { 270175, 75 }, { 281215, 24 }, { 270164, 19 }, { 270168, 17 }, { 270165, 16 } },
        trinketPairs = { { 270175, 281215, 20 }, { 270164, 270175, 14 }, { 270165, 270175, 14 } },
        embellish = { { 244584, 71 }, { 244581, 52 }, { 244582, 20 }, { 239656, 16 }, { 244577, 2 } },
        embellishPairs = { { 244581, 244584, 42 }, { 244582, 244584, 12 }, { 239656, 244584, 11 } },
    },
})

-- Hunter Marksmanship
set(254, "raid", {
    date = "2026-10-23", players = 62, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3498, mean = 3643, p25 = 3445, p75 = 3569 },
    share = { crit = 0.4623, haste = 0.0966, mastery = 0.3431, versatility = 0.0980 },
    gear = { players = 62,
        trinkets = { { 270175, 60 }, { 270168, 59 }, { 281215, 2 }, { 270173, 2 }, { 270164, 1 } },
        trinketPairs = { { 270168, 270175, 57 }, { 270175, 281215, 1 }, { 270164, 270175, 1 } },
        embellish = { { 244584, 46 }, { 244581, 44 }, { 244582, 13 }, { 239656, 8 }, { 244577, 5 } },
        embellishPairs = { { 244581, 244584, 32 }, { 244581, 244582, 9 }, { 239656, 244584, 5 } },
    },
})

-- Hunter Survival
set(255, "raid", {
    date = "2026-10-23", players = 96, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3310, mean = 3305, p25 = 3236, p75 = 3355 },
    share = { crit = 0.3185, haste = 0.2478, mastery = 0.4030, versatility = 0.0307 },
    gear = { players = 96,
        trinkets = { { 270175, 72 }, { 270173, 64 }, { 281215, 25 }, { 270165, 17 }, { 270164, 10 } },
        trinketPairs = { { 270173, 270175, 43 }, { 270173, 281215, 13 }, { 270175, 281215, 10 } },
        embellish = { { 244584, 80 }, { 244581, 66 }, { 244577, 16 }, { 239656, 11 }, { 251513, 4 } },
        embellishPairs = { { 244581, 244584, 55 }, { 244577, 244584, 12 }, { 239656, 244584, 7 } },
    },
})

-- Priest Discipline
set(256, "raid", {
    date = "2026-10-23", players = 100, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3290, mean = 3290, p25 = 3228, p75 = 3376 },
    share = { crit = 0.1611, haste = 0.5246, mastery = 0.2394, versatility = 0.0749 },
    gear = { players = 100,
        trinkets = { { 270167, 76 }, { 270164, 47 }, { 270169, 33 }, { 270162, 29 }, { 274493, 4 } },
        trinketPairs = { { 270164, 270167, 29 }, { 270167, 270169, 26 }, { 270162, 270167, 15 } },
        embellish = { { 239648, 73 }, { 245769, 43 }, { 239649, 26 }, { 239656, 13 }, { 239655, 13 } },
        embellishPairs = { { 239648, 245769, 25 }, { 239648, 239649, 19 }, { 239648, 239656, 10 } },
    },
})

-- Priest Holy
set(257, "raid", {
    date = "2026-10-23", players = 100, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3148, mean = 3162, p25 = 3092, p75 = 3231 },
    share = { crit = 0.3906, haste = 0.2364, mastery = 0.3102, versatility = 0.0629 },
    gear = { players = 100,
        trinkets = { { 270164, 80 }, { 270162, 79 }, { 270167, 22 }, { 270171, 5 }, { 248583, 4 } },
        trinketPairs = { { 270162, 270164, 62 }, { 270164, 270167, 11 }, { 270162, 270167, 10 } },
        embellish = { { 239648, 53 }, { 239649, 47 }, { 245769, 30 }, { 245770, 29 }, { 239656, 10 } },
        embellishPairs = { { 239648, 239649, 16 }, { 239649, 245770, 15 }, { 239648, 245769, 13 } },
    },
})

-- Priest Shadow
set(258, "raid", {
    date = "2026-10-23", players = 60, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3278, mean = 3350, p25 = 3149, p75 = 3382 },
    share = { crit = 0.2596, haste = 0.3032, mastery = 0.4023, versatility = 0.0350 },
    gear = { players = 60,
        trinkets = { { 270169, 30 }, { 281215, 23 }, { 270164, 23 }, { 250215, 18 }, { 270167, 17 } },
        trinketPairs = { { 270164, 270169, 11 }, { 270167, 270169, 10 }, { 270169, 281215, 9 } },
        embellish = { { 239648, 42 }, { 239649, 31 }, { 245769, 14 }, { 239651, 10 }, { 239656, 9 } },
        embellishPairs = { { 239648, 239649, 20 }, { 239648, 245769, 7 }, { 239648, 239651, 6 } },
    },
})

-- Rogue Assassination
set(259, "raid", {
    date = "2026-10-23", players = 98, ilvl = 331,
    difficulty = "mythic",
    total = { median = 4303, mean = 3975, p25 = 3328, p75 = 4612 },
    share = { crit = 0.3108, haste = 0.2271, mastery = 0.2080, versatility = 0.2542 },
    gear = { players = 98,
        trinkets = { { 270175, 95 }, { 270168, 40 }, { 270165, 18 }, { 270173, 17 }, { 281215, 15 } },
        trinketPairs = { { 270168, 270175, 40 }, { 270165, 270175, 17 }, { 270173, 270175, 16 } },
        embellish = { { 237837, 91 }, { 244576, 64 }, { 244569, 22 }, { 239656, 6 }, { 251513, 4 } },
        embellishPairs = { { 237837, 244576, 59 }, { 237837, 244569, 16 }, { 237837, 239656, 6 } },
    },
})

-- Rogue Outlaw
set(260, "raid", {
    date = "2026-10-23", players = 100, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3231, mean = 3221, p25 = 3197, p75 = 3258 },
    share = { crit = 0.4260, haste = 0.3310, mastery = 0.0695, versatility = 0.1735 },
    gear = { players = 100,
        trinkets = { { 270173, 95 }, { 270175, 87 }, { 281215, 7 }, { 270165, 6 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 82 }, { 270173, 281215, 7 }, { 270165, 270173, 3 } },
        embellish = { { 244569, 61 }, { 244573, 43 }, { 244576, 39 }, { 239656, 22 }, { 244575, 11 } },
        embellishPairs = { { 244569, 244573, 29 }, { 239656, 244576, 12 }, { 244569, 244576, 11 } },
    },
})

-- Rogue Subtlety
set(261, "raid", {
    date = "2026-10-23", players = 57, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3268, mean = 3271, p25 = 3220, p75 = 3312 },
    share = { crit = 0.3169, haste = 0.2382, mastery = 0.3798, versatility = 0.0651 },
    gear = { players = 57,
        trinkets = { { 270175, 57 }, { 281215, 20 }, { 270173, 17 }, { 270165, 14 }, { 270164, 5 } },
        trinketPairs = { { 270175, 281215, 20 }, { 270173, 270175, 17 }, { 270165, 270175, 14 } },
        embellish = { { 237837, 45 }, { 244576, 44 }, { 244569, 12 }, { 239656, 5 }, { 244573, 3 } },
        embellishPairs = { { 237837, 244576, 33 }, { 244569, 244576, 8 }, { 237837, 239656, 3 } },
    },
})

-- Shaman Elemental
set(262, "raid", {
    date = "2026-10-23", players = 64, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3073, mean = 3107, p25 = 3040, p75 = 3123 },
    share = { crit = 0.3662, haste = 0.2398, mastery = 0.3552, versatility = 0.0389 },
    gear = { players = 64,
        trinkets = { { 270164, 53 }, { 273796, 43 }, { 281215, 24 }, { 270167, 2 }, { 250215, 2 } },
        trinketPairs = { { 270164, 273796, 33 }, { 270164, 281215, 15 }, { 273796, 281215, 9 } },
        embellish = { { 244584, 52 }, { 244581, 24 }, { 239656, 18 }, { 244577, 9 }, { 251513, 6 } },
        embellishPairs = { { 244581, 244584, 19 }, { 239656, 244584, 17 }, { 244577, 244584, 7 } },
    },
})

-- Shaman Enhancement
set(263, "raid", {
    date = "2026-10-23", players = 76, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3179, mean = 3190, p25 = 3146, p75 = 3209 },
    share = { crit = 0.2954, haste = 0.2996, mastery = 0.3712, versatility = 0.0338 },
    gear = { players = 76,
        trinkets = { { 270175, 65 }, { 270173, 56 }, { 281215, 12 }, { 273796, 8 }, { 270165, 5 } },
        trinketPairs = { { 270173, 270175, 51 }, { 270175, 281215, 7 }, { 273796, 281215, 4 } },
        embellish = { { 244584, 65 }, { 237850, 57 }, { 237845, 6 }, { 244581, 5 }, { 251513, 5 } },
        embellishPairs = { { 237850, 244584, 50 }, { 237841, 244584, 3 }, { 239656, 244584, 3 } },
    },
})

-- Shaman Restoration
set(264, "raid", {
    date = "2026-10-23", players = 100, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3106, mean = 3124, p25 = 3070, p75 = 3165 },
    share = { crit = 0.4679, haste = 0.2396, mastery = 0.1173, versatility = 0.1752 },
    gear = { players = 100,
        trinkets = { { 270162, 89 }, { 270164, 74 }, { 270167, 11 }, { 270171, 11 }, { 281215, 10 } },
        trinketPairs = { { 270162, 270164, 64 }, { 270162, 281215, 8 }, { 270162, 270171, 8 } },
        embellish = { { 244584, 81 }, { 237831, 36 }, { 244577, 22 }, { 239656, 13 }, { 244582, 10 } },
        embellishPairs = { { 237831, 244584, 24 }, { 244577, 244584, 20 }, { 239656, 244584, 11 } },
    },
})

-- Warlock Affliction
set(265, "raid", {
    date = "2026-10-23", players = 97, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3242, mean = 3238, p25 = 3118, p75 = 3300 },
    share = { crit = 0.3545, haste = 0.3631, mastery = 0.2254, versatility = 0.0570 },
    gear = { players = 97,
        trinkets = { { 270164, 64 }, { 270169, 42 }, { 273796, 29 }, { 281215, 26 }, { 270167, 16 } },
        trinketPairs = { { 270164, 270169, 25 }, { 270164, 273796, 21 }, { 270169, 281215, 11 } },
        embellish = { { 245769, 66 }, { 239648, 61 }, { 239649, 33 }, { 239656, 14 }, { 245770, 7 } },
        embellishPairs = { { 239648, 245769, 39 }, { 239649, 245769, 17 }, { 239648, 239649, 10 } },
    },
})

-- Warlock Demonology
set(266, "raid", {
    date = "2026-10-23", players = 52, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3099, mean = 3130, p25 = 3058, p75 = 3173 },
    share = { crit = 0.3983, haste = 0.2891, mastery = 0.2495, versatility = 0.0631 },
    gear = { players = 52,
        trinkets = { { 270164, 38 }, { 273796, 28 }, { 281215, 12 }, { 270169, 9 }, { 270167, 8 } },
        trinketPairs = { { 270164, 273796, 20 }, { 273796, 281215, 5 }, { 270164, 270169, 5 } },
        embellish = { { 239648, 37 }, { 245769, 30 }, { 239649, 15 }, { 239656, 9 }, { 245770, 7 } },
        embellishPairs = { { 239648, 245769, 21 }, { 239648, 239649, 9 }, { 239656, 245769, 4 } },
    },
})

-- Warlock Destruction
set(267, "raid", {
    date = "2026-10-23", players = 100, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3163, mean = 3177, p25 = 3106, p75 = 3246 },
    share = { crit = 0.3568, haste = 0.3015, mastery = 0.2792, versatility = 0.0625 },
    gear = { players = 100,
        trinkets = { { 270164, 80 }, { 250215, 43 }, { 281215, 30 }, { 270167, 25 }, { 273796, 10 } },
        trinketPairs = { { 250215, 270164, 33 }, { 270164, 281215, 22 }, { 270164, 270167, 9 } },
        embellish = { { 239648, 72 }, { 245769, 63 }, { 239649, 27 }, { 239656, 10 }, { 245770, 8 } },
        embellishPairs = { { 239648, 245769, 44 }, { 239648, 239649, 13 }, { 239649, 245769, 7 } },
    },
})

-- Monk Brewmaster
set(268, "raid", {
    date = "2026-10-23", players = 90, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3238, mean = 3268, p25 = 3204, p75 = 3290 },
    share = { crit = 0.4118, haste = 0.0954, mastery = 0.2377, versatility = 0.2551 },
    gear = { players = 90,
        trinkets = { { 270175, 68 }, { 270173, 35 }, { 270168, 28 }, { 281215, 19 }, { 250245, 13 } },
        trinketPairs = { { 270173, 270175, 21 }, { 270175, 281215, 16 }, { 270168, 270175, 12 } },
        embellish = { { 251513, 75 }, { 244576, 53 }, { 244569, 28 }, { 239656, 9 }, { 240949, 2 } },
        embellishPairs = { { 244576, 251513, 44 }, { 244569, 251513, 20 }, { 244569, 244576, 4 } },
    },
})

-- Monk Windwalker
set(269, "raid", {
    date = "2026-10-23", players = 52, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3259, mean = 3275, p25 = 3220, p75 = 3298 },
    share = { crit = 0.2595, haste = 0.3110, mastery = 0.3976, versatility = 0.0320 },
    gear = { players = 52,
        trinkets = { { 270175, 52 }, { 270173, 28 }, { 281215, 12 }, { 270165, 10 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 28 }, { 270175, 281215, 12 }, { 270165, 270175, 10 } },
        embellish = { { 244569, 44 }, { 244576, 35 }, { 251513, 8 }, { 239656, 6 }, { 244575, 4 } },
        embellishPairs = { { 244569, 244576, 30 }, { 244569, 251513, 5 }, { 239656, 244576, 2 } },
    },
})

-- Monk Mistweaver
set(270, "raid", {
    date = "2026-10-23", players = 99, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3285, mean = 3276, p25 = 3236, p75 = 3322 },
    share = { crit = 0.3250, haste = 0.5046, mastery = 0.0640, versatility = 0.1065 },
    gear = { players = 99,
        trinkets = { { 270162, 83 }, { 270167, 68 }, { 270171, 21 }, { 270164, 11 }, { 270169, 3 } },
        trinketPairs = { { 270162, 270167, 55 }, { 270162, 270171, 18 }, { 270162, 270164, 6 } },
        embellish = { { 245770, 53 }, { 239656, 41 }, { 244573, 40 }, { 244576, 29 }, { 244569, 10 } },
        embellishPairs = { { 244573, 245770, 19 }, { 239656, 245770, 18 }, { 239656, 244576, 10 } },
    },
})

-- DemonHunter Havoc
set(577, "raid", {
    date = "2026-10-23", players = 74, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3348, mean = 3824, p25 = 3246, p75 = 4551 },
    share = { crit = 0.4665, haste = 0.1452, mastery = 0.3397, versatility = 0.0486 },
    gear = { players = 74,
        trinkets = { { 270173, 71 }, { 270175, 45 }, { 270168, 25 }, { 281215, 5 }, { 270164, 1 } },
        trinketPairs = { { 270173, 270175, 42 }, { 270168, 270173, 24 }, { 270173, 281215, 5 } },
        embellish = { { 237840, 61 }, { 244576, 32 }, { 244569, 21 }, { 251513, 12 }, { 244570, 5 } },
        embellishPairs = { { 237840, 244576, 23 }, { 237840, 244569, 17 }, { 237840, 251513, 8 } },
    },
})

-- DemonHunter Vengeance
set(581, "raid", {
    date = "2026-10-23", players = 97, ilvl = 330,
    difficulty = "mythic",
    total = { median = 3215, mean = 3202, p25 = 3131, p75 = 3270 },
    share = { crit = 0.2925, haste = 0.4144, mastery = 0.1716, versatility = 0.1214 },
    gear = { players = 97,
        trinkets = { { 270173, 81 }, { 270175, 53 }, { 281215, 26 }, { 270165, 16 }, { 270164, 5 } },
        trinketPairs = { { 270173, 270175, 40 }, { 270173, 281215, 21 }, { 270165, 270173, 10 } },
        embellish = { { 244576, 69 }, { 237840, 64 }, { 244573, 13 }, { 239656, 11 }, { 244569, 8 } },
        embellishPairs = { { 237840, 244576, 45 }, { 244569, 244576, 7 }, { 244573, 244576, 7 } },
    },
})

-- Evoker Devastation
set(1467, "raid", {
    date = "2026-10-23", players = 89, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3210, mean = 3210, p25 = 3121, p75 = 3268 },
    share = { crit = 0.4272, haste = 0.2257, mastery = 0.2947, versatility = 0.0524 },
    gear = { players = 89,
        trinkets = { { 270164, 66 }, { 270167, 59 }, { 281215, 28 }, { 273796, 10 }, { 270161, 6 } },
        trinketPairs = { { 270164, 270167, 40 }, { 270164, 281215, 14 }, { 270167, 281215, 11 } },
        embellish = { { 244584, 68 }, { 245769, 65 }, { 239656, 22 }, { 244581, 9 }, { 245770, 5 } },
        embellishPairs = { { 244584, 245769, 51 }, { 239656, 245769, 10 }, { 239656, 244584, 10 } },
    },
})

-- Evoker Preservation
set(1468, "raid", {
    date = "2026-10-23", players = 100, ilvl = 332,
    difficulty = "mythic",
    total = { median = 3170, mean = 3185, p25 = 3116, p75 = 3251 },
    share = { crit = 0.3832, haste = 0.1776, mastery = 0.3926, versatility = 0.0466 },
    gear = { players = 100,
        trinkets = { { 270164, 86 }, { 270162, 74 }, { 270167, 23 }, { 270171, 6 }, { 270169, 3 } },
        trinketPairs = { { 270162, 270164, 62 }, { 270164, 270167, 13 }, { 270162, 270167, 9 } },
        embellish = { { 244584, 67 }, { 244581, 23 }, { 245770, 22 }, { 245769, 21 }, { 239656, 20 } },
        embellishPairs = { { 244584, 245770, 17 }, { 244581, 244584, 15 }, { 244584, 245769, 10 } },
    },
})

-- Evoker Augmentation
set(1473, "raid", {
    date = "2026-10-23", players = 51, ilvl = 333,
    difficulty = "mythic",
    total = { median = 3323, mean = 3329, p25 = 3277, p75 = 3374 },
    share = { crit = 0.2786, haste = 0.1545, mastery = 0.5360, versatility = 0.0309 },
    gear = { players = 51,
        trinkets = { { 270168, 43 }, { 270161, 21 }, { 281215, 16 }, { 270167, 6 }, { 270164, 5 } },
        trinketPairs = { { 270161, 270168, 20 }, { 270168, 281215, 14 }, { 270164, 270168, 3 } },
        embellish = { { 244584, 36 }, { 245769, 17 }, { 244581, 17 }, { 239656, 12 }, { 244582, 4 } },
        embellishPairs = { { 244584, 245769, 12 }, { 244581, 244584, 12 }, { 239656, 244584, 5 } },
    },
})

-- DemonHunter Devourer
set(1480, "raid", {
    date = "2026-10-23", players = 97, ilvl = 331,
    difficulty = "mythic",
    total = { median = 3215, mean = 3208, p25 = 3131, p75 = 3281 },
    share = { crit = 0.2696, haste = 0.3109, mastery = 0.3871, versatility = 0.0324 },
    gear = { players = 97,
        trinkets = { { 270164, 78 }, { 270167, 44 }, { 281215, 36 }, { 250215, 25 }, { 270169, 5 } },
        trinketPairs = { { 270164, 270167, 31 }, { 270164, 281215, 24 }, { 250215, 270164, 17 } },
        embellish = { { 244576, 65 }, { 244569, 55 }, { 237840, 46 }, { 239656, 8 }, { 251513, 3 } },
        embellishPairs = { { 244569, 244576, 31 }, { 237840, 244576, 25 }, { 237840, 244569, 14 } },
    },
})
