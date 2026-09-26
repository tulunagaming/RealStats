-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Raid (mythisch), 40 Spezialisierungen, erzeugt 2026-09-26 17:40.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Raid (mythisch)"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "raid", {
    date = "2026-09-26", players = 172, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3048, mean = 3074, p25 = 3007, p75 = 3090 },
    share = { crit = 0.2749, haste = 0.3375, mastery = 0.1738, versatility = 0.2138 },
})

-- Mage Fire
set(63, "raid", {
    date = "2026-09-26", players = 75, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3048, mean = 3059, p25 = 2992, p75 = 3118 },
    share = { crit = 0.0700, haste = 0.4375, mastery = 0.2835, versatility = 0.2090 },
})

-- Mage Frost
set(64, "raid", {
    date = "2026-09-26", players = 134, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3114, mean = 3124, p25 = 3048, p75 = 3198 },
    share = { crit = 0.3658, haste = 0.2271, mastery = 0.3247, versatility = 0.0824 },
})

-- Paladin Holy
set(65, "raid", {
    date = "2026-09-26", players = 183, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3085, mean = 3086, p25 = 3024, p75 = 3140 },
    share = { crit = 0.2413, haste = 0.2795, mastery = 0.4286, versatility = 0.0506 },
})

-- Paladin Protection
set(66, "raid", {
    date = "2026-09-26", players = 142, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3107, mean = 3109, p25 = 3047, p75 = 3154 },
    share = { crit = 0.3825, haste = 0.3597, mastery = 0.1728, versatility = 0.0850 },
})

-- Paladin Retribution
set(70, "raid", {
    date = "2026-09-26", players = 147, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3173, mean = 3172, p25 = 3136, p75 = 3225 },
    share = { crit = 0.3313, haste = 0.2791, mastery = 0.3586, versatility = 0.0310 },
})

-- Warrior Arms
set(71, "raid", {
    date = "2026-09-26", players = 144, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3140, mean = 3123, p25 = 3048, p75 = 3179 },
    share = { crit = 0.4226, haste = 0.3494, mastery = 0.1946, versatility = 0.0334 },
})

-- Warrior Fury
set(72, "raid", {
    date = "2026-09-26", players = 108, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3330, mean = 3321, p25 = 3249, p75 = 3386 },
    share = { crit = 0.2768, haste = 0.3503, mastery = 0.3373, versatility = 0.0356 },
})

-- Warrior Protection
set(73, "raid", {
    date = "2026-09-26", players = 109, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3121, mean = 3104, p25 = 3027, p75 = 3172 },
    share = { crit = 0.3455, haste = 0.4063, mastery = 0.1642, versatility = 0.0841 },
})

-- Druid Balance
set(102, "raid", {
    date = "2026-09-26", players = 179, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3138, mean = 3137, p25 = 3046, p75 = 3209 },
    share = { crit = 0.2853, haste = 0.2806, mastery = 0.3997, versatility = 0.0345 },
})

-- Druid Feral
set(103, "raid", {
    date = "2026-09-26", players = 96, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3152, mean = 3146, p25 = 3108, p75 = 3177 },
    share = { crit = 0.2697, haste = 0.3134, mastery = 0.3681, versatility = 0.0488 },
})

-- Druid Guardian
set(104, "raid", {
    date = "2026-09-26", players = 89, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3152, mean = 3147, p25 = 3074, p75 = 3210 },
    share = { crit = 0.2710, haste = 0.4119, mastery = 0.1538, versatility = 0.1633 },
})

-- Druid Restoration
set(105, "raid", {
    date = "2026-09-26", players = 159, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3192, mean = 3175, p25 = 3107, p75 = 3234 },
    share = { crit = 0.0729, haste = 0.5197, mastery = 0.3445, versatility = 0.0629 },
})

-- DeathKnight Blood
set(250, "raid", {
    date = "2026-09-26", players = 158, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3174, mean = 3174, p25 = 3140, p75 = 3207 },
    share = { crit = 0.3567, haste = 0.3660, mastery = 0.1642, versatility = 0.1132 },
})

-- DeathKnight Frost
set(251, "raid", {
    date = "2026-09-26", players = 148, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3204, mean = 3208, p25 = 3171, p75 = 3247 },
    share = { crit = 0.4225, haste = 0.1797, mastery = 0.3665, versatility = 0.0313 },
})

-- DeathKnight Unholy
set(252, "raid", {
    date = "2026-09-26", players = 170, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3170, mean = 3170, p25 = 3136, p75 = 3206 },
    share = { crit = 0.4218, haste = 0.1734, mastery = 0.3731, versatility = 0.0317 },
})

-- Hunter BeastMastery
set(253, "raid", {
    date = "2026-09-26", players = 149, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3200, mean = 3206, p25 = 3164, p75 = 3237 },
    share = { crit = 0.3712, haste = 0.1895, mastery = 0.4014, versatility = 0.0379 },
})

-- Hunter Marksmanship
set(254, "raid", {
    date = "2026-09-26", players = 133, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3376, mean = 3380, p25 = 3348, p75 = 3398 },
    share = { crit = 0.4935, haste = 0.0710, mastery = 0.3448, versatility = 0.0908 },
})

-- Hunter Survival
set(255, "raid", {
    date = "2026-09-26", players = 74, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3188, mean = 3184, p25 = 3094, p75 = 3266 },
    share = { crit = 0.3077, haste = 0.2481, mastery = 0.4140, versatility = 0.0302 },
})

-- Priest Discipline
set(256, "raid", {
    date = "2026-09-26", players = 118, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3222, mean = 3225, p25 = 3173, p75 = 3290 },
    share = { crit = 0.1610, haste = 0.5498, mastery = 0.2287, versatility = 0.0605 },
})

-- Priest Holy
set(257, "raid", {
    date = "2026-09-26", players = 194, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3062, mean = 3067, p25 = 2999, p75 = 3130 },
    share = { crit = 0.3968, haste = 0.2036, mastery = 0.3326, versatility = 0.0670 },
})

-- Priest Shadow
set(258, "raid", {
    date = "2026-09-26", players = 149, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3093, mean = 3114, p25 = 3029, p75 = 3186 },
    share = { crit = 0.2762, haste = 0.3007, mastery = 0.3891, versatility = 0.0339 },
})

-- Rogue Assassination
set(259, "raid", {
    date = "2026-09-26", players = 171, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3248, mean = 3255, p25 = 3186, p75 = 3336 },
    share = { crit = 0.4265, haste = 0.3149, mastery = 0.2132, versatility = 0.0454 },
})

-- Rogue Outlaw
set(260, "raid", {
    date = "2026-09-26", players = 122, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3148, mean = 3128, p25 = 3050, p75 = 3196 },
    share = { crit = 0.4358, haste = 0.3300, mastery = 0.0557, versatility = 0.1786 },
})

-- Rogue Subtlety
set(261, "raid", {
    date = "2026-09-26", players = 159, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3196, mean = 3195, p25 = 3170, p75 = 3221 },
    share = { crit = 0.1859, haste = 0.2352, mastery = 0.3916, versatility = 0.1872 },
})

-- Shaman Elemental
set(262, "raid", {
    date = "2026-09-26", players = 150, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3004, mean = 3022, p25 = 2976, p75 = 3046 },
    share = { crit = 0.3617, haste = 0.2567, mastery = 0.3351, versatility = 0.0465 },
})

-- Shaman Enhancement
set(263, "raid", {
    date = "2026-09-26", players = 107, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3088, mean = 3078, p25 = 3032, p75 = 3127 },
    share = { crit = 0.2867, haste = 0.3145, mastery = 0.3661, versatility = 0.0327 },
})

-- Shaman Restoration
set(264, "raid", {
    date = "2026-09-26", players = 200, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3010, mean = 3025, p25 = 2964, p75 = 3073 },
    share = { crit = 0.4634, haste = 0.2597, mastery = 0.0991, versatility = 0.1778 },
})

-- Warlock Affliction
set(265, "raid", {
    date = "2026-09-26", players = 150, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3106, mean = 3115, p25 = 3032, p75 = 3183 },
    share = { crit = 0.3593, haste = 0.3891, mastery = 0.1929, versatility = 0.0586 },
})

-- Warlock Demonology
set(266, "raid", {
    date = "2026-09-26", players = 155, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3062, mean = 3069, p25 = 3019, p75 = 3108 },
    share = { crit = 0.4070, haste = 0.2948, mastery = 0.2380, versatility = 0.0602 },
})

-- Warlock Destruction
set(267, "raid", {
    date = "2026-09-26", players = 117, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3045, mean = 3072, p25 = 3017, p75 = 3139 },
    share = { crit = 0.3501, haste = 0.3029, mastery = 0.2913, versatility = 0.0557 },
})

-- Monk Brewmaster
set(268, "raid", {
    date = "2026-09-26", players = 109, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3175, mean = 3189, p25 = 3106, p75 = 3235 },
    share = { crit = 0.4208, haste = 0.0776, mastery = 0.2440, versatility = 0.2576 },
})

-- Monk Windwalker
set(269, "raid", {
    date = "2026-09-26", players = 129, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3183, mean = 3180, p25 = 3159, p75 = 3203 },
    share = { crit = 0.2811, haste = 0.2985, mastery = 0.3886, versatility = 0.0317 },
})

-- Monk Mistweaver
set(270, "raid", {
    date = "2026-09-26", players = 135, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3207, mean = 3187, p25 = 3090, p75 = 3258 },
    share = { crit = 0.3085, haste = 0.5057, mastery = 0.0718, versatility = 0.1140 },
})

-- DemonHunter Havoc
set(577, "raid", {
    date = "2026-09-26", players = 125, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3183, mean = 3182, p25 = 3153, p75 = 3213 },
    share = { crit = 0.4742, haste = 0.1083, mastery = 0.3862, versatility = 0.0313 },
})

-- DemonHunter Vengeance
set(581, "raid", {
    date = "2026-09-26", players = 86, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3133, mean = 3117, p25 = 3051, p75 = 3198 },
    share = { crit = 0.3274, haste = 0.3952, mastery = 0.1523, versatility = 0.1251 },
})

-- Evoker Devastation
set(1467, "raid", {
    date = "2026-09-26", players = 130, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3112, mean = 3104, p25 = 3037, p75 = 3172 },
    share = { crit = 0.4258, haste = 0.2398, mastery = 0.2693, versatility = 0.0651 },
})

-- Evoker Preservation
set(1468, "raid", {
    date = "2026-09-26", players = 187, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3083, mean = 3088, p25 = 3021, p75 = 3154 },
    share = { crit = 0.3901, haste = 0.1727, mastery = 0.3911, versatility = 0.0461 },
})

-- Evoker Augmentation
set(1473, "raid", {
    date = "2026-09-26", players = 115, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3211, mean = 3190, p25 = 3132, p75 = 3245 },
    share = { crit = 0.3098, haste = 0.1500, mastery = 0.5087, versatility = 0.0316 },
})

-- DemonHunter Devourer
set(1480, "raid", {
    date = "2026-09-26", players = 147, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3132, mean = 3125, p25 = 3044, p75 = 3200 },
    share = { crit = 0.3130, haste = 0.2826, mastery = 0.3710, versatility = 0.0334 },
})
