--function LPH_NO_VIRTUALIZE(f) return f end

--[[
  source awaited?

  THIS SOURCE IS FROM 5 MONTHS AGO DO NOT TALK TO ME ABOUT IT
]]

local getgenv = getgenv or function() return getfenv(0) end

getgenv().rUNCSettings = {
	['UseInterface'] = true
}

-- this was a check for volcano and velocity cuz their hookmetamethods were mostly broken
if identifyexecutor then
	if identifyexecutor():find('Volcano') or identifyexecutor():find('Velocity') then
		local New; New = Instance.new;
		local rUNCUnhandledException; rUNCUnhandledException = New('ScreenGui');
		local Holder; Holder = New('Frame');
		local UICorner; UICorner = New('UICorner');
		local UIStroke; UIStroke = New('UIStroke');
		local TitleLabel; TitleLabel = New('TextLabel');
		local UICorner_2; UICorner_2 = New('UICorner');
		local Close; Close = New('TextButton');
		local UICorner_3; UICorner_3 = New('UICorner');
		local Output; Output = New('ScrollingFrame');
		local UICorner_4; UICorner_4 = New('UICorner');
		local ListLayout; ListLayout = New('UIListLayout');
		local UIPadding; UIPadding = New('UIPadding');
		local ConsoleMessageWarning_1; ConsoleMessageWarning_1 = New('TextLabel');
		local ConsoleOutputScrollingFrame; ConsoleOutputScrollingFrame = New('ScrollingFrame');
		local RoundedCornerConsoleOutput; RoundedCornerConsoleOutput = New('UICorner');
		local UiListLayoutConsoleOutput; UiListLayoutConsoleOutput = New('UIListLayout');
		local UiPaddingConsoleOutput; UiPaddingConsoleOutput = New('UIPadding');
		local TweenService; TweenService = game:GetService('TweenService');

		local OpenModule; OpenModule = nil;
		local ConsoleMessageCount; ConsoleMessageCount = 0;


		rUNCUnhandledException.Name = '\0rUNCUnhandledException'
		rUNCUnhandledException.Parent = game:GetService('CoreGui')['RobloxGui'];
		rUNCUnhandledException.DisplayOrder = 100; -- is this really needed
		rUNCUnhandledException.IgnoreGuiInset = true;

		Holder.Name = '\0Holder'
		Holder.AnchorPoint = Vector2.new(0, 1)
		Holder.Size = UDim2.new(0, 450, 0, 400)
		Holder.Selectable = true
		Holder.BackgroundTransparency = 0.30000001192092896
		Holder.Position = UDim2.new(0.0142579088, 717, 0.993740618, -266)
		Holder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Holder.Parent = rUNCUnhandledException

		UICorner.Name = '\0UICorner'
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Holder

		UIStroke.Name = '\0UIStroke'
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke.Color = Color3.fromRGB(50, 50, 50)
		UIStroke.Transparency = 0.5
		UIStroke.Parent = Holder

		TitleLabel.Name = '\0TitleLabel'
		TitleLabel.Size = UDim2.new(1, 0, 0, 30)
		TitleLabel.BorderSizePixel = 0
		TitleLabel.BackgroundTransparency = 0.2
		TitleLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		TitleLabel.TextSize = 18
		TitleLabel.RichText = true
		TitleLabel.TextColor3 = Color3.new(255, 255, 255)
		TitleLabel.Text = '<b><font color=\"rgb(255, 107, 109)\">r</font></b>UNC: Unhandled Exception (Executor Issue)'
		TitleLabel.FontFace = Font.new('rbxassetid://12187365364', Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		TitleLabel.Parent = Holder

		UICorner_2.Name = '\0UICorner'
		UICorner_2.CornerRadius = UDim.new(0, 5)
		UICorner_2.Parent = TitleLabel

		Close.Name = '\0Close'
		Close.AutoButtonColor = true
		Close.Size = UDim2.new(0, 25, 0, 25)
		Close.BorderSizePixel = 0
		Close.BackgroundTransparency = 0.30000001192092896
		Close.Position = UDim2.new(0, 420, 0, 2)
		Close.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Close.RichText = true
		Close.TextColor3 = Color3.new(1, 1, 1)
		Close.TextSize = 16
		Close.Text = 'X'
		Close.FontFace = Font.new('rbxassetid://12187365364', Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Close.Parent = Holder

		UICorner_3.Name = '\0UICorner'
		UICorner_3.CornerRadius = UDim.new(0, 5)
		UICorner_3.Parent = Close

		Output.Name = '\0Output'
		Output.Size = UDim2.new(1, -10, 1, -40)
		Output.BorderColor3 = Color3.new(0, 0, 0)
		Output.BackgroundTransparency = 0.20000000298023224
		Output.Position = UDim2.new(0, 5, 0, 35)
		Output.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		Output.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Output.CanvasSize = UDim2.new(0, 0, 0, 0)
		Output.ScrollBarImageColor3 = Color3.new(0, 0, 0)
		Output.ScrollBarThickness = 6
		Output.Parent = Holder

		UICorner_4.Name = '\0UICorner'
		UICorner_4.CornerRadius = UDim.new(0, 3)
		UICorner_4.Parent = Output

		ListLayout.Name = '\0ListLayout'
		ListLayout.Padding = UDim.new(0, 3)
		ListLayout.Parent = Output

		UIPadding.Name = '\0UIPadding'
		UIPadding.PaddingBottom = UDim.new(0, 5)
		UIPadding.PaddingTop = UDim.new(0, 5)
		UIPadding.PaddingLeft = UDim.new(0, 5)
		UIPadding.PaddingRight = UDim.new(0, 5)
		UIPadding.Parent = Output

		ConsoleMessageWarning_1.Name = '\0ConsoleMessageWarning_1'
		ConsoleMessageWarning_1.LayoutOrder = 1
		ConsoleMessageWarning_1.AutomaticSize = Enum.AutomaticSize.Y
		ConsoleMessageWarning_1.Size = UDim2.new(1, -10, 0, 0)
		ConsoleMessageWarning_1.BackgroundTransparency = 1
		ConsoleMessageWarning_1.TextColor3 = Color3.new(1, 0, 0)
		ConsoleMessageWarning_1.TextYAlignment = Enum.TextYAlignment.Top
		ConsoleMessageWarning_1.Text = ''
		ConsoleMessageWarning_1.TextSize = 16
		ConsoleMessageWarning_1.FontFace = Font.new('rbxasset://fonts/families/RobotoMono.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		ConsoleMessageWarning_1.TextWrapped = true
		ConsoleMessageWarning_1.TextXAlignment = Enum.TextXAlignment.Left
		ConsoleMessageWarning_1.Parent = Output

		ConsoleOutputScrollingFrame.Name = '\0OutputFrame'
		ConsoleOutputScrollingFrame.Size = UDim2.new(1, -10, 1, -40)
		ConsoleOutputScrollingFrame.Position = UDim2.new(0, 5, 0, 35)
		ConsoleOutputScrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		ConsoleOutputScrollingFrame.BackgroundTransparency = 0.2
		ConsoleOutputScrollingFrame.BorderSizePixel = 1
		ConsoleOutputScrollingFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
		ConsoleOutputScrollingFrame.ScrollBarThickness = 6
		ConsoleOutputScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)
		ConsoleOutputScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ConsoleOutputScrollingFrame.CanvasSize = UDim2.new(0,0,0,0)
		ConsoleOutputScrollingFrame.Parent = Holder

		RoundedCornerConsoleOutput.CornerRadius = UDim.new(0, 3)
		RoundedCornerConsoleOutput.Parent = ConsoleOutputScrollingFrame

		UiListLayoutConsoleOutput.Name = '\0ListLayout'
		UiListLayoutConsoleOutput.FillDirection = Enum.FillDirection.Vertical
		UiListLayoutConsoleOutput.HorizontalAlignment = Enum.HorizontalAlignment.Left
		UiListLayoutConsoleOutput.VerticalAlignment = Enum.VerticalAlignment.Top
		UiListLayoutConsoleOutput.SortOrder = Enum.SortOrder.LayoutOrder
		UiListLayoutConsoleOutput.Padding = UDim.new(0, 3)
		UiListLayoutConsoleOutput.Parent = ConsoleOutputScrollingFrame

		UiPaddingConsoleOutput.PaddingTop = UDim.new(0,5);
		UiPaddingConsoleOutput.PaddingBottom = UDim.new(0,5);
		UiPaddingConsoleOutput.PaddingLeft = UDim.new(0,5);
		UiPaddingConsoleOutput.PaddingRight = UDim.new(0,5);
		UiPaddingConsoleOutput.Parent = ConsoleOutputScrollingFrame;


		Close.MouseEnter:Connect(function() local Main = Close; local Info = TweenInfo.new(1); TweenService:Create(Main, Info, {BackgroundColor3 = Color3.fromRGB(255, 80, 80)}):Play(); end);
		Close.MouseLeave:Connect(function() local Main = Close; local Info = TweenInfo.new(1); TweenService:Create(Main, Info, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play(); end);

		local function CloseWarning()
			local ConsoleCloseInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
			local ConsoleCloseTween = TweenService:Create(Holder, ConsoleCloseInfo, {BackgroundTransparency = 1});
		
			for i,v in Holder:GetDescendants() do if v:IsA('Frame') then TweenService:Create(v, ConsoleCloseInfo, {BackgroundTransparency = 1}):Play(); end; if v:IsA('ScrollingFrame') then TweenService:Create(v, ConsoleCloseInfo, {BackgroundTransparency = 1, ScrollBarThickness = 0}):Play();  end; if v:IsA('TextLabel') or v:IsA('TextButton') then TweenService:Create(v, ConsoleCloseInfo, {BackgroundTransparency = 1, TextTransparency = 1}):Play(); end; end
		
			ConsoleCloseTween:Play();
			ConsoleCloseTween.Completed:Wait();
			-- Have you ever played BLOX FRUITS with your LIFE on the line while having some mangos in your mouf?
  
			rUNCUnhandledException:Destroy();
			OpenModule = 0;
		end

		local function DoMessageCon(...)
			local Args = {...};
			local MessageText = "";
			local Index;
			local Value;
			for Index, Value in ipairs(Args) do
				MessageText = MessageText .. tostring(Value) .. (Index < #Args and ' ' or '');
			end
			ConsoleMessageCount = ConsoleMessageCount + 1
			local MsgLabel = Instance.new("TextLabel")
			MsgLabel.Name = "ErrorMessage_" .. ConsoleMessageCount
			MsgLabel.Text = MessageText
			MsgLabel.Font = Enum.Font.RobotoMono
			MsgLabel.TextColor3 = Color3.new(0.85, 0.85, 0.85)
			MsgLabel.TextSize = 16
			MsgLabel.TextXAlignment = Enum.TextXAlignment.Left
			MsgLabel.TextYAlignment = Enum.TextYAlignment.Top
			MsgLabel.TextWrapped = true
			MsgLabel.BackgroundTransparency = 1
			MsgLabel.Size = UDim2.new(1, -UiPaddingConsoleOutput.PaddingLeft.Offset - UiPaddingConsoleOutput.PaddingRight.Offset, 0, 0) 
			MsgLabel.AutomaticSize = Enum.AutomaticSize.Y
			MsgLabel.LayoutOrder = ConsoleMessageCount
			MsgLabel.Parent = ConsoleOutputScrollingFrame
			task.wait() 
			if ConsoleOutputScrollingFrame.CanvasSize.Y.Offset > ConsoleOutputScrollingFrame.AbsoluteSize.Y then
				ConsoleOutputScrollingFrame.CanvasPosition = Vector2.new(0, ConsoleOutputScrollingFrame.CanvasSize.Y.Offset - ConsoleOutputScrollingFrame.AbsoluteSize.Y + ConsoleTitleTextLabel.AbsoluteSize.Y)
			end

			return MsgLabel.Text
		end;

		DoMessageCon('An unhandled exception occured:');
		DoMessageCon('');
		DoMessageCon('Volcano is known to have issues with rUNC,')
		DoMessageCon("as it's hookmetamethod is broken, and breaks GetService. If you wish to proceed, Exit out of this window.");
		DoMessageCon('');
		DoMessageCon('If you are using Velocity, Please add a task.wait(5) on the top of the loadstring. You can now exit out of this window.');
    -- bef
		Close.MouseButton1Click:Connect(CloseWarning)

		repeat task.wait() until OpenModule == 0
		DoMessageCon = nil;
		CloseWarning = nil;
	end
end

local TimerThingXd = tick();
local TweenService = game:GetService("TweenService");
local UserInputService = game:GetService("UserInputService");

local RuncConsoleScreenGui = Instance.new("ScreenGui")
local ConsoleHolderFrame = Instance.new("Frame")
local RoundedCornerConsoleHolder = Instance.new("UICorner")
local StrokeConsoleHolder = Instance.new("UIStroke")
local ConsoleTitleTextLabel = Instance.new("TextLabel");
local ConsoleCloseButton = Instance.new('TextButton');
local RoundedCornerConsoleTitle = Instance.new("UICorner")
local ConsoleOutputScrollingFrame = Instance.new("ScrollingFrame")
local RoundedCornerConsoleOutput = Instance.new("UICorner")
local UiListLayoutConsoleOutput = Instance.new("UIListLayout")
local UiPaddingConsoleOutput = Instance.new("UIPadding");

local DetailItemsForAnimation = {}
local ConsoleMessageCount = 0

local ConsoleDragging = false;
local ConsoleDragStart = nil;
local ConsoleStartSize = nil;

local IsDrawing

RuncConsoleScreenGui.Name = "RuncConsoleUI"
RuncConsoleScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RuncConsoleScreenGui.DisplayOrder = 100
RuncConsoleScreenGui.IgnoreGuiInset = true

ConsoleHolderFrame.Name = "ConsoleHolder"
ConsoleHolderFrame.Size = UDim2.new(0, 775, 0, 700)
ConsoleHolderFrame.AnchorPoint = Vector2.new(0,1)
ConsoleHolderFrame.Position = UDim2.new(0.01, 471, 0.99, -55)
ConsoleHolderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ConsoleHolderFrame.BackgroundTransparency = 1 
ConsoleHolderFrame.Visible = false
ConsoleHolderFrame.Draggable = true
ConsoleHolderFrame.Active = true
ConsoleHolderFrame.Selectable = true
ConsoleHolderFrame.Parent = RuncConsoleScreenGui

RoundedCornerConsoleHolder.CornerRadius = UDim.new(0, 5)
RoundedCornerConsoleHolder.Parent = ConsoleHolderFrame

StrokeConsoleHolder.Color = Color3.fromRGB(50, 50, 50)
StrokeConsoleHolder.Thickness = 1
StrokeConsoleHolder.Transparency = 0.5
StrokeConsoleHolder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
StrokeConsoleHolder.Parent = ConsoleHolderFrame

ConsoleTitleTextLabel.Name = "TitleLabel"
ConsoleTitleTextLabel.Size = UDim2.new(1, 0, 0, 30)
ConsoleTitleTextLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ConsoleTitleTextLabel.BackgroundTransparency = 0.1
ConsoleTitleTextLabel.BorderSizePixel = 0
ConsoleTitleTextLabel.TextColor3 = Color3.new(0.9, 0.9, 0.9)
if identifyexecutor then ConsoleTitleTextLabel.Text = '<b><font color=\"rgb(255, 107, 109)\">r</font></b>UNC Console ('.. identifyexecutor() .. ')' else ConsoleTitleTextLabel.Text = "<b><font color=\"rgb(255, 107, 109)\">r</font></b>UNC Console" end
ConsoleTitleTextLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ConsoleTitleTextLabel.TextSize = 20
ConsoleTitleTextLabel.RichText = true
ConsoleTitleTextLabel.Parent = ConsoleHolderFrame;

ConsoleCloseButton.Name = "Close"
ConsoleCloseButton.Size = UDim2.new(0, 25, 0, 25)
ConsoleCloseButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ConsoleCloseButton.BackgroundTransparency = 0.3
ConsoleCloseButton.BorderSizePixel = 0
ConsoleCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255);
ConsoleCloseButton.Text = "X";
ConsoleCloseButton.Position = UDim2.new(0, 745, 0, 2)
ConsoleCloseButton.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ConsoleCloseButton.TextSize = 16
ConsoleCloseButton.RichText = true
ConsoleCloseButton.Parent = ConsoleHolderFrame;

RoundedCornerConsoleCloseTitle = Instance.new('UICorner');

RoundedCornerConsoleCloseTitle.CornerRadius = UDim.new(0, 5)
RoundedCornerConsoleCloseTitle.Parent = ConsoleCloseButton

RoundedCornerConsoleTitle.CornerRadius = UDim.new(0, 5)
RoundedCornerConsoleTitle.Parent = ConsoleTitleTextLabel

ConsoleOutputScrollingFrame.Name = "OutputFrame"
ConsoleOutputScrollingFrame.Size = UDim2.new(1, -10, 1, -40)
ConsoleOutputScrollingFrame.Position = UDim2.new(0, 5, 0, 35)
ConsoleOutputScrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ConsoleOutputScrollingFrame.BackgroundTransparency = 0.2
ConsoleOutputScrollingFrame.BorderSizePixel = 1
ConsoleOutputScrollingFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
ConsoleOutputScrollingFrame.ScrollBarThickness = 6
ConsoleOutputScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)
ConsoleOutputScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ConsoleOutputScrollingFrame.CanvasSize = UDim2.new(0,0,0,0)
ConsoleOutputScrollingFrame.Parent = ConsoleHolderFrame

RoundedCornerConsoleOutput.CornerRadius = UDim.new(0, 3)
RoundedCornerConsoleOutput.Parent = ConsoleOutputScrollingFrame

UiListLayoutConsoleOutput.Name = "ListLayout"
UiListLayoutConsoleOutput.FillDirection = Enum.FillDirection.Vertical
UiListLayoutConsoleOutput.HorizontalAlignment = Enum.HorizontalAlignment.Left
UiListLayoutConsoleOutput.VerticalAlignment = Enum.VerticalAlignment.Top
UiListLayoutConsoleOutput.SortOrder = Enum.SortOrder.LayoutOrder
UiListLayoutConsoleOutput.Padding = UDim.new(0, 3)
UiListLayoutConsoleOutput.Parent = ConsoleOutputScrollingFrame

UiPaddingConsoleOutput.PaddingTop = UDim.new(0,5)
UiPaddingConsoleOutput.PaddingBottom = UDim.new(0,5)
UiPaddingConsoleOutput.PaddingLeft = UDim.new(0,5)
UiPaddingConsoleOutput.PaddingRight = UDim.new(0,5)
UiPaddingConsoleOutput.Parent = ConsoleOutputScrollingFrame

ConsoleCloseButton.MouseEnter:Connect(function()
  local Main = ConsoleCloseButton;
  local Info = TweenInfo.new(1);

  TweenService:Create(Main, Info, {BackgroundColor3 = Color3.fromRGB(255, 80, 80)}):Play();
end);

ConsoleCloseButton.MouseLeave:Connect(function()
  local Main = ConsoleCloseButton; -- thx.
  local Info = TweenInfo.new(1); -- thx.

  TweenService:Create(Main, Info, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play();
end)


local ExecutorName
local ExecutorVersion
if identifyexecutor then ExecutorName = identifyexecutor() else ExecutorName = 'N/A' end
RuncConsoleScreenGui.Parent = game:GetService('CoreGui')

local function DoMsg(...)
    local Args = {...}
    local MessageText = ""
    local Index
    local Value
    for Index, Value in ipairs(Args) do
        MessageText = MessageText .. tostring(Value) .. (Index < #Args and " " or "")
    end
    ConsoleMessageCount = ConsoleMessageCount + 1
    local MsgLabel = Instance.new("TextLabel")
    MsgLabel.Name = "ConsoleMessage_" .. ConsoleMessageCount
    MsgLabel.Text = MessageText
    MsgLabel.Font = Enum.Font.RobotoMono
    MsgLabel.TextColor3 = Color3.new(0.85, 0.85, 0.85)
    MsgLabel.TextSize = 16
    MsgLabel.TextXAlignment = Enum.TextXAlignment.Left
    MsgLabel.TextYAlignment = Enum.TextYAlignment.Top
    MsgLabel.TextWrapped = true
    MsgLabel.BackgroundTransparency = 1
    MsgLabel.Size = UDim2.new(1, -UiPaddingConsoleOutput.PaddingLeft.Offset - UiPaddingConsoleOutput.PaddingRight.Offset, 0, 0) 
    MsgLabel.AutomaticSize = Enum.AutomaticSize.Y
    MsgLabel.LayoutOrder = ConsoleMessageCount
    MsgLabel.Parent = ConsoleOutputScrollingFrame
    task.wait() 
    if ConsoleOutputScrollingFrame.CanvasSize.Y.Offset > ConsoleOutputScrollingFrame.AbsoluteSize.Y then
        ConsoleOutputScrollingFrame.CanvasPosition = Vector2.new(0, ConsoleOutputScrollingFrame.CanvasSize.Y.Offset - ConsoleOutputScrollingFrame.AbsoluteSize.Y + ConsoleTitleTextLabel.AbsoluteSize.Y)
    end

	return MsgLabel.Text
end;

local function DoWarn(...)
    local Args = {...}
    local MessageText = ""
    local Index
    local Value
    for Index, Value in ipairs(Args) do
        MessageText = MessageText .. tostring(Value) .. (Index < #Args and " " or "")
    end

    ConsoleMessageCount = ConsoleMessageCount + 1
    local WarnLabel = Instance.new("TextLabel")
    WarnLabel.Name = "ConsoleMessageWarning_" .. ConsoleMessageCount
    WarnLabel.Text = MessageText
    WarnLabel.Font = Enum.Font.RobotoMono
    WarnLabel.TextColor3 = Color3.fromRGB(255, 220, 81)
    WarnLabel.TextSize = 16
    WarnLabel.TextXAlignment = Enum.TextXAlignment.Left
    WarnLabel.TextYAlignment = Enum.TextYAlignment.Top
    WarnLabel.TextWrapped = true
    WarnLabel.BackgroundTransparency = 1
    WarnLabel.Size = UDim2.new(1, -UiPaddingConsoleOutput.PaddingLeft.Offset - UiPaddingConsoleOutput.PaddingRight.Offset, 0, 0)
    WarnLabel.AutomaticSize = Enum.AutomaticSize.Y
    WarnLabel.LayoutOrder = ConsoleMessageCount
    WarnLabel.Parent = ConsoleOutputScrollingFrame
    task.wait();
	-- Can a nigga have a french fry?
    if ConsoleOutputScrollingFrame.CanvasSize.Y.Offset > ConsoleOutputScrollingFrame.AbsoluteSize.Y then
        ConsoleOutputScrollingFrame.CanvasPosition = Vector2.new(0, ConsoleOutputScrollingFrame.CanvasSize.Y.Offset - ConsoleOutputScrollingFrame.AbsoluteSize.Y + ConsoleTitleTextLabel.AbsoluteSize.Y)
    end
end

local function ConsoleUIEntryThx()
    ConsoleHolderFrame.Visible = true;
    local ConsoleEntryInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local ConsoleEntryTween = TweenService:Create(ConsoleHolderFrame, ConsoleEntryInfo, {BackgroundTransparency = 0.1});

    ConsoleEntryTween:Play()
    ConsoleEntryTween.Completed:Wait();
end


local function CloseConsoleAnimationReal()
    local ConsoleCloseInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local ConsoleCloseTween = TweenService:Create(ConsoleHolderFrame, ConsoleCloseInfo, {BackgroundTransparency = 1});

    for i,v in ConsoleHolderFrame:GetDescendants() do
      if v:IsA('Frame') then TweenService:Create(v, ConsoleCloseInfo, {BackgroundTransparency = 1}):Play(); end;
      if v:IsA('ScrollingFrame') then TweenService:Create(v, ConsoleCloseInfo, {BackgroundTransparency = 1, ScrollBarThickness = 0}):Play();  end;
      if v:IsA('TextLabel') or v:IsA('TextButton') then TweenService:Create(v, ConsoleCloseInfo, {BackgroundTransparency = 1, TextTransparency = 1}):Play(); end;
    end

    ConsoleCloseTween:Play()
    ConsoleCloseTween.Completed:Wait();

    RuncConsoleScreenGui:Destroy();
end

ConsoleCloseButton.MouseButton1Click:Connect(CloseConsoleAnimationReal);

task.spawn(ConsoleUIEntryThx);
task.spawn(function()
    local Dragging = false
    local DragStart = nil
    local StartPos = nil

    local ConsoleHolder = ConsoleHolderFrame

    ConsoleHolder.Draggable = false;
    ConsoleHolder.Active = false;

    UserInputService.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            local AbsPos = Input.Position
            local RelPos = ConsoleHolder.AbsolutePosition
            local Size = ConsoleHolder.AbsoluteSize

            if AbsPos.X >= RelPos.X and AbsPos.X <= RelPos.X + Size.X and
               AbsPos.Y >= RelPos.Y and AbsPos.Y <= RelPos.Y + Size.Y then

                Dragging = true
                DragStart = AbsPos
                StartPos = ConsoleHolder.Position
                ConsoleHolder.BackgroundTransparency = 0.3
            end
        end
    end)

    UserInputService.InputChanged:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseMovement and Dragging then
            local Delta = Input.Position - DragStart
            ConsoleHolder.Position = UDim2.new(
                StartPos.X.Scale,
                StartPos.X.Offset + Delta.X,
                StartPos.Y.Scale,
                StartPos.Y.Offset + Delta.Y
            )
        end
    end)

    UserInputService.InputEnded:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            Dragging = false;
        end
    end);
end)
-- init

local do_msg;
if getgenv().rUNCSettings['UseInterface'] then do_msg = DoMsg; RuncConsoleScreenGui.Parent = game:GetService('CoreGui'):FindFirstChild('RobloxGui') else do_msg = print; DoWarn = warn RuncConsoleScreenGui.Parent = nil end

local function DbgPrint(Past: string, Next: string)
  if getgenv().rUNCSettings['DbgTests'] then
	if getgenv().rUNCSettings['UseInterface'] == true then
		DoMsg('Past:', Past);
		DoMsg('Next:', Next);
	else
		print('Past:', Past);
		print('Next:', Next);
	end
  end
end

if loadstring then
	loadstring([[
		local pavinthewayformybrotha = {'WTFFFFFFFFFFFFF'}
	]])()

	if not pavinthewayformybrotha then
       DoWarn('loadstring failed to load globals')
	end
end


if not game.GetService(game, 'Players').LocalPlayer['Character']:FindFirstChild('Animate') then warn('[ rUNC ]: Please join a basic baseplate game inorder to get secure & real results.'); end;

local start_ts_tick = tick();
local hwid, excname

if identifyexecutor then excname = identifyexecutor() else excname = 'N/A' end
local function checkforls(scr) if scr.ClassName == "LocalScript" then return true elseif scr.ClassName == "ModuleScript" then return true end return false end;
-- I AM NOT EVEN FUCKING USING THIS IN ANY TESTS EXCEPT ONE WHY IS THIS RELEVANT
local function XpC(c) return pcall(c) end;
--??????????????????????????

local get_svc = function(...)
	return game:GetService(tostring(...))--'Ugc' is not a valid Service name
end;

local Call, New = pcall, Instance.new
local tested = {}
local passed, failed =  0, 0
local passed_tb, failed_tb = {}, {}

local function As(condition, name, reason)
	if not condition then
		error(tostring(reason or name))
	end
end
local function AsErr(condition, reason)
	if not condition then
		DoWarn(tostring(reason))
	end
end

local function Call(testFunction, name)
	return pcall(function()
		if tested[name] then return end
		tested[name] = true

		tested['LoggedFunc']={
			['Function'] = name
		};

		local FunctionPlaceMent = Instance.new('LocalScript');
		FunctionPlaceMent.Name = tested['LoggedFunc']['Function']; -- this was for the result user interface but is no longer being used, why?
		FunctionPlaceMent.Parent = functions

		local success, result = pcall(testFunction)

		if success then
			passed = passed + 1;
			if passed_tb[name] then return end
			table.insert(passed_tb, {tested['LoggedFunc']['Function']});
		else
			failed = failed + 1
			DoWarn('❌ ' .. tostring(name) .. ' ' .. tostring(result));
			local fail = Instance.new('BoolValue', fialedfun);
			fail.Name = tostring(name)
			fail.Value = false;

			table.insert(failed_tb, {tested['LoggedFunc']['Function']});
			if failed_tb[name] then return end
		end
	end)
end

-- beta

DoMsg(`Running on {excname}`)
local UNCVirtualEnvironmentContainer = New('Folder', game:GetService('CoreGui'));
if setclipboard then SetClipBoard = setclipboard; SetClipBoard('https://discord.gg/efuyTFRv') end
task.wait(1)

do_msg("[ rUNC ]: Checking if dependencies are spoofed...");

task.wait(2)

local Spoofed
local a = task.spawn(function()
	local a = assert
	local b,c = XpC(function() return a(false, '?') end)
	if a(false, 'im so sillyyy') == true then DoWarn('[ rUNC ]: ⚠️ The assert function is spoofed. (Returned true on default)'); Spoofed = true; end
	if c == nil or not tostring(c):find("?") then do_msg''; DoWarn("[ rUNC ]: ⚠️ The assert function is spoofed. Continuing... ⚠️"); Spoofed = true; return end
	if debug.info(a, 's') ~= '[C]' then DoWarn('[ rUNC ]: ⚠️ The assert function is spoofed. (Not A L Closure)'); Spoofed = true; return end

	XpC(function()
		if a(3>4) == '' or (a(4>5) == nil) or (type(a(3>4)) == 'boolean') then -- who the fuck would even use this nasty hack.
			DoWarn('idk why we spoofing assert in the big 25 but ok (returned stupid value)')
			Spoofed = true;
		end
	end)
end);

if Spoofed == true then DoWarn('[ rUNC ]: assert is spoofed 💔 continuing anyway') else do_msg("[ rUNC ]: Passed spoof test #1") end
local Spoofed2
local b = task.spawn(function()
	local b,c = XpC(function() return table.freeze({}) end)
	if c == nil or not tostring(c):find('table: 0x') then do_msg''; DoWarn("[ rUNC ]: ⚠️ The table.freeze function is spoofed. Likely used to fake setreadonly and isreadonlys tests from the original unc test ⚠️"); Spoofed2 = true end
end);

local Spoofed3;
local c = task.spawn(function()
   local d,e = pcall(function() return function() end end); 
   if e == nil or not tostring(e):find('function: 0x') then Spoofed3=true; do_msg''; DoWarn('[ rUNC ]: ⚠️ The pcall (protect call) function is spoofed. rUNC is now switching methods for execution, Please wait... (This might be unstable, and MIGHT crash your executor)'); end
end)
if Spoofed2 == true then DoWarn('[ rUNC ]: Continuing anyway...') else DoMsg("[ rUNC ]: Passed spoof test #2") end;
if Spoofed3 == true then
	local function Call(testFunction, name)
		task.spawn(function()
			if tested[name] then return end
			tested[name] = true
	
			local success, result = pcall(testFunction)
	
			if success then
				passed = passed + 1
				print('✅', name)
			else
				failed = failed + 1
				DoWarn('❌ ' .. tostring(name) .. ' ' .. {tostring(result)})
			end
		end)
	end

	if Call then do_msg(tostring(Call)); else
       AsErr(3>4, 'An unexpected error occured and rUNC cannot continue executing, If you see this please report it to rUNCs discord server');
	end
end;

task.cancel(a);
task.cancel(b);
task.cancel(c);

task.wait(2);
do_msg''
do_msg('[ rUNC ]: Getting executor info & hwid...');
print('working')
local exname
if identifyexecutor then exname = identifyexecutor() else do_msg('[ rUNC ]: A dependency is missing: identifyexecutor, Continuing anyway...'); end
local hwid
if gethwid then hwid = gethwid() else do_msg('[ rUNC ]: A dependency is missing: gethwid, Continuing anyway...') end
task.wait(0.3);

if cache then
	local CacheInvalidate = Call(function()
		if cache then
			if cache.invalidate then
				local Invalidate = cache.invalidate;
				local LocalScript = New('LocalScript', UNCVirtualEnvironmentContainer);
				local LocalScript2 = New('ModuleScript', UNCVirtualEnvironmentContainer);

				local LightingSvc = get_svc(game, 'Lighting');
				local HttpSvc = get_svc(game, 'HttpService');

				LocalScript.Name = 'cache.invalidate'
				LocalScript2.Name = 'TF!'
				
				local a,b = XpC(function() return Invalidate(UNCVirtualEnvironmentContainer:FindFirstChild('cache.invalidate')) end);
				local c,d = XpC(function() return Invalidate(get_svc(game, 'Lighting')) end);
				local e,f = XpC(function() return Invalidate(get_svc(game, 'HttpService')) end);

				if not a then
					As(3>4, 'Unexpected error happend when testing cache.invalidate, Function may not be implemented correctly or:', b)
				end

				if not c then
					As(3>4, "Could not invalidate 'Lighting' (Possibly a Luau Invalidate), or:", d);
				end

				if not e then
					As(3>4, "Could not invalidate 'HttpService' (Possibly a Luau Invalidate), or:", f);
				end

				As(LocalScript ~= UNCVirtualEnvironmentContainer:FindFirstChild('cache.invalidate'), 'cache.invalidate did not invalidate a LocalScript');
				As(LightingSvc ~= get_svc(game, 'Lighting'), 'cache.invalidate could not invalidate Lighting');
				As(HttpSvc ~= get_svc(game, 'HttpService'), 'cache.invalidate could not invalidate Lighting');
			else
				As(3>4, 'cache.invalidate', "Function Does Not Exist")
			end
		else
			As(3>4, 'cache.invalidate', "Table Does Not Exist")
		end 
	end, 'cache.invalidate');
	DbgPrint('cache.invalidate', 'cache.iscached')
	local CacheIsCached = Call(function()
		if cache then
			if cache.iscached then
				As(cache.invalidate, 'cache.iscached', 'cache.invalidate is needed inorder to test cache.iscached');

				local IsCached = cache.iscached;
				local Invalidate = cache.invalidate;

				local LocalScript = New('LocalScript', UNCVirtualEnvironmentContainer);
				local LocalScript2 = New('ModuleScript', UNCVirtualEnvironmentContainer);

				LocalScript.Name = 'cache.iscached';
				LocalScript2.Name = 'NANNANAANANAYOUTUFFASLBOI';

				local PlayersSvc = get_svc(game, 'Players');
				local UserInputSvc = get_svc(game, 'UserInputService');

				local a,b = XpC(function() return IsCached(LocalScript) end);
				if not a then
					As(3>4, 'Unexpected error occured while testing cache.iscached, Function may not be implemented correctly or:', b)
				end

				As(IsCached(LocalScript), 'Did not return true for a cached Instance #1');
				As(IsCached(LocalScript2), 'Did not return true for a cached Instance #2');

				local c,d = XpC(function() return Invalidate(LocalScript) end);
				if not c then As(3>4, '#1: cache.invalidate encountered an error:', d) end;

				if IsCached(LocalScript) then
					As(3>4, 'Did not return false for a invalidated non-cached Instance #1')
				end

				Invalidate(LocalScript2) -- continue since the unexpected error will not occur past the test above this blehhhhhhhh
				if IsCached(LocalScript2) then
					As(3>4, 'Did not return false for a invalidated non-cached Instance #2')
				end

				local e,f = XpC(function() return Invalidate(PlayersSvc) end);
				if not c then As(3>4, '#2: cache.invalidate encountered an error:', f) end;
				if IsCached(PlayersSvc) then
					As(3>4, 'Did not return false for a invalidated non-cached Service #1')
				end

				Invalidate(UserInputSvc);
				if IsCached(UserInputSvc) then
					As(3>4, 'Did not return false for a invalidated non-cached Service #2')
				end
			else
				As(3>4, 'cache.iscached', "Function Does Not Exist")
			end
		else
			As(3>4, 'cache.iscached', "Table Does Not Exist")
		end
	end, 'cache.iscached');

	DbgPrint('cache.iscached', 'cache.replace')

	local CacheReplace = Call(function()
		if cache then
			if cache.replace then
				local Replace = cache.replace;

				local RunService = get_svc(game, 'RunService');
				local CorePackages = game:GetService('CorePackages');

				local Folder = New('Folder');
				local LS1 = New('LocalScript', Folder);
				local LS2 = New('LocalScript', Folder);
				LS2.Name = 'ReplacementLS';

				local a,b = XpC(function() return Replace(LS1, LS2) end);
				if not a then
					As(3>4, 'Unexpected error occured while testing cache.replace:', b);
				end
				As(LS1.Name == LS2.Name, 'Did not replace LocalScript with another LocalScript');

				local c,d = XpC(function() return Replace(RunService, CorePackages) end);
				if not c then
					As(3>4, 'Unexpected error occured while testing cache.replace:', d);
				end
				As(RunService == CorePackages, 'Did not replace RunService with CorePackages');
				cache.replace(CorePackages, RunService)
			else
				As(3>4, 'cache.replace', 'Function Does Not Exist');
			end
		else
			As(3>4, 'cache.replace', 'Table Does Not Exist');
		end
	end, 'cache.replace');

	DbgPrint('cache.iscached', 'cloneref')
else
	AsErr(3>4, 'The cache library is missing')
end;

if cache then
   DbgPrint('cache', 'cloneref')
end

local CloneRef = Call(function()
	if cloneref then
		local HttpService = game:GetService("HttpService") or get_svc(game, 'HttpService');
		local weak_mtt = setmetatable({}, {__mode = "v"});
		local a = XpC(function() return cloneref(game:GetService('Players')) end);
		if not a then As(3>4, 'An unexpected error occured: This usually means the function isnt implemented correctly') end;

		local Ref_d_HttpService = cloneref(HttpService)
		local Ref = typeof(cloneref(HttpService));

		local PassedNormalFunctionality;

		As(type(Ref_d_HttpService) == 'userdata', 'cloneref', 'cloneref should return a userdata (which is typeof Instance)');

		Ref_d_HttpService.Name = 'userdata';
		As(Ref_d_HttpService ~= HttpService, 'cloneref', 'cloneref should not return the same object when cloned');
		As(Ref == 'Instance', 'cloneref', 'cloneref should not change the type of the object');

		As(HttpService.Name == 'userdata', 'cloneref failed to replicate the refd instance from the main instance (failed to change name)');

		local b,c = XpC(function()
		   local Players = game:GetService('Players');
		   local CloneReferencedPlayer = cloneref(Players);

		   for i,v in CloneReferencedPlayer:GetPlayers() do
              if v.Name == game.Players.LocalPlayer.Name then
				PassedNormalFunctionality = true;
				break;
			  else
                PassedNormalFunctionality = false;
			  end
		   end
		end);

       if not b then As(3>4, 'Unexpected error occured when trying to test functionality (This is probably a Luau cloneref):', c); end;
	   As(PassedNormalFunctionality ~= false, 'Functionality is not as expected when calling a namecall method (GetPlayers)');
	else
		As(3>4, 'cloneref', 'Function Does Not Exist')
	end
end, 'cloneref')

DbgPrint('cloneref', 'compareinstances')

local CompareInstances = Call(function()
	if compareinstances then
		local a = New('Part');
		local b = New('LocalScript');

		As(compareinstances(a, b) == false, 'compareinstances', 'Did not return false for non-related instances');

		local c = a;
		As(compareinstances(a, c) == true, 'compareinstances', 'Did not return true for related instances');

		local d = a:Clone();
		As(compareinstances(a, d) == false, 'compareinstances', 'Did not return false for a cloned instance');

		local rs1 = get_svc(game, 'RunService');
		local rs2 = get_svc(game, 'RunService');
		As(compareinstances(rs1, rs2) == true, 'compareinstances', 'Did not return true for 2 related services (sux to be you)');

		local s1 = get_svc(game, 'RunService');
		local s2 = game:GetService('Lighting');
		As(compareinstances(s1, s2) == false, 'compareinstances', 'Did not return false for 2 completely different services (how..)');

		local spoofed = setmetatable({}, {__index = game});
		local ok5, err5 = XpC(compareinstances, spoofed, game);
		As(not ok5, 'compareinstances', 'Did not return an error when trying to compare a table and an Instance 💀');

		return 'Passed';
	else
		As(3>4, 'compareinstances', 'Function Does Not Exist');
	end
end, 'compareinstances');

DbgPrint('compareinstances', 'checkcaller')

local CheckCaller = Call(function()
	if checkcaller then
		As(hookmetamethod, 'checkcaller', 'hookmetamethod is needed inorder to test checkcaller');
		As(getrawmetatable, 'checkcaller', 'getrawmetatable is needed inorder to test checkcaller');

		task.wait(5);

		local Results = {};
		local GetRaw, Metatable = XpC(function()
			return getrawmetatable(game);
		end);

		if not GetRaw then
			As(3 > 4, 'checkcaller', 'An unexpected error occurred while calling getrawmetatable: ' .. tostring(Metatable));
		end;

		local Meta = getrawmetatable(game);
		local OldNameCall = Meta.__namecall;
		local Passed;

		Results.__namecall = function(...) return OldNameCall(...); end;

		local Success = XpC(function()
			Results.__namecall = hookmetamethod(game, '__namecall', LPH_NO_VIRTUALIZE(function(...)
				local Self = ...;
				if checkcaller() and Self == game then
					Passed = 'yes';
				end;
				return OldNameCall(...);
			end));
		end);

		if not Success then
			As(3>4, 'checkcaller', 'Unexpected error occurred when testing checkcaller: hookmetamethod might be incorrectly implemented');
		else
			Results.__namecall = hookmetamethod(game, '__namecall', LPH_NO_VIRTUALIZE(function(...)
				local Self = ...;
				if checkcaller() and Self == game then
					Passed = 'yes';
				end;
				return OldNameCall(...);
			end));
		end;

		local CaptureCallerTaskSpawn;
		local CaptureCallerCoroutineCr;

		task.spawn(function()
		   CaptureCallerTaskSpawn = checkcaller();

		   if not CaptureCallerTaskSpawn then
			  As(3>4, 'Did not return true for a executor-made thread #1')
		   end
		end);

		coroutine.resume(coroutine.create(function()
		   CaptureCallerCoroutineCr = checkcaller();

		   if not CaptureCallerCoroutineCr then
			  As(3>4, 'Did not return true for a executor-made thread #1')
		   end
		end));

		local A, B = XpC(function()
			return game:GetService('Players');
		end);

		if checkcaller() then
			As(3>4, 'checkcaller', 'Guys return true is real when doing nothing right! 🤣🤣🔥✍');
		end;

		As(Passed == 'yes', 'checkcaller', 'Did not error when trying to call an invalid __namecall method');

		task.wait(0.1);
		XpC(function()
			hookmetamethod(game, '__namecall', OldNameCall);
		end);

		return 'Passed';
	else
		As(3>4, 'checkcaller', 'Function Does Not Exist');
	end;
end, 'checkcaller');

DbgPrint('checkcaller', 'clonefunction')

local CloneFunction, GetCallingScript = Call(function()
	if clonefunction then
		As(newcclosure, 'clonefunction', 'newcclosure is needed inorder to test clonefunction');
		As(debug.getinfo, 'clonefunction', 'debug.getinfo is needed inorder to test clonefunction');
		local a = pcall(function() As(debug.getinfo(function() end).numparams, 'clonefunction', 'Numparams field in debug.getinfo is needed inorder to test clonefunction'); end)
		if not a then As(3>4, 'debug.getinfo(func).numparams is needed inorder to test clonefunction') end

		local CloneFunction = clonefunction
		local NewCC = newcclosure

		local L_Closure = function(a, b) return '?' .. (a or '') .. (b or '') end
		local C_Closure = NewCC(function(x) return x end);

		local Cloned_L = CloneFunction(L_Closure);
		local Cloned_C = CloneFunction(C_Closure);


		As(debug.getinfo(Cloned_C).numparams == 0, 'clonefunction', 'numparams should be 0 for a cloned C Closure');
		As(typeof(Cloned_L) == 'function', 'clonefunction', 'clonefunction did not return the main functions type [L]')
		As(debug.getinfo(Cloned_L).what == 'Lua', 'clonefunction', 'clonefunction did not return a cloned L closure')
		As(debug.info(Cloned_L, 'n') == debug.info(L_Closure, 'n'), 'clonefunction', 'Cloned L Closure did not return the same name as L Closure')
		As(Cloned_L(1, 2) == '?12', 'clonefunction', 'Cloned L Closure did not return the same result as the logic of the original L Closure')

		As(debug.info(Cloned_L, 'n') ~= '', 'Cloned L closure does not have a name (soo we just wrapping the func atp)')
		As(type(clonefunction(L_Closure)) == 'function', 'clonefunction', 'The cloned L Closure should be callable');

		As(typeof(Cloned_C) == 'function', 'clonefunction', 'clonefunction did not return the main functions type [C]')
		As(debug.getinfo(Cloned_C).what == 'C', 'clonefunction', 'clonefunction did not return a cloned C closure')
		As(debug.info(C_Closure, 'n') == debug.info(Cloned_C, 'n'), 'clonefunction', 'Function name not preserved for original C closure')
		As(Cloned_C(10) == 10, 'clonefunction', 'Did not return the same logic as the original C Closure')


		local state = 0
		local side_c = NewCC(function(x) state = x return x + 5 end)
		local cloned_side = CloneFunction(side_c)

		local up = 99
		local function up_func() return up end
		local clone2 = CloneFunction(L_Closure)
		local clone_up = CloneFunction(up_func)

		local Teen_X, x = XpC(function() local print_clone = CloneFunction(print); print_clone('test') end)


		As(clone_up() == 99, 'clonefunction', 'Could not get upvalue from cloned func');
		As(clone2 ~= L_Closure, 'clonefunction', 'clonefunction returned the original closure instead of cloning the closure 💔');


		As(debug.info(CloneFunction(print), 's') == '[C]', 'clonefunction', 'Did not return a cloned C Closure');
		if not Teen_X then As(3>4, 'clonefunction', 'Function was not cloned properly'); end

		As(cloned_side(3) == 8 and state == 3, 'clonefunction', 'Cloned C Closure failed to do simple math');
	else
		As(3>4, 'clonefunction', 'Function Does Not Exist');
	end
end, 'clonefunction'); Call(function() DbgPrint('clonefunction', 'getcallingscript')
	if getcallingscript then
		if hookmetamethod then
			if getrawmetatable then
				if checkcaller then
					local GetCallingScript = getcallingscript
					local GetRawMetatable = getrawmetatable
					local HookMetaMethod = hookmetamethod
					local CheckCaller = checkcaller

					local Gm = GetRawMetatable(game)
					local OldAdd = Gm.__add

					local Folder = New('Folder', CoreGui)
					local Script = New('LocalScript', Folder)

					local Bind = Instance.new('BindableEvent')
					local Pass = false

					Bind.Event:Connect(function() Pass = true end)
					getfenv(0).Bindable = Bind

					local TestComplete = false

					HookMetaMethod(game, '__add', LPH_NO_VIRTUALIZE(function(A, B)
						if CheckCaller() or TestComplete then return OldAdd and OldAdd(A, B) or nil end
						
						local Caller = GetCallingScript()

						if Caller and Caller:IsDescendantOf(Folder) then
							TestComplete = true
							Bind:Fire()
						end

						return OldAdd and OldAdd(A, B) or nil
					end))

					Script.Source = [[
						local A = newproxy(true)
						getmetatable(A).__add = function(_, _) return 1 end
						local _ = A + 1
					]]

					loadstring(Script.Source)() 	 
					wait(0.1)
					
					HookMetaMethod(game, '__add', OldAdd)
					
					As(Pass == true, 'getcallingscript did not detect LocalScript through __add')
				else As(3>4, 'checkcaller is required inorder to test getcallingscript') end
			else As(3>4, 'getrawmetatable is required inorder to test getcallingscript') end
		else As(3>4, 'hookmetamethod is required inorder to test getcallingscript') end
	else As(3>4, 'Function Does Not Exist') end
end, 'getcallingscript')

DbgPrint('getcallingscript', 'getscriptclosure')
local GetScriptClosure, GetScriptHash = Call(function()
	if getscriptclosure then
		As(getrenv, 'getscriptclosure', 'getrenv is needed inorder to test getscriptclosure')

		local ModuleScript = New('ModuleScript', UNCVirtualEnvironmentContainer)
		local Script = New('Script', UNCVirtualEnvironmentContainer)

		local GetScriptClosure = getscriptclosure

		ModuleScript.Name = 'getscriptclosure'
		ModuleScript.Source = 'return {A = 1, B = "Hello", C = true}'

		Script.Name = 'getscriptclosure2'
		Script.RunContext = Enum.RunContext.Client
		Script.Source = 'return {A = 0, B = "nil", C = false}';

		local RequireTest, RequireContent = XpC(function() return GetScriptClosure(Script)() end)
		if RequireContent == 'Cannot require a non-RobloxScript module from a RobloxScript' then
			As(3>4, 'Why the FUCK are you using require.')
		end

		local ClosureResult_Module_1 = GetScriptClosure(ModuleScript)();
		local ClosureResult_Module_2 = GetScriptClosure(ModuleScript)();

		As(typeof(ClosureResult_Module_1) == 'table', 'getscriptclosure', 'getscriptclosure should return a table for a ModuleScript #1');
		As(typeof(ClosureResult_Module_2) == 'table', 'getscriptclosure', 'getscriptclosure should return a table for a ModuleScript #2');

		As(ClosureResult_Module_1 ~= ClosureResult_Module_2, 'getscriptclosure', 'sending a ton of calls to getscriptclosure should return different bytecode when calling the same instance #1');
		for Key, Value in pairs(ClosureResult_Module_1) do
			As(typeof(Value) == typeof(ClosureResult_Module_2[Key]), 'getscriptclosure', 'Types should match between closures of ModuleScript');
			As(Value == ClosureResult_Module_2[Key], 'getscriptclosure', 'Values should match between closures of ModuleScript');
		end

		local ClosureResult_Script_1 = GetScriptClosure(Script)()
		local ClosureResult_Script_2 = GetScriptClosure(Script)()

		As(typeof(ClosureResult_Script_1) == 'table', 'getscriptclosure', 'getscriptclosure should return a table result for Script #1');
		As(typeof(ClosureResult_Script_2) == 'table', 'getscriptclosure', 'getscriptclosure should return a table result for Script #2');

		As(ClosureResult_Script_1 ~= ClosureResult_Script_2, 'getscriptclosure', 'sending a ton of calls to getscriptclosure should return different bytecode when calling the same instance #2');

		for Key, Value in pairs(ClosureResult_Script_1) do
			As(typeof(Value) == typeof(ClosureResult_Script_2[Key]), 'getscriptclosure', 'Types should match between closures of Script')
			As(Value == ClosureResult_Script_2[Key], 'getscriptclosure', 'Values should match between closures of Script')
		end

		ClosureResult_Module_1.A = 999
		ClosureResult_Script_1.A = 888

		As(ClosureResult_Module_2.A ~= 999, 'getscriptclosure', 'A modulescripts closure should not affect another closure')
		As(ClosureResult_Script_2.A ~= 888, 'getscriptclosure', 'A scripts closure should not affect another closure');
		do_msg''
	else
		As(3>4, 'getscriptclosure', 'Function Does Not Exist')
	end
end, 'getscriptclosure'), Call(function() DbgPrint('getscriptclosure', 'getscripthash')
  if getscripthash then
      local GetScriptHash; GetScriptHash = getscripthash;
	  local LocalScript; LocalScript = New('LocalScript', UNCVirtualEnvironmentContainer);
      local ClientScript; ClientScript = New('LocalScript', UNCVirtualEnvironmentContainer);

	  local ModuleScript; ModuleScript = New('ModuleScript', UNCVirtualEnvironmentContainer);
	  local ModulesScript; ModulesScript = New('ModuleScript', UNCVirtualEnvironmentContainer);

	  local Script; Script = New('Script', UNCVirtualEnvironmentContainer);
	  local ScriptsScript; ScriptsScript = New('Script', UNCVirtualEnvironmentContainer);

	  Script.RunContext = Enum.RunContext.Client;
	  ScriptsScript.RunContext = Enum.RunContext.Client;

	  --[[
	    function getscripthash(script: LocalScript | ModuleScript): string
		Returns a sha384 hash, Changes whenever a script's bytecode has changed
	  ]]

	  local a = XpC(function() return GetScriptHash(Script) end);
	  As(a, 'getscripthash should not return an error when trying to get the hash of a Script with its RunContext set to Client')

	  local LocalScriptHash; LocalScriptHash = GetScriptHash(LocalScript);
	  local ClientScriptHash; ClientScriptHash = GetScriptHash(ClientScript);

	   local b,c = XpC(function()
			local ModuleScriptHash; ModuleScriptHash = GetScriptHash(ModuleScript);
			local ModulesScriptHash; ModulesScriptHash = GetScriptHash(ModulesScript);
		end)

	if not b and c:find('GetHash') then
       As(3>4, 'Ts gethash so segma boi ✌🤙')
	else
		local ModuleScriptHash; ModuleScriptHash = GetScriptHash(ModuleScript);
		local ModulesScriptHash; ModulesScriptHash = GetScriptHash(ModulesScript);
	end

	Script.Source = [[print("wtf")]];
	ScriptsScript.Source = [[print("hi")]];

	  local ScriptHash; ScriptHash = GetScriptHash(Script);
	  local ScriptsScriptHash; ScriptsScriptHash = GetScriptHash(ScriptsScript);

	  As(LocalScriptHash ~= ClientScriptHash, 'getscripthash should not return the same hash for different scripts #1');
	  As(LocalScriptHash ~= ModuleScriptHash, 'getscripthash should not return the same hash for different scripts #2');
	  
	  LocalScript.Source = [[ print("are you diddy ah blud 😂") ]];
	  ClientScript.Source = [[ print("yes now oil up ah blud 😎🤣") ]];

	  ModuleScript.Source = [[ print("let me nuh in yo buh ✌") ]];
	  ModulesScript.Source = [[ print("fuh no bru 🤣") ]];

	  Script.Source = [[ warn("hb fh mi heart") ]];
	  ScriptsScript.Source = [[ warn("no nga") ]];

	  local LocalScriptHash2; LocalScriptHash2 = GetScriptHash(LocalScript);
	  local ClientScriptHash2; ClientScriptHash2 = GetScriptHash(ClientScript);

	  local ModuleScriptHash2; ModuleScriptHash2 = GetScriptHash(ModuleScript);
	  local ModulesScriptHash2; ModulesScriptHash2 = GetScriptHash(ModulesScript);

	  local ScriptHash2; ScriptHash2 = GetScriptHash(Script);
	  local ScriptsScriptHash2; ScriptsScriptHash2 = GetScriptHash(ScriptsScript);
   
	  As(LocalScriptHash2 ~= LocalScriptHash, 'Hash did not change when changing the source of a LocalScript #1');
      As(ClientScriptHash2 ~= ClientScriptHash, 'Hash did not change when changing the source of a LocalScript #2');

	  As(ModuleScriptHash2 ~= ModuleScriptHash, 'Hash did not change when changing the source of a ModuleScript #1 [3]');
	  As(ModulesScriptHash2 ~= ModulesScriptHash, 'Hash did not change when changing the source of a ModuleScript #2 [4]');

	  As(ScriptHash2 ~= ScriptHash, 'Hash did not change when changing the source of a Script #1 [5]');
	  As(ScriptsScriptHash2 ~= ScriptsScriptHash, 'Hash did not change when changing the source of a Script #2 [6]')
  else
    As(3>4, 'Function Does Not Exist')
  end
end, 'getscripthash')

DbgPrint('getscripthash', 'hookfunction')

local HookFunction = Call(function()
	if hookfunction then
		As(newcclosure, '[!] newcclosure is needed inorder to test hookfunction');
		As(islclosure, '[!] islclosure is needed inorder to test hookfunction');
		As(debug.getinfo, '[!] debug.getinfo is needed inorder to test hookfunction');
		As(debug.getinfo(function() end).nups, '[!] debug.getinfo must support the nups field inorder to test hookfunction');
		As(debug.getupvalues, '[!] debug.getupvalues is needed inorder to test hookfunction');

		local LClosure
		local CClosure = newcclosure(function(ok) return 5*tonumber(ok) end)

		LClosure = function(...) return 2*tonumber(ok) end

		local function GetHandleA(f) return debug.info(f, 'f'); end

		hookfunction(CClosure, LClosure);
		
		local getupvalues = debug.getupvalues;
		local Info1, Info2 = XpC(function()
			return getupvalues(CClosure);
		end);

		if Info1 then 
			As(#Info2 == #getupvalues(LClosure), 'Hooked C Closure (C->L) did not return the same upvalues as the L Closure its been hooked with')
		end

		As(getfenv(CClosure) == getfenv(LClosure), 'Hooked C Closure should return the same function environment as the L Closure')

		As(CClosure() ~= 5, 'hookfunction', 'Hooked C Closure should not return the same result as the main C Closure when being hooked')
		As(CClosure(5) == 10, 'hookfunction', 'Hooked C Closure should return the same result as the main hooked L Closure when being hooked')

		As(not (debug.info(CClosure, 's') ~= 'Lua' and debug.info(CClosure, 's') ~= '[C]'), 'hookfunction', 'Hooked function is not a Lua or C closure')
		As(GetHandleA(CClosure) == GetHandleA(LClosure), 'hookfunction', 'Hooked C Closure should return the same external function as the main L Closure');
		As(GetHandleA(CClosure) ~= GetHandleA(CClosure), 'hookfunction', 'Hooked C Closure should not return the same external function as the old C Closure');

		As(XpC(CClosure) and true, 'hookfunction', 'Hooked C Closure should be callable when hooked.');

		hookfunction(LClosure, CClosure)
		As(LClosure() == 5, 'hookfunction', 'Hooked L Closure should return the same result as the hooked C Closure')
		As(LClosure() ~= 10, 'hookfunction', 'Hooked L Closure should not return the same result as the old L Closure')

		As(GetHandleA(LClosure) == GetHandleA(CClosure), 'hookfunction', 'Hooked L Closure should return the same external function as the main C Closure');
		As(GetHandleA(LClosure) ~= GetHandleA(LClosure), 'hookfunction', 'Hooked L Closure should not return the same external function as the old L Closure');

		As(debug.info(LClosure, 's') == '[C]' or not 'Lua', 'hookfunction', 'Hooked L Closure did not return the same source as the C Closure')
		As(XpC(LClosure) and true, 'hookfunction', 'Hooked L Closure should be callable when hooked')
	else
		As(3>4, 'hookfunction', 'Function Does Not Exist')
	end
end, 'hookfunction');

DbgPrint('hookfunction', 'islclosure')

local IsLClosure, IsCClosure = Call(function()
	if islclosure then
		As(newcclosure, 'newcclosure is needed inorder to test islclosure');

		local LClosure = islclosure
		local newcc = newcclosure
		local function hi() end;

		local function deep()
           return function(...) end
		end

		As(newcc, 'islclosure', 'newcclosure is needed inorder to test islclosure');

		As(LClosure(hi) == true, 'islclosure', 'Did not return true for a l closure');
		As(LClosure(coroutine.wrap) == false, 'islclosure', 'Did not return false for a C closure');
		As(LClosure(function() end) == true, 'islclosure', 'Did not return true for a manual made L closure');
		As(LClosure(newcc(function() end)) == false, 'islclosure', 'Did not return true for a C closure');

		As(LClosure(deep()) == true, 'islclosure', 'Did not return true for a inner L Closure');
		As(LClosure(debug.info(deep, 'f')) == true, 'islclosure', 'Did not return true for an external L Closure');

		As(LClosure(debug.info(newcc(function() end), 'f')) == false, 'islclosure', 'Did not return false for an external C Closure')
	else
		As(3>4, 'islclosure', 'Function Does Not Exist')
	end
end, 'islclosure'), Call(function() DbgPrint('islclosure', 'iscclosure')
	if iscclosure then
		As(newcclosure, 'iscclosure', 'newcclosure is needed inorder to test iscclosure');

		local CClosure = iscclosure
		local NewCC = newcclosure
		local LClosure = function(...) end
		local C_Closure = newcclosure

		As(CClosure(LClosure) == false, 'iscclosure', 'Did not return false for a Lua Closure');
		As(CClosure(coroutine.wrap) == true, 'iscclosure', 'Did not return true for a C Closure');
		As(CClosure(function() end) == false, 'iscclosure', 'Did not return false for a manual written L Closure');
		As(CClosure(C_Closure(function() end)) == true, 'iscclosure', 'Did not return true for a manual written C Closure');
	else
		As(3>4, 'iscclosure', 'Function Does Not Exist')
	end
end, 'iscclosure');
DbgPrint('iscclosure', 'isexecutorclosure')
local IsExecutorClosure = Call(function()
	if isexecutorclosure then
		As(getrenv, 'isexecutorclosure', 'getrenv is needed inorder to test')
		As(getgenv, 'isexecutorclosure', 'getgenv is needed inorder to test')
		As(newcclosure, 'isexecutorclosure', 'newcclosure is needed inorder to test')

		local IsExeClosure = isexecutorclosure
		local Genv = getgenv()
		local Renv = getrenv()
		local NewCC = newcclosure

		Genv.L_Closure = function(...) end;
		Genv.C_Closure = newcclosure(function(...) end);

		local a = XpC(IsExeClosure, nil);

		As(IsExeClosure(Renv.print) == false, 'isexecutorclosure', 'Did not return false for a roblox function');
		As(IsExeClosure(Renv.select) == false, 'isexecutorclosure', 'Did not return false for a roblox function #2');

		As(IsExeClosure(IsExeClosure) == true, 'isexecutorclosure', 'Did not return true for a global exec function');
		As(IsExeClosure(Genv.L_Closure) == true, 'isexecutorclosure', 'Did not return true for a Global L Closure');
		As(IsExeClosure(Genv.C_Closure) == true, 'isexecutorclosure', 'Did not return true for a Global C Closure');
	
		As(not a, 'isexecutorclosure', 'isexecutorclosure did not error when trying to get info from nil [are we deadass]');
	else
		As(3>4, 'isexecutorclosure', 'Function Does Not Exist')
	end
end, 'isexecutorclosure')

DbgPrint('isexecutorclosure', 'newcclosure')
local NewCClosure = Call(function()
	if newcclosure then
		As(debug.getinfo, 'newcclosure', 'debug.getinfo is needed inorder to test newcclosure');
		As(debug.getinfo(function() end).nups, 'newcclosure', 'the nups field in debug.getinfo is needed inorder to test newcclosure');
		As(debug.getinfo(function() end).numparams, 'newcclosure', 'the numparams field in debug.getinfo is needed inorder to test newcclosure');

		local Ride = false
		local NewCC = newcclosure
		local CClosure = NewCC(function(...) Ride = true end)
		local SecondCClosure = XpC(function() NewC = NewCC(function() task.wait(3) task.wait(3) end) NewC() end)
		local function GetFunctionHandle(f) return debug.info(f, 'f') end;

		local function is_wrapped_coroutine(f)
			local wtfdev = false

			local NGA, STOP = pcall(function()
				local actually = newcclosure(function()
					task.wait(0)
					task.wait(1)
				end)

				actually()
				actually()

				local function recurse(n)
					if n > 0 then
						actually()
						recurse(n - 1)
					end
				end

				recurse(2)
			end)

			if not NGA and typeof(STOP) == "string" and STOP:lower():find("cannot resume") then
				wtfdev = true
			end

			return wtfdev
		end

		local function does_ts_allow_inf_yield_thx(f)
			local count = 0
			local ok, err = pcall(function()
				for i = 1, 3 do
					f()
					count = count + 1
				end
			end)
			return ok and count >= 3
		end

		local YieldTesticle = NewCC(function()
			task.wait()
			task.wait()
		end)
		if does_ts_allow_inf_yield_thx(YieldTesticle) then
			As(3>4, 'newcclosure should not yield infinetly (coroutine.wrap dtc dev)')
		end

		As(typeof(CClosure) == "function", 'newcclosure', "newcclosure did not return a function");
		As(debug.getinfo(CClosure).numparams == 0, 'newcclosure', 'debug.getinfo(func).numparams did not return 0 for a C Closure');
		As(debug.getinfo(CClosure).nups == 0, 'newcclosure', 'debug.getinfo(func).nups did not return 0 for a C Closure');

		CClosure();
		As(SecondCClosure, 'newcclosure', 'Returned an error when trying to use task.wait 2 times [mostly means it wrapped around a coroutine]')
		As(debug.info(CClosure, 's') == '[C]', 'newcclosure', 'Did not return a C Closure')
		As(debug.getinfo(CClosure).what ~= 'Lua', 'newcclosure', 'newcclosure should not return a L Closure')
		As(Ride == true, 'newcclosure', 'When trying to set a variable using newcclosure, it did not return anything or set the variables value')

		As(GetFunctionHandle(CClosure) ~= GetFunctionHandle(function() end), 'newcclosure', 'newcclosure was compared between a normal lua function, and there were no differences.');
		As(is_wrapped_coroutine(CClosure) ~= true, 'newcclosure', 'coroutine.wrap ✍🔥');
	else
		As(3>4, 'newcclosure', 'Function Does Not Exist');
	end
end, 'newcclosure');
DbgPrint('newcclosure', 'firesignal')
local FireSignal, HookSignal = Call(function()
	if firesignal then
	  if getconnections then
		  local FireSignal = firesignal;
		  local GetConnections = getconnections;
		  local DescendantRemoving = game.DescendantRemoving;
  
		  local MainBind = New('BindableEvent', Instance.new('Folder', game:GetService('ReplicatedStorage')));
		  local Part = New('Part', game);
		  local Saved = math.random(300, 1000);
		  local SetVarOnBindThx
	   
		  MainBind.Event:Connect(function(var) SetVarOnBindThx = var end);
		  FireSignal(MainBind.Event, 'string');
	   
		  As(SetVarOnBindThx == 'string', 'firesignal could not fire the signals event with 2 args');
		  MainBind.Event:Connect(function(var) return var end);
		  As(FireSignal(MainBind.Event, 'hello') == 'hello', 'firesignal should return what the bind returned (string, or bool)');
		  MainBind.Event:Connect(function() return Saved end);
		  As(FireSignal(MainBind.Event) == Saved, 'firesignal could not return the result of a random numerical value');
	  else
		 As(3>4, 'firesignal', 'getconnections is needed inorder to test firesignal')
	  end
	else
	  As(3>4, 'firesignal', 'Function Does Not Exist')
	end
  end, 'firesignal'), Call(function() DbgPrint('firesignal', 'hooksignal')
	if hooksignal then
		if firesignal then
			local HookSignal = hooksignal
			local FireSignal = firesignal

			local a = New('BindableEvent', UNCVirtualEnvironmentContainer)
			local b = New('BindableEvent', UNCVirtualEnvironmentContainer)

			local x, y

			a.Event:Connect(function() x = 'connected_a' end)
			b.Event:Connect(function() y = 'connected_b' end)

			HookSignal(a.Event, function() x = 'hooked_a' end)
			HookSignal(b.Event, function() y = 'hooked_b' end)

			FireSignal(a.Event)
			FireSignal(b.Event)

			if x ~= 'hooked_a' then As(3 > 4, 'hooksignal', 'hooksignal did not trigger on first Bindable') end
			if y ~= 'hooked_b' then As(3 > 4, 'hooksignal', 'hooksignal did not trigger on second Bindable') end
		else
			As(3 > 4, 'hooksignal', 'firesignal is needed in order to test hooksignal')
		end
	else
		As(3 > 4, 'hooksignal', 'Function Does Not Exist')
	end
end, 'hooksignal')
DbgPrint('hooksignal', 'fireclickdetector')
local FireClickDetector = Call(function()
    if fireclickdetector then
        local FireClickDetector = fireclickdetector
        local Part = New('Part', game.GetService(game, 'Workspace'))
        Part.Anchored = true
        local ClickDetector = New('ClickDetector', Part)

        local MouseClickFired
        local RightClickFired
        local HoverEnterFired
        local HoverLeaveFired

        ClickDetector.MouseClick:Connect(function()
            MouseClickFired = true
        end)

        ClickDetector.RightMouseClick:Connect(function()
            RightClickFired = true
        end)

        ClickDetector.MouseHoverEnter:Connect(function()
            HoverEnterFired = true
        end)

        ClickDetector.MouseHoverLeave:Connect(function()
            HoverLeaveFired = true
        end)

        local A, B = XpC(function()
            local ValidClick = New('ClickDetector', New('Part', game.GetService(game, 'Workspace')))
            return FireClickDetector(ValidClick)
        end)

        if not A then
            As(3>4, 'Unexpected error occurred while testing FireClickDetector (Basic Call)')
        end

        local C, D = XpC(function()
            local InvalidPrompt = New('ProximityPrompt', New('Part', game.GetService(game, 'Workspace')))
            return FireClickDetector(InvalidPrompt)
        end)

        if C then
            As(3>4, 'bad type checking (managed to fire a ProximityPrompt)')
        end

        FireClickDetector(ClickDetector, 0, 'MouseClick')
        task.wait()
        if MouseClickFired ~= true then
            As(3>4, 'Failed to trigger click detector (MouseClick)')
        end

        FireClickDetector(ClickDetector, 0, 'RightMouseClick')
        task.wait()
        if RightClickFired ~= true then
            As(3>4, 'Failed to trigger click detector (RightMouseClick)')
        end

        FireClickDetector(ClickDetector, 0, 'MouseHoverEnter')
        task.wait()
        if HoverEnterFired ~= true then
            As(3>4, 'Failed to trigger click detector (MouseHoverEnter)')
        end

        FireClickDetector(ClickDetector, 0, 'MouseHoverLeave')
        task.wait()
        if HoverLeaveFired ~= true then
            As(3>4, 'Failed to trigger click detector (MouseHoverLeave)')
        end

        ClickDetector.MouseClick:Connect(function()
            MouseClickFired = false
        end)

        FireClickDetector(ClickDetector, 0)
        task.wait()
        if MouseClickFired ~= false then
            As(3>4, 'Failed to trigger click detector (Default: MouseClick)')
        end

		ClickDetector:Destroy()
		Part:Destroy()
    else
        As(3>4, 'Function Does Not Exist')
    end
end, 'fireclickdetector')
DbgPrint('fireclickdetector', 'fireproximityprompt')
local FireProximityPrompt = Call(function()
    if fireproximityprompt then
        local FireProximityPrompt = fireproximityprompt
        local Part = New('Part', game.GetService(game, 'Workspace'))
        Part.Anchored = true
        local Prompt = New('ProximityPrompt', Part)
        Prompt.RequiresLineOfSight = false
        Prompt.MaxActivationDistance = 32767

        local PromptTriggered
        Prompt.Triggered:Connect(function()
            PromptTriggered = true
        end)

        local A, B = XpC(function()
            local ValidPrompt = New('ProximityPrompt', New('Part', game.GetService(game, 'Workspace')))
            return FireProximityPrompt(ValidPrompt)
        end)

        if not A then
            As(3>4, 'Unexpected error occurred while testing fireproximity prompt:', type(B))
        end

        local C, D = XpC(function()
            local InvalidClick = New('ClickDetector', New('Part', game.GetService(game, 'Workspace')))
            return FireProximityPrompt(InvalidClick)
        end)

        if C then
            As(3>4, 'bad type checking  (managed to fire a clickdetector)')
        end

		Prompt:Destroy()
		Part:Destroy()
    else
        As(3>4, 'Function Does Not Exist')
    end
end, 'fireproximityprompt')
DbgPrint('fireproximityprompt', 'loadstring')
local LoadString = Call(function()
	local Compiled = loadstring('return ... + 1');
	local AltCompiled = loadstring('return ... + 2');
	local a, b = XpC(function() return loadstring(1, 0)() end);

	local c, d = XpC(function()
		return loadstring(game:HttpGet('https://raw.githubusercontent.com/RazAPIx64/RNCCapabilities/refs/heads/main/lstring.lua', true))();
	end)

	local e, f = XpC(function()
		return loadstring(game:HttpGet('https://raw.githubusercontent.com/RazAPIx64/RNCCapabilities/refs/heads/main/LuaStateReference.lua', true))();
	end)

	if a then DoWarn('loadstring test #1 failed: did not error on invalid syntax') else DoMsg('loadstring test #1 passed: Passed syntax check'); end;
	if not c then DoWarn('loadstring test #2 failed: could not load HttpGet URL') else DoMsg('loadstring test #2 passed: Loaded HttpGet URL'); end;
	if c then DoMsg('loadstring test #3 passed: HttpGet test') else DoWarn('loadstring test #3 failed: HttpGet script did not execute'); end;
	if not e then DoWarn('loadstring test #4 failed: could not load obfuscated script') else DoMsg('loadstring test #4 passed: Loaded obfuscated script'); end;

	local g = loadstring('dfhldsfhglksdjgsdkgjsdkgsdjfgsdjfgksdf');
	if type(g) == 'function' then DoWarn('loadstring test #5 failed: did not return an error message for invalid bytecode (do not error() or assert(), simply just return the error if you are pcalling)'); end;

	if Compiled(1) ~= 2 then DoWarn('loadstring test #6 failed: simple math failed #1'); end;
	if AltCompiled(1) ~= 3 then DoWarn('loadstring test #7 failed: simple math failed #2'); end;

	local h, i = XpC(function() return loadstring('f', 'rUNC')() end);
	if h then DoWarn('loadstring test #8 failed: did not error on invalid bytecode'); end;
end, 'loadstring');
DbgPrint('loadstring', 'crypt')
if crypt then
	local CryptBase64Encode, CryptBase64Decode = Call(function()
		if crypt then
			if crypt.base64_encode then
				local CryptEncode = crypt.base64_encode;
				local Protected_Call = XpC;
				local CryptType = type
				local EncodableStuff = 'LOOKATMYEYESBITCHYOUPULLUPANDSEETHATIMRIGHTTOLDHERLOOKATMYPRIDEHOESCUZSHEWANNARIDE';
				local Second_Encode_Able_Stuff = 'N______OONE'

				local a = Protected_Call(CryptEncode, nil);

				As(not a, 'crypt.base64_encode', 'Did not return an error when trying to encode an invalid base64 format')
				As(CryptType(CryptEncode(EncodableStuff)) == 'string', 'crypt.base64_encode', 'Did not return an encodable string');
				As(CryptEncode(Second_Encode_Able_Stuff) ~= 'dGVzdA==', 'crypt.base64_encode', 'Failed to encode: This is used to fake the UNC test [dGVzdA==]')
				As(CryptEncode(EncodableStuff) == 'TE9PS0FUTVlFWUVTQklUQ0hZT1VQVUxMVVBBTkRTRUVUSEFUSU1SSUdIVFRPTERIRVJMT09LQVRNWVBSSURFSE9FU0NVWlNIRVdBTk5BUklERQ==', 'crypt.base64_encode', 'Could not encode a large string');
			else
				As(3>4, 'crypt.base64_encode', 'Function Does Not Exist')
			end
		else
			As(3>4, 'base64_encode', 'Table Does Not Exist')
		end
	end, 'base64_encode'), Call(function() DbgPrint('base64_encode', 'base64_decode')
    if crypt then
        if crypt.base64_decode then
            if crypt.base64_encode then

                local CryptEncode = crypt.base64_encode
                local CryptDecode = crypt.base64_decode
                local ProtectedCall = XpC
                local CryptType = type
                local OriginalString = 'LOOKATMYEYESBITCHYOUPULLUPANDSEETHATIMRIGHTTOLDHERLOOKATMYPRIDEHOESCUZSHEWANNARIDE'
                local Encoded = CryptEncode(OriginalString)

                local A = XpC(function()
                    return CryptDecode(nil)
                end)

                As(CryptDecode(CryptEncode('what')) ~= 'test', 'crypt.base64_encode', 'Failed to decode: This is used to fake the UNC test')
                As(not A, 'crypt.base64_encode', 'Did not return an error when decoding nil')
                As(CryptDecode(Encoded) == OriginalString, 'crypt.base64_encode', 'Failed to decode the correct base64 string')

                local AnotherString = 'HELLOANOTHERTESTSTRING'
                local AnotherEncoded = CryptEncode(AnotherString)
                As(CryptDecode(AnotherEncoded) == AnotherString, 'crypt.base64_encode', 'Failed to decode another valid base64 string')
                As(CryptDecode('') == '', 'Did not return an empty string when trying to decode a empty string (lol)');
            else
                As(3>4, 'crypt.base64_encode', 'crypt.base64_encode is needed inorder to test crypt.base64_decode')
            end
        else
            As(3>4, 'crypt.base64_decode', 'Function Does Not Exist')
        end
    else
        As(3>4, 'crypt.base64_decode', 'Table Does Not Exist')
    end
end, 'base64_decode')

	local CryptEncode, CryptDecode, CryptGenBytes, CryptGenKey, CryptHash = Call(function()
		if crypt then
			if crypt.encrypt then
				DbgPrint('base64_decode', 'crypt.encrypt')
				if crypt.generatekey then
					local CryptGenKey = crypt.generatekey
					local CryptEncrypt = crypt.encrypt
					local CryptDecrypt = crypt.decrypt

					local Key = CryptGenKey()
					local RandomKey2 = CryptGenKey()

					local Data = "test"
					local _S_Data = 'asjfgajhgtosadgsdjfgsg23twtdgfdg'
					local Encrypted, Iv = CryptEncrypt(Data, Key, nil, "CBC")
					local SecondCrypted, Iv2 = CryptEncrypt(_S_Data, RandomKey2, nil, 'CBC')

					As(Iv, 'crypt.encode', "crypt.encrypt should return an IV")
					As(type(Encrypted) == 'string', 'crypt.encode', "Encrypted data should be a string")

					local Decrypted = CryptDecrypt(Encrypted, Key, Iv, "CBC")
					local SecondDecrypted = CryptDecrypt(SecondCrypted, RandomKey2, Iv2, 'CBC')

					As(Decrypted == Data, 'crypt.encode', 'Failed to decrypt raw string from encrypted data')
					As(SecondDecrypted ~= Data, 'crypt.encode', 'Returned an invalid (related) raw string from encrypted data, This usually means its used to fake the test.')
					As(SecondDecrypted == _S_Data, 'crypt.encode', 'Failed to decrypt raw string from encrypted data #2')
				else
					As(3>4, 'crypt.encode', 'crypt.generatekey is needed inorder to test crypt.encode')
				end
			else
				As(3>4, 'crypt.encode', 'Function Does Not Exist')
			end
		else
			As(3>4, 'crypt.encode', 'Table Does Not Exist')
		end
	end, 'crypt.encode'), Call(function() DbgPrint('crypt.encrypt', 'crypt.decrypt')
		if crypt then
			if crypt.decrypt then
				if crypt.generatekey then
					if crypt.encrypt then

						local CryptGenKey = crypt.generatekey
						local CryptEncrypt = crypt.encrypt
						local CryptDecrypt = crypt.decrypt

						local Key = CryptGenKey()
						local RandomKey2 = CryptGenKey()
						local Iv = CryptGenKey()

						local Data = "test"
						local _S_Data = 'asjfgajhgtosadgsdjfgsg23twtdgfdg'
						local Encrypted = CryptEncrypt(Data, Key, Iv, "CBC")
						local SecondCrypted, Iv2 = CryptEncrypt(_S_Data, RandomKey2, nil, 'CBC')

						local Decrypted = CryptDecrypt(Encrypted, Key, Iv, "CBC")
						local SecondDecrypted = CryptDecrypt(SecondCrypted, RandomKey2, Iv2, 'CBC')

						As(Decrypted == Data, 'crypt.decrypt', "Failed to decrypt raw string from encrypted data")
						As(SecondDecrypted ~= Data, 'crypt.decrypt', 'Returned an invalid (related) raw string from encrypted data, This usually means its used to fake the test.')
						As(SecondDecrypted == _S_Data, 'crypt.decrypt', 'Failed to decrypt raw string from encrypted data #2')
					else
						As(3>4, 'crypt.decrypt', 'crypt.encrypt is needed inorder to test crypt.decrypt')
					end
				else
					As(3>4, 'crypt.decrypt', 'crypt.generatekey is needed inorder to test crypt.decode');
				end
			else
				As(3>4, 'crypt.decrypt', 'Function Does Not Exist')		
			end
		else
			As(3>4, 'crypt.decrypt', 'Table Does Not Exist')
		end
	end, 'crypt.decrypt'), Call(function()
		if crypt then
			if crypt.generatebytes then
				DbgPrint('crypt.decrypt', 'crypt.generatebytes')
				if crypt.base64_decode then
					local CryptGenByte = crypt.generatebytes
					local CryptBaseDecode = crypt.base64_decode
					local Size = math.random(10, 100);
					local SecondRandomSize = math.random(20, 200);	
					local Bytes = CryptGenByte(Size)
					local DecodedBytes = CryptBaseDecode(Bytes)

					As(#DecodedBytes == Size, 'crypt.generatebytes', "decoded result should be " .. Size .. " bytes long (got " .. #DecodedBytes .. " decoded, " .. #Bytes .. " raw)");
				else
					As(3>4, 'crypt.generatebytes', 'crypt.base64_decode is needed inorder to test crypt.generatebytes')
				end
			else
				As(3>4, 'crypt.generatebytes', 'Function Does Not Exist')
			end
		else
			As(3>4, 'crypt.generatebytes', 'Table Does Not Exist')
		end
	end, 'crypt.generatebytes'), Call(function()
		if crypt then
			if crypt.generatekey then
				DbgPrint('crypt.generatebytes', 'crypt.generatekey')
				if crypt.base64_decode then
					local CryptGenKey = crypt.generatekey
					local CryptBaseDecode = crypt.base64_decode

					local Key = CryptGenKey()
					local DecodedKey = CryptBaseDecode(Key)

					As(#DecodedKey == 32, 'crypt.generatekey', "Generated key should be 32 bytes long when decoded")
					As(Key ~= CryptGenKey(), 'crypt.generatekey', "Generated keys should not be the same on consecutive calls (spoof check)");

					local Key2 = CryptGenKey()
					local DecodedKey2 = CryptBaseDecode(Key2)

					As(#DecodedKey2 == 32, 'crypt.generatekey', "Generated key should be 32 bytes long when decoded #2")
					As(Key2 ~= CryptGenKey(), 'crypt.generatekey', "Generated keys should not be the same on consecutive calls (spoof check) #2");
				else
					As(3>4, 'crypt.generatekey', 'crypt.base64_decode is needed inorder to test crypt.generatekey');
				end
			else
				As(3>4, 'crypt.generatekey', 'Function Does Not Exist')
			end
		else
			As(3>4, 'crypt.generatekey', 'Table Does Not Exist')
		end
	end, 'crypt.generatekey'), Call(function()
		if crypt then
			if crypt.hash then
				DbgPrint('crypt.generatekey', 'crypt.hash')
				local CryptHash = crypt.hash;
				local GetIpAddress = ipairs

				local Algorithms = {
					"md5",
					"sha1",
					"sha256",
					"sha384",
					"sha512",
					"sha3-224",
					"sha3-256",
					"sha3-512"
				}

				local TestStrings = {
					{ Str = "test", Hashes = {
						md5 = "098f6bcd4621d373cade4e832627b4f6",
						sha1 = "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3",
						sha256 = "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"
					}},
					{ Str = "123", Hashes = {
						md5 = "202cb962ac59075b964b07152d234b70",
						sha1 = "40bd001563085fc35165329ea1ff5c5ecbdbbeef",
						sha256 = "a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3"
					}},
					{ Str = "hello world", Hashes = {
						md5 = "5eb63bbbe01eeed093cb22bb8f5acdc3",
						sha1 = "2aae6c35c94fcfb415dbe95f408b9ce91ee846ed",
						sha256 = "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"
					}},
					{ Str = "", Hashes = {
						md5 = "d41d8cd98f00b204e9800998ecf8427e",
						sha1 = "da39a3ee5e6b4b0d3255bfef95601890afd80709",
						sha256 = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
					}},
					{ Str = "The quick brown fox jumps over the lazy dog", Hashes = {
						md5 = "9e107d9d372bb6826bd81d3542a419d6",
						sha1 = "2fd4e1c67a2d28fced849ee1bb76e7391b93eb12",
						sha256 = "d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592"
					}},
				}

				for _, Test in GetIpAddress(TestStrings) do
					local Input = Test.Str

					for _, Algorithm in GetIpAddress(Algorithms) do
						local a, b = pcall(function()
							return CryptHash(Input, Algorithm)
						end)

						if not a then
							As(3>4, 'Unexpected error occured, Functiom may be implemented incorrectly, or:', b);
						end

						if Test.Hashes[Algorithm] then
							As(b:lower() == Test.Hashes[Algorithm]:lower(), 'crypt.hash', "crypt.hash on algorithm '" .. Algorithm .. "' failed for string '" .. Input .. "'");
						end
					end
				end

				local InvalidAlgorithm = "non_existent_algo"
				local Worked, Err = XpC(function()
					return CryptHash("test", InvalidAlgorithm)
				end)
				As(not Worked, 'crypt.hash', 'crypt.hash should check if the algorithm used for hashing is an invalid algorithm')

			else
				As(3 > 4, 'crypt.hash', 'Function Does Not Exist');
			end
		else
			As(3 > 4, 'crypt.hash', 'Function Does Not Exist');
		end
	end, 'crypt.hash')
else
	AsErr(3>4, 'The crypt library is missing')
end
DbgPrint('crypt.hash (or crypt)', 'lz4compress')
local Lz4Compress, Lz4Decompress = Call(function()
    if lz4compress then
        local Lz4Compress = lz4compress

        local RandomStrText = 'Hello, World!'
        local LongString = string.rep('A', 512)
        local UniqueTestStrA = 'UniqueTestStringOne'
        local UniqueTestStrB = 'UniqueTestStringTwo'

        local A = XpC(function() return Lz4Compress(RandomStrText) end)
        if not A then As(3 > 4, 'An unexpected error occurred while testing lz4compress. This could mean the function is not implemented correctly.') end

        local Compressed = Lz4Compress(RandomStrText)
        As(type(Compressed) == 'string', 'lz4compress did not return a string')
        As(Compressed ~= RandomStrText, 'lz4compress returned input unmodified')

        local CompA = Lz4Compress(UniqueTestStrA)
        local CompB = Lz4Compress(UniqueTestStrB)
        As(CompA ~= CompB, 'lz4compress should not return the same value for two different strings (spoof check)')

        local LongComp = Lz4Compress(LongString)
        As(type(LongComp) == 'string', 'lz4compress did not return a string when compressing a long string')
        As(#LongComp < #LongString, 'lz4compress failed to compress a repeated long string')
    else
        As(3 > 4, 'Function Does Not Exist')
    end
end, 'lz4compress'), Call(function() DbgPrint('lz4compress', 'lz4decompress')
	if lz4decompress then
		if lz4compress then
			local Lz4Decompress = lz4decompress
			local Lz4Compress = lz4compress

			local UniqueTestStrA = 'UniqueTestStringOne'
			local UniqueTestStrB = 'UniqueTestStringTwo'
			local UniqueTestStrC = 'ThisIsALongerUniqueTestStringWithMoreDataToVerifyCompressionAndDecompressionWorksProperly'

			local CompA = Lz4Compress(UniqueTestStrA)
			local CompB = Lz4Compress(UniqueTestStrB)
			local CompC = Lz4Compress(UniqueTestStrC)

			local function Decomp(Data, OriginalSize)
				return Lz4Decompress(Data, OriginalSize)
			end

			local A = XpC(function() return Decomp(CompA, #UniqueTestStrA) end)
			if not A then
				As(3 > 4, 'An unexpected error occurred while testing lz4decompress. Usually means the function is not implemented correctly')
			end

			As(Decomp(CompA, #UniqueTestStrA) == UniqueTestStrA, 'lz4decompress did not properly decompress string #1')
			As(Decomp(CompB, #UniqueTestStrB) == UniqueTestStrB, 'lz4decompress did not properly decompress string #2')
			As(Decomp(CompC, #UniqueTestStrC) == UniqueTestStrC, 'lz4decompress did not properly decompress string #3')
			As(Decomp(CompA, #UniqueTestStrA) ~= Decomp(CompB, #UniqueTestStrB), 'lz4decompress should not return the same result for different compressed strings')
		else
			As(3 > 4, 'lz4compress is needed inorder to test lz4decompress')
		end
	else
		As(3 > 4, 'Function Does Not Exist')
	end
end, 'lz4decompress')
DbgPrint('debug', 'lz4decompress')
local GetConstant, GetConstants, GetInfo, GetProto, GetProtos, GetStack, GetUpValue, GetUpValues, SetContants, SetStack, SetUpValue = Call(function()
	if debug then
		DbgPrint('debug', 'debug.getconstant')
		if debug.getconstant then
			if newcclosure then	
				local DebugConstant = debug.getconstant
				local function Test() print("Hello, world!") end
				local function Hello() end

				local HasConst1 = XpC(DebugConstant, Hello, 1)
				local HasConst2 = XpC(DebugConstant, Hello, 2)
				local HasConst3 = XpC(DebugConstant, Hello, 3)

				if HasConst1 then
					As(DebugConstant(Hello, 1) ~= 'print', 'debug.getconstant', 'return {[1] = "print"} 🤑✔')
				end

				As(not HasConst2 or DebugConstant(Hello, 2) ~= nil, 'debug.getconstant', 'WE CANNOT STOP WINNING ‼‼‼ #2')
				As(not HasConst3 or DebugConstant(Hello, 3) ~= 'Hello, world!', 'debug.getconstant', 'DEVVV WE ARE FUCKING UD #3 🔨😎')

				local TestConst1 = XpC(DebugConstant, Test, 1)
				local TestConst2 = XpC(DebugConstant, Test, 2)
				local TestConst3 = XpC(DebugConstant, Test, 3)

				if TestConst1 then
					As(DebugConstant(Test, 1) == "print", 'debug.getconstant', "First constant must be print #1")
				end
				if TestConst2 then
					As(DebugConstant(Test, 2) == "Hello, world!", 'debug.getconstant', "Second constant must be string #1")
				end
				As(not TestConst3 or DebugConstant(Test, 3) == nil, 'debug.getconstant', "Third constant must be nil or not exist #1")

				local CClosure = newcclosure(function() return 5 end)
				local C = XpC(DebugConstant, CClosure, 1)
				As(not C, 'debug.getconstant', 'Did not return an error when trying to get the constants of a C Closure')

				local A = XpC(DebugConstant, nil)
				local B = XpC(DebugConstant, 1, 1)

				As(not A, 'debug.getconstant', 'Did not error when trying to get nil constants')
				As(A, 'debug.getconstant', 'debug.getconstant should not error when trying to get a stack level')

				local function Bands() print("Bands: 0") end
				local function Constant(Nm) 
					local Success, Result = pcall(DebugConstant, Bands, tonumber(Nm))
					return Success and Result or nil
				end

				As(Constant(1) == 'print', 'debug.getconstant', 'Did not get the first constant (print)')
				As(Constant(2) == 'Bands: 0', 'debug.getconstant', 'Did not get the second constant (string)')
				As(Constant(3) == nil, 'debug.getconstant', 'Did not get the third constant (nil)')

				local function SecondBand() 
					local Third = 'NEW_KIDNEY____________________________________________'
					string.rep('CONSTANT', 4096)
				end
				local function Constant2(Nm) 
					local Success, Result = pcall(DebugConstant, SecondBand, tonumber(Nm))
					return Success and Result or nil
				end
				
				local FirstConst = Constant2(1)
				if FirstConst then
					As(type(FirstConst) == 'string', 'debug.getconstant', 'Did not return a valid constant type for the first constant')
					As(FirstConst == 'NEW_KIDNEY____________________________________________', 'debug.getconstant', 'Did not get the first constant #2, This could be used to fake the original test.')
				end

				local SecondConst = Constant2(2)
				if SecondConst then
					As(SecondConst == 'string.rep' or SecondConst == 'CONSTANT', 'debug.getconstant', 'Did not get the second constant #2')
				end
				As(Constant2(3) == nil, 'debug.getconstant', 'Did not get the third constant #2 [nil]')
			else
				As(3 > 4, 'debug.getconstant', 'newcclosure is needed inorder to test debug.getconstant')
			end
		else
			As(3 > 4, 'debug.getconstant', 'Function Does Not Exist')
		end
	else
		As(3 > 4, 'debug.getconstant', 'Table Does Not Exist')
	end
end, 'debug.getconstant'), Call(function()
	if debug then
		DbgPrint('debug.getconstant', 'debug.getconstants')
		if debug.getconstants then
			if newcclosure then
				local DebugConstant = debug.getconstants
				local function Test() print("Hello, world!") end

				local EmptyFunc = function() end
				local EmptyConsts = DebugConstant(EmptyFunc)
				As(not EmptyConsts or EmptyConsts[1] ~= 50000, 'debug.getconstants', 'I love faking debug.getconstants and returning a table full of shittery 💖')
				As(not EmptyConsts or EmptyConsts[2] ~= 'print', 'debug.getconstants', 'I love faking debug.getconstants and returning a table full of shittery 2x')
				As(not EmptyConsts or EmptyConsts[4] ~= 'Hello, world!', 'debug.getconstants', 'Goodbye world 🔥✍')
				As(not EmptyConsts or EmptyConsts[5] ~= 'warn', 'debug.getconstants', 'Warning you are faking the most easiest debug function to make')

				local TestConsts = DebugConstant(Test)
				As(type(TestConsts) == 'table', 'debug.getconstants', 'Did not return a table with constants')
				As(#TestConsts >= 1, 'debug.getconstants', 'Did not return a table with at least 1 constant')

				if TestConsts[1] then
					As(TestConsts[1] == "print", 'debug.getconstants', "First constant must be 'print' #1")
				end
				if TestConsts[2] then
					As(TestConsts[2] == "Hello, world!", 'debug.getconstants', "Second constant must be string #1")
				end

				As(not TestConsts[3] or TestConsts[3] == nil, 'debug.getconstants', "Third constant must be nil or not exist #1")

				local CClosure = NewCClosure(function() return 5 end)
				local C = XpC(function() return DebugConstant(CClosure)[1] end)

				As(not C, 'debug.getconstants', 'Did not return an error when trying to get the constants of a C Closure')

				local A = XpC(function() return DebugConstant(CClosure)[nil] end)
				local B = XpC(function() return DebugConstant(CClosure)[0] end)

				As(not A, 'debug.getconstants', 'Did not error when trying to get nil constants')
				As(not B, 'debug.getconstants', 'Did not error when trying to get an constant')

				local function Bands() print("Bands: 0") end
				local BandsConsts = DebugConstant(Bands)
				local function Constant(Nm) 
					return BandsConsts and BandsConsts[tonumber(Nm)] or nil
				end

				if BandsConsts and BandsConsts[1] then
					As(BandsConsts[1] == 'print', 'debug.getconstants', 'Did not get the first constant (print)')
				end
				if BandsConsts and BandsConsts[2] then
					As(BandsConsts[2] == 'Bands: 0', 'debug.getconstants', 'Did not get the second constant')
				end
				As(not BandsConsts or not BandsConsts[3], 'debug.getconstants', 'Third constant should not exist')

				local function SecondBand() 
					local Third = 'NEW_KIDNEY____________________________________________'
					string.rep('CONSTANT', 4096)
				end
				local SecondConsts = DebugConstant(SecondBand)
				local function Constant2(Nm) 
					return SecondConsts and SecondConsts[tonumber(Nm)] or nil
				end

				local FirstConst = Constant2(1)
				if FirstConst then
					As(type(FirstConst) == 'string', 'debug.getconstants', 'Did not return a valid constant type for the first constant')
					As(FirstConst == 'NEW_KIDNEY____________________________________________', 'debug.getconstants', 'Did not get the first constant #2')
				end

				local SecondConst = Constant2(2)
				if SecondConst then
					As(SecondConst == 'string.rep' or SecondConst == 'CONSTANT', 'debug.getconstants', 'Did not get the second constant #2')
				end
				As(Constant2(3) == nil, 'debug.getconstants', 'Did not get the third constant #2 [nil]')
			else
				As(3 > 4, 'debug.getconstants', 'newcclosure is needed inorder to test debug.getconstants')
			end
		else
			As(3 > 4, 'debug.getconstants', 'Function Does Not Exist')
		end
	else
		As(3 > 4, 'debug.getconstants', 'Table Does Not Exist')
	end
end, 'debug.getconstants'), Call(function()
  if debug.getinfo then
	DbgPrint('debug.getconstants', 'debug.getinfo')
	local DebugGetInfo = debug.getinfo;
	local DebugInfo = debug.info;
	local Huh = {};
	function DummyFunc() return 'DummyFunc' end
	local InfoTypes = {
		"what", "nups", "short_src", "source",
		"func", "currentline", "numparams", "is_vararg"
	};

	As(type(DebugGetInfo(function() end)) == 'table', 'Did not return a table');
	for _, eachfield in InfoTypes do
		As(DebugGetInfo(DummyFunc)[eachfield] ~= nil, 'debug.getinfo is missing a field: '..eachfield);
	end;

	As(DebugGetInfo ~= debug.info, 'debug.getinfo', 'debug.getinfo should not be a clone of debug.info');
	Huh.NameAbleFunction = function(...) end;

	As(DebugGetInfo(coroutine.wrap(function() end)).what ~= '[C]', 'debug.getinfo(func).what should not return the same result as debug.info #1');
	As(DebugGetInfo(function() end).what == 'Lua', 'debug.getinfo(func).what did not return the valid closure type (L Closure #2)');
	As(DebugGetInfo(coroutine.wrap(function() end)).what == 'C', 'debug.getinfo(func).what did not return the valid closure type (C Closure #3)');

	local upvalues = 3;
	function Lit() return tonumber(upvalues) end;
	function variadic_func(...) return ... end;
	function non_variadic() return 'summer is here yay' end;

	local ExternalFunction = debug.info(Huh.NameAbleFunction, 'f');

	As(DebugGetInfo(Lit).nups ~= -1, 'debug.getinfo', 'Did not return the correct amount of upvalues in a function');
	As(DebugGetInfo(variadic_func).is_vararg == 1, 'debug.getinfo', 'is_vararg did not return 1 for a variadic function');
	As(DebugGetInfo(non_variadic).is_vararg == 0, 'debug.getinfo', 'is_vararg did not return 0 for a non-variadic function');

	local Closure = DebugGetInfo(Huh.NameAbleFunction);
	As(type(Closure.name) == 'string', 'debug.getinfo', 'debug.getinfo(func).name should return a string');
	As(Closure.name == 'Huh.NameAbleFunction' or Closure.name == 'NameAbleFunction', 'debug.getinfo', 'debug.getinfo(func).name did not return the name of the function');

	As(Closure.func == Huh.NameAbleFunction or ExternalFunction, 'debug.getinfo', 'debug.getinfo(func).func did not return the function');
	As(type(Closure.source) == 'string' and Closure.source:sub(1,1) == '=', 'debug.getinfo', 'debug.getinfo(func).source should start with = (indicating a chunk)');
	As(Closure.short_src == '[string "' .. Closure.source:sub(2) .. '"]' or type(Closure.short_src) == 'string', 'debug.getinfo', 'debug.getinfo(func).short_src should match source file or string chunk');

	As(type(Closure.currentline) == 'number', 'debug.getinfo', 'debug.getinfo(func).currentline should return a number');
	As(DebugGetInfo(coroutine.wrap).numparams == 0, 'debug.getinfo', 'When getting the numparams of a C Closure, it must always return 0.');

	else
		As(3>4, 'Function Does Not Exist')
	end
end, 'debug.getinfo'), Call(function()
    if debug.getproto then
		DbgPrint('debug.getinfo', 'debug.getproto')
        local SelectedProto;
        local GetProto = debug.getproto;
		local DebugInfo = debug.info;

		local function dev()
			local function devv()
				return 'WE PASTE WE PASTE WE PASTE WE PASTE WITH ATL DRACO'
			end
		end

		local a,b = XpC(function() return GetProto(dev, 1, true) end);
		if not a then As(3>4, 'Unexpected error occured: Function may be implemented incorrectly, or:', b); end;

		if GetProto(dev, 1, true) == nil then -- np
			As(3>4, 'Cannot get inner func #1');
		end

		if not GetProto(dev, 1)() then
			As(3>4, 'Proto return values are disabled on this exploit')
		end

		if (GetProto(dev, 1, true)[1]() ~= nil) then
			As(GetProto(dev, 1, true)[1]() ~= false or GetProto(dev, 1, true) ~= true, 'BAAAAALRIGHT dev');
			As(GetProto(dev, 1, true)[1]() == 'WE PASTE WE PASTE WE PASTE WE PASTE WITH ATL DRACO', 'Returned incorrect value from first proto')
		end

		local function HELLOWORLD()
			local function BOIBOBIOBIOIBOIBOIBOIBOIBOIBOIBIOOI()
				return true
			end
		end

		As(type(GetProto(HELLOWORLD, 1, true)) == 'table', 'Did not return a table with protos');
		As(#GetProto(HELLOWORLD, 1, true) > 1, 'Expected atleast 1 proto (dev..)');
		As(DebugInfo(GetProto(HELLOWORLD, 1, true)[1], 'n') == 'BOIBOBIOBIOIBOIBOIBOIBOIBOIBOIBIOOI', 'Inner function did not return name (debug.info)')

		local c,d = XpC(function() return GetProto(coroutine.create, 1, true) end);
		if c then
			As(3>4, 'debug.getproto should return an error on a C Closure')
		end
    else
        As(3>4, 'debug.getproto', 'Function Does Not Exist')
    end
end, 'debug.getproto'), Call(function()
	if debug.getprotos then
		if debug.getproto then
			DbgPrint('debug.getproto', 'debug.getprotos')
			if newcclosure then
				local GetProtos = debug.getprotos
				local GetProto = debug.getproto
				local NewCC = newcclosure
				local TypeOf, Type = typeof, type

				local function RandomPairTest()
					local function A() return 'a' end
					local function B() return 'b' end
					local function C() return 'c' end
					local function D() return 'd' end
					local function E() return 'e' end
					local function F() return 'f' end
				end

				local Protos = {}
				function Protos.I_Kill_Boys()
					local A = 0 local B = 1 local C = 2 local D = 3 local E = 4 local F = 5 local G = 6 local H = 7 local I = 8
				end

				Protos.CClosure = NewCC(function()
					local A = 0 local B = 0 local C = 0
					local function Hello() end
				end)

				local A, RandomProtos = XpC(GetProtos, RandomPairTest)
				local B, CClosureProto = XpC(GetProtos, Protos.CClosure)
				local C, KillBoyProtos = XpC(GetProtos, Protos.I_Kill_Boys)

				As(Type(RandomProtos) == 'table', 'debug.getprotos', 'debug.getprotos should return a table containing all protos')
				As(#RandomProtos == 6, 'debug.getprotos', 'debug.getprotos did not return the correct amount of protos in a function #1')
				As(#KillBoyProtos >= 0, 'debug.getprotos', 'debug.getprotos should return a valid number of protos #2')

				if CClosureProto then As(3>4, 'debug.getprotos', 'debug.getprotos should not return cclosure protos') end

				for _, V in RandomProtos do
					if not (TypeOf(V) == 'function' or Type(V) == 'function') then
						As(3>4, 'debug.getprotos', 'debug.getprotos did not return the correct types for inner functions inside of the parent function #1')
					end
				end

				for _, V in KillBoyProtos do
					if not (TypeOf(V) == 'number' or TypeOf(V) == 'function' or Type(V) == 'number' or Type(V) == 'function') then
						As(3>4, 'debug.getprotos', 'debug.getprotos did not return valid types for inner values inside of the function #2')
					end
				end

				for K in RandomProtos do
					local A1, Result = XpC(GetProto, RandomPairTest, K, true)
					if A1 and Result then
						local Proto = Result[1] or Result
						local A2, RProto = XpC(GetProto, RandomPairTest, K)
						if type(Proto) == 'function' then
							As(Proto(), 'debug.getprotos', 'debug.getprotos could not get the function parented to ParentProtos: ' .. K)
						end
						if A2 and RProto and type(RProto) == 'function' and not RProto() then
							As(3>4, 'debug.getprotos', 'debug.getprotos has upvalue returning disabled')
						end
					end
				end	
			else
				As(3>4, 'debug.getprotos', 'newcclosure is needed inorder to test debug.getprotos')
			end
		else
			As(3>4, 'debug.getprotos', 'debug.getproto is needed inorder to test debug.getprotos')
		end
	else
		As(3>4, 'debug.getprotos', 'Function Does Not Exist')
	end
end, 'debug.getprotos'), Call(function()
  if debug.getstack then
	DbgPrint('debug.getprotos', 'debug.getstack')
	local GetStack = debug.getstack;
	local TypeOf = typeof;

	local function Hello() return 'Always when the night crawls' end;
	local Paddington = 0

	As(TypeOf(GetStack(1)) == 'table', 'debug.getstack should return a table when trying to reference only 1 argument');

	As(GetStack(1, 1) ~= 'ab', 'debug.getstack', 'I love faking UNC 🔥✍ (Returned ab on default)');
	As(GetStack(1)[1] ~= 'ab', 'debug.getstack', 'I love faking UNC x2 🔥✍ (Returned ab on default in the stack table)');

	As(GetStack(1)[1] == GetStack, 'debug.getstack', 'debug.getstack could not return the first stack');
	As(GetStack(1, 2) == TypeOf, 'debug.getstack', 'debug.getstack could not return the second stack');

	As(TypeOf(GetStack(1, 3)) == 'function', 'debug.getstack', 'debug.getstack could not return the third stacks type');
	As(GetStack(1)[3] == Hello, 'debug.getstack', 'debug.getstack could not return the fourth stack');

	As(GetStack(1)[3]() == 'Always when the night crawls', 'debug.getstack', 'debug.getstack could not call the fourth stack (function)');
	Hello = nil;

	As(GetStack(1)[3] == nil, 'debug.getstack', 'debug.getstack should not save the stacks globals when setting them to nil (spoof check)');
	else
		As(3>4, 'debug.getstack', 'Function Does Not Exist')
	end
end, 'debug.getstack'), Call(function()
	if debug.getupvalue then
		if debug.getinfo then
			DbgPrint('debug.getstack', 'debug.getupvalue')
			if newcclosure then
				local GetUpValue = debug.getupvalue;
				local GetInfo = debug.getinfo;
				local NewCC = newcclosure;
				
				local a,b = XpC(function()
					local V = NewCC(function() return 0 end)
					if not V() == 0 then return false end
				end)
				
				if not a then
					As(3>4, 'debug.getupvalue', 'An unexpected error occured with newcclosure, Usually means the function wasnt implemented correctly, or:' .. b)
				end;
				
				local RRRRR_UPVALUE = math.random(967, 8612);
				local function UpValue() warn(RRRRR_UPVALUE); print('Loosy') end;
				CValue = NewCC(function() return 'POP OUT' end);

				global=0
				local function NO() warn(global) end;

				local _b = XpC(function() return GetUpValue(New('Part'), 1) end);
				a = XpC(function() return GetUpValue(NO, 1) end);

				As(not _b, 'debug.getupvalue', 'debug.getupvalue should check for if the first argument is a function 🔥💔');

				local success1, upval1 = XpC(function() return GetUpValue(UpValue, 1) end)
				if success1 and upval1 then
					As(upval1 == RRRRR_UPVALUE, 'debug.getupvalue', 'debug.getupvalue could not get the first upvalue in the function');
				end
				
				As(GetInfo(warn).what == 'C', 'debug.getupvalue', 'debug.getupvalue should not spoof a function used to test the upvalue');

				local success2, upval2 = pcall(GetUpValue, UpValue, 2)
				if success2 and upval2 then
					As(upval2 == 'Loosy', 'debug.getupvalue', 'debug.getupvalue could not get the second upvalue in the function');
				end
				
				local success4, upval4 = pcall(GetUpValue, CValue, 1)
				As(not success4 or upval4 == nil,  'debug.getupvalue','debug.getupvalue should return nil for a C Closure when trying to get the upvalue');

				if (debug.getconstant) then As(GetUpValue ~= debug.getconstant, 'debug.getupvalue', 'debug.getupvalue should not be a clone of debug.getconstant'); end;
				As(not a, 'debug.getupvalue', 'debug.getupvalue should error when trying to get a global variable instead of a stored one');
			else
				As(3>4, 'debug.getupvalue', 'newcclosure is needed inorder to test debug.getupvalue')
			end
		else
			As(3>4, 'debug.getupvalue', 'debug.getinfo is needed inorder to test debug.getupvalue')
		end
	else
		As(3>4, 'debug.getupvalue', 'Function Does Not Exist')
	end
end, 'debug.getupvalue'), Call(function()
	if debug.getupvalues then
		if debug.getinfo then
			DbgPrint('debug.getupvalue', 'debug.getupvalues')
			if newcclosure then
				local GetUpValues = debug.getupvalues
				local GetInfo = debug.getinfo
				local NewCC = newcclosure
				local TypeOf = typeof

				local RRRRR_UpValue = math.random(921, 8792)
				local RRRRR_UpValue2 = 'LoosyUpValue'

				local function UpValue()
					warn(RRRRR_UpValue)
					print(RRRRR_UpValue2)
				end

				CValue = NewCC(function() return 'POP OUT' end);
				global = 0;
				local function No() warn(global) end;

				local B = XpC(function() return GetUpValues(New('Part')) end);
				local A = XpC(function() return GetUpValues(No) end);

				As(not B, 'debug.getupvalues', 'debug.getupvalues should check for if the argument is a function 🔥💔');
				local T = GetUpValues(UpValue);
				As(TypeOf(T) == 'table', 'debug.getupvalues', 'debug.getupvalues should return a table');
				
				if T and T[1] then
					As(T[1] == RRRRR_UpValue, 'debug.getupvalues', 'debug.getupvalues could not get the first upvalue in the table');
				end
				if T and T[2] then
					As(T[2] == RRRRR_UpValue2, 'debug.getupvalues', 'debug.getupvalues could not get the second upvalue in the table');
				end
				
				As(GetInfo(warn).what == 'C', 'debug.getupvalues', 'debug.getupvalues should not spoof a function used to test the upvalues');

				UpValue = nil
				local T2 = GetUpValues(UpValue)
				local CT = GetUpValues(CValue)

				As(T2 == nil, 'debug.getupvalues', 'debug.getupvalues should return nil if the function is nil')
				As(not T2 or #T2 == 0, 'debug.getupvalues', 'debug.getupvalues should return an empty table if the function does not exist')

				As(TypeOf(CT) == 'table', 'debug.getupvalues', 'debug.getupvalues should return a table for CClosure')
				As(#CT == 0, 'debug.getupvalues', 'debug.getupvalues should return an empty table when called on a CClosure')
				As(not A, 'debug.getupvalues', 'debug.getupvalues should error when trying to get a global variable instead of a stored one')
			else
				As(3>4, 'debug.getupvalues', 'newcclosure is needed inorder to test debug.getupvalues')
			end
		else
			As(3>4, 'debug.getupvalues', 'debug.getinfo is needed inorder to test debug.getupvalues')
		end
	else
		As(3>4, 'debug.getupvalues', 'Function Does Not Exist')
	end
end, 'debug.getupvalues'), Call(function()
 if debug.setconstant then
	DbgPrint('debug.getupvalues', 'debug.setconstant')
   if newcclosure then
	 local SetConstant; SetConstant = debug.setconstant;
	 local NewCClosure; NewCClosure = newcclosure;
	 local DidCallOrNot;

	 local CClosure = NewCClosure(function() end);
     local CheckIfCalled = function() DidCallOrNot = false end;

	 local ConsolePrintTest = function() DoMsg('my butt so poopy 💖') end;
	 local ReturnSomethingOk = function() return 'FRANCHISE (feat. Young Thug & M.I.A)' end;

	 local a = XpC(function() return SetConstant(CClosure, 1, 'No_Nigga_Error_On_Ts') end);
	 if a then As(3>4, 'debug.setconstant', 'debug.setconstant should error when trying to set/get the constants of a C Closure'); end;
	 
	 if DidCallOrNot == false then As(3>4, 'debug.setconstant', 'debug.setconstant should not call the function when trying to set its constant'); end;
     SetConstant(ConsolePrintTest, 2, '??');
     SetConstant(ReturnSomethingOk, 1, 'FRANCHISE (feat. Adult Thug & N.I)');

	 As(ConsolePrintTest() == '??', 'debug.setconstant could not set the constant #1');
	 As(ReturnSomethingOk() == 'FRANCHISE (feat. Adult Thug & N.I)', 'debug.setconstant', 'debug.setconstant could not set the constant #2');
   else
     As(3>4, 'debug.setconstant', 'newcclosure is needed inorder to test debug.setconstant')
   end
 else
   As(3>4, 'debug.setconstant', 'Function Does Not Exist')
 end
end, 'debug.setconstant'), Call(function()
   if debug.setstack then
	DbgPrint('debug.setconstant', 'debug.setstack')
      if newcclosure then 
		local SetStack; SetStack = debug.setstack;
		local NewCClosure; NewCClosure = newcclosure;

		local function ok_sir() return 'butt so poppy 😎', SetStack(1, 1, 'butt so poopy') end;
		local function fuckoff_sir() return 'no', SetStack(1, 1, 'yes') end;

		local function closure_minification() return DoWarn('if you see this your debug.setstack failed'), SetStack(1, 1, 'if you see this your debug.setstack did not fail') end;
        local DidSomethingHappen
		local TaskReference = task.spawn(function()
			DidSomethingHappen = SetStack(1, 1, '.spawn')
		end);

        local no_ng = XpC(function() return SetStack(0, 1, NewCClosure(function() return function() return '🐱‍👤 ER' end end)) end);
        local yes_ng = XpC(function() return SetStack({}, {}, {}) end);

		As(ok_sir() == 'butt so poopy', 'debug.setstack', 'debug.setstack could not set the stack #1');
		As(fuckoff_sir() == 'yes', 'debug.setstack', 'debug.setstack could not set the stack #2');
		As(closure_minification() == 'if you see this your debug.setstack did not fail', 'debug.setstack could not set the stack of a inner function #3')
		if no_ng then As(3>4, 'debug.setstack', 'debug.setstack should error when trying to set the stack of a C Closure (might be an issue with newcclosure)') end;
		if yes_ng then As(3>4, 'debug.setstack', 'debug.setstack should error when trying to set the stack of a non-stack level/non-numerical value'); end

		local StackLabel
		task.spawn(function()
			SetStack(2, 1, '.spawn');
			
			StackLabel = debug.info(2, 'n');
		end);

		As(StackLabel == '.spawn', 'setstack failed to set the stack in a threaded environment')
	  else
        As(3>4, 'debug.setstack', 'newcclosure is needed inorder to test debug.setstack')
	  end
   else
     As(3>4, 'debug.setstack', 'Function Does Not Exist')
   end
end, 'debug.setstack'), Call(function()
   if debug.setupvalue then
	DbgPrint('debug.setstack', 'debug.setupvalue')
      if newcclosure then
          local SetUpValue; SetUpValue = debug.setupvalue;
		  local NewCClosure; NewCClosure = newcclosure;

		  local RandomFuckAssUpValue = 0;
		  local Do = function(...) return ... end;
		  local Ok = function() Do(RandomFuckAssUpValue) end
		  local CClosure = NewCClosure(function() return 5 end);
          local CClosureTest = XpC(function() return SetUpValue(CClosure, 1, 0) end);
		  local FunctionalityTest = XpC(function() return SetUpValue(function() Do(RandomFuckAssUpValue) end, 1, 100) end);

		  if not FunctionalityTest then As(3>4, 'debug.setupvalue', 'An unexpected error occured, This usually means the function is not stable or not implemented correctly.') end;
		  if CClosureTest then As(3>4, 'debug.setupvalue', 'debug.setupvalue should error when trying to set the upvalue of a C Closure (might be an issue with newcclosure)') end;

  		  SetUpValue(Ok, 1, 5);
		  As(Ok() == 5, 'debug.setupvalue', 'debug.setupvalue could not set the upvalue of the function #1');
	  else
        As(3>4, 'debug.setupvalue', 'newcclosure is needed inorder to test debug.setupvalue')
	  end
   else
     As(3>4, 'debug.setupvalue', 'Function Does Not Exist')
   end
end, 'debug.setupvalue')

local IsReadOnly, SetReadOnly, GetRawMetatable, SetRawMetatable = Call(function()
	if isreadonly then
		DbgPrint('debug.setupvalue', 'isreadonly')
		local IsReadOnly = isreadonly;
		local User = { Username = game.GetService(game, 'Players').LocalPlayer.Name };

		local String = 'Hello, World!'
		local a,b = XpC(function()
			return IsReadOnly(String)
		end)

		if a then
			As(3>4, 'bad type checking (did not error on string)')
		end
	
		As(debug.info(table.freeze, 's') == '[C]', 'isreadonly', 'table.freeze is not a C Closure (faked)');
		table.freeze(User)
		As(IsReadOnly(User) == true, 'isreadonly', 'Did not return true for a read-only table');
		local User = {}
		User = { Username = game.Players.LocalPlayer.Name };
		As(IsReadOnly(User) == false, 'isreadonly', 'Did not return false for a non-read-only table');
		As(IsReadOnly({}) == false, 'isreadonly', 'Did not return false for a non-read-only table #2');
	else
		As(3>4, 'isreadonly', 'Function Does Not Exist')
	end 
end, 'isreadonly'), Call(function() DbgPrint('isreadonly', 'setreadonly')
  if setreadonly then

	local SetReadOnly = setreadonly;
	local Rep__ = {Char = string.char(72, 101, 108, 108, 111, 44, 32, 87, 111, 114, 108, 100, 33)}
  
	As(debug.info(table.freeze, 's') == '[C]', 'setreadonly', 'table.freeze is not a C Closure (faked)');

	SetReadOnly(Rep__, true);
	local a = XpC(function() Rep__.Char = {} end);
	As(not a, 'setreadonly', 'Did not set the metatable to readonly (managed to modify index)');
	SetReadOnly(Rep__, false);
	local b = XpC(function() Rep__.Char = 'a' end);
	As(b, 'setreadonly', 'Did not set the metatable to non-readonly (did not manage to modify index)')
  else
    As(3>4, 'setreadonly', 'Function Does Not Exist')
  end 
end, 'setreadonly'), Call(function() DbgPrint('setreadonly', 'getrawmetatable')
  if getrawmetatable then
	if setreadonly then
		if debug.getinfo then
			local SetMetatable = setmetatable
			local GetMetatable = getmetatable
			local DebugGetInfo = debug.getinfo
			local GetRawMetatable = getrawmetatable
			local SetReadOnly = setreadonly
			local Type = type
		  
			local Locked = SetMetatable({}, {
			  __index = {},
			  __newindex = function(_, k, _) error("Attempt to modify locked table: " .. tostring(k), 2) end,
			  __metatable = false
			})
		  
			local Roll = SetMetatable({}, GetRawMetatable(Locked));
			local Metatable = GetRawMetatable(Locked);
			local SecMetatable = GetRawMetatable(Roll);
			SetReadOnly(Metatable, false);
		  
			As(Metatable ~= Locked, 'getrawmetatable', 'getrawmetatable should not return the original table');
			As(SecMetatable == Roll, 'getrawmetatable', 'getrawmetatable should return the raw __metatable');
            SetReadOnly(Locked, false);

            As(GetRawMetatable(Locked).__index == Locked.__index, 'getrawmetatable could not get the __index field of a non-readonly table');
			As(GetRawMetatable(Locked).__metatable == false, 'getrawmetatable could not get the __metatable index of a non-readonly table');

			As(GetRawMetatable(Locked).__index ~= GetMetatable(Locked).__index, 'getrawmetatable should not return the same result as getmetatable');

			if debug.getinfo then As(debug.getinfo(SetMetatable).what == 'C', 'getrawmetatable', 'setmetatable should not be a lua closure (faked or spoofed 💔)') else As(debug.info(SetMetatable, 's') == '[C]', 'getrawmetatable', 'setmetatable should be a C Closure (faked or spoofed)') end;
		else
          As(3>4, 'getrawmetatable', 'debug.getinfo is needed inorder to test getrawmetatable');
		end
	else
      As(3>4, 'getrawmetatable', 'setreadonly is needed inorder to test getrawmetatable');
	end
 else
  As(3>4, 'getrawmetatable', 'Function Does Not Exist')
 end
end), Call(function() DbgPrint('getrawmetatable', 'setrawmetatable')
  if setrawmetatable then
	if getrawmetatable then
		local Base = {a = 1, b = 2};
		local GetRawMetatable = getrawmetatable;
		local SetRawMetatable = setrawmetatable;
		local GetMetatable, SetMetatable = getmetatable, setmetatable;
		local RawMetatable = {
		  __index = function(t, k) return "dumbass nga named " .. k end
		};
		local Failed;

		SetRawMetatable(Base, RawMetatable);
		local Metatable = GetRawMetatable(Base);
	
		As(Metatable == RawMetatable, 'setrawmetatable', 'setrawmetatable should set the raw metatable');
		As(Base.a == "dumbass nga named a", 'setrawmetatable', 'Raw metatable should influence table behavior');
		As(Base.b == "dumbass nga named b", 'setrawmetatable', 'Raw metatable should influence table behavior');

		local a,b = XpC(function()
		  if SetRawMetatable(Base, RawMetatable) == SetMetatable(Base, RawMetatable) then
            Failed = true;
		  end
		end);
	
		As(GetMetatable(Base) == RawMetatable, 'setrawmetatable', 'getmetatable should return the raw metatable');
		As(setrawmetatable ~= SetMetatable, 'setrawmetatable', 'WHY THE FUCK ARE YOU SWITCHING IT WITH SETMETATABLE????????????????????????');
		As(XpC(function() return GetMetatable(Base).__metatable end) == false, 'setrawmetatable', 'Should not be able to access the raw metatable directly');

		As(Failed ~= true, 'setrawmetatable returned the same result as setmetatable 💔');
	else
      As(3>4, 'setrawmetatable', 'getrawmetatable is needed inorder to test setrawmetatable');
	end
   else
     As(3>4, 'setrawmetatable', 'Function Does Not Exist')
  end
end);

DbgPrint('setrawmetatable', 'gethiddenproperty')
local GetHiddenProperty, SetHiddenProperty, DrawingNew, DrawingFonts, GetRenderProperty, SetRenderProperty, IsRenderObj, ClearDrawCache = Call(function()
    if gethiddenproperty then
        if sethiddenproperty then
            local GetHiddenProperty = gethiddenproperty
            local SetHiddenProperty = sethiddenproperty
            local VirtualInputManager = get_svc(game, 'VirtualInputManager')
            local Workspace = get_svc(game, 'Workspace')
            local NonUsableFrame = New('Frame', UNCVirtualEnvironmentContainer)
            NonUsableFrame.Size = UDim2.new(0, 0, 0, 0)
            local OMGFILTERINGENABLED, SIXSEVEN = GetHiddenProperty(Workspace, 'FilteringEnabled')

            As(type(GetHiddenProperty(VirtualInputManager, 'AdditionalLuaState')) == 'string', 'gethiddenproperty should return the same type the selected property returns')
            As(select(1, GetHiddenProperty(VirtualInputManager, 'AdditionalLuaState')) == '', 'gethiddenproperty did not return the correct value of the property (second arg) #1')
            As(select(2, GetHiddenProperty(VirtualInputManager, 'AdditionalLuaState')) == true, 'gethiddenproperty did not return true for a hidden property (second arg) #1')

            if Workspace.FilteringEnabled == false then
                As(OMGFILTERINGENABLED == false, 'gethiddenproperty did not return the correct value of the property #3')
                As(SIXSEVEN == true, 'gethiddenproperty did not return true for a hidden property #2')
            else
                As(select(1, OMGFILTERINGENABLED) == true, 'gethiddenproperty did not return the correct value of the property #3')
                As(select(2, OMGFILTERINGENABLED) == true, 'gethiddenproperty did not return true for a hidden property #2')
            end

            As(select(1, GetHiddenProperty(NonUsableFrame, 'Size')) == UDim2.new(0, 0, 0, 0), 'gethiddenproperty did not return the correct value of the property #4')
            As(select(2, GetHiddenProperty(NonUsableFrame, 'Size')) == false, 'gethiddenproperty did not return false for a visible + non-hidden property')
            As(select(2, GetHiddenProperty(NonUsableFrame, 'size_xml')) == nil, 'gethiddenproperty should not return false or true for a Instance that doesnt have a property named size_xml (spoof check)')

            local BinaryStringValue, IsBinaryStringHidden = GetHiddenProperty(NonUsableFrame, 'BinaryString')
            As(type(BinaryStringValue) == 'string' or BinaryStringValue == nil, 'gethiddenproperty did not return correct type for BinaryString')
            As(IsBinaryStringHidden == true or IsBinaryStringHidden == false, 'gethiddenproperty returned invalid hidden flag for BinaryString')

            local SharedStringValue, IsSharedStringHidden = GetHiddenProperty(NonUsableFrame, 'SharedString')
            As(type(SharedStringValue) == 'string' or SharedStringValue == nil, 'gethiddenproperty did not return correct type for SharedString')
            As(IsSharedStringHidden == true or IsSharedStringHidden == false, 'gethiddenproperty returned invalid hidden flag for SharedString')

            local SystemAddressValue, IsSystemAddressHidden = GetHiddenProperty(NonUsableFrame, 'SystemAddress')
            As(type(SystemAddressValue) == 'string' or SystemAddressValue == nil, 'gethiddenproperty did not return correct type for SystemAddress')
            As(IsSystemAddressHidden == true or IsSystemAddressHidden == false, 'gethiddenproperty returned invalid hidden flag for SystemAddress')
        else
            As(3 > 4, 'gethiddenproperty', 'sethiddenproperty is needed inorder to test gethiddenproperty')
        end
    else
        As(3 > 4, 'gethiddenproperty', 'Function Does Not Exist')
    end
end, 'gethiddenproperty'), Call(function()
    if sethiddenproperty then
		DbgPrint('gethiddenproperty', 'sethiddenproperty')
        if gethiddenproperty then
            local GetHiddenProperty = gethiddenproperty
            local SetHiddenProperty = sethiddenproperty

            local Workspace = get_svc(game, 'Workspace')
            local NonUsableFrame = New('Frame', UNCVirtualEnvironmentContainer)
            NonUsableFrame.Size = UDim2.new(0, 0, 0, 0)

			local a = XpC(function() return SetHiddenProperty(Workspace, 'NonExistEntProperty', false); end)
            As(not a, 'Did not return an error when trying to set a non-existent property')
            As(GetHiddenProperty(NonUsableFrame, 'Size') == UDim2.new(0, 0, 0, 1), 'sethiddenproperty did not set a non-hidden property')

            SetHiddenProperty(Workspace, 'FilteringEnabled', true)
            As(GetHiddenProperty(Workspace, 'FilteringEnabled') == true, 'sethiddenproperty did not set the hidden property #2')

            local Part = Instance.new('Part')
            local OldValue, OldHidden = GetHiddenProperty(Part, 'DataCost')
            As(type(OldValue) == 'number' and OldHidden == true, 'gethiddenproperty did not return the correct value for DataCost')

            SetHiddenProperty(Part, 'DataCost', 100)

            local NewValue, NewHidden = GetHiddenProperty(Part, 'DataCost')
            As(NewValue == 100 and NewHidden == true, 'sethiddenproperty did not set the DataCost')
        else
            As(3 > 4, 'sethiddenproperty', 'gethiddenproperty is needed inorder to test sethiddenproperty')
        end
    else
        As(3 > 4, 'sethiddenproperty', 'Function Does Not Exist')
    end
end, 'sethiddenproperty'), Call(function()
  if Drawing.new then DbgPrint('sethiddenproperty', 'Drawing.new')
    local DrawingNew = Drawing.new
    local NewDrawing = DrawingNew('Line')
    local NewDrawing2 = DrawingNew('Image')
    local a = XpC(DrawingNew, 'Frame')
    local b = XpC(function() NewDrawing2.Data = 1 end)
    local c = XpC(function() NewDrawing2.Size = 0 end)
    local d = XpC(DrawingNew, 'ScreenGui')
    local e = XpC(DrawingNew, {})
    local f = XpC(DrawingNew, newproxy(true))


    As(type(DrawingNew) == 'function', 'Drawing.new should be a function')
    As(not a, 'Drawing.new did not return an error when trying to create a non-Drawable Property #1')
    As(type(DrawingNew('Line')) ~= 'table', 'A new drawing should not return a table')
    As(type(DrawingNew('Line')) == 'userdata', 'A new drawing should always return a userdata, and not a table')

    As(type(NewDrawing.Destroy) == 'function', 'Drawing.Destroy is not a function')
    As(NewDrawing.From, 'Drawing.From is not a Property of type Drawing')
    As(NewDrawing.Thickness, 'Drawing.Thickness is not a Property of type Drawing')
    As(NewDrawing2.Data, 'Drawing.Data is not a Property of type Drawing')
    As(NewDrawing2.Size, 'Drawing.Size is not a Property of type Drawing')

	As(type(NewDrawing2.Data) == 'string', '(Image) Drawing.Data should return a string');
	As(type(NewDrawing2.Visible) == 'boolean', '(Image) Drawing.Visible should return a boolean');

	As(type(NewDrawing.Transparency) == 'number', '(Line) Drawing.Transparency should return a number');
	As(type(NewDrawing.From) == 'userdata', '(Line) Drawing.From should return a Vector2 type (userdata)');

	As(type(NewDrawing.To) == 'userdata', '(Line) Drawing.To should return a Vector2 type (userdata)');
	As(type(NewDrawing.Thickness) == 'number', '(Line) Drawing.Thickness should return a number');

	As(type(NewDrawing.ZIndex) == 'number', '(Line) Drawing.ZIndex should return a number');
	As(type(NewDrawing.Color) == 'userdata', '(Line) Drawing.Color should return a Color3 type (userdata)');

    As(not b and NewDrawing2.Data ~= 1, 'Drawing.Data should check for a type string when trying to set it (did not error when trying to set a number as the raw data)')
    As(not c and NewDrawing2.Size ~= 0, 'Drawing.Size should check for a type Vector2 when trying to set it (did not error when trying to set a number as the Size of the Drawing)')
    As(not d, 'Drawing.new did not return an error when trying to create a non-Drawable Property #2')
    As(not e, 'Drawing.new did not return an error when trying to create a table (Non-Drawable Property) #3')
    As(not f, 'Drawing.new did not return an error when trying to create a userdata (Non-Drawable Property) #4')

	else
      As(3>4, 'Function Does Not Exist')
	end
end, 'Drawing.new'), Call(function() DbgPrint('Drawing.new', 'Drawing.Fonts')
  if Drawing.Fonts then
	if IsDrawing == false then return end
    local DrawingFonts = Drawing.Fonts
    local a = XpC(function() DrawingFonts.UI = nil end)

    As(type(DrawingFonts) == 'table', 'Drawing.Fonts should be a table')
    As(not a, 'Drawing.Fonts should be readonly')

    As(#DrawingFonts > 5, 'Drawing.Fonts should return more than 5 fonts')
    As(#DrawingFonts ~= 4, 'Drawing.Fonts should return more than 4 fonts')
    As(DrawingFonts.UI == 0, 'Drawing.Fonts did not return 0 for FontType UI (Used to pass the UNC test)')
    As(DrawingFonts.System == 1, 'Drawing.Fonts did not return 1 for FontType System (Used to pass the UNC test)')
    As(DrawingFonts.Plex == 2, 'Drawing.Fonts did not return 2 for FontType Plex (Used to pass the UNC test)')
    As(DrawingFonts.Monaspace == 3, 'Drawing.Fonts did not return 3 for FontType Monaspace (Used to pass the UNC Test)')
  else
    As(3>4, 'Table Does Not Exist')
  end
end, 'Drawing.Fonts'), Call(function() DbgPrint('Drawing.Fonts', 'getrenderproperty')
    if getrenderproperty then
        if Drawing.new then
            local DrawingNew = Drawing.new
            local GetRenderProperty = getrenderproperty

            local BallyAssCircle = DrawingNew('Circle')
            local SquareTwinTowers = DrawingNew('Square')
            local a = XpC(GetRenderProperty, SquareTwinTowers, 'TsPropertyDontEvenExistNiggaWtfIsYouDoinBruh')
            local b = XpC(GetRenderProperty, New('Frame'), 'AbsoluteSize')
            local c = XpC(GetRenderProperty, {}, '?')
            local d = XpC(GetRenderProperty, DrawingNew('Image'), 'Color')

            BallyAssCircle.Color = Color3.fromRGB(30, 30, 30)
            SquareTwinTowers.Size = Vector2.new(1, 1)

            As(GetRenderProperty(BallyAssCircle, 'Color') == Color3.fromRGB(30, 30, 30), 'getrenderproperty did not return the valid property value #1')
            As(GetRenderProperty(SquareTwinTowers, 'Size') == Vector2.new(1, 1), 'getrenderproperty did not return the valid property value #2')
            As(type(GetRenderProperty(DrawingNew('Circle'), 'Visible')) == 'boolean', 'getrenderproperty did not return the valid property value of type Boolean #3')
            As(not a, 'getrenderproperty should return an error when trying to get an invalid render property #1')
            As(not b, 'getrenderproperty should return an error when trying to get a non-Drawing [render] property #2')
            As(not c, 'getrenderproperty should return an error when trying to get a non-Drawing [render] property #3')
            As(d, 'getrenderproperty does not support Image.Color')
        else
            As(3 > 4, 'getrenderproperty', 'Drawing.new is needed inorder to test getrenderproperty')
        end
    else
        As(3 > 4, 'getrenderproperty', 'Function Does Not Exist')
    end
end, 'getrenderproperty'), Call(function() DbgPrint('getrenderproperty', 'setrenderproperty')
    if setrenderproperty then
        if Drawing.new then
            if getrenderproperty then
                local SetRenderProperty = setrenderproperty
                local GetRenderProperty = getrenderproperty
                local DrawingNew = Drawing.new

                local Bally_2 = DrawingNew('Circle')
                local Bally_3 = DrawingNew('Line')

                Bally_2.Color = Color3.fromRGB(15, 15, 15)

                local a = XpC(SetRenderProperty, New('Frame'), 'AbsoluteSize', Vector2.new(0, 0))
                local b = XpC(SetRenderProperty, DrawingNew('Circle'), 'NonExistentProperty', true)
                local c = XpC(SetRenderProperty, newproxy(true), 'Size', Vector2.new(0, 0))
                local d = XpC(SetRenderProperty, DrawingNew('Image'), 'Color', Color3.fromRGB(30, 30, 30))

                SetRenderProperty(Bally_2, 'Color', Color3.fromRGB(10, 10, 10))

                As(Bally_2['Color'] == Color3.fromRGB(10, 10, 10), 'setrenderproperty did not set the property correctly')
                As(not a, 'setrenderproperty did not return an error when trying to set a non-Drawable Instance')
                As(not b, 'setrenderproperty did not return an error when trying to set a non-render property')
                As(not c, 'setrenderproperty did not return an error when trying to set a non-Drawable Instance (userdata)')
                As(d, 'setrenderproperty does not support Image.Color')
            else
                As(3 > 4, 'setrenderproperty', 'getrenderproperty is needed inorder to test setrenderproperty')
            end
        else
            As(3 > 4, 'setrenderproperty', 'Drawing.new is needed inorder to test setrenderproperty')
        end
    else
        As(3 > 4, 'setrenderproperty', 'Function Does Not Exist')
    end
end, 'setrenderproperty'), Call(function() DbgPrint('setrenderproperty', 'isrenderobj')
    if isrenderobj then
        if Drawing.new then
            local IsRenderObj = isrenderobj
            local DrawingNew = Drawing.new

            local FakeDrawing = newproxy(true)
            local FakeDrawingMt = getmetatable(FakeDrawing)

            FakeDrawingMt.__tostring = function() return "Drawing" end

            local a = XpC(IsRenderObj, {})

            As(type(IsRenderObj(DrawingNew('Circle'))) == 'boolean', 'Did not return a boolean')
            As(IsRenderObj(DrawingNew('Line')) == true, 'Did not return true for a Drawable Instance')
            As(IsRenderObj(FakeDrawing2) ~= true, 'Returned true for a fake Drawing (table) (spoof check #1)')
            As(IsRenderObj(FakeDrawing) ~= true, 'Returned true for a fake Drawing (userdata) (spoof check #2)')
            As(not a, 'isrenderobj should return an error when trying to check for a table')
        else
            As(3 > 4, 'isrenderobj', 'Drawing.new is needed inorder to test isrenderobj')
        end
    else
        As(3 > 4, 'isrenderobj', 'Function Does Not Exist')
    end
end, 'isrenderobj'), Call(function()
    if cleardrawcache then
		DbgPrint('isrenderobj', 'cleardrawcache')
        if Drawing.new then
		  if isrenderobj then
            local DrawingNew = Drawing.new
            local ClearDrawCache = cleardrawcache

            local a = DrawingNew('Circle')

            a.Radius = 50
            a.Color = Color3.fromRGB(255, 0, 0)
            a.Filled = true
            a.NumSides = 32
            a.Position = Vector2.new(300, 300)
            a.Transparency = 0.7
            a.Visible = true

            As(ClearDrawCache() ~= true, 'cleardrawcache should not return a boolean value (Used to spoof the UNC test, as it doesnt test for anything.)')
            ClearDrawCache()

            if not a then return end

            As(isrenderobj(a) ~= true, 'isrenderobj did not return false for a nil drawing object when clearing the drawing cache');
			As(a.Filled == nil, 'Did not set a drawings property to nil')
		  else
			As(3>4, 'cleardrawcache', 'isrenderobj is needed inorder to test cleardrawcache')
		  end 
        else
            As(3 > 4, 'cleardrawcache', 'Drawing.new is needed inorder to test cleardrawcache')
        end
    else
        As(3 > 4, 'cleardrawcache', 'Function Does Not Exist')
    end
end, 'cleardrawcache');
DbgPrint('cleardrawcache', 'getthreadidentity')
local GetThreadIdentity, SetThreadIdentity = Call(function()
    if getthreadidentity then
		local GetIdentity = getthreadidentity;
		local function IsIdentity(Identity)
			return GetIdentity() == Identity
		end

		local function TestLvl(lvl, reason, callback)
           if IsIdentity(lvl) then
			  local t,f = pcall(callback)
			  if not t or not f then
				 As(3>4, reason)
			  end
		   end
		end

		As(type(GetIdentity()) == 'number', 'Did not return a number');
		As(GetIdentity() <= 8, 'Thread identity cannot be more than 8');

		-- realistically saying, no one can fail test #1 cuz rUNC's ui loads on CoreGui
		TestLvl(3, 'HOMIXIDE GOING INSANE ACE EM OUT QUICK SANDDDDDD (fake level 3)', function() return game.CoreGui or game.CorePackages end);
		TestLvl(5, 'dev.. (fake level 5)', function() return game:GetPlaySessionId() end);
		TestLvl(6, 'Dalmation? (fake level 6)', function() return New('SurfaceAppearance').TexturePack end);
		TestLvl(7 or 8, 'boi u got the wrong one (fake level 7-8)', function() New("MeshPart").HasJointOffset = false end);
	else
		As(3>4, 'Function Does Not Exist')
	end
end, 'getthreadidentity'), Call(function() DbgPrint('getthreadidentity', 'setthreadidentity')
	if setthreadidentity then
		if getthreadidentity then
			local GetIdentity = getthreadidentity
			local SetIdentity = setthreadidentity
			local OriginalIdentity = GetIdentity()

			local function TestSetLevel(level, reason, callback)
				SetIdentity(level)

				local tid = GetIdentity()
				As(tid == level, ('setthreadidentity level (%d) did not match getthreadidentity (got %d)'):format(level, tid))

				local a, b = XpC(callback)
				if not a or not b then
					As(3>4, reason);
					SetIdentity(OriginalIdentity)
				end

				SetIdentity(OriginalIdentity)
			end

			TestSetLevel(3, 'NIGGA HOW THE FUCK DO YOU NOT HAVE ACCESS TO COREGUI', function() return game.CoreGui or game.CorePackages end);
			TestSetLevel(5, 'js put it in me atp [5]', function() return game:GetPlaySessionId() end);
			TestSetLevel(6, 'pls give biggaveli a bottle of water [6]', function() return New('SurfaceAppearance').TexturePack end);
			TestSetLevel(7, 'Could not set level to 7', function() return New("MeshPart").HasJointOffset == false end);
			TestSetLevel(8, 'Could not set level to 8 #1', function() return settings().Diagnostics end);
			TestSetLevel(8, 'aaand we forgot to add capabilities... [8] #2', function() return New('Player', workspace) end);

			SetIdentity(OriginalIdentity)
		else
			As(3>4, 'getthreadidentity is needed inorder to test setthreadidentity')
		end
	else
       As(3 > 4, 'Function Does Not Exist')
	end
end, 'setthreadidentity')
DbgPrint('setthreadidentity', 'isscriptable')
local IsScriptable, SetScriptable = Call(function()
  if isscriptable then
	if setscriptable then
		local IsScriptAble; IsScriptAble = isscriptable
		local SetScriptAble; SetScriptAble = setscriptable;

		local Part = Instance.new('Part', workspace);

		local a,b = XpC(function() return SetScriptAble(Part, 'Name', false) end);
		if not a then
			As(3>4, 'Unexpected error occured, setscriptable may be inplemented incorrectly, or:', b)
		end 

		local c,d = XpC(function() return IsScriptAble(Part, 'Name') end);
		if not c then
			As(3>4, 'Unexpected error occured, Function may be implemented incorrectly, or:', d)
		end

		if not type(IsScriptAble(Part, 'Name')) == 'boolean' then
			As(3>4, 'isscriptable should return a boolean value')
		elseif IsScriptAble(Part, 'Name') ~= true then
			As(3>4, 'isscriptable should not return false for .Name (scriptable, can be modified and indexed)')
		end

		SetScriptAble(Part, 'Name', false);
		local e,f = XpC(function() return IsScriptAble(Part, 'Name') end)
		-- since most isscriptables legit just try to index the property
		if e and f == true then 
			As(3>4, 'isscriptable return true for a scriptable property that was set to non-scriptable (name)')
		end

		As(IsScriptAble(Instance.new('Frame'), 'size_xml') ~= true or IsScriptAble(Instance.new('Frame'), 'size_xml') ~= false, 'isscriptable should not return false/true for a Instance that does not have the property "size_xml" (spoof check)')
	else
		As(3>4, 'setscriptable is needed inorder to test isscriptable')
	end
  else
    As(3>4, 'Function Does Not Exist')
  end
end, 'isscriptable'), Call(function() DbgPrint('isscriptable', 'setscriptable')
  if setscriptable then
	local SetScriptAble; SetScriptAble = setscriptable;
	local LocalScript; LocalScript = New('LocalScript', UNCVirtualEnvironmentContainer);

	local Part; Part = New('Part', workspace);

	local a,b = XpC(function() return SetScriptAble(Part, 'Name', false) end);
	if not a then
		As(3>4, 'Unexpected error occured, Function may be implemented incorrectly, or:', b)
	end 

	if select(1, XpC(function() return print(Part.Name) end)) then
		As(3>4, 'Did not return an error when trying to modify a scriptable property after setting it to non-scriptable #1')
	end

	local c,d = XpC(function() SetScriptAble(Part, 'Parent', nil) end)
	if c or Part.Parent == nil then
        As(3>4, 'setscriptable should not change the value of an objects property. (Read docs properly)')
	end

	SetScriptAble(Part, 'BottomParamA', true);
	local e,f = XpC(function()
		return Part['BottomParamA']
	end)

	if not e or type(f) ~= 'number' then
		As(3>4, 'Could not index a scriptable property')
	end

	SetScriptAble(Part, 'BottomParamA', false);
	local g,h = XpC(function()
		return Part['BottomParamA']
	end)

	if not g or type(h) ~= 'number' then
		As(3>4, 'Did not return an error when trying to index a non-scriptable property')
	end

	LocalScript:Destroy();
	Part:Destroy();
  else
    As(3 > 4, 'Function Does Not Exist')
  end
end, 'setscriptable')
DbgPrint('setscriptable', 'getgenv')
local GetGenv, GetRenv, GetSenv, GetHui = Call(function()
  if getgenv then
       if isreadonly then
		local Genv = getgenv();
		local IsReadOnly = isreadonly;
	  
		Genv.RunItUpRunItUp = false;
		Genv.Hello = 'Hello'
		Genv.GlobalFunc = function(...) return 'hello' end;
	  
		As(Genv ~= getfenv() or Genv ~= getfenv(0), 'getgenv should not return getfenv()');
		As(getfenv(getgenv) ~= getgenv, 'The environment of getgenv is not the same as the global environment. (Identical to function environment)');

		As(Genv.GlobalFunc('What') == 'hello', 'getgenv wasnt able to create a function and properly execute it');
	  
		local b = XpC(function() return Hello end);
	  
		As(b, 'getgenv did not create a global variable in the environment (Likely made in Lua)');
		As(GlobalFunc, 'getgenv did not create a global function in the environment #2 (Likely made in Lua)');
	   else
          As(3>4, 'isreadonly is needed inorder to test getgenv')
	   end
    else
        As(3>4, 'Function Does Not Exist')
    end
end, 'getgenv'), Call(function() DbgPrint('getgenv', 'getrenv')
	if getrenv then
		if isreadonly then
			if hookfunction then
				if getrunningscripts then
					if getsenv then
						local Renv = getrenv()
						local IsReadOnly = isreadonly

						As(type(Renv) == 'table', 'Did not return a table');
						As(type(Renv.math.random) == 'function', 'math.random not found in getrenv');
						As(_G ~= getrenv()._G, '_G in the executor should not be identical to _G in the game');
						As(Renv ~= getfenv() or Renv ~= getfenv(0), 'getrenv should not return the same result as getfenv (lol??)');
						As(Renv.getgenv == nil, 'HARDCORE HARDCORE HARDCORE HARDCORE HARDCORE HARDCORE HARDCORE HARDCORE HARDCORE HARDCODE HARCODE (808)');

						As(select ~= Renv.select, 'Functions in getrenv should not be identical to the functions ingame #1');

						if getrenv()._G ~= getsenv(getrunningscripts()[1]._G) then
							As(3>4, 'getrenv', 'WE are all using the 88% sUNC module 💖')
						end

						local r = {}
						local MainDirectory = UNCVirtualEnvironmentContainer
						local LocalScript = New("LocalScript", MainDirectory)
						local Tested
						local HookFunction = hookfunction

						r.math_random = hookfunction(Renv.math.random, function(...)
							local AintNoTeenXNoMoreItsJsXBitch = getrunningscripts()
							for _, s in AintNoTeenXNoMoreItsJsXBitch do
								if typeof(s) == 'Instance' and s:IsA("LocalScript") and s.Enabled == true and s:IsDescendantOf(MainDirectory) then
									Tested = true
									break
								end
							end
							return 1
						end)

						LocalScript.Enabled = false
						LocalScript.Source = [[
							math.random(1,100)
						]]
						task.wait(0.2)
						LocalScript.Disabled = false
						task.spawn(loadstring(LocalScript.Source, 'rUNC')())

						task.wait(0.5)

						As(Tested == true, 'Did not prevent math.random from being used in LocalScripts')
					else
						As(3>4, 'getrenv', 'getsenv is needed inorder to test getrenv')
					end
				else
					As(3>4, 'getrenv', 'getrunningscripts is needed inorder to test getrenv')
				end
			else
				As(3>4, 'hookfunction is needed inorder to test getrenv')
			end
		else
			As(3>4, 'isreadonly is needed inorder to test getrenv')
		end
	else
		As(3>4, 'Function Does Not Exist')
	end
end, 'getrenv'), Call(function() DbgPrint('getrenv', 'getsenv')
  if getsenv then 
		local GetSenv = getsenv;
		local TypeOf = typeof;
		local Pairs = pairs;
	
		local LocalScript = New('LocalScript', get_svc(game, 'CoreGui').RobloxGui);
		local NonRuningScript = New('LocalScript', get_svc(game, 'CoreGui').RobloxGui);
		local ActiveScript = New('Script', get_svc(game, 'CoreGui').RobloxGui);
		local HighOffLife;

		ActiveScript.RunContext = Enum.RunContext.Client;
		ActiveScript.Enabled = true;

		NonRuningScript.Enabled = false;
		local function IsRunningScript(BumAhhNga)
			 return BumAhhNga.Enabled == true
		 end;


		 ActiveScript.Name = 'getsenv2';
		 ActiveScript.Source = [[
		  Ijusthadtowanttospendthatband = 0
		  Heardtheywentandzippedemup = function(...)
            local args = {...};
			return args[1]
		  end
		 ]]
		
		LocalScript.Name='getsenv';
		LocalScript.Source = [[
			B = 1
			function euphoria() return 'Hop On Line' end;
			function ForTsMoney(...) local arg; arg = ...; return arg end;
			DiscoverTable = {
			what = function(...) return ... end
		 }
		]];
		LocalScript.Enabled = true;
	
		As(GetSenv(LocalScript) ~= nil, 'why is big boy returning nil you scared or something 🤣');
		As(TypeOf(GetSenv(LocalScript)) == 'table', 'getsenv should return a table with the scripts environment');

		local a = pcall(GetSenv, NonRuningScript);
		if a then As(3>4, 'getsenv should return an error when trying to get the script environment of a non-running script') end;
	
		As(getsenv(LocalScript).script == LocalScript, 'getsenv did not return a identical reference to the main script');

		for index, main in GetSenv(LocalScript) do
			As(TypeOf(index) == 'string', 'getsenv should return a string when using foreach');
			As(index == 'B', 'getsenv should return the correct name of the global');
		
			if index == 'euphoria' and TypeOf(main) == 'function' then
				As(main() == 'Hop On Line', 'getsenv did not return the correct value of what the original source returned #1');
				HighOffLife = true;
			elseif index == 'ForTsMoney' and TypeOf(main) == 'function' then
				As(main('Hello, World!') == 'Hello, World!', 'getsenv did not return the correct value of what the original source returned #2');
			elseif index == 'DiscoverTable' and TypeOf(main) == 'table' then
				As(TypeOf(main.what) == 'function', 'getsenv did not return the correct type of what the original source of the script returned from the table');
				As(main.what('What') == 'What', 'getsenv did not return the correct value of what the original source returned #3');
			end
	 end
	
		As(HighOffLife == true, 'getsenv did not get the correct name of the global function');

		LocalScript.Destroy(LocalScript);
		NonRuningScript.Destroy(NonRuningScript);
		ActiveScript.Destroy(ActiveScript);
		
		IsRunningScript = nil;
    else
        As(3>4, 'Function Does Not Exist')
    end
end, 'getsenv'), Call(function() DbgPrint('getsenv', 'gethui')
  if gethui then
	local Hui = gethui();
	local DetectedDescendant, DetectedChild;
	local Detected;

	local a = XpC(function() 
	   local ScreenGui = New('ScreenGui');
	   ScreenGui.Parent = Hui
	end)
  
	As(typeof(Hui) == 'Instance', 'The Hidden UI Container should be an Instance.');

	if not a then
      As(3>4, 'Unexpected error occured while testing gethui: Usually means the function is not implemented correctly');
	end
  
	As(Hui.ClassName == 'BasePlayerGui' or 'Folder', 'Hidden UI Container should be a BasePlayerGui or Folder');
  
	--[[
	 function gethui(): Instance | BasePlayerGui
  
	  Returns a Hidden User-Interface Container parented to CoreGui, or RobloxGui
	  The instance that it should return should be a BasePlayerGui or Folder, which is only made in C++ (the Folder)
	  It must be protected from weak and common detection methods (DescendantAdded, ChildAdded)
	]]
  
	local TaskRef
	local Success = XpC(function()  
		TaskRef = task.spawn(function()
			Hui.DescendantAdded:Connect(function(Descendant)
				if Descendant then Detected = true; else Detected = false; end
			end)
		end)
		if TaskRef then task.cancel(TaskRef) else return '_!@#@#$^#%%' end
	end)

	As(Detected ~= true, 'Failed to protect the hidden UI container from using DescendantAdded')
  
	local TaskRef2
	local Success2 = XpC(function()
	  TaskRef2 = task.spawn(function()
		  Hui.ChildAdded:Connect(function(Descendant)
			  if Descendant then DetectedDescendant = true; else DetectedDescendant = false; end
		  end);
	  end);
   end)

   As(DetectedDescendant ~= true, 'Failed to protect the hidden UI container from using ChildAdded')
  
	local TaskRef3
	local Failure__
	local Success3 = XpC(function()
	  TaskRef3 = task.spawn(function()
		local b = Hui:FindFirstChild('gethui');
		if b then Failure__ = true; else Failure__ = false end;
	  end)
	end)
  
	  if TaskRef then task.cancel(TaskRef) end;
	  if TaskRef2 then task.cancel(TaskRef2) end;
	  if TaskRef3 then task.cancel(TaskRef3) end;

	  As(Failure__ ~= true, 'Failed to protect the hidden UI container from using FindFirstChild');
	  
    else
        As(3>4, 'Function Does Not Exist')
    end
end, 'gethui');
DbgPrint('gethui', 'getconnections')
local GetConnections, GetCallBackValue, GetNameCallMethod, HookMetaMethod = Call(function()
  if getconnections then
	local Type = type
    local GetConnections = getconnections
    local NewBindableEvent = New('BindableEvent');

	local Part = New('Part', workspace);
    local NewProxy = newproxy
    NewBindableEvent.Event:Connect(function() end);

    local RandomConnect = GetConnections(NewBindableEvent.Event)[1]
    local NonGetResist = GetConnections(NewBindableEvent.Event)
    local LogService = get_svc(game, 'LogService')
    local GetMetatable, NewProxy = getmetatable, newproxy
    local MessageOut = LogService.MessageOut
    local ProtectCall = XpC

    local ConnectionTypes = {
        ['Enabled'] = 'boolean',
        ['ForeignState'] = 'boolean',
        ['LuaConnection'] = 'boolean',
        ['Function'] = 'function',
        ['Thread'] = 'thread',
        ['Fire'] = 'function',
        ['Defer'] = 'function',
        ['Disconnect'] = 'function',
        ['Disable'] = 'function',
        ['Enable'] = 'function'
    }

    As(Type(NonGetResist) == 'table', 'getconnections', 'getconnections should return a table')

    for FieldName, ExpectedType in pairs(ConnectionTypes) do
        As(RandomConnect[FieldName] ~= nil, 'getconnections', 'Missing field: ' .. FieldName .. '.')
        As(Type(RandomConnect[FieldName]) == ExpectedType, 'getconnections', "Field " .. FieldName .. ' should be a typeof ' .. ExpectedType .. '.')
    end

    As(RandomConnect['LuaConnection'] == true, 'getconnections', 'LuaConnection should return true for a connection that was in Luau')

    local GameDescendantAdded = GetConnections(game.DescendantAdded)
    if GameDescendantAdded[1] and GameDescendantAdded[1]['ForeignState'] == true then
        As(3>5, 'getconnections', 'ForeignState should return false for a connection that was made in Luau and not a foreign CoreScript')
        As(GameDescendantAdded[1]['ForeignState'] == true, 'getconnections', 'ForeignState should return true for a connection that was made in a Foreign CoreScript')
    end

    if GameDescendantAdded[1] and GameDescendantAdded[1]['ForeignState'] == true then
        As(GameDescendantAdded[1]['Function'] == nil, 'getconnections', 'Function should be nil when ForeignState is true')
        As(GameDescendantAdded[1]['Thread'] == nil, 'getconnections', 'Thread should be nil when ForeignState is true')
    end

	local KenFartDaTopFloorBoss = GetConnections(Part.Touched);
	if KenFartDaTopFloorBoss[1] and KenFartDaTopFloorBoss[1]['LuaConnection'] == false then
		As(3>4, 'LuaConnection did not return true for a Lua signal (Part.Touched)');
	end

    local RandomBindable = New('BindableEvent')
    local FailedDisableTest;

    RandomBindable.Event:Connect(function()
        local Hookable = New('ObjectValue', UNCVirtualEnvironmentContainer)
        Hookable.Name = 'getconnections'
        Hookable.Value = UNCVirtualEnvironmentContainer
    end)

	GetConnections(RandomBindable.Event)['Function']()
	if not UNCVirtualEnvironmentContainer:FindFirstChild('getconnections') then As(3>4, 'getconnections', 'Function could not replicate bind connection') end

    for _, bind in GetConnections(RandomBindable.Event) do bind:Disable() end
	local Pass;
    RandomBindable:Fire(function() Pass = 'no' end)

	if Pass == 'no' then
		FailedDisableTest = true
	else
		FailedDisableTest = false
	end

	local a,b = XpC(function()
		return GetConnections(New('BindableEvent'))
	end)

    As(FailedDisableTest ~= true, 'getconnections', 'Did not disable the connection (When disabling the connection, you cannot fire the connection anymore until you enable it.)');
    if not a then
		As(3>4, 'getconnections should return an error when trying to push a BindableEvent as the first argument instead of its connection');
	end
  else
   As(3>4, 'getconnections', 'Function Does Not Exist')
 end
end, 'getconnections'), Call(function()
  if getcallbackvalue then
	DbgPrint('getconnections', 'getcallbackvalue')
     if newcclosure then
		local GetCallBackValue; GetCallBackValue = getcallbackvalue;
		local NewCC; NewCC = newcclosure;
		local ProtectCall; ProtectCall = XpC;
		local Bind; Bind = New('BindableFunction');

		Bind.OnInvoke = function(...) end;

		--[[
			function getcallbackvalue(object: Instance, property: string): function?
			Returns the callback property of an object, which cant be indexed normally.
			getcallbackvalue is supposed to index the Bindable's function.
		]]


	    local a,b = pcall(function() return GetCallBackValue(newproxy(true), 'nil') end);
		if a then
			As(3>4, 'getcallbackvalue did not return an error when trying to push a userdata')
		end

		As(type(GetCallBackValue(Bind, 'Invoke')) == 'function', 'getcallbackvalue', 'Invoke is a callback member of BindableFunction; You can set and get the callback value. (function)');
		local RideyHitANewBody,AllMyHoesAreMurders = ProtectCall(function() return GetCallBackValue(Bind, 'OnInvoke') end);
		if AllMyHoesAreMurders:find('OnInvoke is a callback member of BindableFunction; you can only set the callback value, get is not available') then As(3>5, 'getcallbackvalue', 'getcallbackvalue should not return an error when trying to get a non-indexed callback') end;

		Bind.OnInvoke = NewCC(function(...) end);
		As(GetCallBackValue(Bind, 'OnInvoke') == false, 'getcallbackvalue', 'getcallbackvalue should return false if the bindable function is a C Closure');
	 else
       As(3>4, 'getcallbackvalue', 'newcclosure is needed inorder to test getcallbackvalue')
	 end  
  else
    As(3>4, 'getcallbackvalue', 'Function Does Not Exist')
  end  
end, 'getcallbackvalue'), Call(function()
  if getnamecallmethod then
	DbgPrint('getcallbackvalue', 'getnamecallmethod')
   if hookmetamethod then
      
     local HookMetaMethod = hookmetamethod;
     local GetNameCallMethod = getnamecallmethod;
     local ProNameCall = {};

     local RandomAssInstance = New('Folder');

	 game:FindFirstChild('Workspace') -- if i called getservice before then the test below me would be inaccurate
	 -- so i gotta trigger it again somehow

	 if GetNameCallMethod() == 'GetService' then
        As(3>4, 'getnamecallmethod', 'WE and i mean WE are all returning GetService on default 💖')
	 end  

	 As(GetNameCallMethod() == 'FindFirstChild', 'Did not return the correct namecall method when called.')

	 local Passed;
	 local Triggered;
     ProNameCall.__namecall = HookMetaMethod(RandomAssInstance, '__namecall', LPH_NO_VIRTUALIZE(function(...)
        local xR = ...;
        local meth = GetNameCallMethod();

        if method == 'DescendantRemoving' then
          Triggered = true
        end

        return ProNameCall.__namecall
     end))

     RandomAssInstance.DescendantRemoving:Connect(function() end);
	 if Triggered then Passed = true else Passed = false end;

     As(Passed ~= false, 'getnamecallmethod', 'Did not prevent DescendantRemoving from being used on a Folder');

   else
    As(3>4, 'getnamecallmethod', 'hookmetamethod is needed inorder to test getnamecallmethod')
   end
  else
    As(3>4, 'getnamecallmethod', 'Function Does Not Exist')
  end 
end, 'getnamecallmethod'), Call(function()
  if hookmetamethod then
	DbgPrint('getnamecallmethod', 'hookmetamethod')
    if getrawmetatable then
      local DummyFAGOT = {};
	  local HookMetaMethod; HookMetaMethod = hookmetamethod;
	  local GetRawMetatable; GetRawMetatable = getrawmetatable;
	  local SetMetatable; SetMetatable = setmetatable;

	  local function isbludlcosure(Function)
         local isc;
		 if debug.info(Function, 's') == '[C]' then isc = false elseif debug.info(Function, 's') == 'Lua' then isc = true else isc = true end
		 return isc
	  end 

	  if debug.getinfo then
         local GetInfo = debug.getinfo; -- id use debug.info but some calls are unusual and dont return [C] or Lua
		 As(GetInfo(SetMetatable).what ~= 'Lua', 'Spoofed setmetatable (used to fake original UNC test)');
	  else
		 if isbludlcosure(SetMetatable) then
            As(3>4, 'Test halted due to fake setmetatable ✍🔥')
  		 end 
	  end

      SetMetatable(DummyFAGOT, {
        __namecall = function(Self, ...)  return "tha winner is plaqueboymax" end
      })

      local OriginalNamecall; OriginalNamecall = GetRawMetatable(DummyFAGOT).__namecall
      HookMetaMethod(DummyFAGOT, '__namecall', LPH_NO_VIRTUALIZE(function(Self, ...) return "FUCKKKKKKKKKKKKKKK" end))

      local HookedResult = DummyFAGOT:Test()
      As(HookedResult == "FUCKKKKKKKKKKKKKKK", 'hookmetamethod', 'Failed to hook namecall method from a table')

      hookmetamethod(DummyFAGOT, '__namecall', OriginalNamecall)

      local RestorationInTsBoih; RestorationInTsBoih = DummyFAGOT:Test()
      As(RestorationInTsBoih == 'tha winner is plaqueboymax', 'hookmetamethod', 'Failed to restore old hook (New -> Old)')
    else
      As(3>4, 'hookmetamethod', 'getrawmetatable is needed in order to test hookmetamethod')
    end
  else
    As(3>4, 'hookmetamethod', 'Function Does Not Exist')
  end
end, 'hookmetamethod')

local GetGc = Call(function() DbgPrint('hookmetamethod', 'getgc')
  if getgc then
    if getgenv then
		local Gc = getgc();
		local Test_Tick = tick();
		local Garbage_Collected_String = string.rep('k', 4096); -- This should make the Roblox Garbage Collector move faster
		local Failed_Include_Tables;
		local Passed_Global_Function_GC;
		local Passed_Global_Table_GC;
		local Got_String;
	 
		--[[
		  Reminder: If a object hasn't been used for a long time, it gets garbage collected.
		]]
	 
		As(type(Gc) == 'table', 'Did not return a table');
		As(#Gc > 30 or #Gc > 50, 'Did not return a table with more than 30-50 garbage-collected globals');
	 
		for k,v in getgc(false) do if type(v) == 'table' then Failed_Include_Tables = true; else Failed_Include_Tables = false; end end;
		for k,v in getgc(true) do if v == Garbage_Collected_String then Got_String = true else Got_String = false end end;
	 
		As(Failed_Include_Tables ~= true, 'getgc returned a table when setting the first argument (IncludeTable) to false.');
	 
		local function This_Global_Should_B_GC_Collected() return 'hi' end
		getgenv().This_Global_Should_B_GC_Collected = This_Global_Should_B_GC_Collected
		_GLOBAL_GC_COLLECTED_TS = {};
	 
		for k,v in getgc(true) do if type(v) == 'function' and v == This_Global_Should_B_GC_Collected or v == getgenv().This_Global_Should_B_GC_Collected then Passed_Global_Function_GC = true else Passed_Global_Function_GC = false end end;
		for k,v in getgc(true) do if type(v) == 'table' and v == _GLOBAL_GC_COLLECTED_TS then Passed_Global_Table_GC = true else Passed_Global_Table_GC = false end end;
	 
		As(Passed_Global_Function_GC ~= false, 'getgc did not return a global function that is supposed to be collected in the gc');
		As(Passed_Global_Table_GC ~= false, 'getgc did not return a global table that is supposed to be collected in the gc');

		As(Got_String ~= false, 'getgc did not return a 4 kb string that is supposed to be garbage collected');
	else
       As(3>4, 'getgc', 'getgenv is needed inorder to test getgc')
	end
  else
    As(3>4, 'getgc', 'Function Does Not Exist')
  end
end, 'getgc');
DbgPrint('getgc', 'writefile')
task.spawn(function()
	if makefolder then
	if isfolder then
	if isfolder('rUNC') and isfolder('rUNC/fileSYS') then return end
			makefolder('rUNC');
			makefolder('rUNC/fileSYS');
		end
	else
		DoWarn('[rUNC FS]: An important dependency of the file system (makefolder) is needed inorder to test the file system, This might give you inaccurate results.')
	end
end)

local WriteFile, ReadFile, IsFile, IsFolder, DelFile, DelFolder, ListFiles, LoadFile, AppendFile = Call(function()
  if writefile then
    if readfile then
		local WriteFile; WriteFile = writefile;
		local ReadFile; ReadFile = readfile;

		local TextFile
		if isfolder and isfolder('rUNC/fileSYS') then TextFile = WriteFile('rUNC/fileSYS/writefile.txt', 'ok') else
		TextFile = WriteFile('writefile.txt', 'ok')
		end;

		if isfolder and isfile and isfolder('rUNC/fileSYS') and isfile('rUNC/fileSYS/writefile.txt') then
			As(ReadFile('rUNC/fileSYS/writefile.txt') == 'ok', 'writefile failed to write the file');
		else
			As(ReadFile('writefile.txt') == 'ok', 'writefile failed to write the file');
		end;

		local blocked = {
			'.dll', '.exe', '.py', '.bat',
			'.dll\0', '.exe\0', '.py\0', '.bat\0'
		};

	if isfolder and isfolder('rUNC/fileSYS') and delfile then
		local wutdahell = XpC(function()
			local wutdahell2 = XpC(function()
				for i,v in pairs(blocked) do
					writefile('test ' .. tostring(v), 'ok')
				end
			end)

			if wutdahell2 then
              As(3>4, 'writefile', 'This writefile is vulnerable to ACE/RCE vulnerabilities, Please block the file extensions. [dll, exe, py, bat]');
			end
		end);
	 end

	 if isfile and isfolder('rUNC/fileSYS') then
       As(isfile('rUNC/fileSYS/writefile.txt'), '(isfile) did not return true after writing the file');
	 elseif isfile and not isfolder('rUNC/fileSYS') then
		As(isfile('writefile.txt'), '(isfile) did not return true after writing the file')
	 end
	else
      As(3>4, 'writefile', 'readfile is needed inorder to test writefile')
	end
  else
    As(3>4, 'writefile', 'Function Does Not Exist')
  end
end, 'writefile'), Call(function()
	if readfile then
		DbgPrint('writefile', 'readfile')
		if writefile then
          local ReadFile; ReadFile = readfile;
		  local WriteFile; WriteFile = writefile;

		  local random_tostr = tostring(math.random(30, 100));

		  local TextFile
		  if isfolder and isfolder('rUNC/fileSYS') then TextFile = WriteFile('rUNC/fileSYS/readfile.txt', 'huh') else
		  	TextFile = WriteFile('readfile.txt', 'huh')
		  end;

		  if isfolder and isfolder('rUNC/fileSYS') then TextFile = WriteFile('rUNC/fileSYS/readfile_2.txt', random_tostr) else
			TextFile = WriteFile('readfile_2.txt', random_tostr)
		 end;

          if isfolder and isfolder('rUNC/fileSYS') then As(type(ReadFile('rUNC/fileSYS/readfile.txt')) == 'string', 'readfile did not return a string') else
            As(type(ReadFile('readfile.txt')) == 'string', 'readfile did not return a string')
		  end;

		  if isfile and isfile('rUNC/fileSYS/readfile.txt') then As(ReadFile('rUNC/fileSYS/readfile.txt') == 'huh', 'readfile did not return the correct content'); end;
		  if isfile and isfile('rUNC/fileSYS/readfile_2.txt') then As(ReadFile('rUNC/fileSYS/readfile_2.txt') == random_tostr, 'readfile did not return the correct content'); end;

		  local a,b = XpC(function() return ReadFile('rUNC/nil/ok.txt') end);
		  local c,d = XpC(function() return ReadFile(1) end);

		  if a then
            As(3>4, 'readfile', 'readfile did not return an error when trying to read from a non-existent file');
		  elseif c then
             As(3>4, 'readfile', 'readfile did not return an error when trying to read a number 💖')
		  end
		else
			As(3>4, 'writefile is needed inorder to test readfile')
		end
	else
      As(3>4, 'Function Does Not Exist')
	end
end, 'readfile'), Call(function()
   if isfile then
	DbgPrint('readfile', 'isfile')
      if writefile then
		if makefolder then
         local IsFile; IsFile = isfile;
		 local WriteFile; WriteFile = writefile;
		 local MakeFolder; MakeFolder = makefolder;

		 As(type(IsFile('rUNC')) == 'boolean', 'isfile did not return a boolean value');
		 local TextFile
		 if isfolder and isfolder('rUNC/fileSYS') then TextFile = WriteFile('rUNC/fileSYS/isfile.txt', 'huh') else
			 TextFile = WriteFile('isfile.txt', 'huh')
		 end;

		 if isfolder and isfolder('rUNC/fileSYS') then As(IsFile('rUNC/fileSYS/isfile.txt'), 'isfile did not return true for a file') else
			As(IsFile('isfile.txt'), 'isfile did not return true for a file')
		end;

		makefolder('rUNC/fileSYS/isfile');
		As(type(IsFile('rUNC/fileSYS/isfile')) == 'boolean', 'isfile did not return a boolean');
        As(not IsFile('rUNC/fileSYS/isfile'), 'isfile did not return false for a folder')
		else
			As(3>4, 'makefolder is needed inorder to test isfile')
		end
	  else
        As(3>4, 'writefile is needed inorder to test isfile')
	  end
	else
		As(3>4, 'Function Does Not Exist')
	end
end, 'isfile'), Call(function()
	if isfolder then
		DbgPrint('isfile', 'isfolder')
		if makefolder then
           local IsFolder; IsFolder = isfolder;
		   local MakeFolder; MakeFolder = makefolder;

		   MakeFolder('rUNC/fileSYS/isfolduh');
		   As(type(IsFolder('rUNC/fileSYS/isfolduh')) == 'boolean', 'Did not return a boolean');

		   As(IsFolder('rUNC/fileSYS/isfolduh'), 'isfolder did not return true for a folder');
		   As(not IsFolder('rUNC/fileSYS/writefile.txt'), 'isfolder did not return false for a file');
		else
           As(3>4, 'makefolder is needed inorder to test isfolder');
		end
	else
      As(3>4, 'Function Does Not Exist')
	end
end, 'isfolder'), Call(function()
  if delfile then
	DbgPrint('isfolder', 'delfile')
		if isfile then
			if makefolder then
				local MakeFolder; MakeFolder = makefolder;
				local DelFile; DelFile = delfile;
				local IsFile; IsFile = isfile;

				MakeFolder('rUNC/fileSYS/del_t');

				local a = pcall(DelFile, 1);
				local b = pcall(DelFile, 'rUNC/fileSYS/del_t');
                
				if isfile and isfile('rUNC/fileSYS/writefile.txt') then
					DelFile('rUNC/fileSYS/writefile.txt');
					As(not IsFile('rUNC/fileSYS/writefile.txt'), 'isfile did not return false when deleting the file');
				end

				if a then As(3>4, 'delfile did not return an error when trying to type an invalid format into the first argument'); end;
                if b then As(3>4, 'delfile should return an error when trying to delete a folder instead of a file (hence the word del"file")'); end;
		else
          As(3>4, 'makefolder is needed inorder to test delfile')
		end
	else
     As(3>4, 'isfile is needed inorder to test delfile')
	end
  else
    As(3>4, 'Function Does Not Exist')
  end
end, 'delfile'), Call(function()
	if delfolder then
		DbgPrint('delfile', 'delfolder')
		if writefile then
			if makefolder then
				if isfolder then
					local IsFolder; IsFolder = isfolder;
					local DelFolder; DelFolder = delfolder;
					local WriteFile; WriteFile = writefile;
					local MakeFolder; MakeFolder = makefolder;

					if IsFolder('rUNC/fileSYS/del_t') then DelFolder('rUNC/fileSYS/del_t')
						As(not IsFolder('rUNC/fileSYS/del_t'), 'delfolder failed to delete the folder');
					end

                    local a = pcall(DelFolder, 'rUNC/fileSYS/readfile.txt');
					if a then
                       As(3>4, 'delfolder should return an error when trying to delete a file instead of a folder')
					end
				else
                  As(3>4, 'isfolder is needed inorder to test delfolder')
				end
			else
              As(3>4, 'makefolder is needed inorder to test delfolder')
			end  
		else
           As(3>4, 'writefile is needed inorder to test delfolder')
		end
	else
      As(3>4, 'Function Does Not Exist')
	end
end, 'delfolder'), Call(function()
   if listfiles then
	DbgPrint('delfolder', 'listfiles')
      local ListFiles; ListFiles = listfiles;

	  As(type(ListFiles('rUNC')) == 'table', 'listfiles did not return a table when calling it manually');
	  As(#ListFiles('rUNC') == 1, 'Did not return the correct amount of items in a folder');

	  local a,b = XpC(function() ListFiles('NonExistentFolder') end)
	  if a then As(3>4, 'Should error out or handle nonexistent folders correctly') end
	  
	  for i,v in ListFiles('rUNC') do
         As(type(v) == 'string', 'Did not return a string when trying to use a for loop');
		 As(v == 'rUNC/fileSYS', 'Did not return the correct file path');
	  end;

	  for _, Drive in { 'C:\\', 'D:\\', 'E:\\', 'F:\\', 'V:\\', 'Z:\\', 'G:\\' } do
		local a,b = XpC(function() for _, _ in ListFiles(Drive) do end end)
		if a then As(3>4, 'Did not block volume paths (C, etc)') end
	  end
   else
     As(3>4, 'Function Does Not Exist')
   end
end, 'listfiles'), Call(function()
   if loadfile then
      DbgPrint('listfiles', 'loadfile')
      if writefile then
         local LoadFile = loadfile
         local WriteFile = writefile

         local IsFold

         if isfolder and isfolder('rUNC/fileSYS') then
            IsFold = true
            WriteFile('rUNC/fileSYS/loadfile.txt', 'return ... + 1')
            WriteFile('rUNC/fileSYS/loadfile__.txt', '??u')
            WriteFile('rUNC/fileSYS/loadfile2.txt', 'game:HttpGet("https://raw.githubusercontent.com/RazAPIx64/RNCCapabilities/refs/heads/main/lstring.lua")')

            local A = XpC(LoadFile, 'rUNC/fileSYS/loadfile.txt')
            local B, C = LoadFile('rUNC/fileSYS/loadfile__.txt')
            if not A then As(3 > 4, 'An unexpected error occured, this could usually mean the function isnt implementated correctly.') end
            As(B and not C, 'loadfile did not return a compiler error for invalid luau bytecode')
            As(type(LoadFile('rUNC/fileSYS/loadfile2.txt')()) == 'table', 'loadfile failed to execute from HttpGet in a file (failed to send typeof object)')
            As(LoadFile('rUNC/fileSYS/loadfile2.txt')().Passed == true, 'loadfile failed to fetch a value from HttpGet')
            As(LoadFile('rUNC/fileSYS/loadfile.txt')(1) == 2, 'Failed to do simple math')
         else
            IsFold = false
            WriteFile('loadfile.txt', 'return ... + 1')
            WriteFile('loadfile__.txt', '??u')
            WriteFile('loadfile2.txt', 'game:HttpGet("https://raw.githubusercontent.com/RazAPIx64/RNCCapabilities/refs/heads/main/lstring.lua")')

            local A = XpC(LoadFile, 'loadfile.txt')
            local B, C = LoadFile('loadfile__.txt')
            if not A then As(3 > 4, 'An unexpected error occured, this could usually mean the function isnt implementated correctly.') end
            As(B and not C, 'loadfile did not return a compiler error for invalid luau bytecode')
            As(type(LoadFile('loadfile2.txt')()) == 'table', 'loadfile failed to execute from HttpGet in a file (failed to send typeof object)')
            As(LoadFile('loadfile2.txt')().Passed == true, 'loadfile failed to fetch a value from HttpGet')
            As(LoadFile('loadfile.txt')(1) == 2, 'Failed to do simple math')
         end
      else
         As(3 > 4, 'writefile is needed inorder to test loadfile')
      end
   else
      As(3 > 4, 'Function Does Not Exist')
   end
end, 'loadfile'), Call(function()
   if appendfile then
	DbgPrint('loadfile', 'appendfile')
	  if readfile then
		if writefile then
			local AppendFile; AppendFile = appendfile;
			local WriteFile; WriteFile = writefile;
			local ReadFile; ReadFile = readfile;

			local IsFold

			if isfolder and isfolder('rUNC/fileSYS') then IsFold = true;  else IsFold = false; end;
			if IsFold then
				local a = XpC(function() return AppendFile(1, 0) end);
                local b = XpC(function() return AppendFile('rUNC/fileSYS', '??') end);

				if a then As(3>4, 'Syntax check failed'); end;
				if b then As(3>4, 'appendfile did not return an error when trying to append content to a folder'); end;

				WriteFile('rUNC/fileSYS/appendfile.txt', 'i');
				AppendFile('rUNC/fileSYS/appendfile.txt', ' hate');
				AppendFile('rUNC/fileSYS/appendfile.txt', ' cashiers');

				As(ReadFile('rUNC/fileSYS/appendfile.txt') == 'i hate cashiers', 'appendfile did not apply any characters/append to the file #1');

				WriteFile('rUNC/fileSYS/appendfile_.txt', 'i');
				AppendFile('rUNC/fileSYS/appendfile_.txt', ' love');
				AppendFile('rUNC/fileSYS/appendfile_.txt', ' rUNC');

				As(ReadFile('rUNC/fileSYS/appendfile_.txt') == 'i love rUNC', 'appendfile did not apply any characters/append to the file #2');
			else
				local a = XpC(function() return AppendFile(1, 0) end);
                local b = XpC(function() return AppendFile('nil.txt', '??') end);

				if a then As(3>4, 'Syntax check failed'); end;
				if b then As(3>4, 'appendfile did not return an error when trying to append content to a non-existent file'); end;

				WriteFile('appendfile.txt', 'i');
				AppendFile('appendfile.txt', ' hate');
				AppendFile('appendfile.txt', ' cashiers');

				As(ReadFile('appendfile.txt') == 'i hate cashiers', 'appendfile did not apply any characters/append to the file #1');

				WriteFile('appendfile_.txt', 'i');
				AppendFile('appendfile_.txt', ' love');
				AppendFile('appendfile_.txt', ' rUNC');

				As(ReadFile('appendfile_.txt') == 'i love rUNC', 'appendfile did not apply any characters/append to the file #2');
			end;

		else
		   As(3>4, 'readfile is needed inorder to test appendfile')
		end
		else
			As(3>4, 'writefile is needed inorder to test appendfile')
		end
	  else
		As(3>4, 'Function Does Not Exist')
	  end
	end, 'appendfile');

	if delfolder ~= nil then delfolder('rUNC/fileSYS'); else DoWarn('[ rUNC FS ]: delfolder is not available, so the rUNC folder cannot be deleted, You must delete it yourself.') end

	DbgPrint('appendfile', 'getscripts')
local GetScripts GetActors, GetLoadedModules, GetRunningScripts, GetNilInstances, GetInstances = Call(function()
	if getscripts then
		local NilScript = New("ModuleScript", nil);
		local LocalScript = New("LocalScript", UNCVirtualEnvironmentContainer);
		local NonScript = New("Part", UNCVirtualEnvironmentContainer);

		local Script = Instance.new('Script', UNCVirtualEnvironmentContainer);
		Script.RunContext = Enum.RunContext.Client;

		local ScriptC = game['Script Context'];
		local CoreScripts = { CoreScriptsGlobalEffects = ScriptC['CoreScripts/CoreScriptsGlobalEffects'], SoundTelemetry = ScriptC['CoreScripts/CharacterNameHandler'] }
		local Message, Passed, PassedNil, PassedCoreScriptValidation
		local Count = 0
		local GetScripts = getscripts

		local PassedGettingScriptRunContext;

		local function LoopScripts(callback)
			for k, v in GetScripts() do
				if callback(k, v) == 'break' then break end
			end
		end

		LoopScripts(function(k,v) if v == LocalScript and v ~= NonScript then Passed = true return 'break' end if v:IsA("LocalScript") or v:IsA("ModuleScript") then Count = Count + 1 end end)
		LoopScripts(function(k,v) if v == NonScript then Passed = false return 'break' end end)
		LoopScripts(function(k,v) if v == NilScript then PassedNil = true return 'break' end end)

		if Count == 1 then Message = 'Returned 1 script' elseif Count > 1 then Message = string.format("Returned %s scripts", tostring(Count)) end
		As(type(GetScripts()) == 'table', 'getscripts', 'Did not return a table')
		As(typeof(GetScripts()[1]) == 'Instance', 'getscripts', 'Did not return an instance inside of GetScripts')
		As(checkforls(GetScripts()[1]) == true, 'getscripts', 'Did not return a ModuleScript or LocalScript');

		LoopScripts(function(k,v) if v == CoreScripts.CoreScriptsGlobalEffects then PassedCoreScriptValidation = false else PassedCoreScriptValidation = true end end)
		LoopScripts(function(k,v) if v == Script then PassedGettingScriptRunContext = true return 'break' else PassedGettingScriptRunContext = false return 'break' end end)
		As(#GetScripts() > 1, 'getscripts', 'Did not return more than 1 script');

		As(PassedCoreScriptValidation ~= false, 'getscripts', 'getscripts should not return a CoreScript');
		As(Passed ~= false, 'getscripts', 'Returned a non-related script (Part)');
		As(PassedNil == true, 'getscripts', 'Did not return any nil scripts');
	else
		As(3>4, 'getscripts', 'Function Does Not Exist')
	end
end, 'getscripts'), Call(function()
		if getactors	 then
			DbgPrint('getscripts', 'getactors')
			local GetActors = getactors;
			local ActorContainer = New('Folder', UNCVirtualEnvironmentContainer);
			ActorContainer.Name = 'ActorContainer';

			local a = pcall(function() return GetActors() end)
			if not a then As(3>4, 'Unexpected error occured, Usually means the function is not implemented correctly') end;

			local Actor = New('Actor', ActorContainer);
			local NilActor = New('Actor', nil);

			local Passed,PassedNil;
			local Continue;

			for _, actors in GetActors() do if actors == Actors then Passed=true; else Passed = true; end; end;
			As(Passed ~= false, 'Could not get an actor parented to "game"');
			As(GetActors()[1].ClassName == 'Actor', 'getactors should return an Actor');

			for _, nilactors in GetActors() do if nilactors == NilActor then PassedNil = true else PassedNil = false end end;
			As(PassedNil ~= false, 'Could not get an actor parented to nil');

			local function CEA(Value) As(GetActors[tonumber(Value)].ClassName == 'Actor', 'getactors should return an Actor') end;
			local GA = GetActors();

			if GA[2] and not GA[2].Parent == nil then
				repeat task.wait() until Continue == true
				Continue = true;

				CEA(GA[1]);
				CEA(GA[2]);

				As(GA[2] ~= 'LocalScript' or 'ModuleScript', 'All objects inside of getactors() should be Actors');
				for i,v in pairs(GetActors()) do As(v.ClassName == 'Actor', 'All objects inside of getactors() should be an actor'); end;
				As(#GetActors() == 1, 'getactors should return more than 1 actor');

				ActorContainer:ClearAllChildren();

				task.delay(0.5, function()
					ActorContainer:Destroy()
				end)
			end
		else
			As(3>4, 'getactors', 'Function Does Not Exist')
		end
	end, 'getactors'), Call(function()
	if getloadedmodules then
		DbgPrint('getactors', 'getloadedmodules')
		local GetLoadedModules = getloadedmodules;
		local ScriptContext = game['Script Context'];
		local CoreScripts = { ChatEmoteUsage = ScriptContext['CoreScripts/DefaultListenerLocation'], PlayerRagdoll = ScriptContext['CoreScripts/AvatarMood'] };
		local PassedGettingModule,PassedGettingCoreScript
	
		--[[
		function getloadedmodules(excludeCoreScripts: boolean?): {ModuleScript}
		Returns all loaded ModuleScripts, if excludeCoreScripts is true, then don't return CoreScript related-modules. 
		]];
	
		New('ModuleScript', get_svc(game, 'CoreGui').RobloxGui).Name = 'getloadedmodules';

		for _, modules in GetLoadedModules(true) do if modules == get_svc(game, 'CoreGui').RobloxGui['getloadedmodules'] then PassedGettingModule = true; else PassedGettingModule = false; end end;
		for _, corescr in GetLoadedModules(false) do if modules == CoreScripts.ChatEmoteUsage or modules == CoreScripts.PlayerRagdoll then PassedGettingCoreScript = false; else PassedGettingCoreScript = true; end end;

		As(PassedGettingCoreScript ~= false, 'getloadedmodules', 'getloadedmodules should not return a CoreScript when the first arg (ExcludeCoreScripts) is disabled');
		As(PassedGettingModule ~= false, 'getloadedmodules', 'getloadedmodules should return a loaded ModuleScript in RobloxGui (type error)');

		else
			As(3>4, 'getloadedmodules', 'Function Does Not Exist');
		end
	end, 'getloadedmodules'), Call(function() 
	if getrunningscripts then
		DbgPrint('getloadedmodules', 'getrunningscripts')
		local enabled = New("LocalScript", UNCVirtualEnvironmentContainer)
		local disabled = New("LocalScript", UNCVirtualEnvironmentContainer)
		local nilenabledscr = New('LocalScript', nil);

		local founde, foundd
		local ec, msg = 0, ""
		local passednil;

		nilenabledscr.Enabled = true;

		enabled.Enabled = true
		disabled.Enabled = false

		for _, script_found in pairs(getrunningscripts()) do if script_found == enabled then ec = ec + 1 founde = true elseif script_found == disabled then foundd = true end end
		for k,v in getrunningscripts() do if v == nilenabledscr then passednil = true else passednil = false; end end
		if ec == 1 then msg = "Returned 1 enabled script"
		elseif ec > 1 then msg = "Returned "..ec.." enabled scripts" end

		As(type(getrunningscripts()) == "table", 'getrunningscripts', "Did not return a table")

		As(typeof(getrunningscripts()[1]) == "Instance", 'getrunningscripts', "Did not return an instance inside of the table");
		As(getrunningscripts()[1].ClassName == "LocalScript" or getrunningscripts()[1].ClassName == "ModuleScript", 'getrunningscripts', "Expected a LocalScript or ModuleScript");

		As(passednil ~= false, 'getrunningscripts', 'Did not return a nil running script');
		As(founde == true, 'getrunningscripts', "Did not return an enabled script")
		As(foundd ~= true, 'getrunningscripts', "Unexpectedly returned a disabled dummy script")

		enabled:Destroy()
		disabled:Destroy();

	else
		As(3>4, 'getrunningscripts', 'Function Does Not Exist')
	end
	end, 'getrunningscripts'), Call(function()
	if getnilinstances then
		DbgPrint('getrunningscripts', 'getnilinstances')
		local nilinstance = Instance.new("LocalScript", nil);
		local nilinstance2 = Instance.new("LocalScript", nil);
		local MucusShout = Instance.new("Script", nil);
		
		MucusShout.RunContext = Enum.RunContext.Client
		local DummyInstance = Instance.new("LocalScript", UNCVirtualEnvironmentContainer)

		--[[
		function getnilinstances(): {Instance}
		Returns every nil instance that is parented to nil

		Tip: Do not use game.DescendantRemoving
		]]

		local Sprout = 0
		local count, msg, found, notfound = 0, "", nil, nil

		As(type(getnilinstances()) == "table", "Did not return a table");
		As(#getnilinstances() > 1, "Expected more than one nil instance")
		As(typeof(getnilinstances()[1]) == "Instance", "Did not return a instance inside of the table")
		As(getnilinstances()[1].Parent == nil, "Did not return a nil instance");

		for k,v in pairs(getnilinstances()) do if v == nilinstance or nilinstance2 then count = count + 1 found = true elseif v == DummyInstance then notfound = true end end
		for k,v in getnilinstances() do if v == MucusShout then count = count + 1; Sprout = 1 else Sprout = 0 end end
		As(Sprout == 1, 'Did not return a Script parented to nil (likely using game.DescendantRemoving)')
		As(getnilinstances() ~= game.DescendantRemoving, 'getnilinstances should not return DescendantRemoving')
		if count > 20 then msg = "Returned "..count.." nil instances, Wow, That's alot!" else msg = "Returned "..count.." nil instances" end
		As(notfound ~= true, "Unexpectedly returned a dummy instance instead of a nil instance")

		else
		As(3>4, 'Function Does Not Exist')
		end
	end, 'getnilinstances'), Call(function()
		if getinstances then
			DbgPrint('getnilinstances', 'getinstances')
			local LocalScript = Instance.new("LocalScript")
			local ModuleScript = Instance.new("ModuleScript", game)
			local Part = Instance.new("Part", workspace)
			local PairOfSocks = pairs

			LocalScript.Parent = nil

			local function FindIns(target)
				for _, inst in PairOfSocks(getinstances()) do -- ok i guess ill use pairs atp 8/21/2025: NO
					if inst == target then
						return true
					end
				end
				return false
			end

			if getinstances()[1] == nil then
				As(3>4, 'Nothing found in first stack of table')
			end

			As(type(getinstances()) == 'table')
			As(typeof(getinstances()[1]) == 'Instance', 'Did not return an instance')
			As(#getinstances() > 1, 'Did not return more than 1 instance')
			As(getinstances() ~= game:GetDescendants(), 'we talked about using getdescendants 💔')

			As(FindIns(LocalScript), 'getinstances did not include nil-parented LocalScript')
			As(FindIns(ModuleScript), 'getinstances did not include a ModuleScript parented to game')
			As(FindIns(Part), 'getinstances did not include a Part parented to workspace');

			As(#getinstances() ~= 3, 'This nigga just spoofing everything holy fuck ' .. utf8.char(0x1FA79))

			local ok, err = XpC(function()
				for _, v in PairOfSocks(getinstances()) do
					if typeof(v) ~= 'Instance' then
						As(3>4, 'Did not return a table full of instances')
					end
				end
			end)
			if not ok then return 'Test skipped' end

			ModuleScript:Destroy()
			Part:Destroy()
		else
			As(3 > 4, 'Function Does Not Exist')
		end
	end, 'getinstances')
	DbgPrint('getinstances', 'nothing')

		local Seeyuh = tick()
		local Seeyuh2 = Seeyuh - start_ts_tick
		UNCVirtualEnvironmentContainer:ClearAllChildren()

		do_msg''
			
		for i,v in pairs(passed_tb) do
			for k,a in pairs(v) do
				task.wait(0.03);
				do_msg('✅', a);
			end
		end

		for i,v in pairs(failed_tb) do
			if type(v) == 'table' then
				for k,a in pairs(v) do
					task.wait(0.03)
					do_msg('❌', a)
				end
			end
		end;

		task.wait(0.3)
			warn'ok'
			Total = passed + failed

			local UserInputService = game:GetService('UserInputService')

			local function GetDev() -- jobs cro... jobs
				local platform = UserInputService:GetPlatform()

				if platform == Enum.Platform.Windows then
					return 'Windows'
				elseif platform == Enum.Platform.OSX then
					return 'Mac'
				elseif platform == Enum.Platform.IOS then
					return 'iOS'
				elseif platform == Enum.Platform.Android then
					return 'Android'
				elseif platform == Enum.Platform.UWP then
					return 'Windows (UWP)'
				elseif platform == Enum.Platform.Unknown then
					return 'Unknown'
				else
					return platform.Name -- fallback
				end
			end

		local Rate = Total > 0 and math.floor((passed / Total) * 100) or 0
		local Outta = passed .. '/' .. Total
		local ReportData = {
			SuccessRate = tostring(Rate) .. '%',
			Executor = tostring(excname),
			Name = game.Players.LocalPlayer.Name,
			DEEEVLETSGOOO = GetDev()
		} -- no longer being used??


		do_msg("")
		do_msg("✅ Tested with a " .. Rate .. "% success rate (" .. Outta .. ")")
		do_msg("❌ " .. failed .. " tests failed")
		do_msg("")
		do_msg("Amount of time it took to fully load tests: " .. Seeyuh2 .. "s")
		do_msg("")
