-- Automatisch erzeugt (Wochenlauf, tools/update_targets.py) -- nicht von Hand aendern.
-- Quelle: Warcraft Logs · Top-Logs Raid (mythisch), 40 Spezialisierungen, erzeugt 2026-09-23 13:18.

local _, ns = ...
ns.TARGETS = ns.TARGETS or {}

local function set(spec, mode, t)
    t.source = "Warcraft Logs · Top-Logs Raid (mythisch)"
    ns.TARGETS[spec] = ns.TARGETS[spec] or {}
    ns.TARGETS[spec][mode] = t
end

-- Mage Arcane
set(62, "raid", {
    date = "2026-09-23", players = 193, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3028, mean = 3053, p25 = 2989, p75 = 3073 },
    share = { crit = 0.2776, haste = 0.3400, mastery = 0.1798, versatility = 0.2026 },
})

-- Mage Fire
set(63, "raid", {
    date = "2026-09-23", players = 71, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3048, mean = 3053, p25 = 2986, p75 = 3106 },
    share = { crit = 0.0554, haste = 0.4431, mastery = 0.2962, versatility = 0.2053 },
})

-- Mage Frost
set(64, "raid", {
    date = "2026-09-23", players = 131, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3094, mean = 3114, p25 = 3028, p75 = 3185 },
    share = { crit = 0.3745, haste = 0.2185, mastery = 0.3278, versatility = 0.0792 },
})

-- Paladin Holy
set(65, "raid", {
    date = "2026-09-23", players = 186, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3070, mean = 3080, p25 = 3014, p75 = 3144 },
    share = { crit = 0.2424, haste = 0.2847, mastery = 0.4202, versatility = 0.0526 },
})

-- Paladin Protection
set(66, "raid", {
    date = "2026-09-23", players = 145, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3067, mean = 3061, p25 = 2975, p75 = 3138 },
    share = { crit = 0.3768, haste = 0.3663, mastery = 0.1724, versatility = 0.0845 },
})

-- Paladin Retribution
set(70, "raid", {
    date = "2026-09-23", players = 135, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3165, mean = 3166, p25 = 3122, p75 = 3212 },
    share = { crit = 0.3289, haste = 0.2834, mastery = 0.3566, versatility = 0.0311 },
})

-- Warrior Arms
set(71, "raid", {
    date = "2026-09-23", players = 161, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3109, mean = 3100, p25 = 3016, p75 = 3172 },
    share = { crit = 0.4273, haste = 0.3458, mastery = 0.1941, versatility = 0.0329 },
})

-- Warrior Fury
set(72, "raid", {
    date = "2026-09-23", players = 104, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3318, mean = 3305, p25 = 3248, p75 = 3365 },
    share = { crit = 0.2805, haste = 0.3513, mastery = 0.3305, versatility = 0.0377 },
})

-- Warrior Protection
set(73, "raid", {
    date = "2026-09-23", players = 105, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3082, mean = 3063, p25 = 3002, p75 = 3135 },
    share = { crit = 0.3419, haste = 0.4096, mastery = 0.1660, versatility = 0.0824 },
})

-- Druid Balance
set(102, "raid", {
    date = "2026-09-23", players = 166, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3102, mean = 3115, p25 = 3032, p75 = 3184 },
    share = { crit = 0.2847, haste = 0.2832, mastery = 0.3980, versatility = 0.0341 },
})

-- Druid Feral
set(103, "raid", {
    date = "2026-09-23", players = 99, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3127, mean = 3121, p25 = 3068, p75 = 3154 },
    share = { crit = 0.2764, haste = 0.3009, mastery = 0.3701, versatility = 0.0525 },
})

-- Druid Guardian
set(104, "raid", {
    date = "2026-09-23", players = 86, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3121, mean = 3115, p25 = 3020, p75 = 3182 },
    share = { crit = 0.2475, haste = 0.4241, mastery = 0.1608, versatility = 0.1675 },
})

-- Druid Restoration
set(105, "raid", {
    date = "2026-09-23", players = 150, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3142, mean = 3138, p25 = 3058, p75 = 3215 },
    share = { crit = 0.0754, haste = 0.5075, mastery = 0.3507, versatility = 0.0663 },
})

-- DeathKnight Blood
set(250, "raid", {
    date = "2026-09-23", players = 165, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3160, mean = 3155, p25 = 3120, p75 = 3196 },
    share = { crit = 0.3559, haste = 0.3777, mastery = 0.1569, versatility = 0.1095 },
})

-- DeathKnight Frost
set(251, "raid", {
    date = "2026-09-23", players = 141, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3197, mean = 3197, p25 = 3166, p75 = 3231 },
    share = { crit = 0.4262, haste = 0.1751, mastery = 0.3674, versatility = 0.0313 },
})

-- DeathKnight Unholy
set(252, "raid", {
    date = "2026-09-23", players = 148, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3157, mean = 3155, p25 = 3120, p75 = 3187 },
    share = { crit = 0.4377, haste = 0.1441, mastery = 0.3866, versatility = 0.0316 },
})

-- Hunter BeastMastery
set(253, "raid", {
    date = "2026-09-23", players = 162, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3178, mean = 3195, p25 = 3129, p75 = 3229 },
    share = { crit = 0.3658, haste = 0.1838, mastery = 0.4050, versatility = 0.0454 },
})

-- Hunter Marksmanship
set(254, "raid", {
    date = "2026-09-23", players = 132, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3360, mean = 3346, p25 = 3290, p75 = 3386 },
    share = { crit = 0.4980, haste = 0.0725, mastery = 0.3511, versatility = 0.0784 },
})

-- Hunter Survival
set(255, "raid", {
    date = "2026-09-23", players = 74, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3184, mean = 3167, p25 = 3073, p75 = 3253 },
    share = { crit = 0.3026, haste = 0.2508, mastery = 0.4163, versatility = 0.0303 },
})

-- Priest Discipline
set(256, "raid", {
    date = "2026-09-23", players = 124, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3209, mean = 3209, p25 = 3146, p75 = 3270 },
    share = { crit = 0.1693, haste = 0.5519, mastery = 0.2231, versatility = 0.0557 },
})

-- Priest Holy
set(257, "raid", {
    date = "2026-09-23", players = 185, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3045, mean = 3049, p25 = 2978, p75 = 3103 },
    share = { crit = 0.3956, haste = 0.2105, mastery = 0.3361, versatility = 0.0578 },
})

-- Priest Shadow
set(258, "raid", {
    date = "2026-09-23", players = 155, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3088, mean = 3102, p25 = 3018, p75 = 3176 },
    share = { crit = 0.2761, haste = 0.2973, mastery = 0.3927, versatility = 0.0338 },
})

-- Rogue Assassination
set(259, "raid", {
    date = "2026-09-23", players = 155, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3228, mean = 3226, p25 = 3160, p75 = 3318 },
    share = { crit = 0.4261, haste = 0.3158, mastery = 0.2196, versatility = 0.0385 },
})

-- Rogue Outlaw
set(260, "raid", {
    date = "2026-09-23", players = 118, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3108, mean = 3096, p25 = 3022, p75 = 3163 },
    share = { crit = 0.4327, haste = 0.3365, mastery = 0.0535, versatility = 0.1773 },
})

-- Rogue Subtlety
set(261, "raid", {
    date = "2026-09-23", players = 158, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3186, mean = 3184, p25 = 3159, p75 = 3211 },
    share = { crit = 0.1831, haste = 0.2397, mastery = 0.3930, versatility = 0.1841 },
})

-- Shaman Elemental
set(262, "raid", {
    date = "2026-09-23", players = 134, ilvl = 325,
    difficulty = "mythic",
    total = { median = 2986, mean = 3006, p25 = 2956, p75 = 3039 },
    share = { crit = 0.3615, haste = 0.2564, mastery = 0.3387, versatility = 0.0434 },
})

-- Shaman Enhancement
set(263, "raid", {
    date = "2026-09-23", players = 106, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3073, mean = 3066, p25 = 3013, p75 = 3127 },
    share = { crit = 0.2914, haste = 0.3130, mastery = 0.3634, versatility = 0.0321 },
})

-- Shaman Restoration
set(264, "raid", {
    date = "2026-09-23", players = 196, ilvl = 324,
    difficulty = "mythic",
    total = { median = 2975, mean = 2990, p25 = 2920, p75 = 3034 },
    share = { crit = 0.4550, haste = 0.2575, mastery = 0.1048, versatility = 0.1828 },
})

-- Warlock Affliction
set(265, "raid", {
    date = "2026-09-23", players = 145, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3077, mean = 3092, p25 = 3003, p75 = 3161 },
    share = { crit = 0.3592, haste = 0.3865, mastery = 0.1946, versatility = 0.0597 },
})

-- Warlock Demonology
set(266, "raid", {
    date = "2026-09-23", players = 159, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3027, mean = 3041, p25 = 2994, p75 = 3086 },
    share = { crit = 0.4095, haste = 0.2935, mastery = 0.2419, versatility = 0.0552 },
})

-- Warlock Destruction
set(267, "raid", {
    date = "2026-09-23", players = 129, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3040, mean = 3057, p25 = 2997, p75 = 3120 },
    share = { crit = 0.3455, haste = 0.3022, mastery = 0.2948, versatility = 0.0574 },
})

-- Monk Brewmaster
set(268, "raid", {
    date = "2026-09-23", players = 113, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3147, mean = 3157, p25 = 3077, p75 = 3224 },
    share = { crit = 0.4221, haste = 0.0780, mastery = 0.2422, versatility = 0.2577 },
})

-- Monk Windwalker
set(269, "raid", {
    date = "2026-09-23", players = 128, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3165, mean = 3161, p25 = 3142, p75 = 3192 },
    share = { crit = 0.2786, haste = 0.2988, mastery = 0.3905, versatility = 0.0321 },
})

-- Monk Mistweaver
set(270, "raid", {
    date = "2026-09-23", players = 143, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3176, mean = 3154, p25 = 3078, p75 = 3230 },
    share = { crit = 0.3078, haste = 0.5084, mastery = 0.0658, versatility = 0.1179 },
})

-- DemonHunter Havoc
set(577, "raid", {
    date = "2026-09-23", players = 130, ilvl = 325,
    difficulty = "mythic",
    total = { median = 3178, mean = 3175, p25 = 3143, p75 = 3202 },
    share = { crit = 0.4755, haste = 0.0903, mastery = 0.4033, versatility = 0.0310 },
})

-- DemonHunter Vengeance
set(581, "raid", {
    date = "2026-09-23", players = 82, ilvl = 323,
    difficulty = "mythic",
    total = { median = 3096, mean = 3092, p25 = 3005, p75 = 3175 },
    share = { crit = 0.3193, haste = 0.4044, mastery = 0.1513, versatility = 0.1251 },
})

-- Evoker Devastation
set(1467, "raid", {
    date = "2026-09-23", players = 126, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3108, mean = 3093, p25 = 3022, p75 = 3155 },
    share = { crit = 0.4302, haste = 0.2437, mastery = 0.2640, versatility = 0.0621 },
})

-- Evoker Preservation
set(1468, "raid", {
    date = "2026-09-23", players = 176, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3060, mean = 3077, p25 = 3010, p75 = 3133 },
    share = { crit = 0.3867, haste = 0.1761, mastery = 0.3901, versatility = 0.0471 },
})

-- Evoker Augmentation
set(1473, "raid", {
    date = "2026-09-23", players = 116, ilvl = 326,
    difficulty = "mythic",
    total = { median = 3182, mean = 3167, p25 = 3108, p75 = 3229 },
    share = { crit = 0.3257, haste = 0.1523, mastery = 0.4901, versatility = 0.0320 },
})

-- DemonHunter Devourer
set(1480, "raid", {
    date = "2026-09-23", players = 137, ilvl = 324,
    difficulty = "mythic",
    total = { median = 3092, mean = 3103, p25 = 3033, p75 = 3173 },
    share = { crit = 0.3252, haste = 0.2822, mastery = 0.3590, versatility = 0.0336 },
})
