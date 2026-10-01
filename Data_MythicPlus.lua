-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Mythic+, 40 Spezialisierungen, erzeugt 2026-10-01 19:24.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Mythic+"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "mplus", {
    date = "2026-10-01", players = 68, ilvl = 328,
    minKey = 21, maxKey = 23,
    total = { median = 3222, mean = 3313, p25 = 3047, p75 = 3590 },
    share = { crit = 0.2697, haste = 0.3171, mastery = 0.1080, versatility = 0.3052 },
})

-- Mage Fire
set(63, "mplus", {
    date = "2026-10-01", players = 70, ilvl = 324,
    minKey = 17, maxKey = 20,
    total = { median = 3049, mean = 3065, p25 = 2985, p75 = 3119 },
    share = { crit = 0.0660, haste = 0.4464, mastery = 0.2725, versatility = 0.2151 },
})

-- Mage Frost
set(64, "mplus", {
    date = "2026-10-01", players = 65, ilvl = 325,
    minKey = 17, maxKey = 20,
    total = { median = 3123, mean = 3150, p25 = 3051, p75 = 3208 },
    share = { crit = 0.3681, haste = 0.2264, mastery = 0.3485, versatility = 0.0569 },
})

-- Paladin Holy
set(65, "mplus", {
    date = "2026-10-01", players = 79, ilvl = 327,
    minKey = 21, maxKey = 23,
    total = { median = 3135, mean = 3216, p25 = 3054, p75 = 3287 },
    share = { crit = 0.2598, haste = 0.3754, mastery = 0.1027, versatility = 0.2621 },
})

-- Paladin Protection
set(66, "mplus", {
    date = "2026-10-01", players = 64, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3156, mean = 3182, p25 = 3007, p75 = 3320 },
    share = { crit = 0.3907, haste = 0.3364, mastery = 0.1385, versatility = 0.1344 },
})

-- Paladin Retribution
set(70, "mplus", {
    date = "2026-10-01", players = 45, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3190, mean = 3246, p25 = 3154, p75 = 3233 },
    share = { crit = 0.3086, haste = 0.2855, mastery = 0.3716, versatility = 0.0343 },
})

-- Warrior Arms
set(71, "mplus", {
    date = "2026-10-01", players = 52, ilvl = 328,
    minKey = 21, maxKey = 23,
    total = { median = 3211, mean = 3293, p25 = 3065, p75 = 3492 },
    share = { crit = 0.4127, haste = 0.3273, mastery = 0.2233, versatility = 0.0367 },
})

-- Warrior Fury
set(72, "mplus", {
    date = "2026-10-01", players = 78, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3366, mean = 3401, p25 = 3259, p75 = 3438 },
    share = { crit = 0.2838, haste = 0.3405, mastery = 0.3346, versatility = 0.0411 },
})

-- Warrior Protection
set(73, "mplus", {
    date = "2026-10-01", players = 59, ilvl = 325,
    minKey = 19, maxKey = 22,
    total = { median = 3132, mean = 3174, p25 = 3034, p75 = 3201 },
    share = { crit = 0.2926, haste = 0.4163, mastery = 0.1537, versatility = 0.1373 },
})

-- Druid Balance
set(102, "mplus", {
    date = "2026-10-01", players = 59, ilvl = 327,
    minKey = 19, maxKey = 21,
    total = { median = 3145, mean = 3161, p25 = 3037, p75 = 3225 },
    share = { crit = 0.2836, haste = 0.3088, mastery = 0.3696, versatility = 0.0379 },
})

-- Druid Feral
set(103, "mplus", {
    date = "2026-10-01", players = 33, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3174, mean = 3207, p25 = 3148, p75 = 3212 },
    share = { crit = 0.2705, haste = 0.2691, mastery = 0.4024, versatility = 0.0580 },
})

-- Druid Guardian
set(104, "mplus", {
    date = "2026-10-01", players = 49, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3201, mean = 3274, p25 = 3137, p75 = 3466 },
    share = { crit = 0.2818, haste = 0.3968, mastery = 0.1291, versatility = 0.1923 },
})

-- Druid Restoration
set(105, "mplus", {
    date = "2026-10-01", players = 68, ilvl = 326,
    minKey = 19, maxKey = 22,
    total = { median = 3210, mean = 3237, p25 = 3091, p75 = 3295 },
    share = { crit = 0.0843, haste = 0.4690, mastery = 0.3295, versatility = 0.1172 },
})

-- DeathKnight Blood
set(250, "mplus", {
    date = "2026-10-01", players = 64, ilvl = 328,
    minKey = 21, maxKey = 23,
    total = { median = 3433, mean = 3445, p25 = 3227, p75 = 3632 },
    share = { crit = 0.3095, haste = 0.3468, mastery = 0.1249, versatility = 0.2188 },
})

-- DeathKnight Frost
set(251, "mplus", {
    date = "2026-10-01", players = 49, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3209, mean = 3254, p25 = 3173, p75 = 3250 },
    share = { crit = 0.4441, haste = 0.1455, mastery = 0.3777, versatility = 0.0327 },
})

-- DeathKnight Unholy
set(252, "mplus", {
    date = "2026-10-01", players = 66, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3188, mean = 3287, p25 = 3160, p75 = 3468 },
    share = { crit = 0.4149, haste = 0.1829, mastery = 0.3629, versatility = 0.0394 },
})

-- Hunter BeastMastery
set(253, "mplus", {
    date = "2026-10-01", players = 66, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3307, mean = 3351, p25 = 3162, p75 = 3558 },
    share = { crit = 0.3838, haste = 0.0791, mastery = 0.4242, versatility = 0.1128 },
})

-- Hunter Marksmanship
set(254, "mplus", {
    date = "2026-10-01", players = 67, ilvl = 326,
    minKey = 18, maxKey = 20,
    total = { median = 3319, mean = 3344, p25 = 3204, p75 = 3390 },
    share = { crit = 0.5049, haste = 0.0715, mastery = 0.3440, versatility = 0.0796 },
})

-- Hunter Survival
set(255, "mplus", {
    date = "2026-10-01", players = 44, ilvl = 325,
    minKey = 18, maxKey = 21,
    total = { median = 3212, mean = 3221, p25 = 3118, p75 = 3282 },
    share = { crit = 0.2903, haste = 0.2617, mastery = 0.4164, versatility = 0.0316 },
})

-- Priest Discipline
set(256, "mplus", {
    date = "2026-10-01", players = 66, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3188, mean = 3214, p25 = 3069, p75 = 3239 },
    share = { crit = 0.2942, haste = 0.3907, mastery = 0.2577, versatility = 0.0574 },
})

-- Priest Holy
set(257, "mplus", {
    date = "2026-10-01", players = 74, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3110, mean = 3176, p25 = 3048, p75 = 3218 },
    share = { crit = 0.2997, haste = 0.3470, mastery = 0.2387, versatility = 0.1146 },
})

-- Priest Shadow
set(258, "mplus", {
    date = "2026-10-01", players = 50, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3190, mean = 3206, p25 = 3074, p75 = 3284 },
    share = { crit = 0.2815, haste = 0.3161, mastery = 0.3686, versatility = 0.0338 },
})

-- Rogue Assassination
set(259, "mplus", {
    date = "2026-10-01", players = 48, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3250, mean = 3409, p25 = 3204, p75 = 3614 },
    share = { crit = 0.3979, haste = 0.2918, mastery = 0.2440, versatility = 0.0663 },
})

-- Rogue Outlaw
set(260, "mplus", {
    date = "2026-10-01", players = 36, ilvl = 325,
    minKey = 19, maxKey = 22,
    total = { median = 3191, mean = 3268, p25 = 3116, p75 = 3444 },
    share = { crit = 0.4215, haste = 0.3012, mastery = 0.0556, versatility = 0.2217 },
})

-- Rogue Subtlety
set(261, "mplus", {
    date = "2026-10-01", players = 61, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3220, mean = 3304, p25 = 3184, p75 = 3327 },
    share = { crit = 0.2559, haste = 0.2191, mastery = 0.3841, versatility = 0.1408 },
})

-- Shaman Elemental
set(262, "mplus", {
    date = "2026-10-01", players = 51, ilvl = 328,
    minKey = 21, maxKey = 22,
    total = { median = 3051, mean = 3192, p25 = 3008, p75 = 3412 },
    share = { crit = 0.3815, haste = 0.2320, mastery = 0.3293, versatility = 0.0572 },
})

-- Shaman Enhancement
set(263, "mplus", {
    date = "2026-10-01", players = 63, ilvl = 325,
    minKey = 19, maxKey = 22,
    total = { median = 3106, mean = 3132, p25 = 3020, p75 = 3168 },
    share = { crit = 0.2690, haste = 0.3135, mastery = 0.3850, versatility = 0.0325 },
})

-- Shaman Restoration
set(264, "mplus", {
    date = "2026-10-01", players = 67, ilvl = 326,
    minKey = 20, maxKey = 23,
    total = { median = 3041, mean = 3112, p25 = 3002, p75 = 3144 },
    share = { crit = 0.4041, haste = 0.2524, mastery = 0.0762, versatility = 0.2673 },
})

-- Warlock Affliction
set(265, "mplus", {
    date = "2026-10-01", players = 65, ilvl = 325,
    minKey = 18, maxKey = 20,
    total = { median = 3062, mean = 3103, p25 = 2990, p75 = 3170 },
    share = { crit = 0.3511, haste = 0.4063, mastery = 0.1806, versatility = 0.0619 },
})

-- Warlock Demonology
set(266, "mplus", {
    date = "2026-10-01", players = 58, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3131, mean = 3201, p25 = 3021, p75 = 3362 },
    share = { crit = 0.3984, haste = 0.3106, mastery = 0.2328, versatility = 0.0583 },
})

-- Warlock Destruction
set(267, "mplus", {
    date = "2026-10-01", players = 60, ilvl = 325,
    minKey = 17, maxKey = 21,
    total = { median = 3034, mean = 3071, p25 = 2982, p75 = 3110 },
    share = { crit = 0.3705, haste = 0.3215, mastery = 0.2634, versatility = 0.0446 },
})

-- Monk Brewmaster
set(268, "mplus", {
    date = "2026-10-01", players = 36, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3182, mean = 3214, p25 = 3105, p75 = 3217 },
    share = { crit = 0.4187, haste = 0.0468, mastery = 0.2151, versatility = 0.3193 },
})

-- Monk Windwalker
set(269, "mplus", {
    date = "2026-10-01", players = 53, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3194, mean = 3220, p25 = 3168, p75 = 3229 },
    share = { crit = 0.2678, haste = 0.2840, mastery = 0.4158, versatility = 0.0324 },
})

-- Monk Mistweaver
set(270, "mplus", {
    date = "2026-10-01", players = 54, ilvl = 326,
    minKey = 19, maxKey = 22,
    total = { median = 3199, mean = 3233, p25 = 3086, p75 = 3294 },
    share = { crit = 0.1768, haste = 0.4074, mastery = 0.2973, versatility = 0.1186 },
})

-- DemonHunter Havoc
set(577, "mplus", {
    date = "2026-10-01", players = 41, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3210, mean = 3278, p25 = 3177, p75 = 3294 },
    share = { crit = 0.4825, haste = 0.0865, mastery = 0.3963, versatility = 0.0347 },
})

-- DemonHunter Vengeance
set(581, "mplus", {
    date = "2026-10-01", players = 50, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3163, mean = 3217, p25 = 3061, p75 = 3304 },
    share = { crit = 0.2962, haste = 0.4096, mastery = 0.1082, versatility = 0.1859 },
})

-- Evoker Devastation
set(1467, "mplus", {
    date = "2026-10-01", players = 59, ilvl = 326,
    minKey = 18, maxKey = 21,
    total = { median = 3139, mean = 3164, p25 = 3040, p75 = 3220 },
    share = { crit = 0.4296, haste = 0.2349, mastery = 0.2735, versatility = 0.0620 },
})

-- Evoker Preservation
set(1468, "mplus", {
    date = "2026-10-01", players = 54, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3117, mean = 3179, p25 = 3049, p75 = 3231 },
    share = { crit = 0.2723, haste = 0.3848, mastery = 0.1221, versatility = 0.2208 },
})

-- Evoker Augmentation
set(1473, "mplus", {
    date = "2026-10-01", players = 52, ilvl = 326,
    minKey = 17, maxKey = 20,
    total = { median = 3151, mean = 3145, p25 = 3066, p75 = 3226 },
    share = { crit = 0.3154, haste = 0.1521, mastery = 0.4889, versatility = 0.0436 },
})

-- DemonHunter Devourer
set(1480, "mplus", {
    date = "2026-10-01", players = 57, ilvl = 327,
    minKey = 20, maxKey = 21,
    total = { median = 3197, mean = 3242, p25 = 3111, p75 = 3337 },
    share = { crit = 0.2542, haste = 0.3366, mastery = 0.3759, versatility = 0.0334 },
})
