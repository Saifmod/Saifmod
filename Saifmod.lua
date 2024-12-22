--  غير مبري الذمه اي شي تسوي في السكربت
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "legends of speed", HidePremium = false, SaveConfig = true, ConfigFolder = "@ksjskawj"})
local Tab = Window:MakeTab({
	Name = "الرئيسيه",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "اهلا بك "
})
OrionLib:MakeNotification({
	Name = "@ksjskawj",
	Content = "شكرا لاستخدامك سكربتنا / @ksjskawj",
	Image = "rbxassetid://4483345998",
	Time = 5
})
Tab:AddLabel("شكرا لاستخدامك الى السكربت")
local Section = Tab:AddSection({
	Name = ""
})
Tab:AddLabel("السكربت مقدم من قناه @ksjskawj")
local Tab = Window:MakeTab({
	Name = "اخذ السرعه",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "10 نقطه مجانا",
	Callback = function()
      		print("button pressed")local args = {
    [1] = "collectOrb",
    [2] = "Orange Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "20 نقطه مجانا",
	Callback = function()
      		print("button pressed")local args = {
    [1] = "collectOrb",
    [2] = "Red Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
  	end    
})
