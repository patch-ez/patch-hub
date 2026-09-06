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

The loader checks `game.PlaceId` and downloads and executes only the matching protected script. In all other games, it returns immediately without downloading a game script, displaying UI, or printing anything.

The game scripts stay in their existing repositories so their updates are picked up automatically. Sell Lemons is discontinued and is not included.
