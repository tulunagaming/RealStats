-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Mythic+, 40 Spezialisierungen, erzeugt 2026-09-18 08:41.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Mythic+"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "mplus", {
    date = "2026-09-18", players = 61, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3132, mean = 3218, p25 = 3020, p75 = 3394 },
    share = { crit = 0.2622, haste = 0.3286, mastery = 0.0967, versatility = 0.3125 },
})

-- Mage Fire
set(63, "mplus", {
    date = "2026-09-18", players = 65, ilvl = 320,
    minKey = 16, maxKey = 19,
    total = { median = 2987, mean = 2998, p25 = 2907, p75 = 3049 },
    share = { crit = 0.0608, haste = 0.4560, mastery = 0.3128, versatility = 0.1704 },
})

-- Mage Frost
set(64, "mplus", {
    date = "2026-09-18", players = 72, ilvl = 320,
    minKey = 16, maxKey = 18,
    total = { median = 3004, mean = 3026, p25 = 2955, p75 = 3104 },
    share = { crit = 0.3641, haste = 0.2265, mastery = 0.3562, versatility = 0.0532 },
})

-- Paladin Holy
set(65, "mplus", {
    date = "2026-09-18", players = 73, ilvl = 324,
    minKey = 20, maxKey = 22,
    total = { median = 3118, mean = 3163, p25 = 3005, p75 = 3254 },
    share = { crit = 0.2634, haste = 0.3809, mastery = 0.1109, versatility = 0.2448 },
})

-- Paladin Protection
set(66, "mplus", {
    date = "2026-09-18", players = 59, ilvl = 322,
    minKey = 19, maxKey = 21,
    total = { median = 3006, mean = 3072, p25 = 2919, p75 = 3136 },
    share = { crit = 0.3777, haste = 0.3608, mastery = 0.1311, versatility = 0.1304 },
})

-- Paladin Retribution
set(70, "mplus", {
    date = "2026-09-18", players = 51, ilvl = 323,
    minKey = 19, maxKey = 22,
    total = { median = 3108, mean = 3143, p25 = 3065, p75 = 3186 },
    share = { crit = 0.3007, haste = 0.2933, mastery = 0.3735, versatility = 0.0325 },
})

-- Warrior Arms
set(71, "mplus", {
    date = "2026-09-18", players = 47, ilvl = 325,
    minKey = 20, maxKey = 22,
    total = { median = 3104, mean = 3190, p25 = 3020, p75 = 3398 },
    share = { crit = 0.4232, haste = 0.3276, mastery = 0.2128, versatility = 0.0365 },
})

-- Warrior Fury
set(72, "mplus", {
    date = "2026-09-18", players = 61, ilvl = 322,
    minKey = 18, maxKey = 21,
    total = { median = 3274, mean = 3288, p25 = 3211, p75 = 3334 },
    share = { crit = 0.2517, haste = 0.3631, mastery = 0.3400, versatility = 0.0452 },
})

-- Warrior Protection
set(73, "mplus", {
    date = "2026-09-18", players = 49, ilvl = 321,
    minKey = 18, maxKey = 20,
    total = { median = 2998, mean = 3066, p25 = 2943, p75 = 3118 },
    share = { crit = 0.2751, haste = 0.4132, mastery = 0.1841, versatility = 0.1276 },
})

-- Druid Balance
set(102, "mplus", {
    date = "2026-09-18", players = 57, ilvl = 322,
    minKey = 19, maxKey = 21,
    total = { median = 3019, mean = 3042, p25 = 2943, p75 = 3111 },
    share = { crit = 0.2661, haste = 0.3193, mastery = 0.3766, versatility = 0.0380 },
})

-- Druid Feral
set(103, "mplus", {
    date = "2026-09-18", players = 38, ilvl = 323,
    minKey = 19, maxKey = 21,
    total = { median = 3107, mean = 3110, p25 = 3015, p75 = 3144 },
    share = { crit = 0.2664, haste = 0.2766, mastery = 0.3984, versatility = 0.0586 },
})

-- Druid Guardian
set(104, "mplus", {
    date = "2026-09-18", players = 46, ilvl = 323,
    minKey = 19, maxKey = 21,
    total = { median = 3099, mean = 3157, p25 = 3016, p75 = 3172 },
    share = { crit = 0.2566, haste = 0.4227, mastery = 0.1212, versatility = 0.1994 },
})

-- Druid Restoration
set(105, "mplus", {
    date = "2026-09-18", players = 71, ilvl = 322,
    minKey = 18, maxKey = 20,
    total = { median = 3108, mean = 3107, p25 = 3064, p75 = 3140 },
    share = { crit = 0.0842, haste = 0.4625, mastery = 0.3473, versatility = 0.1060 },
})

-- DeathKnight Blood
set(250, "mplus", {
    date = "2026-09-18", players = 51, ilvl = 325,
    minKey = 20, maxKey = 22,
    total = { median = 3236, mean = 3363, p25 = 3167, p75 = 3596 },
    share = { crit = 0.2827, haste = 0.3492, mastery = 0.1253, versatility = 0.2427 },
})

-- DeathKnight Frost
set(251, "mplus", {
    date = "2026-09-18", players = 51, ilvl = 322,
    minKey = 19, maxKey = 21,
    total = { median = 3154, mean = 3174, p25 = 3094, p75 = 3205 },
    share = { crit = 0.4445, haste = 0.1491, mastery = 0.3738, versatility = 0.0326 },
})

-- DeathKnight Unholy
set(252, "mplus", {
    date = "2026-09-18", players = 60, ilvl = 322,
    minKey = 18, maxKey = 20,
    total = { median = 3098, mean = 3136, p25 = 3032, p75 = 3176 },
    share = { crit = 0.4209, haste = 0.1648, mastery = 0.3823, versatility = 0.0320 },
})

-- Hunter BeastMastery
set(253, "mplus", {
    date = "2026-09-18", players = 64, ilvl = 324,
    minKey = 19, maxKey = 22,
    total = { median = 3176, mean = 3202, p25 = 3088, p75 = 3266 },
    share = { crit = 0.3834, haste = 0.0781, mastery = 0.4487, versatility = 0.0898 },
})

-- Hunter Marksmanship
set(254, "mplus", {
    date = "2026-09-18", players = 65, ilvl = 321,
    minKey = 17, maxKey = 20,
    total = { median = 3163, mean = 3166, p25 = 3065, p75 = 3245 },
    share = { crit = 0.4974, haste = 0.0833, mastery = 0.3482, versatility = 0.0711 },
})

-- Hunter Survival
set(255, "mplus", {
    date = "2026-09-18", players = 45, ilvl = 322,
    minKey = 17, maxKey = 21,
    total = { median = 3093, mean = 3121, p25 = 3025, p75 = 3199 },
    share = { crit = 0.2880, haste = 0.2688, mastery = 0.4100, versatility = 0.0332 },
})

-- Priest Discipline
set(256, "mplus", {
    date = "2026-09-18", players = 56, ilvl = 321,
    minKey = 17, maxKey = 19,
    total = { median = 3048, mean = 3070, p25 = 3011, p75 = 3132 },
    share = { crit = 0.2568, haste = 0.4220, mastery = 0.2770, versatility = 0.0441 },
})

-- Priest Holy
set(257, "mplus", {
    date = "2026-09-18", players = 80, ilvl = 322,
    minKey = 19, maxKey = 21,
    total = { median = 3048, mean = 3088, p25 = 2998, p75 = 3139 },
    share = { crit = 0.3193, haste = 0.3509, mastery = 0.2307, versatility = 0.0990 },
})

-- Priest Shadow
set(258, "mplus", {
    date = "2026-09-18", players = 58, ilvl = 323,
    minKey = 18, maxKey = 20,
    total = { median = 3027, mean = 3052, p25 = 2962, p75 = 3108 },
    share = { crit = 0.2750, haste = 0.3148, mastery = 0.3771, versatility = 0.0331 },
})

-- Rogue Assassination
set(259, "mplus", {
    date = "2026-09-18", players = 42, ilvl = 324,
    minKey = 20, maxKey = 22,
    total = { median = 3170, mean = 3191, p25 = 3104, p75 = 3250 },
    share = { crit = 0.4179, haste = 0.3038, mastery = 0.2322, versatility = 0.0462 },
})

-- Rogue Outlaw
set(260, "mplus", {
    date = "2026-09-18", players = 36, ilvl = 322,
    minKey = 19, maxKey = 21,
    total = { median = 3118, mean = 3100, p25 = 3017, p75 = 3163 },
    share = { crit = 0.4451, haste = 0.3146, mastery = 0.0556, versatility = 0.1847 },
})

-- Rogue Subtlety
set(261, "mplus", {
    date = "2026-09-18", players = 56, ilvl = 322,
    minKey = 18, maxKey = 21,
    total = { median = 3128, mean = 3162, p25 = 3077, p75 = 3180 },
    share = { crit = 0.2617, haste = 0.2337, mastery = 0.3882, versatility = 0.1164 },
})

-- Shaman Elemental
set(262, "mplus", {
    date = "2026-09-18", players = 46, ilvl = 325,
    minKey = 20, maxKey = 22,
    total = { median = 2996, mean = 3045, p25 = 2958, p75 = 3038 },
    share = { crit = 0.3974, haste = 0.2205, mastery = 0.3411, versatility = 0.0411 },
})

-- Shaman Enhancement
set(263, "mplus", {
    date = "2026-09-18", players = 68, ilvl = 321,
    minKey = 18, maxKey = 20,
    total = { median = 2968, mean = 2984, p25 = 2910, p75 = 3046 },
    share = { crit = 0.2588, haste = 0.3312, mastery = 0.3772, versatility = 0.0328 },
})

-- Shaman Restoration
set(264, "mplus", {
    date = "2026-09-18", players = 55, ilvl = 323,
    minKey = 20, maxKey = 22,
    total = { median = 2962, mean = 3005, p25 = 2920, p75 = 3032 },
    share = { crit = 0.4047, haste = 0.2553, mastery = 0.0825, versatility = 0.2576 },
})

-- Warlock Affliction
set(265, "mplus", {
    date = "2026-09-18", players = 74, ilvl = 321,
    minKey = 17, maxKey = 19,
    total = { median = 2963, mean = 2992, p25 = 2898, p75 = 3066 },
    share = { crit = 0.3467, haste = 0.4131, mastery = 0.1866, versatility = 0.0535 },
})

-- Warlock Demonology
set(266, "mplus", {
    date = "2026-09-18", players = 62, ilvl = 324,
    minKey = 19, maxKey = 22,
    total = { median = 3022, mean = 3095, p25 = 2968, p75 = 3160 },
    share = { crit = 0.4020, haste = 0.3138, mastery = 0.2348, versatility = 0.0494 },
})

-- Warlock Destruction
set(267, "mplus", {
    date = "2026-09-18", players = 61, ilvl = 321,
    minKey = 16, maxKey = 20,
    total = { median = 2955, mean = 2968, p25 = 2904, p75 = 3008 },
    share = { crit = 0.3721, haste = 0.3375, mastery = 0.2554, versatility = 0.0349 },
})

-- Monk Brewmaster
set(268, "mplus", {
    date = "2026-09-18", players = 41, ilvl = 322,
    minKey = 19, maxKey = 21,
    total = { median = 3105, mean = 3131, p25 = 3011, p75 = 3157 },
    share = { crit = 0.4048, haste = 0.0550, mastery = 0.2308, versatility = 0.3095 },
})

-- Monk Windwalker
set(269, "mplus", {
    date = "2026-09-18", players = 41, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3124, mean = 3152, p25 = 3068, p75 = 3170 },
    share = { crit = 0.2518, haste = 0.2955, mastery = 0.4204, versatility = 0.0323 },
})

-- Monk Mistweaver
set(270, "mplus", {
    date = "2026-09-18", players = 58, ilvl = 322,
    minKey = 18, maxKey = 21,
    total = { median = 3104, mean = 3111, p25 = 3044, p75 = 3158 },
    share = { crit = 0.1908, haste = 0.4273, mastery = 0.2881, versatility = 0.0939 },
})

-- DemonHunter Havoc
set(577, "mplus", {
    date = "2026-09-18", players = 51, ilvl = 323,
    minKey = 19, maxKey = 20,
    total = { median = 3150, mean = 3152, p25 = 3080, p75 = 3204 },
    share = { crit = 0.4767, haste = 0.0825, mastery = 0.4072, versatility = 0.0337 },
})

-- DemonHunter Vengeance
set(581, "mplus", {
    date = "2026-09-18", players = 49, ilvl = 322,
    minKey = 18, maxKey = 20,
    total = { median = 3055, mean = 3092, p25 = 2989, p75 = 3183 },
    share = { crit = 0.3079, haste = 0.4382, mastery = 0.1166, versatility = 0.1373 },
})

-- Evoker Devastation
set(1467, "mplus", {
    date = "2026-09-18", players = 55, ilvl = 321,
    minKey = 17, maxKey = 20,
    total = { median = 3031, mean = 3034, p25 = 2966, p75 = 3100 },
    share = { crit = 0.4201, haste = 0.2532, mastery = 0.2788, versatility = 0.0479 },
})

-- Evoker Preservation
set(1468, "mplus", {
    date = "2026-09-18", players = 48, ilvl = 322,
    minKey = 18, maxKey = 20,
    total = { median = 3081, mean = 3109, p25 = 3007, p75 = 3187 },
    share = { crit = 0.3141, haste = 0.3824, mastery = 0.1134, versatility = 0.1900 },
})

-- Evoker Augmentation
set(1473, "mplus", {
    date = "2026-09-18", players = 53, ilvl = 321,
    minKey = 16, maxKey = 20,
    total = { median = 3013, mean = 3005, p25 = 2938, p75 = 3065 },
    share = { crit = 0.3247, haste = 0.1765, mastery = 0.4617, versatility = 0.0372 },
})

-- DemonHunter Devourer
set(1480, "mplus", {
    date = "2026-09-18", players = 59, ilvl = 322,
    minKey = 19, maxKey = 21,
    total = { median = 3086, mean = 3107, p25 = 3036, p75 = 3165 },
    share = { crit = 0.2546, haste = 0.3321, mastery = 0.3802, versatility = 0.0331 },
})
