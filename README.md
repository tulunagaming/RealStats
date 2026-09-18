# RealStats

Compares your secondary stats with how the best players of your specialization
actually distribute theirs. Docks to the right of the character window.

![RealStats: Mythic+ tab docked to the character window](https://raw.githubusercontent.com/tulunagaming/RealStats/main/docs/screenshot-mythicplus.jpg)

## How the targets work

* The targets come from public top logs on Warcraft Logs: how the best players
  of your spec split Critical Strike, Haste, Mastery and Versatility.
* The split is scaled to **your** stat total, so the target fits your item level.
* A stat is **in target** when it is within ±5 % of that value (cyan template).
* A stat the best players barely use (below 10 % share) only gets a guide line.
* The **Total** row compares your stat sum with the best players. The gap is
  roughly what item upgrades can still give you.
* Targets for every class and specialization, updated every week (Wednesday).

## Tabs

* **Mythic+** and **Raid**: separate targets, because the best players gear
  differently for each.
* **Gear**: finds the combination of equipped items and items in your bags that
  comes closest to the targets, equips it with one click and saves it as an
  equipment set ("RealStats M+" / "RealStats Raid").
  Only bound items, at most 2 embellishments, set bonus kept, weapon style kept
  (two-hander, shield, dual wield, ranged), trinkets stay.

![RealStats: gear tab with the suggested changes](https://raw.githubusercontent.com/tulunagaming/RealStats/main/docs/screenshot-gear-changes.jpg)

## Fixed buffs

Flasks and food are part of your stats, just like for the best players. Their
share appears as a purple piece at the end of your bar, so you can see what
comes from your gear.

![RealStats: raid tab, tooltip with gear and flask share](https://raw.githubusercontent.com/tulunagaming/RealStats/main/docs/screenshot-raid-tooltip.jpg)

## Performance & stability

* **Nothing runs during combat.** The window freezes and RealStats stops listening
  to stat, gear and buff events (tested: 3000 events in combat -> 0 refreshes).
* **No per-frame updates.** Bursts of events are merged into one refresh
  (tested: 1000 buff changes -> 1 refresh).
* The gear calculation only runs when you press *Calculate*.
* Values that WoW 12.x hides ("secret values") are handled without Lua errors.
* More than 220 automated checks run before every release.
* Measured in game: *follows with the first release* (average CPU per frame during a
  Mythic+ key, highest sample, memory).
* Check it yourself: `/realstats perf`

## Commands

* `/realstats` show / hide
* `/realstats dock` dock to the character window or float freely (shift + drag)
* `/realstats lock`, `/realstats scale <0.5-3>`, `/realstats reset`
* `/realstats perf` CPU and memory, `/realstats perf start|stop` record a measurement run

The window freezes during combat, so procs do not make the bars jump.

## Data and rights

Target data: [Warcraft Logs](https://www.warcraftlogs.com), public top logs.
Code © 2026 Tuluna. All rights reserved, see `LICENSE`.
