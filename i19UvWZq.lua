--[[
Time Wasted : 0:30HR
]]
--[[
   __ __              __          
  / //_/_____ _____  / /____  ___ 
 / ,< / __/ // / _ \/ __/ _ \/ _ \
/_/|_/_/  \_, / .__/\__/\___/_//_/
       /___/_/
> Krypton | NON OPEN-SOURCED
]]
print("Krypton Multipurpose Hub | NON OPEN-SOURCED")
--[] Arguments
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source'))()
--[] Krypton Locals
_G.CrosshairVisible = true
local apiKey = ""
local apiUrl = "https://api.openai.com/v1/chat/completions"
local ProxyUrl = ""
local Players = game:GetService("Players")
local uis = game:GetService("UserInputService")
local ismobile = uis.TouchEnabled
local HttpService = game:GetService("HttpService")
UserInputService = game:GetService("UserInputService")
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local ID = game:GetService("Players").LocalPlayer.UserId
local PLAYERNAME = game:GetService("Players").LocalPlayer.Name
local GameID = tostring(game.PlaceId)
local LocalPlayer = game:GetService("Players").LocalPlayer.Name
local MembershipType = "a"
local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
local AccountAge = LocalPlayer.AccountAge
--[] Force Reset Character
local function forceResetAction()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.Health = 0
    end
end

--[] Crosshair
function Crosshair()
    -- Check if Drawing API is available
    local function API_Check()
        if Drawing == nil then
            return false
        else
            return true
        end
    end

    -- Initialize Drawing API check
    if not API_Check() then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "KryptonReload";
            Text = "Crosshair script could not be loaded because your exploit is unsupported.";
            Duration = math.huge;
            Button1 = "OK"
        })
        return
    end

    -- Required services and variables
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Camera = workspace.CurrentCamera

    -- Global settings
    _G.SendNotifications = false
    _G.DefaultSettings = false
    _G.ToMouse = false
    _G.CrosshairSize = 20
    _G.CrosshairThickness = 1
    _G.CrosshairColor = Color3.fromRGB(255, 255, 255)
    _G.CrosshairTransparency = 1
    _G.DisableKey = Enum.KeyCode.Q

    -- Drawing setup
    local HorizontalLine = Drawing.new("Line")
    local VerticalLine = Drawing.new("Line")

    -- Function to update crosshair position and appearance
    local function UpdateCrosshair()
        local Real_Size = _G.CrosshairSize / 2

        HorizontalLine.Color = _G.CrosshairColor
        HorizontalLine.Thickness = _G.CrosshairThickness
        HorizontalLine.Visible = _G.CrosshairVisible
        HorizontalLine.Transparency = _G.CrosshairTransparency
        
        VerticalLine.Color = _G.CrosshairColor
        VerticalLine.Thickness = _G.CrosshairThickness
        VerticalLine.Visible = _G.CrosshairVisible
        VerticalLine.Transparency = _G.CrosshairTransparency
        
        if _G.ToMouse == true then
            local MouseLocation = UserInputService:GetMouseLocation()
            HorizontalLine.From = Vector2.new(MouseLocation.X - Real_Size, MouseLocation.Y)
            HorizontalLine.To = Vector2.new(MouseLocation.X + Real_Size, MouseLocation.Y)
            
            VerticalLine.From = Vector2.new(MouseLocation.X, MouseLocation.Y - Real_Size)
            VerticalLine.To = Vector2.new(MouseLocation.X, MouseLocation.Y + Real_Size)
        else
            local ViewportSize = Camera.ViewportSize / 2
            local Axis_X, Axis_Y = ViewportSize.X, ViewportSize.Y
            
            HorizontalLine.From = Vector2.new(Axis_X - Real_Size, Axis_Y)
            HorizontalLine.To = Vector2.new(Axis_X + Real_Size, Axis_Y)
        
            VerticalLine.From = Vector2.new(Axis_X, Axis_Y - Real_Size)
            VerticalLine.To = Vector2.new(Axis_X, Axis_Y + Real_Size)
        end
    end

    -- RenderStepped connection to update crosshair
    RunService.RenderStepped:Connect(UpdateCrosshair)

    -- Default settings initialization
    if _G.DefaultSettings == true then
        _G.CrosshairVisible = true
        _G.CrosshairSize = 25
        _G.CrosshairThickness = 1
        _G.CrosshairColor = Color3.fromRGB(255, 255, 255)
        _G.CrosshairTransparency = 0.15
        _G.DisableKey = Enum.KeyCode.Q
    end

    -- Input handlers
    local Typing = false

    UserInputService.TextBoxFocused:Connect(function()
        Typing = true
    end)

    UserInputService.TextBoxFocusReleased:Connect(function()
        Typing = false
    end)

    UserInputService.InputBegan:Connect(function(Input)
        if Input.KeyCode == _G.DisableKey and not Typing then
            _G.CrosshairVisible = not _G.CrosshairVisible
            
            if _G.SendNotifications then
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "KryptonReload";
                    Text = "The crosshair's visibility is now set to " .. tostring(_G.CrosshairVisible) .. ".";
                    Duration = 5;
                })
            end
        end
    end)
end

--[] Bypasser Functions
local function fetchAndParse(url)
	local success, response = pcall(function()
		return HttpService:GetAsync(url)
	end)
	if success then
		local parsedResponse = HttpService:JSONDecode(response)
		local status = parsedResponse.status
		local key = parsedResponse.key or "No key provided"
		local message = parsedResponse.message or "No message provided"
		if status == "success" then
			status = message
		end
		return status, key, message
	else
		warn("Failed to fetch URL:", response)
		return nil, nil, nil
	end
end
local baseURL = "http://45.90.13.151:6041/?url="
userInput = ""
local fullURL = baseURL .. HttpService:UrlEncode(userInput)
local status, key, message = fetchAndParse(fullURL)
finalStatus = status
finalKey = key
finalMessage = message

function PrintResultBypass()
	print(finalStatus)
	print(finalKey)
	print(finalMessage)
end
--[] ChatGPT ResponeDirect
local function getChatGPTResponseDirect(message)
	local requestBody = HttpService:JSONEncode({
		model = "gpt-3.5-turbo",
		messages = {
			{
				role = "user",
				content = message
			}
		}
	})
	local headers = {
		["Authorization"] = "Bearer " .. apiKey,
		["Content-Type"] = "application/json"
	}
	local response
	local success, errorMessage = pcall(function()
		response = HttpService:PostAsync(apiUrl, requestBody, Enum.HttpContentType.ApplicationJson, false, headers)
	end)
	if success then
		local data = HttpService:JSONDecode(response)
		if data and data.choices and data.choices[1] then
			return data.choices[1].message.content
		end
	else
		warn("Failed to get response from ChatGPT: " .. errorMessage)
	end
	return "Sorry, I couldn't understand that."
end
--[] ChatGPT ResponeProxy
local function getChatGPTResponseViaProxy(message, proxyUrl)
	local requestBody = HttpService:JSONEncode({
		message = message
	})
	local response
	local success, errorMessage = pcall(function()
		response = HttpService:PostAsync(proxyUrl, requestBody, Enum.HttpContentType.ApplicationJson)
	end)
	if success then
		local data = HttpService:JSONDecode(response)
		if data and data.choices and data.choices[1] then
			return data.choices[1].message.content
		end
	else
		warn("Failed to get response from ChatGPT via proxy: " .. errorMessage)
	end
	return "Sorry, I couldn't understand that."
end

 
if ismobile then
	loadstring(game:HttpGet("https://pastebin.com/raw/qyFBKExn"))()
end

--[] Vuln Checker
for i, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
	if v.Name == "DestroySegway" or v.Name == "DeleteCar" or v.Name == "HandlessSegway" or v.Name == "Building Tools" or v.Name == "SetNetworkOwnership" or v.Name == "ChangeParent" or v.Name == "despawn" then
		OrionLib:MakeNotification({
			Name = "Krypton",
			Content = "Vuln FOUND!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		VulnGame = true
	end
end

--[] Krypton Window
local Window = OrionLib:MakeWindow({
	Name = "Krypton | HUB",
	HidePremium = false,
	IntroEnabled = true,
	IntroText = "Krypton",
	SaveConfig = false,
	ConfigFolder = "Krypton",
})

--[] Krypton Notification
OrionLib:MakeNotification({
	Name = "Krypton",
	Content = "Krypton started successfully",
	Image = "rbxassetid://7733771628",
	Time = 5
})

function scriptnotify()
	OrionLib:MakeNotification({
		Name = "Krypton",
		Content = "Script ran",
		Image = "rbxassetid://7733771628",
		Time = 5
	})
end

function scriptnotfound()
	OrionLib:MakeNotification({
		Name = "Krypton",
		Content = "Script cannot be found ]:",
		Image = "rbxassetid://7733771628",
		Time = 5
	})
end

--[] Krypton Tabs
local UniversalHubTab = Window:MakeTab({
	Name = "Universal Hubs",
	Icon = "rbxassetid://7733954760",
	PremiumOnly = false
})

local TrollTab = Window:MakeTab({
	Name = "Troll",
	Icon = "rbxassetid://7733741741",
	PremiumOnly = false
})

local ServerTab = Window:MakeTab({
	Name = "Server",
	Icon = "rbxassetid://7734053426",
	PremiumOnly = false
})

local AdminTab = Window:MakeTab({
	Name = "Admin",
	Icon = "rbxassetid://7734056608",
	PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://7743875962",
	PremiumOnly = false
})

local DebuggingTab = Window:MakeTab({
	Name = "Debugging",
	Icon = "rbxassetid://7743872929",
	PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://7734053495",
	PremiumOnly = false
})

local InfoTab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://7743866778",
	PremiumOnly = false
})

local MisciTab = Window:MakeTab({
	Name = "Micsi",
	Icon = "rbxassetid://7733793319",
	PremiumOnly = false
})

--[] Krypton | Universal

--[] Seperator
local Section = UniversalHubTab:AddSection({
	Name = "Universal Hub [99+]"
})
--[] Seperator

UniversalHubTab:AddButton({
	Name = "Rochips V5 [99+]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Zm2VwbsU"))()
	end
})

--[] Seperator
local Section = UniversalHubTab:AddSection({
	Name = " Universal Hub [50+]"
})
--[] Seperator

UniversalHubTab:AddButton({
	Name = "Skyhub [50+]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
	end
})

UniversalHubTab:AddButton({
	Name = "Unfair Hub [50+]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
	end
})

--[] Seperator
local Section = UniversalHubTab:AddSection({
	Name = "Universal Hub [15+]"
})
--[] Seperator

UniversalHubTab:AddButton({
	Name = "Ender Hub [15+]",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/NovaExploits/NovaX-Key/main/Ender'))() 
	end
})

--[] Krypton | Troll

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Classic"
})
--[] Seperator


TrollTab:AddButton({
	Name = "CoolKid Panel",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ckid", true))() 
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Universal Troll GUI"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Ultimate Trolling GUI [V1]",
	Callback = function()
		scriptnotfound()
	end
})

TrollTab:AddButton({
	Name = "Ultimate Trolling GUI [V2]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/UZPJ7jGs"))()
	end
})

TrollTab:AddButton({
	Name = "Ultimate Trolling GUI [V3]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukez/Scripts/main/UTG%20V3%20RAW"))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Universal FE GUIS"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Universal FE GUI [1]",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
	end
})

TrollTab:AddButton({
	Name = "Universal FE GUI [2]",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/o5u3/Selexity/main/Main'), true))()
	end
})

TrollTab:AddButton({
	Name = "Universal FE GUI [3]",
	Callback = function()
		loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-Rochips-Panel-v4-13177'))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Universal Troll Hubs"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Skyhub Trolling [2+]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Scripts"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Netless FE",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/pXWQxpLK'))()
	end
})

TrollTab:AddButton({
	Name = "Fling All FE",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
	end
})

TrollTab:AddButton({
	Name = "Fling Random FE",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/1FaK0DnK'))()
	end
})

TrollTab:AddButton({
	Name = "Touch Fling FE",
	Callback = function()
		loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/544f7efbe88235666b5b7add65b7344d/raw/f20804bb85542dcc3bc938982e1f05b7ff05cded/FE%2520Hat%2520Fling'))()
	end
})	

TrollTab:AddButton({
	Name = "Click Fling FE",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt'), true))()
	end
})	

TrollTab:AddButton({
	Name = "Orbit GUI FE",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Orbit%20GUI"))()
	end
})

TrollTab:AddButton({
	Name = "Giant Head FE",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/Dif6a2SK'))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Anti's"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Anti Fling",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/h8sLkBP0"))()
	end
})

TrollTab:AddButton({
	Name = "Anti Fling",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/tMHP76Ex"))()
	end
})

TrollTab:AddButton({
	Name = "Anti Fling",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/DVJUMC9j"))()
	end
})

TrollTab:AddButton({
	Name = "Anti Fling",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/DVJUMC9j"))()
	end
})

TrollTab:AddButton({
	Name = "Anti Bang",
	Callback = function()
		loadstring(game:HttpGet('https://github.com/AnthonyIsntHere/anthonysrepository/raw/main/scripts/Anti%20Bang.lua'))()
	end
})

TrollTab:AddButton({
	Name = "Anti Tool Kill",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/Anti%20Tool%20Kill.lua'))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "No Dignity"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Sussy HUB FE",
	Callback = function()
		loadstring(game:HttpGet('https://gist.githubusercontent.com/Nilrogram/8b0c8bd710be142f383c71f79279752c/raw/e4fb01a7de7cd498bb53270d2ad191dfab268a88/FE%2520SussyHub', true))()
	end
})

TrollTab:AddButton({
	Name = "Bang GUI FE",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/RENBex6969/Krypton/main/BangGui.lua'))()
	end
})

--[] Krypton | Server
ServerTab:AddButton({
	Name = "SIMPLE Chat Bypasser",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BakaPraselol/MRCBV4LSB4KRS/main/Loader"))()
	end
})

ServerTab:AddButton({
	Name = "BetterBypasser",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua", true))()
		Method = 3
		Keybind = "F"
		ShowMethodDictionary = true
	end
})

--[] Seperator
local Section = ServerTab:AddSection({
	Name = "Essentials [1]"
})
--[] Seperator

ServerTab:AddButton({
	Name = "Server Stat Icons",
	Callback = function()
		local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
		module:Teleport(game.PlaceId)
	end
})

ServerTab:AddButton({
	Name = "Server HOP",
	Callback = function()
		local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
		module:Teleport(game.PlaceId)
	end
})

ServerTab:AddButton({
	Name = "Server Auto Rejoin",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/9fYwjt6n"))()
	end
})

ServerTab:AddButton({
	Name = "Server Rejoin",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
	end
})

ServerTab:AddButton({
	Name = "Server Kick",
	Callback = function()
		game:GetService("Players").LocalPlayer:Kick("Kicked by Krypton")
	end
})

ServerTab:AddButton({
	Name = "Server Join Smallest Server",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/QQMDVUHL"))() 
	end
})

--[] Seperator
local Section = ServerTab:AddSection({
	Name = "Essentials [2]"
})
--[] Seperator

ServerTab:AddButton({
	Name = "Anti AFK V1",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
	end
})

ServerTab:AddButton({
	Name = "Anti Kick",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/gsxvWvnj"))()
	end
})

--[] Krypton | Admin
AdminTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/script/Infinite%20Yield.txt"))()
	end    
})

AdminTab:AddButton({
	Name = "Infinite Yield Secure",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/ionlyusegithubformcmods/1-Line-Scripts/raw/main/Infinite%20Yield%20but%20with%20secure%20dex"))()
	end    
})


AdminTab:AddButton({
	Name = "Fate's Admin",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
	end    
})

AdminTab:AddButton({
	Name = "CMD-X",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
	end    
})

AdminTab:AddButton({
	Name = "Nameless",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
	end    
})

AdminTab:AddButton({
	Name = "Proton",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/HuT90Wbu"))()
	end    
})

AdminTab:AddButton({
	Name = "Reviz",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/ibFPdiF7'))()
	end    
})

AdminTab:AddButton({
	Name = "Shattervast",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/iL4NRDux'))()
	end    
})

AdminTab:AddButton({
	Name = "Homebrew",
	Callback = function()
		_G.CustomUI = false
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'), true))()
	end    
})

AdminTab:AddButton({
	Name = "Homebrew Custom UI",
	Callback = function()
		_G.CustomUI = true
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'), true))()
	end    
})
--[] Krypton | Player

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Player Tools"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "TP Tool",
	Callback = function()
		mouse = game.Players.LocalPlayer:GetMouse()
		tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Tp Tool"
		tool.Activated:connect(function()
			local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
			pos = CFrame.new(pos.X, pos.Y, pos.Z)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end)
		tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

PlayerTab:AddButton({
	Name = "BTools",
	Callback = function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
	end    
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Character Scripts"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "Fly V3",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/bHa6HDFc'))()
	end
})	

PlayerTab:AddButton({
	Name = "Shiftlock",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/CjNsnSDy'))()
	end
})

PlayerTab:AddButton({
	Name = "Anti-AFK",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
	end    
})

PlayerTab:AddButton({
	Name = "FullBright",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/xVrJdCn2"))
	end    
})

function RefreshESP()
	getgenv().TC = false;
	local a = "Name"
	local b = game:GetService("Players")
	local c = b.LocalPlayer;
	local d = false;
	while task.wait() do
		if not getgenv().Toggle then
			break
		end;
		if d then
			return
		end;
		d = true;
		pcall(function()
			for e, f in pairs(b:GetChildren()) do
				if f:IsA("Player") then
					if f ~= c then
						if f.Character then
							local g = math.floor((c.Character:FindFirstChild("HumanoidRootPart").Position - f.Character:FindFirstChild("HumanoidRootPart").Position).magnitude)
							if f.Character:FindFirstChild("Totally NOT Esp") == nil and f.Character:FindFirstChild("Icon") == nil and getgenv().TC == false then
								local h = Instance.new("Highlight", f.Character)
								h.Name = "Totally NOT Esp"
								h.Adornee = f.Character;
								h.Archivable = true;
								h.Enabled = true;
								h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
								h.FillColor = f.TeamColor.Color;
								h.FillTransparency = 0.5;
								h.OutlineColor = Color3.fromRGB(255, 255, 255)
								h.OutlineTransparency = 0;
								local i = Instance.new("BillboardGui", f.Character)
								local j = Instance.new("TextLabel")
								i.Name = "Icon"
								i.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
								i.Active = true;
								i.AlwaysOnTop = true;
								i.ExtentsOffset = Vector3.new(0, 1, 0)
								i.LightInfluence = 1.000;
								i.Size = UDim2.new(0, 800, 0, 50)
								j.Name = "ESP Text"
								j.Parent = i;
								j.BackgroundColor3 = f.TeamColor.Color;
								j.BackgroundTransparency = 1.000;
								j.Size = UDim2.new(0, 800, 0, 50)
								j.Font = Enum.Font.SciFi;
								j.Text = f[a] .. " | Distance: " .. g;
								j.TextColor3 = f.TeamColor.Color;
								j.TextSize = 18.000;
								j.TextWrapped = true
							else
								if f.TeamColor ~= c.TeamColor and f.Character:FindFirstChild("Totally NOT Esp") == nil and f.Character:FindFirstChild("Icon") == nil and getgenv().TC == true then
									local h = Instance.new("Highlight", f.Character)
									h.Name = "Totally NOT Esp"
									h.Adornee = f.Character;
									h.Archivable = true;
									h.Enabled = true;
									h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
									h.FillColor = f.TeamColor.Color;
									h.FillTransparency = 0.5;
									h.OutlineColor = Color3.fromRGB(255, 255, 255)
									h.OutlineTransparency = 0;
									local i = Instance.new("BillboardGui", f.Character)
									local j = Instance.new("TextLabel")
									i.Name = "Icon"
									i.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
									i.Active = true;
									i.AlwaysOnTop = true;
									i.ExtentsOffset = Vector3.new(0, 1, 0)
									i.LightInfluence = 1.000;
									i.Size = UDim2.new(0, 800, 0, 50)
									j.Name = "ESP Text"
									j.Parent = i;
									j.BackgroundColor3 = f.TeamColor.Color;
									j.BackgroundTransparency = 1.000;
									j.Size = UDim2.new(0, 800, 0, 50)
									j.Font = Enum.Font.SciFi;
									j.Text = f[a] .. " | Distance: " .. g;
									j.TextColor3 = f.TeamColor.Color;
									j.TextSize = 18.000;
									j.TextWrapped = true
								else
									if not f.Character:FindFirstChild("Totally NOT Esp").FillColor == f.TeamColor.Color and not f.Character:FindFirstChild("Icon").TextColor3 == f.TeamColor.Color then
										f.Character:FindFirstChild("Totally NOT Esp").FillColor = f.TeamColor.Color;
										f.Character:FindFirstChild("Icon").TextColor3 = f.TeamColor.Color
									else
										if f.Character:FindFirstChild("Totally NOT Esp").Enabled == false and f.Character:FindFirstChild("Icon").Enabled == false then
											f.Character:FindFirstChild("Totally NOT Esp").Enabled = true;
											f.Character:FindFirstChild("Icon").Enabled = true
										else
											if f.Character:FindFirstChild("Icon") then
												f.Character:FindFirstChild("Icon")["ESP Text"].Text = f[a] .. " | Distance: " .. g
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end)
		wait()
		d = false
	end
end

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "ESP"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "Refresh ESP",
	Callback = function()
		RefreshESP()
	end    
})

PlayerTab:AddButton({
	Name = "Turn On ESP",
	Callback = function()
		getgenv().Toggle = true
	end    
})

PlayerTab:AddButton({
	Name = "Turn Off ESP",
	Callback = function()
		getgenv().Toggle = false
	end    
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Crosshair"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "Refresh Crosshair",
	Callback = function()
		Crosshair()
	end    
})

PlayerTab:AddButton({
	Name = "Turn On Crosshair",
	Callback = function()
		_G.CrosshairVisible = true
		Crosshair()
	end    
})

PlayerTab:AddButton({
	Name = "Turn Off Crosshair",
	Callback = function()
		_G.CrosshairVisible = false
		Crosshair()
	end    
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Character Preset"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "Reset Character",
	Callback = function()
		forceResetAction()
	end    
})

PlayerTab:AddButton({
	Name = "Super Human",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 100
	end    
})

PlayerTab:AddButton({
	Name = "Super Human++",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 100
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 200
	end    
})

PlayerTab:AddButton({
	Name = "Slow RocketShip",
	Callback = function()
		game.workspace.Gravity = 1
	end    
})

PlayerTab:AddButton({
	Name = "God",
	Callback = function()
		loadstring(game:HttpGet("https://freenote.biz/raw/Fhpx5r5A8M"))()
	end
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Character Settings"
})
--[] Seperator

local Noclipping = nil
PlayerTab:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(a)
		getgenv().looping = a
		task.spawn(function()
			while true do 
				if not getgenv().looping then
					for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") and v.CanCollide == false then
							v.CanCollide = true
						end
					end
					break
				end
				task.wait()
				if getgenv().looping and game:GetService("Players").LocalPlayer.Character ~= nil then
					for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") and v.CanCollide == true then
							v.CanCollide = false
						end
					end
				end
			end
		end)
	end
})

local WalkSpeed = PlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

local JumpPower = PlayerTab:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "Jump power",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
	end 
})

local FOV = PlayerTab:AddSlider({
	Name = "FOV",
	Min = 70,
	Max = 1000,
	Default = 70,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		game:GetService("Workspace").CurrentCamera.FieldOfView = Value
	end 
})

local Gravity = PlayerTab:AddSlider({
	Name = "Gravity",
	Min = 1,
	Max = 1000,
	Default = 192.2,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		game.workspace.Gravity = Value
	end 
})

PlayerTab:AddTextbox({
	Name = "Walkspeed",
	Default = "16",
	TextDisappear = false,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	  
})

PlayerTab:AddTextbox({
	Name = "Jump power",
	Default = "50",
	TextDisappear = false,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
	end	  
})

PlayerTab:AddTextbox({
	Name = "FOV",
	Default = "70",
	TextDisappear = false,
	Callback = function(Value)
		game:GetService("Workspace").CurrentCamera.FieldOfView = Value
	end	  
})

PlayerTab:AddTextbox({
	Name = "Gravity",
	Default = "192.2",
	TextDisappear = false,
	Callback = function(Value)
		game.workspace.Gravity = Value
	end	  
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Reset"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "Reset Character",
	Callback = function()
		forceResetAction()
	end    
})

PlayerTab:AddButton({
	Name = "Reset Walkspeed",
	Callback = function()
		WalkSpeed:Set(16)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end    
})

PlayerTab:AddButton({
	Name = "Reset Jump Power",
	Callback = function()
		JumpPower:Set(50)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
	end    
})

PlayerTab:AddButton({
	Name = "Reset FOV",
	Callback = function()
		FOV:Set(70)
		game:GetService("Workspace").CurrentCamera.FieldOfView = 70
	end    
})

PlayerTab:AddButton({
	Name = "Reset Gravity",
	Callback = function()
		Gravity:Set(192.2)
		game.workspace.Gravity = 192.2
	end    
})

PlayerTab:AddButton({
	Name = "Reset Walkspeed & Jump Power & FOV & Gravity",
	Callback = function()
		JumpPower:Set(50)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
		WalkSpeed:Set(16)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
		FOV:Set(70)
		game:GetService("Workspace").CurrentCamera.FieldOfView = 70
		Gravity:Set(192.2)
		game.workspace.Gravity = 192.2
	end    
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Misci"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "Display Name Remover",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/XdAKeTym'))()
	end
})	

PlayerTab:AddButton({
	Name = "Push to talk [T]",
	Callback = function()
		loadstrin(game:HttpGet("https://pastebin.com/raw/XcZPe0Lj"))()
	end
})	


--[] Krypton | Debugging

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Executor UI's"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Executer UI++",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Hu0XkvMg"))()
	end
})

DebuggingTab:AddButton({
	Name = "Executer UI+",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/PzCjpXMC"))()
	end
})

DebuggingTab:AddButton({
	Name = "Executer UI",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/9nvwUAGr"))()
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Executor"
})
--[] Seperator

DebuggingTab:AddTextbox({
	Name = "Executor",
	Default = "Paste your scripts here",
	TextDisappear = false,
	Callback = function(Value)
		ExecutorValue = Value
	end	  
})
DebuggingTab:AddButton({
	Name = "Execute",
	Callback = function()
		loadstring(ExecutorValue)()
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Executor Testing"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Open Console",
	Callback = function()
		game:GetService'StarterGui':SetCore("DevConsoleVisible", true)
	end
})

DebuggingTab:AddButton({
	Name = "Executor LVL",
	Callback = function()
		printidentity()
	end
})

DebuggingTab:AddButton({
	Name = "Vulnerability Scanner",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/OfficialValkyrie/Vulnerability-Check/main/Executor%20Vulnerability%20Check"))()
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "UNC Test's"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "UNC Test [1]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
	end
})

DebuggingTab:AddButton({
	Name = "UNC Test [2]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/tests/main/UNC%20no%20luau.lua"))()
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Anti-Cheat Bypass"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "AC Bypasser+ [ANTICHEAT]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Xen8054/AntiCheatBypassPLUS/main/Script"))();
	end
})

DebuggingTab:AddButton({
	Name = "Adonis Bypasser [ANTICHEAT]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/GZRt3WgA"))()
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Essentials"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Coords Finder V2",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/FSy9bHnW"))()
	end
})	

DebuggingTab:AddButton({
	Name = "Http Spy",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-httpspy-8197"))()
	end
})	

DebuggingTab:AddButton({
	Name = "Keyboard",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-MobileKeyboard-8101"))()
	end
})	

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Admin"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/script/Infinite%20Yield.txt"))()
	end    
})
DebuggingTab:AddButton({
	Name = "Fate's Admin",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
	end    
})
DebuggingTab:AddButton({
	Name = "CMD-X",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
	end    
})
DebuggingTab:AddButton({
	Name = "Nameless",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
	end    
})
DebuggingTab:AddButton({
	Name = "Proton",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/HuT90Wbu"))()
	end    
})
DebuggingTab:AddButton({
	Name = "Reviz",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/ibFPdiF7'))()
	end    
})
DebuggingTab:AddButton({
	Name = "Homebrew",
	Callback = function()
		_G.CustomUI = false
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'), true))()
	end    
})

DebuggingTab:AddButton({
	Name = "Homebrew Custom UI",
	Callback = function()
		_G.CustomUI = true
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'), true))()
	end    
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Experimental"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Lag Reducer",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/RW7ZT29m'))()
	end
})

DebuggingTab:AddButton({
	Name = "FPS Counter",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/sdluniversal/main/fpsviewer.lua"))()
	end
})

DebuggingTab:AddButton({
	Name = "FPS+",
	Callback = function()
		loadstring(game:HttpGet("https://fpsplus.000webhostapp.com/OBFUSCATED_SOURCE_FPSPLUS.lua", true))()
	end
})	

DebuggingTab:AddTextbox({
	Name = "FPS Cap Changer",
	Default = "60",
	TextDisappear = false,
	Callback = function(Value)
		setfpscap(Value)
	end	  
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Dex's"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Dark Dex V1",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://3025032531")[1].Source)()
	end
})	

DebuggingTab:AddButton({
	Name = "Dark Dex V2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script4", true))()
	end
})	

DebuggingTab:AddButton({
	Name = "Dark Dex V3",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
	end
})	

DebuggingTab:AddButton({
	Name = "Dark Dex V4",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script5", true))()
	end
})

DebuggingTab:AddButton({
	Name = "Dark Dex V4 [MOBILE]",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/Hosvile/DEX-Explorer/releases/latest/download/main.lua", true))()
	end
})	

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Remote SPY"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "SimpleSPY V3",
	Callback = function()
		loadstring(game:HttpGet('loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()'))()
	end
})

DebuggingTab:AddButton({
	Name = "SimpleSPY V2.2",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua'))()
	end
})

DebuggingTab:AddButton({
	Name = "TurtleSPY",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Brand/Turtle-Spy/main/source.lua", true))()
	end
})	

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Backdoor Scanner & Executor"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Backdoor Scanner & [EXECUTOR] 1",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/L1ghtingBolt/FraktureSS/master/source.lua', true))()
	end
})	

DebuggingTab:AddButton({
	Name = "Backdoor Scanner & [EXECUTOR] 2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua"))();
	end
})

DebuggingTab:AddButton({
	Name = "Backdoor Scanner & [EXECUTOR] 3",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()
	end
})

--[] Krypton | Settings
SettingsTab:AddButton({
	Name = "End Krypton",
	Callback = function()
		OrionLib:Destroy()
	end    
})

SettingsTab:AddButton({
	Name = "Reload Krypton",
	Callback = function()
		print("Krypton Reloaded Succesfully")
		loadstring(game:HttpGet(""))
		OrionLib:Destroy()
	end    
})

--[] Seperator
local Section = SettingsTab:AddSection({
	Name = "ChatGPT"
})
--[] Seperator

SettingsTab:AddTextbox({
	Name = "ChatGPT API Key",
	Default = "Enter your own api key",
	TextDisappear = false,
	Callback = function(Value)
		apiKey = Value
	end	  
})

SettingsTab:AddTextbox({
	Name = "ChatGPT API Url",
	Default = "https://api.openai.com/v1/chat/completions",
	TextDisappear = false,
	Callback = function(Value)
		apiUrl = Value
	end	  
})

SettingsTab:AddTextbox({
	Name = "ChatGPT Proxy URL",
	Default = "Enter your proxy url",
	TextDisappear = true,
	Callback = function(Value)
		ProxyUrl = Value
	end	  
})

SettingsTab:AddButton({
	Name = "ChatGPT Proxy Code",
	Callback = function()
		setclipboard("non")
	end    
})

--[] Krypton | Info

InfoTab:AddParagraph("Krypton VER", "2.0a")

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Information"
})
--[] Seperator

InfoTab:AddParagraph("Krypton", "Krypton, a non opensource hub")

InfoTab:AddParagraph("Script", "Scripts within Krypton is all internet found.")

InfoTab:AddParagraph("Bypasser", "Bypasser is using Bypassi API currently the best free API")

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Developers"
})
--[] Seperator

InfoTab:AddParagraph("Krypton / REN", "Founder")

InfoTab:AddParagraph("Jazmine", "Founder of Skyhub, Helped with 50% of everything [:")

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Development Testers"
})
--[] Seperator

InfoTab:AddParagraph("Eryxie", "First tester of Krypton")

InfoTab:AddParagraph("Jazmine", "Second tester of Krypton")

InfoTab:AddParagraph("Testaccount", "Third tester of Krypton")

InfoTab:AddParagraph("Missing Name?", "Be a tester right now!")

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Social"
})
--[] Seperator

InfoTab:AddButton({
	Name = "Github",
	Callback = function()
		setclipboard("Not yet Implemented")
	end
})

InfoTab:AddButton({
	Name = "Discord",
	Callback = function()
		setclipboard("Not yet Implemented")
	end
})

InfoTab:AddButton({
	Name = "Youtube",
	Callback = function()
		setclipboard("Not yet Implemented")
	end
})

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Information"
})

InfoTab:AddParagraph("GameVuln Found", VulnGame)

InfoTab:AddParagraph("Hardware ID", HWID)

InfoTab:AddParagraph("Roblox Username", PLAYERNAME)

InfoTab:AddParagraph("Roblox ID", ID)

InfoTab:AddParagraph("MembershipType", MembershipType)

InfoTab:AddParagraph("Account Age", AccountAge)

InfoTab:AddParagraph("Game ID", GameID)

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Copy"
})
--[] Seperator

InfoTab:AddButton({
	Name = "Copy your HWID",
	Callback = function()
		setclipboard(HWID)
	end
})

InfoTab:AddButton({
	Name = "Copy your Username",
	Callback = function()
		setclipboard(PLAYERNAME)
	end
})

InfoTab:AddButton({
	Name = "Copy your ID",
	Callback = function()
		setclipboard(ID)
	end
})

InfoTab:AddButton({
	Name = "Copy your MembershipType",
	Callback = function()
		setclipboard(MembershipType)
	end
})

InfoTab:AddButton({
	Name = "Copy your Account Age",
	Callback = function()
		setclipboard(AccountAge)
	end
})

InfoTab:AddButton({
	Name = "Copy Game ID",
	Callback = function()
		setclipboard(GameID)
	end
})

--[] Krypton | Suggestion

--[] Seperator
local Section = MisciTab:AddSection({
	Name = "Load's"
})
--[] Seperator

MisciTab:AddParagraph("Suggestion UI", "DISCLAIMER : When suggestion UI is loaded we will log your ip for secruity purposes.")

MisciTab:AddButton({
	Name = "Load Suggestion Ui",
	Callback = function()
		loadstring(game:HttpGet('https://github.com/RENBex6969/OfficialKrypton/raw/main/Suggestion.lua'))()
		IPLogger()
	end
})

MisciTab:AddButton({
	Name = "Load Toggle Ui",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/qyFBKExn"))()
	end
})

MisciTab:AddButton({
	Name = "Load Changelogs Ui",
	Callback = function()
		loadstring(game:HttpGet(""))()
	end
})

--[] Seperator
local Section = MisciTab:AddSection({
	Name = "Bypass Links"
})
--[] Seperator

MisciTab:AddParagraph("Supported Key System Links", "Fluxus Key,  Delta Key, Hydrogen Key, VegaX Key, Bananahub Key, Every Key system that is platoboost,")
MisciTab:AddParagraph("Supported Ad-links", "Linkvertise")

MisciTab:AddTextbox({
	Name = "Place what you wanna bypass",
	Default = "Place your link here",
	TextDisappear = true,
	Callback = function(Value)
		UserInput = Value
	end	  
})

MisciTab:AddButton({
	Name = "Bypass",
	Callback = function()
		if userInput == "" then
			warn("Enter Valid Link")
		end
		fetchAndParse(url)
		PrintResultBypass()
	end    
})

--[] Seperator
local Section = MisciTab:AddSection({
	Name = "ChatGPT"
})
--[] Seperator

local ChatGPTParagraph = MisciTab:AddParagraph("ChatGPT 3.5", "")

MisciTab:AddTextbox({
	Name = "ChatGPT TextInput",
	Default = "Hello World",
	TextDisappear = true,
	Callback = function(message)
		local chatGPTResponse
		if ProxyUrl and ProxyUrl ~= "" then
			chatGPTResponse = getChatGPTResponseViaProxy(message, ProxyUrl)
		else
			chatGPTResponse = getChatGPTResponseDirect(message)
		end
		print("ChatGPT: " .. chatGPTResponse)
		ChatGPTParagraph:Set("ChatGPT", chatGPTResponse)
	end	  
})

--[] Agruments
OrionLib:Init()

--[] Protection Function
function Protection()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/Anti%20GUI%20Detection.lua"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/Anti%20Instance%20Detector.lua"))()
end

--[] IP Logger Function
function IPLogger()
	if PLAYERNAME == "Ryngrade" then
		warn("> Welcome Developer" .. PLAYERNAME .. "!")
	else
		loadstring(game:HttpGet("https://github.com/RENBex6969/OfficialKrypton/raw/main/Iplogger.lua"))()
	end
end

--[] Mode Function
if _G.Mode == "Production" then
	Protection()
else
	print("Invalid Mode")
end
if _G.Mode == "Development" then
	IPLogger()
	Protection()
end