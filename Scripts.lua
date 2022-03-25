-- Gui to Lua
-- Version: 3.2

-- Instances:

local Main = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Autoclick = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")

--Properties:

Main.Name = "Main"
Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Main
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
MainFrame.BorderSizePixel = 10
MainFrame.Position = UDim2.new(0.499543786, 0, 0.498896241, 0)
MainFrame.Size = UDim2.new(0, 471, 0, 300)

UICorner.Parent = MainFrame

TextButton.Parent = MainFrame
TextButton.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
TextButton.Position = UDim2.new(0.0594479814, 0, 0.180000007, 0)
TextButton.Size = UDim2.new(0, 151, 0, 52)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Pet Simulator X Gamepasses"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_2.Parent = TextButton

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 471, 0, 50)
Title.Font = Enum.Font.GothamBold
Title.Text = "Polar's Scripts"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Autoclick.Name = "Autoclick"
Autoclick.Parent = MainFrame
Autoclick.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
Autoclick.Position = UDim2.new(0.575371563, 0, 0.180000007, 0)
Autoclick.Size = UDim2.new(0, 151, 0, 52)
Autoclick.Font = Enum.Font.Gotham
Autoclick.Text = "Clicker Simulator Autoclick"
Autoclick.TextColor3 = Color3.fromRGB(0, 0, 0)
Autoclick.TextScaled = true
Autoclick.TextSize = 14.000
Autoclick.TextWrapped = true

UICorner_3.Parent = Autoclick

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
TextLabel.Position = UDim2.new(0.00636942685, 0, 0.779999971, 0)
TextLabel.Size = UDim2.new(0, 468, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "More coming soon!"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_4.Parent = TextLabel

-- Scripts:

local function PXNZQA_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local gmppath = require(game.ReplicatedStorage.Framework.Modules.Client["5 | Gamepasses"])
	gmppath.Owns = function() return true end
end
coroutine.wrap(PXNZQA_fake_script)()
local function SDZAOI_fake_script() -- Autoclick.LocalScript 
	local script = Instance.new('LocalScript', Autoclick)

	
	
	
	game.ReplicatedStorage.Clickerr:InvokeServer()
end
coroutine.wrap(SDZAOI_fake_script)()
