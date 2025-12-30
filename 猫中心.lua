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
ImageLabel.Image = "rbxassetid://89889053661629"
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
    Icon = "rbxassetid://89889053661629",
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
    Color = Color3.fromHex("#10C550"),
})

local homeTab = Window:Tab({
    Title = "主页区",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Paragraph({
    Image = "rbxassetid://89889053661629",
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

homeTab:Paragraph({
    Image = "rbxassetid://136497566586362",
    Title = "",
    ImageSize = 100,
    Desc = "",
})

local homeTab = Window:Tab({
    Title = "其他中心",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/h8nC0fLb", true))()loadstring(game:HttpGet("https://raw.githubusercontent.com/XingFork/Scripts/refs/heads/main/Ohio"))()
    end,
    Title = "xa hub",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
TX = "TX Script"
Script = "全自动翻译"
loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/Auto-language"))()
    end,
    Title = "翻译 英文脚本",
    Icon = "rbxassetid://89889053661629",
})


local homeTab = Window:Tab({
    Title = "功能",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
Loaded_Main_Lua:Notify({
      Icon = "rbxassetid://89889053661629",
      Title = "提示",
      Content = "开启成功",
})            
    end,
    Title = "甩飞",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))()
Loaded_Main_Lua:Notify({
      Icon = "rbxassetid://89889053661629",
      Title = "提示",
      Content = "开启成功",
})            
    end,
    Title = "HUA 光影",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
Loaded_Main_Lua:Notify({
      Icon = "rbxassetid://89889053661629",
      Title = "提示",
      Content = "开启成功",
})            
    end,
    Title = "光影_2",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
Loaded_Main_Lua:Notify({
      Icon = "rbxassetid://89889053661629",
      Title = "提示",
      Content = "开启成功",
})            
    end,
    Title = "超高画质",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
Loaded_Main_Lua:Notify({
      Icon = "rbxassetid://89889053661629",
      Title = "提示",
      Content = "开启成功",
})            
    end,
    Title = "无限跳",
    Icon = "rbxassetid://89889053661629",
})


local homeTab = Window:Tab({
    Title = "感染性微笑",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Infectious-Smile-CHRISTMAS-God-script-broo-75750"))()
            
    end,
    Title = "英文 感染性微笑",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
game:GetService("Players").LocalPlayer.Backpack.Bat.Cooldown.Value = 1
Loaded_Main_Lua:Notify({
      Icon = "rbxassetid://89889053661629",
      Title = "提示",
      Content = "开启成功",
})                        
    end,
    Title = "快速棒子挥舞 - 开启之前别手持",
    Icon = "rbxassetid://89889053661629",
})

local homeTab = Window:Tab({
    Title = "doors",
    Icon = "rbxassetid://89889053661629",
})

local feedbackSection = homeTab:Section({
    Title = "物品获取",
    Opened = true,
})

feedbackSection:Button({
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))()
    end,
    Title = "十字架",
    Icon = "rbxassetid://89889053661629",
})

feedbackSection:Button({
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4Vsv1Xwn"))()
    end,
    Title = "夜视仪",
    Icon = "rbxassetid://89889053661629",
})

feedbackSection:Button({
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/u5B1UjGv"))()
    end,
    Title = "神圣炸弹 - 不建议使用",
    Icon = "rbxassetid://89889053661629",
})

feedbackSection:Button({
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xHxGDp51"))()
    end,
    Title = "吸铁石",
    Icon = "rbxassetid://89889053661629",
})

feedbackSection:Button({
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/v2yEJYmu"))()
    end,
    Title = "剪刀",
    Icon = "rbxassetid://89889053661629",
})

local homeTab = Window:Tab({
    Title = "死亡速递",
    Icon = "rbxassetid://89889053661629",
})

homeTab:Button({
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wcnm666663/abc123/refs/heads/main/%E6%AD%BB%E4%BA%A1%E9%80%9F%E9%80%92"))()
            Window:Destroy()
    end,
    Title = "死亡速递 - popcat",
    Icon = "rbxassetid://89889053661629",
})

local uiSettingsTab = Window:Tab({
    Title = "UI设置",
    Icon = "rbxassetid://89889053661629",
})

uiSettingsTab:Dropdown({
    Value = "午夜",
    Callback = function(value)
        Loaded_Main_Lua:SetTheme(value)
    end,
    Title = "选择主题",
    Values = {"深色", "浅色", "玫瑰", "植物", "红色", "靛蓝", "天空", "紫罗兰", "琥珀", "翠绿", "午夜", "深红", "MonokaiPro", "棉花糖", "彩虹"},
})

uiSettingsTab:Button({
    Title = "销毁窗口",
    Callback = function()
        Window:Destroy()
    end,
})
