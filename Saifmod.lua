local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "كشف اماكن",
	Icon = "rbxassetid://[ID]",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "كشف اماكن¹",
	Callback = function()
      		print("button pressed")-- Loop through all players and add a Highlight to their character
local Players = game:GetService("Players")

-- Function to create a Highlight for a player
local function highlightPlayer(player)
    -- Wait for the player's character to load
    player.CharacterAdded:Connect(function(character)
        -- Wait for the HumanoidRootPart or similar to load
        character:WaitForChild("HumanoidRootPart")
        
        -- Create a new Highlight instance
        local highlight = Instance.new("Highlight")
        highlight.Parent = character
        highlight.Adornee = character
        highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Red fill color
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255) -- White outline
    end)
end

-- Add highlights to all current players
for _, player in pairs(Players:GetPlayers()) do
    if player.Character then
        highlightPlayer(player)
    end
    player.CharacterAdded:Connect(function(character)
        highlightPlayer(player)
    end)
end

-- Listen for new players joining
Players.PlayerAdded:Connect(function(player)
    highlightPlayer(player)
end)
  	end    
})
Tab:AddButton({
	Name = "كشف اماكن²",
	Callback = function()
      		print("button pressed")local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end    
})
Tab:AddButton({
	Name = "كشف اماكن ³",
	Callback = function()
      		print("button pressed")local Players = game:GetService("Players")

local RunService = game:GetService("RunService")



local function createBox()

    local box = Instance.new("BoxHandleAdornment")

    box.Size = Vector3.new(4, 7, 2)

    box.Color3 = Color3.new(1, 0, 0)

    box.Transparency = 0.5

    box.ZIndex = 5

    return box

end



local function updateEsp(player, box)

    local character = player.Character

    if character and character:FindFirstChild("HumanoidRootPart") then

        box.Visible = true

        box.Adornee = character.HumanoidRootPart

        box.Parent = character.HumanoidRootPart

    else

        box.Visible = false

        box.Adornee = nil

        box.Parent = nil

    end

end



local function onPlayerAdded(player)

    local box = createBox()

    updateEsp(player, box)

    player.CharacterAdded:Connect(function()

        updateEsp(player, box)

    end)

    player.CharacterRemoving:Connect(function()

        updateEsp(player, box)

    end)

end



for _, player in ipairs(Players:GetPlayers()) do

    onPlayerAdded(player)

end



Players.PlayerAdded:Connect(function(player)

    onPlayerAdded(player)

end)



RunService.RenderStepped:Connect(function()

    for _, player in ipairs(Players:GetPlayers()) do

        updateEsp(player)

    end

end)
})

local Tab = Window:MakeTab({
	Name = "war tycoon",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "war tycoon ¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/Cazzanos/The-basement/main/Basement%20hub", true))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "ايم بوت",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "ايم بوت",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Aimbot-All-executors-16106"))()
  	end    
})
Tab:AddButton({
	Name = "ايم بوت ²",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/HomeMadeScripts/Camlock-aimlock/main/obf_Wxr6QgzF76G1y2Ch77KN4Zt5Nz0A6GIl61gitv3mRR2t3V103al5d0g26s4KY04r.lua.txt"))()
  	end    
})
Tab:AddButton({
	Name = "ايم بوت ³",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/ds5x/Scripts-Xhub/refs/heads/main/IMBOT-XHUB"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "سكربت اخرى",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "طيران",
	Callback = function()
      		print("button pressed")--ARCEUS X FLY V2 SCRIPT
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
})
Tab:AddButton({
	Name = " القفل",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproootest/Permanent-Shift-Lock-Beta/gui/PermShiftlockGui'))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "بلوكس فروت",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "بلوكس فروت ¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet('https://raw.githubusercontent.com/Script
-Blox/Script/main/PayBack.lua'))()
  	end    
})
Tab:AddButton({
	Name = "بلوكس فروت ²" [يدخلك سيرفر بي فواكه],
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/FruitFarmOp"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "mm2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = " mm2 ¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/zxclua/m/main/script"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "ماب البيوت",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "ماب البيوت ¹",
	Callback = function()
      		print("button pressed")loadstring (game: HttpGet ('https://icehub.cf/IceHubLoader')) ()
﻿
  	end    
})
