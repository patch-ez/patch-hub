# Patch Hub

One loader for all supported Patch Hub games:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/patch-ez/patch-hub/main/loader.lua"))()
```

| Game | Place ID |
| --- | --- |
| Animal Hospital | 104522435597696 |
| Funky Friday | 6447798030 |
| Project : RUSHER | 106809703371658 |
| Fisch | 131716211654599 |
| SCROOMS | 97927337336367 |
| Foresters! | 117020342702668 |
| Throw Food For Animals | 120219252362013 |
| RIVALS | 17625359962 / 117398147513099 (Universe 6035872082) |

The loader checks `game.PlaceId` and `game.GameId` (Universe ID) to download and execute only the matching protected script. In all other games, it returns immediately without downloading a game script, displaying UI, or printing anything.

The existing game scripts stay in their repositories. Fisch, SCROOMS, Foresters, Throw Food For Animals, and RIVALS are hosted here as protected scripts. Updates are picked up automatically. Sell Lemons is discontinued and is not included.

## RIVALS

Patch Hub includes packet-level True Silent Aim (360° bullet redirection without camera lock), Aimbot (instant snap or smooth magnetic lock with ping/lead prediction), Triggerbot (auto shoot on target with delay/cooldown), Visuals / ESP (2D Boxes, Health Bars, Names, Distance, Tracers, Chams Highlight), Movement Modifiers (Permanent Auto Sprint, Bunnyhop, Fast Slide, Speed Multiplier), Custom FOV & No Camera Shake, Auto Shooting Range target farm, JSON Configuration System (Auto-Save on Change, Auto-Load on Startup), and seamless cross-teleport auto-execution between the Hub and 1v1 match arenas.

## Throw Food For Animals

Patch Hub includes Auto Throw (100% Max Power), Instant In-Air & Catch Animation Skip, Auto Pull Up Bar, Auto Click 2x Minigame, Auto Equip Best Animals, and Auto Upgrade Food & Pull Up Stand.

## Foresters!

Patch Hub includes Auto Chop Trees with instant/fast minigame automation, Auto Sawminigame, Auto Pick Up Logs, Sell All Trees with instantaneous merchant bypass teleport, full Axe Catalog purchasing & equipping, Tree ESP (billboards and rarity highlights), island, sawmill, and merchant teleports, and player modifications (WalkSpeed, JumpPower, Infinite Jump, Noclip, Fullbright, Anti-AFK).

## SCROOMS

Patch Hub includes fully automatic quest completion for "The Crooked Chime" (`aube_initiation`), comprehensive area and NPC teleports (including The Sanctum, Bloomcall, Elder Goldoak, Ignara, Oracle of Cervos, Elder Bloomcall, etc.), custom walkspeed and jump power controls, and mobile toggle support.

## Fisch

Patch Hub includes Auto Fish, Instant Fishing, Auto Shake, Perfect Catch Chance (0–100%), Auto Sell All Fish with favourites preserved, Auto Hunt, teleports, inventory tools and player controls. Right Shift or the mobile button opens and closes the UI. Automation starts off.
