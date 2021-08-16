function changetoblue()
    if workspace.Remote.TeamEvent then
       workspace.Remote.TeamEvent:FireServer("Bright blue")
   else
       if Teams.Guards:GetPlayers() <= 8 then
        print("full")
    end  
    end 
end

function changetoorange()
    if workspace.Remote.TeamEvent then
       workspace.Remote.TeamEvent:FireServer("Bright orange")
    end  
end 

function changetored()
    if workspace.Remote.TeamEvent then
        workspace.Remote.TeamEvent:FireServer("Really red")
    end  
end 



local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Prison life V1")

local b = w:CreateFolder("Main")

local c = w:CreateFolder("Teleport")

local d = w:CreateFolder("Extras")

b:DestroyGui()

b:Button("Change to Cops", function()
    if changetoblue then
        changetoblue()
    end
end)
b:Button("Change to Prisoner", function()
    if changetoorange then
        changetoorange()
    end
end)
b:Button("Change to Criminal", function()
    if changetored then
        changetored()
    end
end)

b:Button("M9 Gun Mod", function()
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("M9")
local gunmod = require(gun:FindFirstChild("GunStates"))
    gunmod["Damage"] = 999
    gunmod["MaxAmmo"] = 9999991
    gunmod["StoredAmmo"] = 9999991
    gunmod["FireRate"] = 0.05
    gunmod["AutoFire"] = true
    gunmod["AmmoPerClip"] = 9999991
    gunmod["Range"] = 5000
    gunmod["ReloadTime"] = 0.05
    gunmod["Bullets"] = 10
end)

b:Button("AK-47 Gun Mod", function()
    local player = game:GetService("Players").LocalPlayer
    local gun = player.Backpack:FindFirstChild("AK-47")
    local gunmod = require(gun:FindFirstChild("GunStates"))
        gunmod["Damage"] = 999
        gunmod["MaxAmmo"] = 9999991
        gunmod["StoredAmmo"] = 9999991
        gunmod["FireRate"] = 0.05
        gunmod["AmmoPerClip"] = 9999991
        gunmod["Range"] = 5000
        gunmod["ReloadTime"] = 0.05
        gunmod["Bullets"] = 10
    end)

    b:Button("Remington 870 Gun Mod", function()
    local player = game:GetService("Players").LocalPlayer
    local gun = player.Backpack:FindFirstChild("Remington 870")
    local gunmod = require(gun:FindFirstChild("GunStates"))
        gunmod["Damage"] = 999
        gunmod["MaxAmmo"] = 9999991
        gunmod["StoredAmmo"] = 9999991
        gunmod["FireRate"] = 0.05
        gunmod["AutoFire"] = true
        gunmod["AmmoPerClip"] = 9999991
        gunmod["Range"] = 5000
        gunmod["ReloadTime"] = 0.05
        gunmod["Bullets"] = 10
    end)

b:Button("Get All Guns", function()
    for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do
        guns = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
        print(guns)
    end
end)

b:Label("Made by sinmcity",{
    TextSize = 17;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
}) 


c:Button("Teleport to Criminal Base", function()
    local Char = game.Players.LocalPlayer.Character
    Char.HumanoidRootPart.CFrame = CFrame.new(-921.19342, 102.584419, 2138.32153, 0.035295397, -4.68338577e-08, -0.999376953, 6.01931163e-08, 1, -4.47371917e-08, 0.999376953, -5.8576596e-08, 0.035295397)
end)

c:Button("Teleport to Yard", function()
    local Char = game.Players.LocalPlayer.Character
    Char.HumanoidRootPart.CFrame = CFrame.new(788.073059, 104.41993, 2462.57324, 0.0255437307, 5.80554982e-08, 0.999673724, 7.26546716e-08, 1, -5.9930926e-08, -0.999673724, 7.41618251e-08, 0.0255437307)
end)

c:Button("Teleport to Cells", function()
    local Char = game.Players.LocalPlayer.Character
    Char.HumanoidRootPart.CFrame = CFrame.new(916.168701, 107.210922, 2435.94971, -0.999995112, -6.81778811e-09, -0.0031206971, -6.80101664e-09, 1, -5.3848721e-09, 0.0031206971, -5.36362199e-09, -0.999995112)
end)

d:Button("Force Reset", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

d:Button("Naked", function()
local Char = game.Players.LocalPlayer.Character
Char.Pants:Destroy()
Char.Shirt:Destroy()
end)
