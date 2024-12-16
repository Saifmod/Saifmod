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
local Tab = Window:MakeTab({
	Name = "war tycoon",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "Button!",
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
	Name = "ايم بوت ¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-HUB/HUB/main/Aimbot"))()
  	end    
})
Tab:AddButton({
	Name = "ايم بوت ²",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://pastebin.com/raw/NVFVQHRm"))()
  	end    
})
Tab:AddButton({
	Name = "ايم بوت ³",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://pastebin.com/raw/v85uKg67", true))()
  	end    
})
Tab:AddButton({
	Name = "ايم بوت ⁴",
	Callback = function()
      		print("button pressed")_G.HeadSize = 50
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
  	end    
})
