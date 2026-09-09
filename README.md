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

The loader checks `game.PlaceId` and downloads and executes only the matching protected script. In all other games, it returns immediately without downloading a game script, displaying UI, or printing anything.

The existing game scripts stay in their repositories. Fisch is hosted here as `fisch-patch-hub-protected.lua`. Updates are picked up automatically. Sell Lemons is discontinued and is not included.

## Fisch

Patch Hub includes Auto Fish, Instant Fishing, Auto Shake, Perfect Catch Chance (0–100%), Auto Sell All Fish with favourites preserved, Auto Hunt, teleports, inventory tools and player controls. Right Shift or the mobile button opens and closes the UI. Automation starts off.

Auto Hunt detects live zones replicated to the client; distant unstreamed hunts and locked areas may be unavailable. Auto Quest supports selected objective types, not every custom quest. Purchases retain the game's access requirements.
