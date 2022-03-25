local function CreateInstance(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end

local Main = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='Main', Parent=game.CoreGui})
local MainFrame = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundColor3=Color3.new(0.333333, 0.333333, 0.333333),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=10,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.499543786, 0, 0.498896241, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 471, 0, 300),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'MainFrame',Parent = Main})
local TextButton = CreateInstance('TextButton',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='Pet Simulator X Gamepasses',TextColor3=Color3.new(0, 0, 0),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.443137, 0.443137, 0.443137),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0594479814, 0, 0.180000007, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 151, 0, 52),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextButton',Parent = MainFrame})
local Title = CreateInstance('TextLabel',{Font=Enum.Font.GothamBold,FontSize=Enum.FontSize.Size14,Text='Polar\'s Scripts',TextColor3=Color3.new(0, 0, 0),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 471, 0, 50),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Title',Parent = MainFrame})
local Autoclick = CreateInstance('TextButton',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='Clicker Simulator Autoclick',TextColor3=Color3.new(0, 0, 0),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.443137, 0.443137, 0.443137),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.575371563, 0, 0.180000007, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 151, 0, 52),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Autoclick',Parent = MainFrame})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.GothamBold,FontSize=Enum.FontSize.Size14,Text='More coming soon!',TextColor3=Color3.new(0, 0, 0),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.458824, 0.458824, 0.458824),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.00636942685, 0, 0.779999971, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 468, 0, 50),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = MainFrame})

Autoclick.MouseButton1Down:Connect(function()
	while true do
		game.ReplicatedStorage.Clickerr:InvokeServer()
	end
end)
TextButton.MouseButton1Down:Connect(function()
	local gmppath = require(game.ReplicatedStorage.Framework.Modules.Client["5 | Gamepasses"])
	gmppath.Owns = function() return true end
end)
local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
	return a + (b - a) * m
end;

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8); -- // The speed of the UI darg.
function Update(dt)
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		MainFrame.Position = UDim2.new(startPos.X.Scale, Lerp(MainFrame.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(MainFrame.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - UserInputService:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	MainFrame.Position = UDim2.new(startPos.X.Scale, Lerp(MainFrame.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(MainFrame.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
end;

MainFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position
		lastMousePos = UserInputService:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

MainFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

runService.Heartbeat:Connect(Update)
