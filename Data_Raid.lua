-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Raid (mythisch), 40 Spezialisierungen, erzeugt 2026-09-18 08:41.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Raid (mythisch)"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "raid", {
    date = "2026-09-18", players = 179, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3021, mean = 3046, p25 = 2974, p75 = 3074 },
    share = { crit = 0.2688, haste = 0.3382, mastery = 0.1943, versatility = 0.1986 },
})

-- Mage Fire
set(63, "raid", {
    date = "2026-09-18", players = 59, ilvl = 321,
    difficulty = "mythic",
    total = { median = 3008, mean = 3012, p25 = 2951, p75 = 3068 },
    share = { crit = 0.0549, haste = 0.4446, mastery = 0.3157, versatility = 0.1849 },
})

-- Mage Frost
set(64, "raid", {
    date = "2026-09-18", players = 115, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3058, mean = 3091, p25 = 3020, p75 = 3138 },
    share = { crit = 0.3724, haste = 0.2204, mastery = 0.3308, versatility = 0.0763 },
})

-- Paladin Holy
set(65, "raid", {
    date = "2026-09-18", players = 175, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3059, mean = 3075, p25 = 3009, p75 = 3136 },
    share = { crit = 0.2410, haste = 0.2837, mastery = 0.4175, versatility = 0.0578 },
})

-- Paladin Protection
set(66, "raid", {
    date = "2026-09-18", players = 135, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3040, mean = 3042, p25 = 2944, p75 = 3118 },
    share = { crit = 0.3674, haste = 0.3662, mastery = 0.1710, versatility = 0.0954 },
})

-- Paladin Retribution
set(70, "raid", {
    date = "2026-09-18", players = 128, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3159, mean = 3156, p25 = 3100, p75 = 3204 },
    share = { crit = 0.3350, haste = 0.2812, mastery = 0.3526, versatility = 0.0312 },
})

-- Warrior Arms
set(71, "raid", {
    date = "2026-09-18", players = 169, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3106, mean = 3096, p25 = 3025, p75 = 3164 },
    share = { crit = 0.4283, haste = 0.3480, mastery = 0.1909, versatility = 0.0328 },
})

-- Warrior Fury
set(72, "raid", {
    date = "2026-09-18", players = 105, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3302, mean = 3291, p25 = 3216, p75 = 3356 },
    share = { crit = 0.2796, haste = 0.3494, mastery = 0.3230, versatility = 0.0480 },
})

-- Warrior Protection
set(73, "raid", {
    date = "2026-09-18", players = 103, ilvl = 322,
    difficulty = "mythic",
    total = { median = 3036, mean = 3033, p25 = 2944, p75 = 3102 },
    share = { crit = 0.3515, haste = 0.4032, mastery = 0.1657, versatility = 0.0796 },
})

-- Druid Balance
set(102, "raid", {
    date = "2026-09-18", players = 149, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3086, mean = 3099, p25 = 3014, p75 = 3167 },
    share = { crit = 0.2919, haste = 0.2823, mastery = 0.3914, versatility = 0.0344 },
})

-- Druid Feral
set(103, "raid", {
    date = "2026-09-18", players = 101, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3090, mean = 3099, p25 = 3021, p75 = 3136 },
    share = { crit = 0.2734, haste = 0.2963, mastery = 0.3779, versatility = 0.0524 },
})

-- Druid Guardian
set(104, "raid", {
    date = "2026-09-18", players = 83, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3088, mean = 3088, p25 = 2997, p75 = 3153 },
    share = { crit = 0.2538, haste = 0.4178, mastery = 0.1587, versatility = 0.1696 },
})

-- Druid Restoration
set(105, "raid", {
    date = "2026-09-18", players = 143, ilvl = 322,
    difficulty = "mythic",
    total = { median = 3135, mean = 3134, p25 = 3062, p75 = 3216 },
    share = { crit = 0.0681, haste = 0.5165, mastery = 0.3537, versatility = 0.0618 },
})

-- DeathKnight Blood
set(250, "raid", {
    date = "2026-09-18", players = 150, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3142, mean = 3135, p25 = 3099, p75 = 3178 },
    share = { crit = 0.3530, haste = 0.3820, mastery = 0.1555, versatility = 0.1095 },
})

-- DeathKnight Frost
set(251, "raid", {
    date = "2026-09-18", players = 135, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3188, mean = 3179, p25 = 3132, p75 = 3230 },
    share = { crit = 0.4283, haste = 0.1728, mastery = 0.3676, versatility = 0.0312 },
})

-- DeathKnight Unholy
set(252, "raid", {
    date = "2026-09-18", players = 129, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3144, mean = 3146, p25 = 3115, p75 = 3181 },
    share = { crit = 0.4379, haste = 0.1449, mastery = 0.3857, versatility = 0.0315 },
})

-- Hunter BeastMastery
set(253, "raid", {
    date = "2026-09-18", players = 159, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3172, mean = 3177, p25 = 3096, p75 = 3240 },
    share = { crit = 0.3691, haste = 0.1858, mastery = 0.3997, versatility = 0.0453 },
})

-- Hunter Marksmanship
set(254, "raid", {
    date = "2026-09-18", players = 138, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3341, mean = 3322, p25 = 3250, p75 = 3379 },
    share = { crit = 0.4981, haste = 0.0734, mastery = 0.3510, versatility = 0.0776 },
})

-- Hunter Survival
set(255, "raid", {
    date = "2026-09-18", players = 66, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3177, mean = 3161, p25 = 3071, p75 = 3244 },
    share = { crit = 0.3040, haste = 0.2466, mastery = 0.4191, versatility = 0.0303 },
})

-- Priest Discipline
set(256, "raid", {
    date = "2026-09-18", players = 116, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3202, mean = 3194, p25 = 3128, p75 = 3263 },
    share = { crit = 0.1729, haste = 0.5509, mastery = 0.2221, versatility = 0.0540 },
})

-- Priest Holy
set(257, "raid", {
    date = "2026-09-18", players = 170, ilvl = 322,
    difficulty = "mythic",
    total = { median = 3034, mean = 3037, p25 = 2967, p75 = 3099 },
    share = { crit = 0.3872, haste = 0.2142, mastery = 0.3412, versatility = 0.0574 },
})

-- Priest Shadow
set(258, "raid", {
    date = "2026-09-18", players = 141, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3078, mean = 3077, p25 = 3003, p75 = 3139 },
    share = { crit = 0.2744, haste = 0.2991, mastery = 0.3926, versatility = 0.0339 },
})

-- Rogue Assassination
set(259, "raid", {
    date = "2026-09-18", players = 147, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3184, mean = 3192, p25 = 3132, p75 = 3271 },
    share = { crit = 0.4207, haste = 0.3218, mastery = 0.2150, versatility = 0.0426 },
})

-- Rogue Outlaw
set(260, "raid", {
    date = "2026-09-18", players = 110, ilvl = 322,
    difficulty = "mythic",
    total = { median = 3073, mean = 3063, p25 = 2976, p75 = 3144 },
    share = { crit = 0.4287, haste = 0.3418, mastery = 0.0555, versatility = 0.1741 },
})

-- Rogue Subtlety
set(261, "raid", {
    date = "2026-09-18", players = 138, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3170, mean = 3164, p25 = 3132, p75 = 3199 },
    share = { crit = 0.1857, haste = 0.2398, mastery = 0.3918, versatility = 0.1828 },
})

-- Shaman Elemental
set(262, "raid", {
    date = "2026-09-18", players = 131, ilvl = 324,
    difficulty = "mythic",
    total = { median = 2982, mean = 2994, p25 = 2946, p75 = 3031 },
    share = { crit = 0.3536, haste = 0.2573, mastery = 0.3495, versatility = 0.0396 },
})

-- Shaman Enhancement
set(263, "raid", {
    date = "2026-09-18", players = 108, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3047, mean = 3038, p25 = 2977, p75 = 3099 },
    share = { crit = 0.2879, haste = 0.3152, mastery = 0.3642, versatility = 0.0327 },
})

-- Shaman Restoration
set(264, "raid", {
    date = "2026-09-18", players = 180, ilvl = 323,
    difficulty = "mythic",
    total = { median = 2970, mean = 2981, p25 = 2913, p75 = 3028 },
    share = { crit = 0.4581, haste = 0.2584, mastery = 0.1027, versatility = 0.1808 },
})

-- Warlock Affliction
set(265, "raid", {
    date = "2026-09-18", players = 133, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3049, mean = 3066, p25 = 2991, p75 = 3131 },
    share = { crit = 0.3615, haste = 0.3901, mastery = 0.1914, versatility = 0.0570 },
})

-- Warlock Demonology
set(266, "raid", {
    date = "2026-09-18", players = 148, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3029, mean = 3035, p25 = 2988, p75 = 3083 },
    share = { crit = 0.4073, haste = 0.2898, mastery = 0.2415, versatility = 0.0614 },
})

-- Warlock Destruction
set(267, "raid", {
    date = "2026-09-18", players = 119, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3025, mean = 3041, p25 = 2984, p75 = 3094 },
    share = { crit = 0.3487, haste = 0.3013, mastery = 0.2965, versatility = 0.0535 },
})

-- Monk Brewmaster
set(268, "raid", {
    date = "2026-09-18", players = 99, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3118, mean = 3128, p25 = 3048, p75 = 3206 },
    share = { crit = 0.4211, haste = 0.0709, mastery = 0.2426, versatility = 0.2653 },
})

-- Monk Windwalker
set(269, "raid", {
    date = "2026-09-18", players = 126, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3142, mean = 3137, p25 = 3111, p75 = 3173 },
    share = { crit = 0.2776, haste = 0.3050, mastery = 0.3852, versatility = 0.0322 },
})

-- Monk Mistweaver
set(270, "raid", {
    date = "2026-09-18", players = 131, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3127, mean = 3119, p25 = 3051, p75 = 3196 },
    share = { crit = 0.3049, haste = 0.5067, mastery = 0.0609, versatility = 0.1275 },
})

-- DemonHunter Havoc
set(577, "raid", {
    date = "2026-09-18", players = 133, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3160, mean = 3153, p25 = 3125, p75 = 3190 },
    share = { crit = 0.4787, haste = 0.0980, mastery = 0.3933, versatility = 0.0300 },
})

-- DemonHunter Vengeance
set(581, "raid", {
    date = "2026-09-18", players = 79, ilvl = 322,
    difficulty = "mythic",
    total = { median = 3057, mean = 3064, p25 = 2976, p75 = 3154 },
    share = { crit = 0.3247, haste = 0.4035, mastery = 0.1512, versatility = 0.1205 },
})

-- Evoker Devastation
set(1467, "raid", {
    date = "2026-09-18", players = 117, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3084, mean = 3066, p25 = 2992, p75 = 3134 },
    share = { crit = 0.4279, haste = 0.2432, mastery = 0.2665, versatility = 0.0625 },
})

-- Evoker Preservation
set(1468, "raid", {
    date = "2026-09-18", players = 161, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3071, mean = 3073, p25 = 3004, p75 = 3142 },
    share = { crit = 0.3927, haste = 0.1724, mastery = 0.3895, versatility = 0.0453 },
})

-- Evoker Augmentation
set(1473, "raid", {
    date = "2026-09-18", players = 112, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3158, mean = 3146, p25 = 3084, p75 = 3214 },
    share = { crit = 0.3197, haste = 0.1491, mastery = 0.4991, versatility = 0.0321 },
})

-- DemonHunter Devourer
set(1480, "raid", {
    date = "2026-09-18", players = 135, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3087, mean = 3083, p25 = 3018, p75 = 3155 },
    share = { crit = 0.3260, haste = 0.2815, mastery = 0.3589, versatility = 0.0336 },
})
