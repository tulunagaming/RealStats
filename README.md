# RealStats

Compares your secondary stats with how the best players of your specialization
actually distribute theirs. Docks to the right of the character window.

![RealStats: Mythic+ tab docked to the character window](https://raw.githubusercontent.com/tulunagaming/RealStats/main/docs/screenshot-mythicplus.jpg)

## How the targets work

* The targets come from public top logs on Warcraft Logs: how the best players
  of your spec split Critical Strike, Haste, Mastery and Versatility.
* Their shares times **your stat total** give your targets, so they fit your item level.
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

### What may be swapped

Three check boxes, all in the same direction: ticked means the optimizer may
touch it, empty means it stays as it is. Saved per character **and** per
specialization. All three start empty, which is the careful setting:

* **Items with a socket** – otherwise a socketed item can be replaced by one
  without, and the gem is lost.
* **Embellished items** – left alone unless you allow it.
* **Items with lower item level** – without this tick every swap keeps or
  raises your item level, so no primary stat is lost for a nicer split.

### Keep single slots in place

Pick any slot — helmet, a ring, your weapon — and the optimizer leaves it alone
and balances over the remaining ones. Useful for a freshly socketed piece, a
favourite look or anything you simply do not want touched. Saved per character
and specialization, like the check boxes.

### Back to what you wore

Next to the set button: **Back to previous** re-equips what you wore before the
last change (the items have to be in your bags), and **Save current** stores your
current gear as the set "RealStats vorher" and as the way back.

![RealStats: gear tab with the switches](https://raw.githubusercontent.com/tulunagaming/RealStats/main/docs/screenshot-gear-tab.jpg)

## Fixed buffs

Flasks and food are part of your stats, just like for the best players. Their
share appears as a purple piece at the end of your bar, so you can see what
comes from your gear.

Because they count towards your stat total, they also raise the targets of the
**other** stats — a mastery flask lifts your crit target as well. RealStats says
so right under the bars whenever a fixed buff is active, so the numbers never
look like a miscalculation.

![RealStats: tooltip above the target - how much to give away](https://raw.githubusercontent.com/tulunagaming/RealStats/main/docs/screenshot-tooltip-above.jpg)

![RealStats: tooltip below the target - how much is missing](https://raw.githubusercontent.com/tulunagaming/RealStats/main/docs/screenshot-tooltip-below.jpg)

The tooltip works both ways: above the range it tells you how much to give
away, below it how much is missing.

## Performance & stability

* **Nothing runs during combat.** The window freezes and RealStats stops listening
  to stat, gear and buff events (tested: 3000 events in combat -> 0 refreshes).
* **No per-frame updates.** Bursts of events are merged into one refresh
  (tested: 1000 buff changes -> 1 refresh).
* The gear calculation only runs when you press *Calculate*.
* Values that WoW 12.x hides ("secret values") are handled without Lua errors.
* More than 200 automated checks run before every release.

## Usage

Open the character window – RealStats docks next to it. The arrow at its edge
collapses and expands it. No commands, no settings.

The window freezes during combat, so procs do not make the bars jump.

## Data and rights

Target data: [Warcraft Logs](https://www.warcraftlogs.com), public top logs.
Code © 2026 Tuluna. All rights reserved, see `LICENSE`.
