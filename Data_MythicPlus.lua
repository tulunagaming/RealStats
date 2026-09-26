-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Mythic+, 40 Spezialisierungen, erzeugt 2026-09-26 17:40.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Mythic+"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "mplus", {
    date = "2026-09-26", players = 59, ilvl = 327,
    minKey = 21, maxKey = 22,
    total = { median = 3261, mean = 3287, p25 = 3043, p75 = 3528 },
    share = { crit = 0.2583, haste = 0.3196, mastery = 0.1064, versatility = 0.3156 },
})

-- Mage Fire
set(63, "mplus", {
    date = "2026-09-26", players = 62, ilvl = 323,
    minKey = 17, maxKey = 19,
    total = { median = 3025, mean = 3028, p25 = 2964, p75 = 3084 },
    share = { crit = 0.0758, haste = 0.4466, mastery = 0.2811, versatility = 0.1965 },
})

-- Mage Frost
set(64, "mplus", {
    date = "2026-09-26", players = 65, ilvl = 324,
    minKey = 16, maxKey = 20,
    total = { median = 3093, mean = 3116, p25 = 3023, p75 = 3183 },
    share = { crit = 0.3677, haste = 0.2250, mastery = 0.3541, versatility = 0.0532 },
})

-- Paladin Holy
set(65, "mplus", {
    date = "2026-09-26", players = 78, ilvl = 326,
    minKey = 21, maxKey = 22,
    total = { median = 3166, mean = 3257, p25 = 3053, p75 = 3396 },
    share = { crit = 0.2612, haste = 0.3807, mastery = 0.0958, versatility = 0.2622 },
})

-- Paladin Protection
set(66, "mplus", {
    date = "2026-09-26", players = 58, ilvl = 324,
    minKey = 19, maxKey = 21,
    total = { median = 3136, mean = 3154, p25 = 2981, p75 = 3222 },
    share = { crit = 0.3854, haste = 0.3414, mastery = 0.1262, versatility = 0.1470 },
})

-- Paladin Retribution
set(70, "mplus", {
    date = "2026-09-26", players = 56, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3164, mean = 3240, p25 = 3124, p75 = 3255 },
    share = { crit = 0.3012, haste = 0.2937, mastery = 0.3723, versatility = 0.0327 },
})

-- Warrior Arms
set(71, "mplus", {
    date = "2026-09-26", players = 60, ilvl = 327,
    minKey = 21, maxKey = 22,
    total = { median = 3175, mean = 3244, p25 = 3043, p75 = 3413 },
    share = { crit = 0.4159, haste = 0.3226, mastery = 0.2244, versatility = 0.0371 },
})

-- Warrior Fury
set(72, "mplus", {
    date = "2026-09-26", players = 63, ilvl = 326,
    minKey = 18, maxKey = 21,
    total = { median = 3340, mean = 3376, p25 = 3256, p75 = 3416 },
    share = { crit = 0.2694, haste = 0.3419, mastery = 0.3521, versatility = 0.0366 },
})

-- Warrior Protection
set(73, "mplus", {
    date = "2026-09-26", players = 57, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3102, mean = 3181, p25 = 3022, p75 = 3279 },
    share = { crit = 0.2727, haste = 0.4194, mastery = 0.1666, versatility = 0.1413 },
})

-- Druid Balance
set(102, "mplus", {
    date = "2026-09-26", players = 59, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3101, mean = 3131, p25 = 3011, p75 = 3204 },
    share = { crit = 0.2734, haste = 0.3220, mastery = 0.3679, versatility = 0.0366 },
})

-- Druid Feral
set(103, "mplus", {
    date = "2026-09-26", players = 40, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3148, mean = 3161, p25 = 3066, p75 = 3189 },
    share = { crit = 0.2566, haste = 0.2739, mastery = 0.4026, versatility = 0.0669 },
})

-- Druid Guardian
set(104, "mplus", {
    date = "2026-09-26", players = 57, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3182, mean = 3242, p25 = 3082, p75 = 3432 },
    share = { crit = 0.2661, haste = 0.4007, mastery = 0.1308, versatility = 0.2023 },
})

-- Druid Restoration
set(105, "mplus", {
    date = "2026-09-26", players = 79, ilvl = 325,
    minKey = 18, maxKey = 21,
    total = { median = 3172, mean = 3189, p25 = 3076, p75 = 3250 },
    share = { crit = 0.0717, haste = 0.4702, mastery = 0.3423, versatility = 0.1159 },
})

-- DeathKnight Blood
set(250, "mplus", {
    date = "2026-09-26", players = 54, ilvl = 327,
    minKey = 21, maxKey = 22,
    total = { median = 3336, mean = 3433, p25 = 3220, p75 = 3622 },
    share = { crit = 0.3085, haste = 0.3442, mastery = 0.1231, versatility = 0.2243 },
})

-- DeathKnight Frost
set(251, "mplus", {
    date = "2026-09-26", players = 47, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3205, mean = 3255, p25 = 3170, p75 = 3258 },
    share = { crit = 0.4473, haste = 0.1409, mastery = 0.3783, versatility = 0.0336 },
})

-- DeathKnight Unholy
set(252, "mplus", {
    date = "2026-09-26", players = 74, ilvl = 327,
    minKey = 19, maxKey = 22,
    total = { median = 3171, mean = 3214, p25 = 3141, p75 = 3198 },
    share = { crit = 0.4234, haste = 0.1787, mastery = 0.3652, versatility = 0.0327 },
})

-- Hunter BeastMastery
set(253, "mplus", {
    date = "2026-09-26", players = 61, ilvl = 326,
    minKey = 19, maxKey = 22,
    total = { median = 3247, mean = 3317, p25 = 3160, p75 = 3422 },
    share = { crit = 0.3859, haste = 0.0735, mastery = 0.4297, versatility = 0.1109 },
})

-- Hunter Marksmanship
set(254, "mplus", {
    date = "2026-09-26", players = 65, ilvl = 325,
    minKey = 17, maxKey = 20,
    total = { median = 3265, mean = 3295, p25 = 3184, p75 = 3364 },
    share = { crit = 0.5128, haste = 0.0712, mastery = 0.3421, versatility = 0.0739 },
})

-- Hunter Survival
set(255, "mplus", {
    date = "2026-09-26", players = 42, ilvl = 324,
    minKey = 18, maxKey = 21,
    total = { median = 3138, mean = 3170, p25 = 3082, p75 = 3252 },
    share = { crit = 0.2916, haste = 0.2639, mastery = 0.4125, versatility = 0.0320 },
})

-- Priest Discipline
set(256, "mplus", {
    date = "2026-09-26", players = 89, ilvl = 326,
    minKey = 18, maxKey = 21,
    total = { median = 3173, mean = 3178, p25 = 3054, p75 = 3232 },
    share = { crit = 0.2590, haste = 0.4196, mastery = 0.2684, versatility = 0.0530 },
})

-- Priest Holy
set(257, "mplus", {
    date = "2026-09-26", players = 88, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3086, mean = 3126, p25 = 3025, p75 = 3181 },
    share = { crit = 0.3147, haste = 0.3447, mastery = 0.2374, versatility = 0.1033 },
})

-- Priest Shadow
set(258, "mplus", {
    date = "2026-09-26", players = 48, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3151, mean = 3173, p25 = 3025, p75 = 3251 },
    share = { crit = 0.2880, haste = 0.3174, mastery = 0.3612, versatility = 0.0333 },
})

-- Rogue Assassination
set(259, "mplus", {
    date = "2026-09-26", players = 49, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3218, mean = 3309, p25 = 3187, p75 = 3346 },
    share = { crit = 0.4079, haste = 0.2905, mastery = 0.2379, versatility = 0.0636 },
})

-- Rogue Outlaw
set(260, "mplus", {
    date = "2026-09-26", players = 36, ilvl = 324,
    minKey = 20, maxKey = 22,
    total = { median = 3152, mean = 3169, p25 = 3081, p75 = 3223 },
    share = { crit = 0.4315, haste = 0.2979, mastery = 0.0697, versatility = 0.2009 },
})

-- Rogue Subtlety
set(261, "mplus", {
    date = "2026-09-26", players = 61, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3186, mean = 3233, p25 = 3159, p75 = 3228 },
    share = { crit = 0.2513, haste = 0.2195, mastery = 0.3959, versatility = 0.1332 },
})

-- Shaman Elemental
set(262, "mplus", {
    date = "2026-09-26", players = 59, ilvl = 328,
    minKey = 21, maxKey = 22,
    total = { median = 3039, mean = 3177, p25 = 3007, p75 = 3398 },
    share = { crit = 0.3940, haste = 0.2271, mastery = 0.3364, versatility = 0.0425 },
})

-- Shaman Enhancement
set(263, "mplus", {
    date = "2026-09-26", players = 66, ilvl = 324,
    minKey = 18, maxKey = 22,
    total = { median = 3046, mean = 3063, p25 = 2950, p75 = 3126 },
    share = { crit = 0.2560, haste = 0.3232, mastery = 0.3894, versatility = 0.0314 },
})

-- Shaman Restoration
set(264, "mplus", {
    date = "2026-09-26", players = 60, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3015, mean = 3076, p25 = 2970, p75 = 3088 },
    share = { crit = 0.4042, haste = 0.2540, mastery = 0.0788, versatility = 0.2630 },
})

-- Warlock Affliction
set(265, "mplus", {
    date = "2026-09-26", players = 65, ilvl = 324,
    minKey = 17, maxKey = 19,
    total = { median = 3001, mean = 3050, p25 = 2960, p75 = 3131 },
    share = { crit = 0.3498, haste = 0.4112, mastery = 0.1823, versatility = 0.0566 },
})

-- Warlock Demonology
set(266, "mplus", {
    date = "2026-09-26", players = 65, ilvl = 326,
    minKey = 20, maxKey = 22,
    total = { median = 3126, mean = 3156, p25 = 3016, p75 = 3249 },
    share = { crit = 0.4025, haste = 0.3113, mastery = 0.2297, versatility = 0.0565 },
})

-- Warlock Destruction
set(267, "mplus", {
    date = "2026-09-26", players = 65, ilvl = 324,
    minKey = 17, maxKey = 20,
    total = { median = 3014, mean = 3046, p25 = 2968, p75 = 3108 },
    share = { crit = 0.3761, haste = 0.3232, mastery = 0.2583, versatility = 0.0424 },
})

-- Monk Brewmaster
set(268, "mplus", {
    date = "2026-09-26", players = 38, ilvl = 326,
    minKey = 19, maxKey = 22,
    total = { median = 3180, mean = 3208, p25 = 3073, p75 = 3268 },
    share = { crit = 0.3957, haste = 0.0617, mastery = 0.2225, versatility = 0.3201 },
})

-- Monk Windwalker
set(269, "mplus", {
    date = "2026-09-26", players = 47, ilvl = 327,
    minKey = 20, maxKey = 22,
    total = { median = 3183, mean = 3202, p25 = 3156, p75 = 3210 },
    share = { crit = 0.2851, haste = 0.2733, mastery = 0.4088, versatility = 0.0328 },
})

-- Monk Mistweaver
set(270, "mplus", {
    date = "2026-09-26", players = 52, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3162, mean = 3211, p25 = 3061, p75 = 3292 },
    share = { crit = 0.1774, haste = 0.4272, mastery = 0.2745, versatility = 0.1208 },
})

-- DemonHunter Havoc
set(577, "mplus", {
    date = "2026-09-26", players = 57, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3197, mean = 3212, p25 = 3160, p75 = 3242 },
    share = { crit = 0.4795, haste = 0.0950, mastery = 0.3936, versatility = 0.0320 },
})

-- DemonHunter Vengeance
set(581, "mplus", {
    date = "2026-09-26", players = 56, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3176, mean = 3210, p25 = 3073, p75 = 3336 },
    share = { crit = 0.2988, haste = 0.4182, mastery = 0.1218, versatility = 0.1612 },
})

-- Evoker Devastation
set(1467, "mplus", {
    date = "2026-09-26", players = 59, ilvl = 325,
    minKey = 17, maxKey = 20,
    total = { median = 3098, mean = 3104, p25 = 3000, p75 = 3171 },
    share = { crit = 0.4118, haste = 0.2517, mastery = 0.2748, versatility = 0.0617 },
})

-- Evoker Preservation
set(1468, "mplus", {
    date = "2026-09-26", players = 52, ilvl = 325,
    minKey = 19, maxKey = 21,
    total = { median = 3098, mean = 3143, p25 = 3042, p75 = 3202 },
    share = { crit = 0.2644, haste = 0.3904, mastery = 0.1099, versatility = 0.2353 },
})

-- Evoker Augmentation
set(1473, "mplus", {
    date = "2026-09-26", players = 59, ilvl = 324,
    minKey = 17, maxKey = 20,
    total = { median = 3099, mean = 3100, p25 = 3028, p75 = 3184 },
    share = { crit = 0.3256, haste = 0.1634, mastery = 0.4768, versatility = 0.0342 },
})

-- DemonHunter Devourer
set(1480, "mplus", {
    date = "2026-09-26", players = 59, ilvl = 326,
    minKey = 19, maxKey = 21,
    total = { median = 3182, mean = 3203, p25 = 3094, p75 = 3221 },
    share = { crit = 0.2580, haste = 0.3332, mastery = 0.3758, versatility = 0.0331 },
})
