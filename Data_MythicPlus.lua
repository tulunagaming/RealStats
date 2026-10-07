-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Mythic+, 40 Spezialisierungen, erzeugt 2026-10-07 22:37.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Mythic+"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "mplus", {
    date = "2026-10-07", players = 53, ilvl = 330,
    minKey = 21, maxKey = 23,
    total = { median = 3279, mean = 3383, p25 = 3075, p75 = 3629 },
    share = { crit = 0.2531, haste = 0.3163, mastery = 0.1287, versatility = 0.3019 },
})

-- Mage Fire
set(63, "mplus", {
    date = "2026-10-07", players = 69, ilvl = 325,
    minKey = 17, maxKey = 20,
    total = { median = 3063, mean = 3085, p25 = 3001, p75 = 3153 },
    share = { crit = 0.0640, haste = 0.4420, mastery = 0.2680, versatility = 0.2259 },
})

-- Mage Frost
set(64, "mplus", {
    date = "2026-10-07", players = 61, ilvl = 327,
    minKey = 17, maxKey = 20,
    total = { median = 3128, mean = 3168, p25 = 3061, p75 = 3210 },
    share = { crit = 0.3744, haste = 0.2213, mastery = 0.3510, versatility = 0.0533 },
})

-- Paladin Holy
set(65, "mplus", {
    date = "2026-10-07", players = 60, ilvl = 329,
    minKey = 21, maxKey = 23,
    total = { median = 3240, mean = 3318, p25 = 3124, p75 = 3478 },
    share = { crit = 0.2589, haste = 0.3663, mastery = 0.1129, versatility = 0.2619 },
})

-- Paladin Protection
set(66, "mplus", {
    date = "2026-10-07", players = 58, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3179, mean = 3261, p25 = 3096, p75 = 3435 },
    share = { crit = 0.3833, haste = 0.3264, mastery = 0.1387, versatility = 0.1516 },
})

-- Paladin Retribution
set(70, "mplus", {
    date = "2026-10-07", players = 46, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3212, mean = 3315, p25 = 3170, p75 = 3536 },
    share = { crit = 0.2976, haste = 0.2851, mastery = 0.3701, versatility = 0.0471 },
})

-- Warrior Arms
set(71, "mplus", {
    date = "2026-10-07", players = 38, ilvl = 332,
    minKey = 21, maxKey = 23,
    total = { median = 3238, mean = 3301, p25 = 3127, p75 = 3329 },
    share = { crit = 0.4080, haste = 0.3200, mastery = 0.2347, versatility = 0.0372 },
})

-- Warrior Fury
set(72, "mplus", {
    date = "2026-10-07", players = 86, ilvl = 327,
    minKey = 19, maxKey = 22,
    total = { median = 3386, mean = 3433, p25 = 3285, p75 = 3467 },
    share = { crit = 0.2813, haste = 0.3405, mastery = 0.3352, versatility = 0.0431 },
})

-- Warrior Protection
set(73, "mplus", {
    date = "2026-10-07", players = 50, ilvl = 327,
    minKey = 19, maxKey = 22,
    total = { median = 3196, mean = 3236, p25 = 3070, p75 = 3338 },
    share = { crit = 0.2922, haste = 0.4005, mastery = 0.1530, versatility = 0.1542 },
})

-- Druid Balance
set(102, "mplus", {
    date = "2026-10-07", players = 49, ilvl = 327,
    minKey = 19, maxKey = 21,
    total = { median = 3181, mean = 3233, p25 = 3101, p75 = 3268 },
    share = { crit = 0.2767, haste = 0.3082, mastery = 0.3724, versatility = 0.0426 },
})

-- Druid Feral
set(103, "mplus", {
    date = "2026-10-07", players = 36, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3193, mean = 3257, p25 = 3167, p75 = 3296 },
    share = { crit = 0.2699, haste = 0.2587, mastery = 0.4015, versatility = 0.0699 },
})

-- Druid Guardian
set(104, "mplus", {
    date = "2026-10-07", players = 49, ilvl = 328,
    minKey = 21, maxKey = 23,
    total = { median = 3583, mean = 3497, p25 = 3180, p75 = 3647 },
    share = { crit = 0.2783, haste = 0.3701, mastery = 0.1257, versatility = 0.2259 },
})

-- Druid Restoration
set(105, "mplus", {
    date = "2026-10-07", players = 70, ilvl = 326,
    minKey = 19, maxKey = 22,
    total = { median = 3210, mean = 3240, p25 = 3108, p75 = 3277 },
    share = { crit = 0.0753, haste = 0.4611, mastery = 0.3337, versatility = 0.1298 },
})

-- DeathKnight Blood
set(250, "mplus", {
    date = "2026-10-07", players = 43, ilvl = 330,
    minKey = 21, maxKey = 23,
    total = { median = 3626, mean = 3558, p25 = 3285, p75 = 3728 },
    share = { crit = 0.3102, haste = 0.3307, mastery = 0.1335, versatility = 0.2256 },
})

-- DeathKnight Frost
set(251, "mplus", {
    date = "2026-10-07", players = 54, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3226, mean = 3254, p25 = 3200, p75 = 3262 },
    share = { crit = 0.4352, haste = 0.1578, mastery = 0.3749, versatility = 0.0321 },
})

-- DeathKnight Unholy
set(252, "mplus", {
    date = "2026-10-07", players = 58, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3218, mean = 3302, p25 = 3184, p75 = 3291 },
    share = { crit = 0.4103, haste = 0.1862, mastery = 0.3591, versatility = 0.0444 },
})

-- Hunter BeastMastery
set(253, "mplus", {
    date = "2026-10-07", players = 54, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3270, mean = 3339, p25 = 3165, p75 = 3555 },
    share = { crit = 0.3803, haste = 0.0767, mastery = 0.4273, versatility = 0.1158 },
})

-- Hunter Marksmanship
set(254, "mplus", {
    date = "2026-10-07", players = 64, ilvl = 327,
    minKey = 18, maxKey = 20,
    total = { median = 3364, mean = 3389, p25 = 3258, p75 = 3412 },
    share = { crit = 0.4965, haste = 0.0767, mastery = 0.3445, versatility = 0.0823 },
})

-- Hunter Survival
set(255, "mplus", {
    date = "2026-10-07", players = 48, ilvl = 326,
    minKey = 18, maxKey = 21,
    total = { median = 3242, mean = 3244, p25 = 3107, p75 = 3319 },
    share = { crit = 0.2950, haste = 0.2658, mastery = 0.4083, versatility = 0.0309 },
})

-- Priest Discipline
set(256, "mplus", {
    date = "2026-10-07", players = 63, ilvl = 327,
    minKey = 19, maxKey = 22,
    total = { median = 3211, mean = 3258, p25 = 3086, p75 = 3348 },
    share = { crit = 0.2961, haste = 0.3845, mastery = 0.2556, versatility = 0.0637 },
})

-- Priest Holy
set(257, "mplus", {
    date = "2026-10-07", players = 79, ilvl = 327,
    minKey = 20, maxKey = 21,
    total = { median = 3143, mean = 3180, p25 = 3068, p75 = 3240 },
    share = { crit = 0.3122, haste = 0.3465, mastery = 0.2310, versatility = 0.1103 },
})

-- Priest Shadow
set(258, "mplus", {
    date = "2026-10-07", players = 52, ilvl = 327,
    minKey = 19, maxKey = 22,
    total = { median = 3202, mean = 3218, p25 = 3121, p75 = 3304 },
    share = { crit = 0.2860, haste = 0.3171, mastery = 0.3638, versatility = 0.0331 },
})

-- Rogue Assassination
set(259, "mplus", {
    date = "2026-10-07", players = 55, ilvl = 329,
    minKey = 21, maxKey = 23,
    total = { median = 3299, mean = 3442, p25 = 3242, p75 = 3652 },
    share = { crit = 0.4072, haste = 0.2876, mastery = 0.2552, versatility = 0.0500 },
})

-- Rogue Outlaw
set(260, "mplus", {
    date = "2026-10-07", players = 38, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3194, mean = 3290, p25 = 3128, p75 = 3537 },
    share = { crit = 0.4192, haste = 0.2986, mastery = 0.0714, versatility = 0.2108 },
})

-- Rogue Subtlety
set(261, "mplus", {
    date = "2026-10-07", players = 64, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3242, mean = 3326, p25 = 3206, p75 = 3374 },
    share = { crit = 0.2551, haste = 0.2220, mastery = 0.3861, versatility = 0.1368 },
})

-- Shaman Elemental
set(262, "mplus", {
    date = "2026-10-07", players = 43, ilvl = 331,
    minKey = 21, maxKey = 23,
    total = { median = 3125, mean = 3227, p25 = 3054, p75 = 3472 },
    share = { crit = 0.3812, haste = 0.2287, mastery = 0.3291, versatility = 0.0609 },
})

-- Shaman Enhancement
set(263, "mplus", {
    date = "2026-10-07", players = 69, ilvl = 327,
    minKey = 19, maxKey = 22,
    total = { median = 3111, mean = 3139, p25 = 3046, p75 = 3153 },
    share = { crit = 0.2823, haste = 0.3127, mastery = 0.3723, versatility = 0.0327 },
})

-- Shaman Restoration
set(264, "mplus", {
    date = "2026-10-07", players = 64, ilvl = 328,
    minKey = 21, maxKey = 23,
    total = { median = 3106, mean = 3190, p25 = 3022, p75 = 3353 },
    share = { crit = 0.4023, haste = 0.2345, mastery = 0.0819, versatility = 0.2813 },
})

-- Warlock Affliction
set(265, "mplus", {
    date = "2026-10-07", players = 66, ilvl = 326,
    minKey = 18, maxKey = 21,
    total = { median = 3082, mean = 3130, p25 = 3012, p75 = 3198 },
    share = { crit = 0.3543, haste = 0.4009, mastery = 0.1794, versatility = 0.0654 },
})

-- Warlock Demonology
set(266, "mplus", {
    date = "2026-10-07", players = 59, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3135, mean = 3210, p25 = 3024, p75 = 3372 },
    share = { crit = 0.3988, haste = 0.3058, mastery = 0.2295, versatility = 0.0659 },
})

-- Warlock Destruction
set(267, "mplus", {
    date = "2026-10-07", players = 65, ilvl = 325,
    minKey = 18, maxKey = 21,
    total = { median = 3036, mean = 3085, p25 = 3000, p75 = 3133 },
    share = { crit = 0.3723, haste = 0.3214, mastery = 0.2510, versatility = 0.0554 },
})

-- Monk Brewmaster
set(268, "mplus", {
    date = "2026-10-07", players = 33, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3193, mean = 3263, p25 = 3080, p75 = 3487 },
    share = { crit = 0.4100, haste = 0.0578, mastery = 0.1915, versatility = 0.3407 },
})

-- Monk Windwalker
set(269, "mplus", {
    date = "2026-10-07", players = 61, ilvl = 329,
    minKey = 20, maxKey = 22,
    total = { median = 3209, mean = 3247, p25 = 3178, p75 = 3235 },
    share = { crit = 0.2689, haste = 0.2884, mastery = 0.4102, versatility = 0.0325 },
})

-- Monk Mistweaver
set(270, "mplus", {
    date = "2026-10-07", players = 45, ilvl = 327,
    minKey = 19, maxKey = 22,
    total = { median = 3201, mean = 3242, p25 = 3109, p75 = 3354 },
    share = { crit = 0.1812, haste = 0.4125, mastery = 0.2673, versatility = 0.1390 },
})

-- DemonHunter Havoc
set(577, "mplus", {
    date = "2026-10-07", players = 40, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3226, mean = 3300, p25 = 3195, p75 = 3293 },
    share = { crit = 0.4810, haste = 0.1015, mastery = 0.3857, versatility = 0.0319 },
})

-- DemonHunter Vengeance
set(581, "mplus", {
    date = "2026-10-07", players = 49, ilvl = 327,
    minKey = 19, maxKey = 22,
    total = { median = 3217, mean = 3304, p25 = 3078, p75 = 3520 },
    share = { crit = 0.2943, haste = 0.4088, mastery = 0.1084, versatility = 0.1884 },
})

-- Evoker Devastation
set(1467, "mplus", {
    date = "2026-10-07", players = 63, ilvl = 327,
    minKey = 18, maxKey = 21,
    total = { median = 3170, mean = 3191, p25 = 3076, p75 = 3232 },
    share = { crit = 0.4265, haste = 0.2426, mastery = 0.2717, versatility = 0.0592 },
})

-- Evoker Preservation
set(1468, "mplus", {
    date = "2026-10-07", players = 56, ilvl = 327,
    minKey = 19, maxKey = 21,
    total = { median = 3148, mean = 3209, p25 = 3055, p75 = 3310 },
    share = { crit = 0.2521, haste = 0.3774, mastery = 0.1063, versatility = 0.2642 },
})

-- Evoker Augmentation
set(1473, "mplus", {
    date = "2026-10-07", players = 57, ilvl = 327,
    minKey = 18, maxKey = 21,
    total = { median = 3214, mean = 3196, p25 = 3131, p75 = 3260 },
    share = { crit = 0.3171, haste = 0.1547, mastery = 0.4955, versatility = 0.0327 },
})

-- DemonHunter Devourer
set(1480, "mplus", {
    date = "2026-10-07", players = 61, ilvl = 328,
    minKey = 20, maxKey = 22,
    total = { median = 3227, mean = 3253, p25 = 3109, p75 = 3276 },
    share = { crit = 0.2489, haste = 0.3298, mastery = 0.3856, versatility = 0.0357 },
})
