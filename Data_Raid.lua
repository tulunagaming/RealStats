-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Raid (mythisch), 40 Spezialisierungen, erzeugt 2026-10-01 22:50.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Raid (mythisch)"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "raid", {
    date = "2026-10-01", players = 171, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3052, mean = 3089, p25 = 3018, p75 = 3105 },
    share = { crit = 0.2722, haste = 0.3344, mastery = 0.1868, versatility = 0.2067 },
})

-- Mage Fire
set(63, "raid", {
    date = "2026-10-01", players = 73, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3079, mean = 3091, p25 = 3035, p75 = 3156 },
    share = { crit = 0.0745, haste = 0.4401, mastery = 0.2800, versatility = 0.2055 },
})

-- Mage Frost
set(64, "raid", {
    date = "2026-10-01", players = 139, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3163, mean = 3152, p25 = 3068, p75 = 3224 },
    share = { crit = 0.3725, haste = 0.2283, mastery = 0.3208, versatility = 0.0784 },
})

-- Paladin Holy
set(65, "raid", {
    date = "2026-10-01", players = 199, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3104, mean = 3111, p25 = 3048, p75 = 3172 },
    share = { crit = 0.2429, haste = 0.2863, mastery = 0.4230, versatility = 0.0478 },
})

-- Paladin Protection
set(66, "raid", {
    date = "2026-10-01", players = 135, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3130, mean = 3144, p25 = 3062, p75 = 3175 },
    share = { crit = 0.3820, haste = 0.3599, mastery = 0.1749, versatility = 0.0831 },
})

-- Paladin Retribution
set(70, "raid", {
    date = "2026-10-01", players = 155, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3193, mean = 3188, p25 = 3144, p75 = 3230 },
    share = { crit = 0.3404, haste = 0.2743, mastery = 0.3541, versatility = 0.0313 },
})

-- Warrior Arms
set(71, "raid", {
    date = "2026-10-01", players = 145, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3147, mean = 3128, p25 = 3069, p75 = 3187 },
    share = { crit = 0.4224, haste = 0.3483, mastery = 0.1963, versatility = 0.0330 },
})

-- Warrior Fury
set(72, "raid", {
    date = "2026-10-01", players = 113, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3356, mean = 3339, p25 = 3257, p75 = 3400 },
    share = { crit = 0.2724, haste = 0.3491, mastery = 0.3474, versatility = 0.0312 },
})

-- Warrior Protection
set(73, "raid", {
    date = "2026-10-01", players = 107, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3132, mean = 3116, p25 = 3040, p75 = 3174 },
    share = { crit = 0.3491, haste = 0.3949, mastery = 0.1729, versatility = 0.0830 },
})

-- Druid Balance
set(102, "raid", {
    date = "2026-10-01", players = 175, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3157, mean = 3163, p25 = 3065, p75 = 3226 },
    share = { crit = 0.2840, haste = 0.2863, mastery = 0.3949, versatility = 0.0349 },
})

-- Druid Feral
set(103, "raid", {
    date = "2026-10-01", players = 108, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3168, mean = 3164, p25 = 3136, p75 = 3188 },
    share = { crit = 0.2701, haste = 0.3102, mastery = 0.3669, versatility = 0.0528 },
})

-- Druid Guardian
set(104, "raid", {
    date = "2026-10-01", players = 96, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3168, mean = 3166, p25 = 3092, p75 = 3222 },
    share = { crit = 0.2699, haste = 0.4151, mastery = 0.1523, versatility = 0.1627 },
})

-- Druid Restoration
set(105, "raid", {
    date = "2026-10-01", players = 162, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3208, mean = 3195, p25 = 3135, p75 = 3248 },
    share = { crit = 0.0668, haste = 0.5202, mastery = 0.3489, versatility = 0.0641 },
})

-- DeathKnight Blood
set(250, "raid", {
    date = "2026-10-01", players = 149, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3187, mean = 3182, p25 = 3149, p75 = 3224 },
    share = { crit = 0.3633, haste = 0.3550, mastery = 0.1663, versatility = 0.1154 },
})

-- DeathKnight Frost
set(251, "raid", {
    date = "2026-10-01", players = 158, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3210, mean = 3212, p25 = 3178, p75 = 3247 },
    share = { crit = 0.4249, haste = 0.1775, mastery = 0.3663, versatility = 0.0313 },
})

-- DeathKnight Unholy
set(252, "raid", {
    date = "2026-10-01", players = 184, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3186, mean = 3170, p25 = 3153, p75 = 3216 },
    share = { crit = 0.4134, haste = 0.1971, mastery = 0.3580, versatility = 0.0315 },
})

-- Hunter BeastMastery
set(253, "raid", {
    date = "2026-10-01", players = 158, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3214, mean = 3226, p25 = 3174, p75 = 3269 },
    share = { crit = 0.3691, haste = 0.1859, mastery = 0.3986, versatility = 0.0463 },
})

-- Hunter Marksmanship
set(254, "raid", {
    date = "2026-10-01", players = 130, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3384, mean = 3400, p25 = 3366, p75 = 3418 },
    share = { crit = 0.4974, haste = 0.0738, mastery = 0.3426, versatility = 0.0862 },
})

-- Hunter Survival
set(255, "raid", {
    date = "2026-10-01", players = 82, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3228, mean = 3209, p25 = 3116, p75 = 3274 },
    share = { crit = 0.3018, haste = 0.2553, mastery = 0.4121, versatility = 0.0308 },
})

-- Priest Discipline
set(256, "raid", {
    date = "2026-10-01", players = 123, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3228, mean = 3230, p25 = 3173, p75 = 3288 },
    share = { crit = 0.1591, haste = 0.5518, mastery = 0.2266, versatility = 0.0625 },
})

-- Priest Holy
set(257, "raid", {
    date = "2026-10-01", players = 202, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3077, mean = 3099, p25 = 3026, p75 = 3179 },
    share = { crit = 0.3952, haste = 0.2077, mastery = 0.3296, versatility = 0.0675 },
})

-- Priest Shadow
set(258, "raid", {
    date = "2026-10-01", players = 143, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3156, mean = 3148, p25 = 3054, p75 = 3210 },
    share = { crit = 0.2758, haste = 0.3023, mastery = 0.3881, versatility = 0.0338 },
})

-- Rogue Assassination
set(259, "raid", {
    date = "2026-10-01", players = 160, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3311, mean = 3296, p25 = 3222, p75 = 3361 },
    share = { crit = 0.4255, haste = 0.3068, mastery = 0.2179, versatility = 0.0498 },
})

-- Rogue Outlaw
set(260, "raid", {
    date = "2026-10-01", players = 114, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3164, mean = 3142, p25 = 3096, p75 = 3202 },
    share = { crit = 0.4419, haste = 0.3253, mastery = 0.0546, versatility = 0.1781 },
})

-- Rogue Subtlety
set(261, "raid", {
    date = "2026-10-01", players = 161, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3209, mean = 3209, p25 = 3184, p75 = 3237 },
    share = { crit = 0.1945, haste = 0.2385, mastery = 0.3922, versatility = 0.1748 },
})

-- Shaman Elemental
set(262, "raid", {
    date = "2026-10-01", players = 161, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3017, mean = 3035, p25 = 2992, p75 = 3064 },
    share = { crit = 0.3654, haste = 0.2539, mastery = 0.3388, versatility = 0.0419 },
})

-- Shaman Enhancement
set(263, "raid", {
    date = "2026-10-01", players = 106, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3120, mean = 3102, p25 = 3070, p75 = 3147 },
    share = { crit = 0.2979, haste = 0.3109, mastery = 0.3592, versatility = 0.0320 },
})

-- Shaman Restoration
set(264, "raid", {
    date = "2026-10-01", players = 214, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3022, mean = 3037, p25 = 2982, p75 = 3086 },
    share = { crit = 0.4631, haste = 0.2618, mastery = 0.0942, versatility = 0.1809 },
})

-- Warlock Affliction
set(265, "raid", {
    date = "2026-10-01", players = 155, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3142, mean = 3140, p25 = 3041, p75 = 3200 },
    share = { crit = 0.3582, haste = 0.3883, mastery = 0.1908, versatility = 0.0628 },
})

-- Warlock Demonology
set(266, "raid", {
    date = "2026-10-01", players = 165, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3076, mean = 3090, p25 = 3022, p75 = 3146 },
    share = { crit = 0.4029, haste = 0.2961, mastery = 0.2371, versatility = 0.0639 },
})

-- Warlock Destruction
set(267, "raid", {
    date = "2026-10-01", players = 119, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3062, mean = 3088, p25 = 3033, p75 = 3140 },
    share = { crit = 0.3535, haste = 0.2999, mastery = 0.2856, versatility = 0.0609 },
})

-- Monk Brewmaster
set(268, "raid", {
    date = "2026-10-01", players = 100, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3176, mean = 3180, p25 = 3119, p75 = 3223 },
    share = { crit = 0.4207, haste = 0.0816, mastery = 0.2413, versatility = 0.2564 },
})

-- Monk Windwalker
set(269, "raid", {
    date = "2026-10-01", players = 120, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3185, mean = 3189, p25 = 3162, p75 = 3214 },
    share = { crit = 0.2767, haste = 0.3002, mastery = 0.3912, versatility = 0.0319 },
})

-- Monk Mistweaver
set(270, "raid", {
    date = "2026-10-01", players = 149, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3216, mean = 3192, p25 = 3132, p75 = 3261 },
    share = { crit = 0.3084, haste = 0.5076, mastery = 0.0752, versatility = 0.1088 },
})

-- DemonHunter Havoc
set(577, "raid", {
    date = "2026-10-01", players = 108, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3196, mean = 3200, p25 = 3172, p75 = 3229 },
    share = { crit = 0.4703, haste = 0.1142, mastery = 0.3838, versatility = 0.0317 },
})

-- DemonHunter Vengeance
set(581, "raid", {
    date = "2026-10-01", players = 105, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3158, mean = 3133, p25 = 3054, p75 = 3204 },
    share = { crit = 0.3189, haste = 0.4048, mastery = 0.1561, versatility = 0.1202 },
})

-- Evoker Devastation
set(1467, "raid", {
    date = "2026-10-01", players = 132, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3140, mean = 3127, p25 = 3049, p75 = 3193 },
    share = { crit = 0.4297, haste = 0.2424, mastery = 0.2728, versatility = 0.0550 },
})

-- Evoker Preservation
set(1468, "raid", {
    date = "2026-10-01", players = 186, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3098, mean = 3101, p25 = 3033, p75 = 3172 },
    share = { crit = 0.3877, haste = 0.1775, mastery = 0.3892, versatility = 0.0456 },
})

-- Evoker Augmentation
set(1473, "raid", {
    date = "2026-10-01", players = 107, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3223, mean = 3208, p25 = 3159, p75 = 3266 },
    share = { crit = 0.3089, haste = 0.1466, mastery = 0.5132, versatility = 0.0314 },
})

-- DemonHunter Devourer
set(1480, "raid", {
    date = "2026-10-01", players = 157, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3153, mean = 3139, p25 = 3068, p75 = 3208 },
    share = { crit = 0.3072, haste = 0.2839, mastery = 0.3758, versatility = 0.0331 },
})
