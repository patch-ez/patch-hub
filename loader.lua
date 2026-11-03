-- Patch Hub | Universal Loader
-- Supported Games: Animal Hospital, Funky Friday, Project : RUSHER, Fisch, SCROOMS, Foresters, Throw Food For Animals, RIVALS
local scripts = {
    [17625359962] = "https://raw.githubusercontent.com/patch-ez/patch-hub/main/rivals-patch-hub-protected.lua",
    [117398147513099] = "https://raw.githubusercontent.com/patch-ez/patch-hub/main/rivals-patch-hub-protected.lua",
    [131716211654599] = "https://raw.githubusercontent.com/patch-ez/patch-hub/main/fisch-patch-hub-protected.lua",
    [97927337336367] = "https://raw.githubusercontent.com/patch-ez/patch-hub/main/scrooms-patch-hub-protected.lua",
    [117020342702668] = "https://raw.githubusercontent.com/patch-ez/patch-hub/main/foresters-patch-hub-protected.lua",
    [120219252362013] = "https://raw.githubusercontent.com/patch-ez/patch-hub/main/throw-food-patch-hub-protected.lua",
    [104522435597696] = "https://raw.githubusercontent.com/patch-ez/animals-touched-me/main/animal_hospital_automation_obfuscated.lua",
    [6447798030] = "https://raw.githubusercontent.com/patch-ez/im-funky-tonight-twin/main/funky-friday-perfect-autoplay_obfuscated.luau",
    [106809703371658] = "https://raw.githubusercontent.com/patch-ez/project-rusher/main/project-rusher-patch-hub-protected.lua",
}

-- Support whole Universes / Game IDs so match servers, sub-places, and arenas are automatically supported
local universes = {
    [6035872082] = "https://raw.githubusercontent.com/patch-ez/patch-hub/main/rivals-patch-hub-protected.lua", -- RIVALS (Hub, 1v1, 2v2, FFA, Custom Matches)
}

local INVITE_URL = "https://discord.gg/hW3cnkq8pm"
local INVITE_CODE = "hW3cnkq8pm"

local function showDiscordPopup()
    local TweenService = game:GetService("TweenService")
    local HttpService = game:GetService("HttpService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    local function getParent()
        local ok, h = pcall(gethui)
        if ok and h then return h end
        local ok2, c = pcall(function() return game:GetService("CoreGui") end)
        if ok2 and c then return c end
        return player and player:FindFirstChild("PlayerGui")
    end

    local parent = getParent()
    if not parent then return end

    local existing = parent:FindFirstChild("PatchHub_DiscordModal")
    if existing then existing:Destroy() end

    local gui = Instance.new("ScreenGui")
    gui.Name = "PatchHub_DiscordModal"
    gui.ResetOnSpawn = false
    gui.DisplayOrder = 10000
    gui.IgnoreGuiInset = true

    -- Fullscreen dismissible shade
    local shade = Instance.new("TextButton")
    shade.Name = "Shade"
    shade.Text = ""
    shade.AutoButtonColor = false
    shade.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    shade.BackgroundTransparency = 1
    shade.Size = UDim2.fromScale(1, 1)
    shade.Parent = gui

    -- Main Card (Patch Hub dark theme)
    local card = Instance.new("Frame")
    card.Name = "Card"
    card.Size = UDim2.fromOffset(360, 180)
    card.AnchorPoint = Vector2.new(0.5, 0.5)
    card.Position = UDim2.fromScale(0.5, 0.5)
    card.BackgroundColor3 = Color3.fromRGB(19, 20, 25)
    card.BackgroundTransparency = 1
    card.ClipsDescendants = true
    card.Parent = shade

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 9)
    corner.Parent = card

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(48, 50, 64)
    stroke.Thickness = 1
    stroke.Transparency = 1
    stroke.Parent = card

    local scale = Instance.new("UIScale")
    scale.Scale = 0.95
    scale.Parent = card

    -- Header (38px)
    local header = Instance.new("Frame")
    header.Name = "Header"
    header.Size = UDim2.new(1, 0, 0, 38)
    header.BackgroundTransparency = 1
    header.Parent = card

    local title = Instance.new("TextLabel")
    title.Text = "Patch Hub"
    title.Font = Enum.Font.GothamBold
    title.TextSize = 14
    title.TextColor3 = Color3.fromRGB(235, 235, 240)
    title.Position = UDim2.fromOffset(16, 11)
    title.Size = UDim2.fromOffset(72, 16)
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.BackgroundTransparency = 1
    title.Parent = header

    local badge = Instance.new("TextLabel")
    badge.Text = "Community"
    badge.Font = Enum.Font.GothamMedium
    badge.TextSize = 11
    badge.TextColor3 = Color3.fromRGB(116, 119, 140)
    badge.Position = UDim2.fromOffset(92, 12)
    badge.Size = UDim2.fromOffset(80, 16)
    badge.TextXAlignment = Enum.TextXAlignment.Left
    badge.BackgroundTransparency = 1
    badge.Parent = header

    local closeBtn = Instance.new("TextButton")
    closeBtn.Name = "Close"
    closeBtn.Text = "X"
    closeBtn.Font = Enum.Font.GothamMedium
    closeBtn.TextSize = 12
    closeBtn.TextColor3 = Color3.fromRGB(130, 133, 148)
    closeBtn.Position = UDim2.new(1, -34, 0, 7)
    closeBtn.Size = UDim2.fromOffset(24, 24)
    closeBtn.BackgroundTransparency = 1
    closeBtn.Parent = header

    -- Divider
    local divider = Instance.new("Frame")
    divider.Name = "Divider"
    divider.Size = UDim2.new(1, 0, 0, 1)
    divider.Position = UDim2.fromOffset(0, 38)
    divider.BackgroundColor3 = Color3.fromRGB(31, 31, 45)
    divider.BorderSizePixel = 0
    divider.Parent = card

    -- Content Body
    local message = Instance.new("TextLabel")
    message.Text = "Join the official community for updates, announcements, and support."
    message.Font = Enum.Font.Gotham
    message.TextSize = 12
    message.TextColor3 = Color3.fromRGB(175, 178, 195)
    message.Position = UDim2.fromOffset(16, 48)
    message.Size = UDim2.new(1, -32, 0, 32)
    message.TextXAlignment = Enum.TextXAlignment.Left
    message.TextWrapped = true
    message.BackgroundTransparency = 1
    message.Parent = card

    -- Link Box
    local linkBox = Instance.new("Frame")
    linkBox.Name = "LinkBox"
    linkBox.Size = UDim2.new(1, -32, 0, 28)
    linkBox.Position = UDim2.fromOffset(16, 88)
    linkBox.BackgroundColor3 = Color3.fromRGB(14, 15, 20)
    linkBox.BorderSizePixel = 0
    linkBox.Parent = card

    local linkCorner = Instance.new("UICorner")
    linkCorner.CornerRadius = UDim.new(0, 6)
    linkCorner.Parent = linkBox

    local linkStroke = Instance.new("UIStroke")
    linkStroke.Color = Color3.fromRGB(38, 40, 52)
    linkStroke.Thickness = 1
    linkStroke.Parent = linkBox

    local linkText = Instance.new("TextLabel")
    linkText.Text = "discord.gg/hW3cnkq8pm"
    linkText.Font = Enum.Font.GothamMedium
    linkText.TextSize = 12
    linkText.TextColor3 = Color3.fromRGB(215, 218, 230)
    linkText.Position = UDim2.fromOffset(10, 0)
    linkText.Size = UDim2.new(1, -20, 1, 0)
    linkText.TextXAlignment = Enum.TextXAlignment.Left
    linkText.BackgroundTransparency = 1
    linkText.Parent = linkBox

    -- Buttons Row
    local joinBtn = Instance.new("TextButton")
    joinBtn.Name = "JoinButton"
    joinBtn.Text = "Join Server"
    joinBtn.Font = Enum.Font.GothamMedium
    joinBtn.TextSize = 12
    joinBtn.TextColor3 = Color3.fromRGB(240, 240, 245)
    joinBtn.Position = UDim2.fromOffset(16, 128)
    joinBtn.Size = UDim2.new(0.5, -20, 0, 34)
    joinBtn.BackgroundColor3 = Color3.fromRGB(28, 30, 40)
    joinBtn.AutoButtonColor = false
    joinBtn.Parent = card

    local joinCorner = Instance.new("UICorner")
    joinCorner.CornerRadius = UDim.new(0, 6)
    joinCorner.Parent = joinBtn

    local joinStroke = Instance.new("UIStroke")
    joinStroke.Color = Color3.fromRGB(60, 64, 82)
    joinStroke.Thickness = 1
    joinStroke.Parent = joinBtn

    local copyBtn = Instance.new("TextButton")
    copyBtn.Name = "CopyButton"
    copyBtn.Text = "Copy Link"
    copyBtn.Font = Enum.Font.GothamMedium
    copyBtn.TextSize = 12
    copyBtn.TextColor3 = Color3.fromRGB(180, 182, 195)
    copyBtn.Position = UDim2.new(0.5, 4, 0, 128)
    copyBtn.Size = UDim2.new(0.5, -20, 0, 34)
    copyBtn.BackgroundColor3 = Color3.fromRGB(22, 23, 30)
    copyBtn.AutoButtonColor = false
    copyBtn.Parent = card

    local copyCorner = Instance.new("UICorner")
    copyCorner.CornerRadius = UDim.new(0, 6)
    copyCorner.Parent = copyBtn

    local copyStroke = Instance.new("UIStroke")
    copyStroke.Color = Color3.fromRGB(42, 44, 56)
    copyStroke.Thickness = 1
    copyStroke.Parent = copyBtn

    -- Actions & Helpers
    local function dismiss()
        local tInfo = TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        TweenService:Create(shade, tInfo, {BackgroundTransparency = 1}):Play()
        TweenService:Create(card, tInfo, {BackgroundTransparency = 1}):Play()
        TweenService:Create(stroke, tInfo, {Transparency = 1}):Play()
        TweenService:Create(scale, tInfo, {Scale = 0.92}):Play()
        task.wait(0.2)
        gui:Destroy()
    end

    local function copyLink()
        local setclip = setclipboard or toclipboard or setrbxclipboard or (Clipboard and Clipboard.set)
        if type(setclip) == "function" then
            pcall(setclip, INVITE_URL)
        end
    end

    local function promptDiscord()
        local req = (syn and syn.request) or (http and http.request) or http_request or request
        if type(req) == "function" then
            pcall(function()
                req({
                    Url = "http://127.0.0.1:6463/rpc?v=1",
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json",
                        ["Origin"] = "https://discord.com"
                    },
                    Body = HttpService:JSONEncode({
                        cmd = "INVITE_BROWSER",
                        args = { code = INVITE_CODE },
                        nonce = HttpService:GenerateGUID(false)
                    })
                })
            end)
        end
    end

    local function setupHover(btn, normalBg, hoverBg, normalTxt, hoverTxt)
        btn.MouseEnter:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.12), {BackgroundColor3 = hoverBg}):Play()
            if normalTxt and hoverTxt then
                TweenService:Create(btn, TweenInfo.new(0.12), {TextColor3 = hoverTxt}):Play()
            end
        end)
        btn.MouseLeave:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.12), {BackgroundColor3 = normalBg}):Play()
            if normalTxt and hoverTxt then
                TweenService:Create(btn, TweenInfo.new(0.12), {TextColor3 = normalTxt}):Play()
            end
        end)
    end

    setupHover(joinBtn, Color3.fromRGB(28, 30, 40), Color3.fromRGB(38, 41, 55))
    setupHover(copyBtn, Color3.fromRGB(22, 23, 30), Color3.fromRGB(30, 32, 42), Color3.fromRGB(180, 182, 195), Color3.fromRGB(240, 240, 245))
    setupHover(closeBtn, Color3.fromRGB(19, 20, 25), Color3.fromRGB(19, 20, 25), Color3.fromRGB(130, 133, 148), Color3.fromRGB(240, 240, 245))

    closeBtn.Activated:Connect(dismiss)
    shade.Activated:Connect(dismiss)

    joinBtn.Activated:Connect(function()
        copyLink()
        promptDiscord()
        joinBtn.Text = "Joined / Copied!"
        task.delay(0.7, function()
            dismiss()
        end)
    end)

    copyBtn.Activated:Connect(function()
        copyLink()
        copyBtn.Text = "Copied!"
        task.delay(1.5, function()
            if copyBtn.Parent then
                copyBtn.Text = "Copy Link"
            end
        end)
    end)

    gui.Parent = parent

    -- Entrance animation
    local openInfo = TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    TweenService:Create(shade, TweenInfo.new(0.18), {BackgroundTransparency = 0.55}):Play()
    TweenService:Create(card, openInfo, {BackgroundTransparency = 0}):Play()
    TweenService:Create(stroke, openInfo, {Transparency = 0}):Play()
    TweenService:Create(scale, openInfo, {Scale = 1}):Play()
end

task.spawn(function()
    pcall(showDiscordPopup)
end)

local url = scripts[game.PlaceId] or universes[game.GameId]
if not url then return end
if not game:IsLoaded() then game.Loaded:Wait() end

local ok, source = pcall(function() return game:HttpGet(url .. "?t=" .. tostring(os.time())) end)
if not ok or type(source) ~= "string" or #source <= 100 then
    ok, source = pcall(function() return game:HttpGet(url) end)
end
assert(ok and type(source) == "string" and #source > 100, "Patch Hub: script download failed. Please try again.")
local run, err = loadstring(source, "PatchHub_" .. tostring(game.PlaceId))
assert(run, "Patch Hub: could not load script: " .. tostring(err))
return run()
