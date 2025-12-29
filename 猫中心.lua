local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoadingScreen"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.DisplayOrder = 999
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.Name = "MainContainer"
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 400, 0, 400)
Frame.BackgroundTransparency = 1
Frame.Parent = ScreenGui

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "Logo"
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.5, 0, 0.4, 0)
ImageLabel.Size = UDim2.new(0, 200, 0, 200)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Image = "rbxassetid://128586210657724"
ImageLabel.ImageTransparency = 0
ImageLabel.ZIndex = 999
ImageLabel.Parent = Frame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = ImageLabel

local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "WelcomeText"
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.Position = UDim2.new(0.5, 0, 0.75, 0)
TextLabel.Size = UDim2.new(0, 350, 0, 60)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "欢迎使用猫中心"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 42
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextTransparency = 0
TextLabel.TextStrokeTransparency = 0.8
TextLabel.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
TextLabel.ZIndex = 999
TextLabel.Parent = Frame

local startTime = tick()

for i = 1, 42 do
    local currentTime = tick()
    local elapsedTime = currentTime - startTime
    
    if elapsedTime >= 1.5 then
        break
    end
    
    local progress = elapsedTime / 1.5
    local angle = progress * math.pi
    
    local offset = math.sin(angle) * 100
    
    ImageLabel.Position = UDim2.new(0.5, -offset, 0.4, 0)
    ImageLabel.ImageTransparency = offset / 100
    
    TextLabel.Position = UDim2.new(0.5, offset, 0.75, 0)
    TextLabel.TextTransparency = offset / 100
    
    game:GetService("RunService").Heartbeat:Wait()
end

ImageLabel.ImageTransparency = 0
TextLabel.TextTransparency = 0

local Main_Lua = game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
local Loaded_Main_Lua = loadstring(Main_Lua)()
local Window = Loaded_Main_Lua:CreateWindow({
    User = {
        Enabled = true,
        Callback = function()
            print("clicked")
        end,
        Anonymous = false,
    },
    Author = "作者:popcat",
    IconThemed = true,
    ScrollBarEnabled = true,
    Folder = "猫中心",
    HideSearchBar = true,
    Title = "猫中心",
    Transparent = true,
    SideBarWidth = 200,
    Theme = "Midnight",
    Icon = "rbxassetid://129260712070622",
    Size = UDim2.fromOffset(300, 270),
})

Window:EditOpenButton({
    StrokeThickness = 4,
    Title = "猫中心",
    Color = ColorSequence.new(Color3.fromHex("#00FF7F"), Color3.fromHex("#0080FF")),
    Draggable = true,
    Icon = "monitor",
    CornerRadius = UDim.new(0, 16),
})

local secondStartTime = tick()

for i = 1, 42 do
    local currentTime = tick()
    local elapsedTime = currentTime - secondStartTime
    
    if elapsedTime >= 1.2 then
        break
    end
    
    local progress = elapsedTime / 1.2
    local angle = progress * math.pi
    
    local offset = math.sin(angle) * 100
    
    ImageLabel.Position = UDim2.new(0.5, -offset, 0.4, 0)
    ImageLabel.ImageTransparency = offset / 100
    
    TextLabel.Position = UDim2.new(0.5, offset, 0.75, 0)
    TextLabel.TextTransparency = offset / 100
    
    game:GetService("RunService").Heartbeat:Wait()
end

ImageLabel.ImageTransparency = 1
TextLabel.TextTransparency = 1

Frame:Destroy()
ScreenGui:Destroy()

Window:Tag({
    Title = "缝合类脚本 ",
    Color = Color3.fromHex("#00FFFF"),
})

local homeTab = Window:Tab({
    Title = "主页区",
    Icon = "home",
})

homeTab:Paragraph({
    Image = "rbxassetid://128586210657724",
    Title = "猫中心",
    Buttons = {{
        Callback = function()
            setclipboard("928328623")
        end,
        Title = "复制QQ群",
        Icon = "link",
    }},
    ImageSize = 68,
    Desc = "缝合类脚本",
})

local homeTab = Window:Tab({
    Title = "其他中心",
    Icon = "home",
})

homeTab:Button({
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/h8nC0fLb", true))()loadstring(game:HttpGet("https://raw.githubusercontent.com/XingFork/Scripts/refs/heads/main/Ohio"))()
    end,
    Title = "xa hub",
    Icon = "home",
})

homeTab:Button({
    Callback = function()
TX = "TX Script"
Script = "全自动翻译"
loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/Auto-language"))()
    end,
    Title = "翻译 英文脚本",
    Icon = "home",
})

local homeTab = Window:Tab({
    Title = "感染性微笑",
    Icon = "home",
})

homeTab:Button({
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Infectious-Smile-CHRISTMAS-God-script-broo-75750"))()
    end,
    Title = "英文 感染性微笑",
    Icon = "home",
})
