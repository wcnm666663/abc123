--脚本为豆包ai填写😛😛😛
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- 屏幕Gui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ResizableOptionsMenuGui"
screenGui.Parent = playerGui
screenGui.IgnoreGuiInset = true

-- 菜单容器（圆角背景）
local menuFrame = Instance.new("Frame")
menuFrame.Name = "OptionsMenu"
menuFrame.Size = UDim2.new(0, 280, 0, 320)
menuFrame.Position = UDim2.new(0.5, -140, 0.5, -160)
menuFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menuFrame.BorderSizePixel = 0
menuFrame.CornerRadius = UDim.new(0, 16)
menuFrame.Visible = false
menuFrame.Parent = screenGui

-- 标题
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 60)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
titleLabel.BorderSizePixel = 0
titleLabel.CornerRadius = UDim.new(0, 16)
titleLabel.Text = "设置菜单"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextSize = 22
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = menuFrame

-- 按钮通用函数
local function createOptionButton(text, yPos)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0, 45)
    button.Position = UDim2.new(0.1, 0, 0, yPos)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderSizePixel = 0
    button.CornerRadius = UDim.new(0, 8)
    button.Text = text
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 18
    button.Font = Enum.Font.SourceSans

    local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad)
    button.MouseEnter:Connect(function()
        TweenService:Create(button, tweenInfo, {BackgroundColor3 = Color3.fromRGB(70, 70, 70)}):Play()
    end)
    button.MouseLeave:Connect(function()
        TweenService:Create(button, tweenInfo, {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
    end)
    button.MouseButton1Down:Connect(function()
        TweenService:Create(button, tweenInfo, {BackgroundColor3 = Color3.fromRGB(90, 90, 90)}):Play()
    end)
    button.MouseButton1Up:Connect(function()
        TweenService:Create(button, tweenInfo, {BackgroundColor3 = Color3.fromRGB(70, 70, 70)}):Play()
    end)
    return button
end

-- 功能按钮
local button1 = createOptionButton("画面设置", 80)
button1.Parent = menuFrame
button1.MouseButton1Click:Connect(function()
    print("打开画面设置面板")
end)

local button2 = createOptionButton("音效设置", 140)
button2.Parent = menuFrame
button2.MouseButton1Click:Connect(function()
    print("打开音效设置面板")
end)

-- 缩小悬浮窗按钮
local minimizeBtn = createOptionButton("缩小悬浮窗", 200)
minimizeBtn.Parent = menuFrame

-- 关闭菜单按钮
local closeBtn = createOptionButton("关闭菜单", 260)
closeBtn.Parent = menuFrame
closeBtn.MouseButton1Click:Connect(function()
    TweenService:Create(menuFrame, TweenInfo.new(0.2), {Transparency = 1, Size = UDim2.new(0, 280, 0, 0)}):Play()
    wait(0.2)
    menuFrame.Visible = false
    menuFrame.Transparency = 0
    menuFrame.Size = UDim2.new(0, 280, 0, 320)
end)

-- 悬浮球（缩小状态）
local floatBall = Instance.new("ImageButton")
floatBall.Name = "FloatBall"
floatBall.Size = UDim2.new(0, 50, 0, 50)
floatBall.Position = UDim2.new(0.9, -50, 0.1, 0)
floatBall.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
floatBall.BorderSizePixel = 0
floatBall.CornerRadius = UDim.new(1, 0) -- 圆形
floatBall.Visible = false
floatBall.Parent = screenGui
-- 悬浮球图标（可选）
local ballIcon = Instance.new("TextLabel")
ballIcon.Size = UDim2.new(1, 0, 1, 0)
ballIcon.BackgroundTransparency = 1
ballIcon.Text = "☰"
ballIcon.TextColor3 = Color3.new(1, 1, 1)
ballIcon.TextSize = 24
ballIcon.Font = Enum.Font.SourceSansBold
ballIcon.Parent = floatBall

-- 菜单状态
local isMinimized = false
local isDragging = false
local dragStartPos = Vector2.zero

-- 缩小为悬浮球
minimizeBtn.MouseButton1Click:Connect(function()
    if isMinimized then return end
    isMinimized = true
    local tween = TweenService:Create(menuFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
        Size = UDim2.new(0, 50, 0, 50),
        Position = floatBall.Position,
        CornerRadius = UDim.new(1, 0),
        Transparency = 1
    })
    tween:Play()
    tween.Completed:Wait()
    menuFrame.Visible = false
    menuFrame.Transparency = 0
    floatBall.Visible = true
end)

-- 悬浮球恢复菜单
floatBall.MouseButton1Click:Connect(function()
    if not isMinimized then return end
    isMinimized = false
    floatBall.Visible = false
    menuFrame.Visible = true
    menuFrame.Position = floatBall.Position
    menuFrame.Size = UDim2.new(0, 50, 0, 50)
    menuFrame.CornerRadius = UDim.new(1, 0)
    TweenService:Create(menuFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
        Size = UDim2.new(0, 280, 0, 320),
        Position = UDim2.new(0.5, -140, 0.5, -160),
        CornerRadius = UDim.new(0, 16),
        Transparency = 0
    }):Play()
end)

-- 悬浮球拖动
floatBall.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        dragStartPos = input.Position - floatBall.AbsolutePosition
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if not isDragging or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
    local newPos = input.Position - dragStartPos
    floatBall.Position = UDim2.new(0, newPos.X, 0, newPos.Y)
end)

-- F键呼出/收起菜单
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.F then
        if not menuFrame.Visible and not isMinimized then
            menuFrame.Visible = true
            TweenService:Create(menuFrame, TweenInfo.new(0.2), {Transparency = 0, Size = UDim2.new(0, 280, 0, 320)}):Play()
        elseif menuFrame.Visible then
            TweenService:Create(menuFrame, TweenInfo.new(0.2), {Transparency = 1, Size = UDim2.new(0, 280, 0, 0)}):Play()
            wait(0.2)
            menuFrame.Visible = false
            menuFrame.Transparency = 0
            menuFrame.Size = UDim2.new(0, 280, 0, 320)
        end
    end
end)