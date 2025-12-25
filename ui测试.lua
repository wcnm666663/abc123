-- 服务引用
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- 创建 UI 容器
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CleanUI"
screenGui.Parent = playerGui
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 主面板（清凉透明风格）
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainPanel"
mainFrame.Size = UDim2.new(0, 350, 0, 280)
mainFrame.Position = UDim2.new(0.5, -175, 0.5, -140)
mainFrame.BackgroundColor3 = Color3.new(0.95, 0.98, 1) -- 淡蓝色底
mainFrame.BackgroundTransparency = 0.2 -- 透明质感
mainFrame.BorderSizePixel = 0
mainFrame.Roundness = UDim.new(0, 12) -- 圆润边角
mainFrame.Parent = screenGui

-- 标题栏
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "简洁操作面板"
titleLabel.TextColor3 = Color3.new(0.2, 0.3, 0.5) -- 深蓝文字
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.SourceSansLight
titleLabel.Parent = mainFrame

-- 按钮通用配置函数
local function createButton(name, text, posY)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(0.8, 0, 0, 45)
    button.Position = UDim2.new(0.1, 0, 0, posY)
    button.BackgroundColor3 = Color3.new(0.85, 0.92, 0.98)
    button.BackgroundTransparency = 0.3
    button.BorderSizePixel = 0
    button.Roundness = UDim.new(0, 8)
    button.Text = text
    button.TextColor3 = Color3.new(0.15, 0.25, 0.4)
    button.TextSize = 16
    button.Font = Enum.Font.SourceSans
    button.Parent = mainFrame

    -- 按钮过渡动画
    local hoverTween = TweenService:Create(button, TweenInfo.new(0.2), {
        BackgroundTransparency = 0.1,
        BackgroundColor3 = Color3.new(0.75, 0.88, 0.95)
    })
    local normalTween = TweenService:Create(button, TweenInfo.new(0.2), {
        BackgroundTransparency = 0.3,
        BackgroundColor3 = Color3.new(0.85, 0.92, 0.98)
    })
    local clickTween = TweenService:Create(button, TweenInfo.new(0.1), {
        Size = UDim2.new(0.78, 0, 0, 42)
    })
    local clickBackTween = TweenService:Create(button, TweenInfo.new(0.1), {
        Size = UDim2.new(0.8, 0, 0, 45)
    })

    -- 绑定动画事件
    button.MouseEnter:Connect(function()
        hoverTween:Play()
    end)
    button.MouseLeave:Connect(function()
        normalTween:Play()
    end)
    button.MouseButton1Down:Connect(function()
        clickTween:Play()
    end)
    button.MouseButton1Up:Connect(function()
        clickBackTween:Play()
    end)

    return button
end

-- 创建功能按钮
local btn1 = createButton("Btn1", "功能一", 70)
local btn2 = createButton("Btn2", "功能二", 130)
local btn3 = createButton("Btn3", "关闭面板", 190)

-- 按钮点击事件
btn1.MouseButton1Click:Connect(function()
    print("功能一被点击")
end)
btn2.MouseButton1Click:Connect(function()
    print("功能二被点击")
end)
btn3.MouseButton1Click:Connect(function()
    -- 面板淡出动画
    TweenService:Create(mainFrame, TweenInfo.new(0.3), {
        BackgroundTransparency = 1,
        Position = UDim2.new(0.5, -175, 0.5, -100)
    }):Play()
    task.wait(0.3)
    mainFrame:Destroy()
end)

-- 面板淡入动画（初始化）
mainFrame.BackgroundTransparency = 1
TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
    BackgroundTransparency = 0.2
}):Play()
