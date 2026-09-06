-- Patch Hub | Animal Hospital, Funky Friday, Project : RUSHER
local scripts = {
    [104522435597696] = "https://raw.githubusercontent.com/patch-ez/animals-touched-me/main/animal_hospital_automation_obfuscated.lua",
    [6447798030] = "https://raw.githubusercontent.com/patch-ez/im-funky-tonight-twin/main/funky-friday-perfect-autoplay_obfuscated.luau",
    [106809703371658] = "https://raw.githubusercontent.com/patch-ez/project-rusher/main/project-rusher-patch-hub-protected.lua",
}

local url = scripts[game.PlaceId]
if not url then return end
if not game:IsLoaded() then game.Loaded:Wait() end

local ok, source = pcall(function() return game:HttpGet(url) end)
assert(ok and type(source) == "string" and #source > 100, "Patch Hub: script download failed. Please try again.")
local run, err = loadstring(source, "PatchHub_" .. tostring(game.PlaceId))
assert(run, "Patch Hub: could not load script: " .. tostring(err))
return run()
