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
	Name = "كشف اماكن ¹",
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
	Name = "بلوكس فروت`",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "ريدز",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
  	end    
})
Tab:AddButton({
	Name = "بلوكس فروت ¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  	end    
})
Tab:AddButton({
	Name = "بلوكس فروت ²",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/Slimexiuem/MenuSlime/main/Farmchestv2"))()
  	end    
})
Tab:AddButton({
	Name = "سرقه فواكه",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/FruitFarmOp"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "ماب البيوت",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "ماب البيوت",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/hasan08122020108181818/devronaldo/main/ronaldodevas"))()
  	end    
})
Tab:AddButton({
	Name = "ماب البيوت [icehub]",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Ice-Hub-6414"))()
  	end    
})
Tab:AddButton({
	Name = "ماب البيوت ¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "blade Bull",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "blade Bull¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://scriptblox.com/raw/Blade-Ball-Auto-parry-and-more-8515"))()
  	end    
})
Tab:AddButton({
	Name = "blade Bull²",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet('https://rawscripts.net/raw/UPD-Blade-Ball-Auto-spam-parry-10087'))()
  	end    
})

local Tab = Window:MakeTab({
	Name = " mm2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "mm2¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
  	end    
})
Tab:AddButton({
	Name = "mm2 ²",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/zxclua/m/main/script"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "كينج ليجسي",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

locTab:AddButton({
	Name = "كينج ليجسي ¹",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet"https://raw.githubusercontent.com/HULKUexe/mobileX/main/FreeScript.lua")()
  	end    
})
Tab:AddButton({
	Name = "كينج ليجسي" ²,
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/main.lua"))()
  	end    
})
al Tab = Window:MakeTab({
	Name = "سكربتات اخرى",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "طيران",
	Callback = function()
      		print("button pressed")--ARCEUS X FLY V2 SCRIPT
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  	end    
})
Tab:AddButton({
	Name = "ازاله الاق",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
  	end    
})
Tab:AddButton({
	Name = "اختفاء",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet('https://pastebin.com/raw/AYtzGEPb'))()
  	end    
})
Tab:AddButton({
	Name = "مراقبه",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/CCTV%20Camera'))()
  	end    
})
Tab:AddButton({
	Name = "قفل",
	Callback = function()
      		print("button pressed")loadstring(game:HttpGet("https://scriptblox.com/raw/Baseplate-Universal-Script-Permanent-Shift-Lock-6924"))()
  	end    
})
