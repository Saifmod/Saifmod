wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "hi";
    Text = "script my saif"; -- ARAB TEAM --
    Duration = 5;
})
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "كشف اماكن ",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name =" كشف اماكن ¹!",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
  	end    
})
Tab:AddButton({
	Name = "كشف اماكن ²",
	Callback = function()
      		print("button pressed")
  	end    
})
Tab:AddButton({
	Name = "كشف اماكن ³",
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
local Tab = Window:MakeTab({
	Name = "ايم بوت",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "ايم بوت ¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/HomeMadeScripts/Camlock-aimlock/main/obf_Wxr6QgzF76G1y2Ch77KN4Zt5Nz0A6GIl61gitv3mRR2t3V103al5d0g26s4KY04r.lua.txt"))()
  	end    
})
Tab:AddButton({
	Name = "ايم بوت ²",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/HomeMadeScripts/Camlock-aimlock/main/obf_Wxr6QgzF76G1y2Ch77KN4Zt5Nz0A6GIl61gitv3mRR2t3V103al5d0g26s4KY04r.lua.txt"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "سكربتات اخرى",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "طيران",
	Callback = function()
      		print("button pressed")local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.HumanoidRootPart
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
  	end    
})
