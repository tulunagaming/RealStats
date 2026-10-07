-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Raid (mythisch), 40 Spezialisierungen, erzeugt 2026-10-07 22:37.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Raid (mythisch)"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "raid", {
    date = "2026-10-07", players = 175, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3070, mean = 3102, p25 = 3040, p75 = 3128 },
    share = { crit = 0.2747, haste = 0.3364, mastery = 0.1803, versatility = 0.2087 },
})

-- Mage Fire
set(63, "raid", {
    date = "2026-10-07", players = 76, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3119, mean = 3112, p25 = 3050, p75 = 3167 },
    share = { crit = 0.0645, haste = 0.4444, mastery = 0.2914, versatility = 0.1998 },
})

-- Mage Frost
set(64, "raid", {
    date = "2026-10-07", players = 153, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3158, mean = 3154, p25 = 3078, p75 = 3221 },
    share = { crit = 0.3696, haste = 0.2247, mastery = 0.3173, versatility = 0.0884 },
})

-- Paladin Holy
set(65, "raid", {
    date = "2026-10-07", players = 204, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3115, mean = 3124, p25 = 3060, p75 = 3178 },
    share = { crit = 0.2423, haste = 0.2881, mastery = 0.4192, versatility = 0.0505 },
})

-- Paladin Protection
set(66, "raid", {
    date = "2026-10-07", players = 136, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3140, mean = 3150, p25 = 3096, p75 = 3189 },
    share = { crit = 0.3852, haste = 0.3587, mastery = 0.1714, versatility = 0.0847 },
})

-- Paladin Retribution
set(70, "raid", {
    date = "2026-10-07", players = 149, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3207, mean = 3203, p25 = 3160, p75 = 3239 },
    share = { crit = 0.3406, haste = 0.2733, mastery = 0.3546, versatility = 0.0315 },
})

-- Warrior Arms
set(71, "raid", {
    date = "2026-10-07", players = 123, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3155, mean = 3150, p25 = 3073, p75 = 3208 },
    share = { crit = 0.4221, haste = 0.3441, mastery = 0.1999, versatility = 0.0339 },
})

-- Warrior Fury
set(72, "raid", {
    date = "2026-10-07", players = 126, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3374, mean = 3355, p25 = 3275, p75 = 3416 },
    share = { crit = 0.2733, haste = 0.3494, mastery = 0.3434, versatility = 0.0340 },
})

-- Warrior Protection
set(73, "raid", {
    date = "2026-10-07", players = 108, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3156, mean = 3144, p25 = 3060, p75 = 3196 },
    share = { crit = 0.3468, haste = 0.3983, mastery = 0.1751, versatility = 0.0798 },
})

-- Druid Balance
set(102, "raid", {
    date = "2026-10-07", players = 166, ilvl = 329,
    difficulty = "mythic",
    total = { median = 3156, mean = 3165, p25 = 3076, p75 = 3234 },
    share = { crit = 0.2857, haste = 0.2806, mastery = 0.4002, versatility = 0.0335 },
})

-- Druid Feral
set(103, "raid", {
    date = "2026-10-07", players = 110, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3174, mean = 3176, p25 = 3148, p75 = 3202 },
    share = { crit = 0.2701, haste = 0.3097, mastery = 0.3732, versatility = 0.0470 },
})

-- Druid Guardian
set(104, "raid", {
    date = "2026-10-07", players = 102, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3194, mean = 3173, p25 = 3127, p75 = 3230 },
    share = { crit = 0.2669, haste = 0.4088, mastery = 0.1657, versatility = 0.1586 },
})

-- Druid Restoration
set(105, "raid", {
    date = "2026-10-07", players = 165, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3224, mean = 3208, p25 = 3165, p75 = 3264 },
    share = { crit = 0.0629, haste = 0.5170, mastery = 0.3573, versatility = 0.0628 },
})

-- DeathKnight Blood
set(250, "raid", {
    date = "2026-10-07", players = 137, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3192, mean = 3189, p25 = 3157, p75 = 3224 },
    share = { crit = 0.3598, haste = 0.3558, mastery = 0.1655, versatility = 0.1189 },
})

-- DeathKnight Frost
set(251, "raid", {
    date = "2026-10-07", players = 149, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3228, mean = 3231, p25 = 3196, p75 = 3259 },
    share = { crit = 0.4222, haste = 0.1814, mastery = 0.3650, versatility = 0.0314 },
})

-- DeathKnight Unholy
set(252, "raid", {
    date = "2026-10-07", players = 163, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3188, mean = 3180, p25 = 3157, p75 = 3223 },
    share = { crit = 0.4093, haste = 0.2056, mastery = 0.3536, versatility = 0.0315 },
})

-- Hunter BeastMastery
set(253, "raid", {
    date = "2026-10-07", players = 169, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3228, mean = 3235, p25 = 3189, p75 = 3290 },
    share = { crit = 0.3722, haste = 0.1873, mastery = 0.3938, versatility = 0.0467 },
})

-- Hunter Marksmanship
set(254, "raid", {
    date = "2026-10-07", players = 118, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3406, mean = 3424, p25 = 3375, p75 = 3440 },
    share = { crit = 0.4952, haste = 0.0744, mastery = 0.3468, versatility = 0.0835 },
})

-- Hunter Survival
set(255, "raid", {
    date = "2026-10-07", players = 92, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3248, mean = 3241, p25 = 3189, p75 = 3294 },
    share = { crit = 0.3109, haste = 0.2541, mastery = 0.4040, versatility = 0.0310 },
})

-- Priest Discipline
set(256, "raid", {
    date = "2026-10-07", players = 123, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3239, mean = 3238, p25 = 3179, p75 = 3295 },
    share = { crit = 0.1602, haste = 0.5507, mastery = 0.2286, versatility = 0.0604 },
})

-- Priest Holy
set(257, "raid", {
    date = "2026-10-07", players = 203, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3084, mean = 3105, p25 = 3036, p75 = 3182 },
    share = { crit = 0.3944, haste = 0.2108, mastery = 0.3305, versatility = 0.0644 },
})

-- Priest Shadow
set(258, "raid", {
    date = "2026-10-07", players = 134, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3156, mean = 3166, p25 = 3062, p75 = 3227 },
    share = { crit = 0.2756, haste = 0.2955, mastery = 0.3824, versatility = 0.0465 },
})

-- Rogue Assassination
set(259, "raid", {
    date = "2026-10-07", players = 148, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3320, mean = 3311, p25 = 3229, p75 = 3364 },
    share = { crit = 0.4224, haste = 0.3117, mastery = 0.2182, versatility = 0.0476 },
})

-- Rogue Outlaw
set(260, "raid", {
    date = "2026-10-07", players = 119, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3187, mean = 3166, p25 = 3137, p75 = 3214 },
    share = { crit = 0.4344, haste = 0.3290, mastery = 0.0566, versatility = 0.1801 },
})

-- Rogue Subtlety
set(261, "raid", {
    date = "2026-10-07", players = 154, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3218, mean = 3224, p25 = 3195, p75 = 3243 },
    share = { crit = 0.1939, haste = 0.2381, mastery = 0.3945, versatility = 0.1735 },
})

-- Shaman Elemental
set(262, "raid", {
    date = "2026-10-07", players = 166, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3040, mean = 3061, p25 = 3012, p75 = 3094 },
    share = { crit = 0.3765, haste = 0.2456, mastery = 0.3337, versatility = 0.0442 },
})

-- Shaman Enhancement
set(263, "raid", {
    date = "2026-10-07", players = 113, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3130, mean = 3116, p25 = 3081, p75 = 3162 },
    share = { crit = 0.2875, haste = 0.3149, mastery = 0.3651, versatility = 0.0325 },
})

-- Shaman Restoration
set(264, "raid", {
    date = "2026-10-07", players = 206, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3043, mean = 3058, p25 = 2995, p75 = 3114 },
    share = { crit = 0.4656, haste = 0.2567, mastery = 0.0937, versatility = 0.1840 },
})

-- Warlock Affliction
set(265, "raid", {
    date = "2026-10-07", players = 170, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3160, mean = 3160, p25 = 3054, p75 = 3222 },
    share = { crit = 0.3615, haste = 0.3877, mastery = 0.1901, versatility = 0.0606 },
})

-- Warlock Demonology
set(266, "raid", {
    date = "2026-10-07", players = 153, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3083, mean = 3107, p25 = 3040, p75 = 3178 },
    share = { crit = 0.4095, haste = 0.2941, mastery = 0.2407, versatility = 0.0557 },
})

-- Warlock Destruction
set(267, "raid", {
    date = "2026-10-07", players = 125, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3087, mean = 3105, p25 = 3041, p75 = 3177 },
    share = { crit = 0.3542, haste = 0.2943, mastery = 0.2871, versatility = 0.0645 },
})

-- Monk Brewmaster
set(268, "raid", {
    date = "2026-10-07", players = 113, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3197, mean = 3208, p25 = 3151, p75 = 3246 },
    share = { crit = 0.4132, haste = 0.0945, mastery = 0.2390, versatility = 0.2534 },
})

-- Monk Windwalker
set(269, "raid", {
    date = "2026-10-07", players = 115, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3199, mean = 3199, p25 = 3180, p75 = 3220 },
    share = { crit = 0.2845, haste = 0.2994, mastery = 0.3846, versatility = 0.0315 },
})

-- Monk Mistweaver
set(270, "raid", {
    date = "2026-10-07", players = 154, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3228, mean = 3211, p25 = 3156, p75 = 3270 },
    share = { crit = 0.3122, haste = 0.5065, mastery = 0.0644, versatility = 0.1170 },
})

-- DemonHunter Havoc
set(577, "raid", {
    date = "2026-10-07", players = 99, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3216, mean = 3216, p25 = 3180, p75 = 3245 },
    share = { crit = 0.4676, haste = 0.1185, mastery = 0.3820, versatility = 0.0319 },
})

-- DemonHunter Vengeance
set(581, "raid", {
    date = "2026-10-07", players = 112, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3186, mean = 3158, p25 = 3098, p75 = 3218 },
    share = { crit = 0.3237, haste = 0.4037, mastery = 0.1568, versatility = 0.1157 },
})

-- Evoker Devastation
set(1467, "raid", {
    date = "2026-10-07", players = 129, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3163, mean = 3142, p25 = 3067, p75 = 3208 },
    share = { crit = 0.4285, haste = 0.2476, mastery = 0.2648, versatility = 0.0590 },
})

-- Evoker Preservation
set(1468, "raid", {
    date = "2026-10-07", players = 186, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3108, mean = 3119, p25 = 3042, p75 = 3192 },
    share = { crit = 0.3911, haste = 0.1800, mastery = 0.3821, versatility = 0.0469 },
})

-- Evoker Augmentation
set(1473, "raid", {
    date = "2026-10-07", players = 98, ilvl = 328,
    difficulty = "mythic",
    total = { median = 3242, mean = 3239, p25 = 3200, p75 = 3286 },
    share = { crit = 0.3138, haste = 0.1476, mastery = 0.5070, versatility = 0.0317 },
})

-- DemonHunter Devourer
set(1480, "raid", {
    date = "2026-10-07", players = 161, ilvl = 327,
    difficulty = "mythic",
    total = { median = 3157, mean = 3151, p25 = 3081, p75 = 3220 },
    share = { crit = 0.3032, haste = 0.2863, mastery = 0.3775, versatility = 0.0330 },
})
