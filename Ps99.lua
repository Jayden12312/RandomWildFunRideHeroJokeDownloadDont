local vi = Instance.new("VirtualInputManager")
spawn(function()
    while true do wait()



        wait(600)
        vi:SendMouseButtonEvent(115, 0, 0, true, game, 1)
        wait(0.1)
        vi:SendMouseButtonEvent(115, 0, 0, false, game, 1)
        wait(1)
    end
end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PetSim99", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "PetSim99"})

--Values
_G.Autopickup = true
_G.Autoflag = true
_G.AutoEgg = true
_G.Autotap = true
_G.range = 125
_G.Tp = true
_G.Fusion = true
_G.Autogold = true
_G.Autorainbow = true
_G.reward = true

--functions
function AutoTap()
	while _G.Autotap == true do
		wait(0.000000000001)
		pcall(function()
		for i,v in pairs(workspace.__THINGS.Breakables:GetChildren()) do
			if v.ClassName == "Model" and game:GetService("Players").LocalPlayer:DistanceFromCharacter(v:GetChildren()[1].Position) < _G.range  then
				print(v.PrimaryPart)
		game:GetService("ReplicatedStorage").Network.Breakables_PlayerDealDamage:FireServer(v.Name)
		task.wait()
			end
		end
		end)    end
end

function Autopickup()
	local orbs = workspace.__THINGS.Orbs
    local loot = workspace.__THINGS.Lootbags


    while _G.Autopickup == true do wait()
    for i,v in pairs(loot:GetChildren()) do
    
    pcall(function()
        v.PrimaryPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end)
    end

    for i,v in pairs(orbs:GetChildren()) do

    pcall(function()
        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end)

    end 
    
    end
end

function AutoDiamondflagclass()
	while _G.Autoflag == true do
		local args = {
			[1] = "Diamonds Flag",
			[2] = "d176392889014784b4976cc430a261e0"
		}
		
		game:GetService("ReplicatedStorage").Network:FindFirstChild("Flags: Consume"):InvokeServer(unpack(args))
		wait(300)
	end
end

function AutoDiamondflagdar()
    while _G.Autoflag == true do
        local args = {
            [1] = "Diamonds Flag",
            [2] = "bac2cd68b8674b308aeda3f209d18559"
        }

        game:GetService("ReplicatedStorage").Network:FindFirstChild("Flags: Consume"):InvokeServer(unpack(args))
        wait(300)
    end
end

function AutoEgg()
	     while _G.AutoEgg == true do 
            local Eggs = game.Players.LocalPlayer.PlayerScripts.Scripts.Game['Egg Opening Frontend']getsenv(Eggs).PlayEggAnimation = function() return end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.443099021911621, 41.279685974121094, -266.79241943359375)
            local args = {
			[1] = "Sakura Egg",
			[2] = 35
		}
		
		game:GetService("ReplicatedStorage").Network.Eggs_RequestPurchase:InvokeServer(unpack(args))
		wait(0.000001)
			local args = {
				[1] = {
					[1] = "ededcf394ee14e1fb79bfa25e29d792e",
					[2] = "c0106a000f3142769ca5da35bcb4dd61",
					[3] = "a3537dcd1b4f47f09e57c217c31a17ec",
					[4] = "1e49fc119a384d86869197b7438321a1",
					[5] = "2511c71cd77845c0a0800ed10465582d",
					[6] = "c4382b10a19e4152aea1d8c05fdd9c8a",
					[7] = "67e21ae54fa243a595e0b6e6c407deca",
					[8] = "0f6f662119c8427f83a394c98d425861",
					[9] = "9c3530e309584023b7582f9cc02e7d87",
					[10] = "baf5455598924d8ba35e5a29886d970c",
					[11] = "8155dd6c8f7344ad8a382d1d99b31676",
					[12] = "65693649827245b5b4e67460a1bfe2d8",
					[13] = "3fa6b0c38eee4a97bd748aa04929d19a",
					[14] = "943336608a9d44388790cc40326f8a92",
					[15] = "4658f1475d674e67bbd53c4578596309",
					[16] = "e40c15fc4a644a94a4960dcaee912732",
					[17] = "9a3a6d186c3341809880f92dae0f8ca2",
					[18] = "2887413666a54ab8a39ff6c1611ffb63",
					[19] = "28573c5000d342e9b18c41b19e953adb",
					[20] = "a57b27ef62ba492ebf136b46a0a2d17c",
					[21] = "81f9fb748cd24bc298744eb7002eb817",
					[22] = "81ddafa8a5b14b628558ce8b5d6440b5",
					[23] = "3a08fa4ff4cb40c5a365e5c46b873957",
					[24] = "c7a331ce755741abbc35cc31ae758f5e",
					[25] = "0bf409cd4e714ba6baad1dea1db15a07",
					[26] = "df9d83383875431b8dfe13bd699a3af1",
					[27] = "33ddad5649f3470b8b4f0b4df06988fc",
					[28] = "3e702b19915b4606815c883118603592",
					[29] = "9c871c801fa54d55ba1550d0279968e1",
					[30] = "bfd5632877b64cfb8470d6dd92a9f402",
					[31] = "4d61bc861ee04606a82099c234bb7c53",
					[32] = "57a28fd6b29e4afd9ed2a744632a7377",
					[33] = "a4a0b1b3503d44ff9f92c5bd52be1cfa",
					[34] = "599fbecd20be41019613265eacc9a806",
					[35] = "6fe83ff2c37c4522b093d60a48b314a6"
				}
			}
			
			game:GetService("ReplicatedStorage").Network.Pets_ClearHidden:FireServer(unpack(args))
			wait(0.0000001)        
		end
end

function StayInVip()
    while _G.Tp == true do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(217.23765563964844, 26.99614715576172, -585.0916137695312)
        wait(5)
    end
end

function fusion()
    while _G.Fusion == true do
        local args = {
            [1] = {
                ["c12c5de4f8544901b636399d0083828f"] = 45
            }
        }
        
        game:GetService("ReplicatedStorage").Network.FuseMachine_Activate:InvokeServer(unpack(args))
    wait(0.1)
end
end

function AutoGold()
    while _G.Autogold == true do
        local args = {
            [1] = "e6f43f2b742247528bae409d935c3162",
            [2] = 2
        }
        
        game:GetService("ReplicatedStorage").Network.GoldMachine_Activate:InvokeServer(unpack(args))
        wait(0.1)
    end
end

function AutoRainbow()
    while _G.Autorainbow == true do
        local args = {
            [1] = "e8677be04ac14fa2b94eef3b999c1176",
            [2] = 4
        }
        
        game:GetService("ReplicatedStorage").Network.RainbowMachine_Activate:InvokeServer(unpack(args))
        wait(0.1)
    end
end

function AutoRankRewards()
    while _G.reward do 
        wait()
    for i=1,32 do
    game:GetService("ReplicatedStorage").Network.Ranks_ClaimReward:FireServer(i)
    task.wait(0.1)
    end
    end
end

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Farming"
})

Tab:AddToggle({
	Name = "AutoTap",
	Default = false,
	Callback = function(Value)
		_G.Autotap = Value
		AutoTap()
	end    
})

Tab:AddToggle({
	Name = "Autocollect",
	Default = false,
	Callback = function(Value)
		_G.Autopickup = Value
		Autopickup()
	end    
})

Tab:AddToggle({
	Name = "AutoFinalegg",
	Default = false,
	Callback = function(Value)
		_G.AutoEgg = Value
		AutoEgg()
	end    
})


local Tab = Window:MakeTab({
	Name = "FlagToggles",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



local Section = Tab:AddSection({
	Name = "Flags"
})

Tab:AddToggle({
	Name = "Diamondflag(Class)",
	Default = false,
	Callback = function(Value)
		_G.Autoflag = Value
		AutoDiamondflagclass()
	end    
})

Tab:AddToggle({
	Name = "Diamondflag(Dark)",
	Default = false,
	Callback = function(Value)
		_G.Autoflag = Value
		AutoDiamondflagdar()
	end    
})

local Tab = Window:MakeTab({
	Name = "TpArea",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Teleports"
})

Tab:AddToggle({
	Name = "StayInVip",
	Default = false,
	Callback = function(Value)
		_G.Tp = Value
		StayInVip()
	end    
})

local Tab = Window:MakeTab({
	Name = "Utility",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Fusing/extra"
})

Tab:AddToggle({
	Name = "TurtleFuse",
	Default = false,
	Callback = function(Value)
		_G.Fusion = Value
		fusion()
	end    
})

Tab:AddToggle({
	Name = "TurtleGold",
	Default = false,
	Callback = function(Value)
		_G.Autogold = Value
		AutoGold()
	end    
})

Tab:AddToggle({
	Name = "TurtleRainbow",
	Default = false,
	Callback = function(Value)
		_G.Autorainbow = Value
		AutoRainbow()
	end    
})

Tab:AddToggle({
	Name = "AutoRankRewards",
	Default = false,
	Callback = function(Value)
		_G.reward = Value
		AutoRankRewards()
	end    
})

OrionLib:Init()