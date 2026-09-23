-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Mythic+, 40 Spezialisierungen, erzeugt 2026-09-23 13:18.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Mythic+"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "mplus", {
    date = "2026-09-23", players = 60, ilvl = 326,
    minKey = 21, maxKey = 22,
    total = { median = 3268, mean = 3320, p25 = 3078, p75 = 3540 },
    share = { crit = 0.2545, haste = 0.3166, mastery = 0.1058, versatility = 0.3230 },
})

-- Mage Fire
set(63, "mplus", {
    date = "2026-09-23", players = 70, ilvl = 321,
    minKey = 16, maxKey = 19,
    total = { median = 2995, mean = 3018, p25 = 2937, p75 = 3056 },
    share = { crit = 0.0694, haste = 0.4545, mastery = 0.2943, versatility = 0.1818 },
})

-- Mage Frost
set(64, "mplus", {
    date = "2026-09-23", players = 65, ilvl = 323,
    minKey = 16, maxKey = 20,
    total = { median = 3042, mean = 3064, p25 = 2981, p75 = 3133 },
    share = { crit = 0.3618, haste = 0.2390, mastery = 0.3462, versatility = 0.0530 },
})

-- Paladin Holy
set(65, "mplus", {
    date = "2026-09-23", players = 76, ilvl = 326,
    minKey = 21, maxKey = 22,
    total = { median = 3162, mean = 3217, p25 = 3054, p75 = 3298 },
    share = { crit = 0.2636, haste = 0.3806, mastery = 0.0961, versatility = 0.2597 },
})

-- Paladin Protection
set(66, "mplus", {
    date = "2026-09-23", players = 66, ilvl = 323,
    minKey = 19, maxKey = 21,
    total = { median = 3028, mean = 3107, p25 = 2956, p75 = 3189 },
    share = { crit = 0.3870, haste = 0.3500, mastery = 0.1286, versatility = 0.1344 },
})

-- Paladin Retribution
set(70, "mplus", {
    date = "2026-09-23", players = 51, ilvl = 325,
    minKey = 20, maxKey = 22,
    total = { median = 3145, mean = 3185, p25 = 3092, p75 = 3186 },
    share = { crit = 0.2977, haste = 0.2904, mastery = 0.3678, versatility = 0.0442 },
})

-- Warrior Arms
set(71, "mplus", {
    date = "2026-09-23", players = 56, ilvl = 326,
    minKey = 21, maxKey = 22,
    total = { median = 3150, mean = 3225, p25 = 3039, p75 = 3433 },
    share = { crit = 0.4230, haste = 0.3226, mastery = 0.2174, versatility = 0.0370 },
})

-- Warrior Fury
set(72, "mplus", {
    date = "2026-09-23", players = 59, ilvl = 325,
    minKey = 18, maxKey = 21,
    total = { median = 3302, mean = 3321, p25 = 3234, p75 = 3380 },
    share = { crit = 0.2633, haste = 0.3534, mastery = 0.3464, versatility = 0.0369 },
})

-- Warrior Protection
set(73, "mplus", {
    date = "2026-09-23", players = 51, ilvl = 323,
    minKey = 18, maxKey = 21,
    total = { median = 3075, mean = 3136, p25 = 2990, p75 = 3194 },
    share = { crit = 0.2801, haste = 0.4182, mastery = 0.1741, versatility = 0.1277 },
})

-- Druid Balance
set(102, "mplus", {
    date = "2026-09-23", players = 49, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3030, mean = 3079, p25 = 2980, p75 = 3180 },
    share = { crit = 0.2762, haste = 0.3251, mastery = 0.3640, versatility = 0.0347 },
})

-- Druid Feral
set(103, "mplus", {
    date = "2026-09-23", players = 43, ilvl = 325,
    minKey = 20, maxKey = 21,
    total = { median = 3118, mean = 3132, p25 = 3039, p75 = 3166 },
    share = { crit = 0.2587, haste = 0.2751, mastery = 0.4023, versatility = 0.0639 },
})

-- Druid Guardian
set(104, "mplus", {
    date = "2026-09-23", players = 52, ilvl = 324,
    minKey = 20, maxKey = 22,
    total = { median = 3112, mean = 3161, p25 = 3036, p75 = 3207 },
    share = { crit = 0.2608, haste = 0.4147, mastery = 0.1358, versatility = 0.1887 },
})

-- Druid Restoration
set(105, "mplus", {
    date = "2026-09-23", players = 74, ilvl = 324,
    minKey = 18, maxKey = 20,
    total = { median = 3142, mean = 3167, p25 = 3093, p75 = 3219 },
    share = { crit = 0.0680, haste = 0.4641, mastery = 0.3548, versatility = 0.1131 },
})

-- DeathKnight Blood
set(250, "mplus", {
    date = "2026-09-23", players = 52, ilvl = 327,
    minKey = 21, maxKey = 22,
    total = { median = 3342, mean = 3446, p25 = 3204, p75 = 3622 },
    share = { crit = 0.2994, haste = 0.3453, mastery = 0.1230, versatility = 0.2323 },
})

-- DeathKnight Frost
set(251, "mplus", {
    date = "2026-09-23", players = 45, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3191, mean = 3216, p25 = 3159, p75 = 3217 },
    share = { crit = 0.4435, haste = 0.1466, mastery = 0.3778, versatility = 0.0322 },
})

-- DeathKnight Unholy
set(252, "mplus", {
    date = "2026-09-23", players = 65, ilvl = 324,
    minKey = 18, maxKey = 20,
    total = { median = 3154, mean = 3140, p25 = 3064, p75 = 3183 },
    share = { crit = 0.4284, haste = 0.1640, mastery = 0.3761, versatility = 0.0316 },
})

-- Hunter BeastMastery
set(253, "mplus", {
    date = "2026-09-23", players = 50, ilvl = 326,
    minKey = 19, maxKey = 22,
    total = { median = 3218, mean = 3247, p25 = 3133, p75 = 3320 },
    share = { crit = 0.3891, haste = 0.0609, mastery = 0.4455, versatility = 0.1045 },
})

-- Hunter Marksmanship
set(254, "mplus", {
    date = "2026-09-23", players = 65, ilvl = 323,
    minKey = 17, maxKey = 20,
    total = { median = 3217, mean = 3224, p25 = 3122, p75 = 3306 },
    share = { crit = 0.5077, haste = 0.0786, mastery = 0.3406, versatility = 0.0730 },
})

-- Hunter Survival
set(255, "mplus", {
    date = "2026-09-23", players = 44, ilvl = 323,
    minKey = 17, maxKey = 21,
    total = { median = 3115, mean = 3134, p25 = 3046, p75 = 3197 },
    share = { crit = 0.3123, haste = 0.2477, mastery = 0.4087, versatility = 0.0313 },
})

-- Priest Discipline
set(256, "mplus", {
    date = "2026-09-23", players = 60, ilvl = 323,
    minKey = 17, maxKey = 20,
    total = { median = 3080, mean = 3115, p25 = 3012, p75 = 3178 },
    share = { crit = 0.2356, haste = 0.4436, mastery = 0.2667, versatility = 0.0541 },
})

-- Priest Holy
set(257, "mplus", {
    date = "2026-09-23", players = 86, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3072, mean = 3094, p25 = 3011, p75 = 3138 },
    share = { crit = 0.3223, haste = 0.3420, mastery = 0.2345, versatility = 0.1011 },
})

-- Priest Shadow
set(258, "mplus", {
    date = "2026-09-23", players = 55, ilvl = 325,
    minKey = 18, maxKey = 21,
    total = { median = 3130, mean = 3146, p25 = 3018, p75 = 3180 },
    share = { crit = 0.2782, haste = 0.3221, mastery = 0.3663, versatility = 0.0334 },
})

-- Rogue Assassination
set(259, "mplus", {
    date = "2026-09-23", players = 49, ilvl = 325,
    minKey = 20, maxKey = 22,
    total = { median = 3202, mean = 3266, p25 = 3173, p75 = 3297 },
    share = { crit = 0.4169, haste = 0.2929, mastery = 0.2414, versatility = 0.0488 },
})

-- Rogue Outlaw
set(260, "mplus", {
    date = "2026-09-23", players = 38, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3130, mean = 3138, p25 = 3075, p75 = 3179 },
    share = { crit = 0.4436, haste = 0.3084, mastery = 0.0552, versatility = 0.1928 },
})

-- Rogue Subtlety
set(261, "mplus", {
    date = "2026-09-23", players = 54, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3178, mean = 3205, p25 = 3129, p75 = 3233 },
    share = { crit = 0.2475, haste = 0.2253, mastery = 0.3975, versatility = 0.1297 },
})

-- Shaman Elemental
set(262, "mplus", {
    date = "2026-09-23", players = 50, ilvl = 327,
    minKey = 21, maxKey = 22,
    total = { median = 3028, mean = 3112, p25 = 2999, p75 = 3129 },
    share = { crit = 0.3969, haste = 0.2279, mastery = 0.3407, versatility = 0.0345 },
})

-- Shaman Enhancement
set(263, "mplus", {
    date = "2026-09-23", players = 70, ilvl = 323,
    minKey = 18, maxKey = 22,
    total = { median = 2996, mean = 3017, p25 = 2925, p75 = 3078 },
    share = { crit = 0.2666, haste = 0.3247, mastery = 0.3772, versatility = 0.0315 },
})

-- Shaman Restoration
set(264, "mplus", {
    date = "2026-09-23", players = 57, ilvl = 325,
    minKey = 20, maxKey = 22,
    total = { median = 3004, mean = 3047, p25 = 2951, p75 = 3096 },
    share = { crit = 0.3993, haste = 0.2591, mastery = 0.0820, versatility = 0.2597 },
})

-- Warlock Affliction
set(265, "mplus", {
    date = "2026-09-23", players = 68, ilvl = 323,
    minKey = 17, maxKey = 19,
    total = { median = 2998, mean = 3037, p25 = 2934, p75 = 3099 },
    share = { crit = 0.3452, haste = 0.4187, mastery = 0.1794, versatility = 0.0567 },
})

-- Warlock Demonology
set(266, "mplus", {
    date = "2026-09-23", players = 49, ilvl = 326,
    minKey = 19, maxKey = 22,
    total = { median = 3041, mean = 3116, p25 = 2998, p75 = 3179 },
    share = { crit = 0.3977, haste = 0.3084, mastery = 0.2415, versatility = 0.0523 },
})

-- Warlock Destruction
set(267, "mplus", {
    date = "2026-09-23", players = 62, ilvl = 323,
    minKey = 17, maxKey = 20,
    total = { median = 2998, mean = 3038, p25 = 2955, p75 = 3110 },
    share = { crit = 0.3621, haste = 0.3318, mastery = 0.2592, versatility = 0.0469 },
})

-- Monk Brewmaster
set(268, "mplus", {
    date = "2026-09-23", players = 33, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3157, mean = 3170, p25 = 3040, p75 = 3204 },
    share = { crit = 0.4024, haste = 0.0598, mastery = 0.2321, versatility = 0.3056 },
})

-- Monk Windwalker
set(269, "mplus", {
    date = "2026-09-23", players = 54, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3160, mean = 3170, p25 = 3127, p75 = 3194 },
    share = { crit = 0.2769, haste = 0.2826, mastery = 0.4078, versatility = 0.0327 },
})

-- Monk Mistweaver
set(270, "mplus", {
    date = "2026-09-23", players = 47, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3108, mean = 3149, p25 = 3044, p75 = 3194 },
    share = { crit = 0.1898, haste = 0.4355, mastery = 0.2719, versatility = 0.1028 },
})

-- DemonHunter Havoc
set(577, "mplus", {
    date = "2026-09-23", players = 53, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3170, mean = 3187, p25 = 3086, p75 = 3225 },
    share = { crit = 0.4767, haste = 0.0842, mastery = 0.4069, versatility = 0.0323 },
})

-- DemonHunter Vengeance
set(581, "mplus", {
    date = "2026-09-23", players = 54, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3098, mean = 3131, p25 = 3030, p75 = 3204 },
    share = { crit = 0.3014, haste = 0.4463, mastery = 0.1118, versatility = 0.1405 },
})

-- Evoker Devastation
set(1467, "mplus", {
    date = "2026-09-23", players = 58, ilvl = 324,
    minKey = 17, maxKey = 20,
    total = { median = 3053, mean = 3089, p25 = 2987, p75 = 3154 },
    share = { crit = 0.4167, haste = 0.2391, mastery = 0.2819, versatility = 0.0623 },
})

-- Evoker Preservation
set(1468, "mplus", {
    date = "2026-09-23", players = 52, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3098, mean = 3147, p25 = 3022, p75 = 3208 },
    share = { crit = 0.2666, haste = 0.3929, mastery = 0.1115, versatility = 0.2290 },
})

-- Evoker Augmentation
set(1473, "mplus", {
    date = "2026-09-23", players = 52, ilvl = 322,
    minKey = 16, maxKey = 20,
    total = { median = 3060, mean = 3062, p25 = 2989, p75 = 3146 },
    share = { crit = 0.3123, haste = 0.1715, mastery = 0.4704, versatility = 0.0458 },
})

-- DemonHunter Devourer
set(1480, "mplus", {
    date = "2026-09-23", players = 58, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3100, mean = 3144, p25 = 3044, p75 = 3188 },
    share = { crit = 0.2529, haste = 0.3348, mastery = 0.3792, versatility = 0.0331 },
})
