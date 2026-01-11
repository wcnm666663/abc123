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
    Author = "感染性微笑",
    IconThemed = true,
    ScrollBarEnabled = true,
    Folder = "微笑",
    HideSearchBar = true,
    Title = "服务器",
    Transparent = true,
    SideBarWidth = 200,
    Theme = "Light",
    Icon = "monitor",
    Size = UDim2.fromOffset(300, 270),
})

Window:EditOpenButton({
    StrokeThickness = 4,
    Title = "打开", 
    Color = ColorSequence.new(Color3.fromHex("#ffffff"), Color3.fromHex("#000000")), --颜色渐变
    Draggable = true, --是否可拖动 是
    Icon = "monitor", --悬浮球图标
    CornerRadius = UDim.new(1, 0), --圆角
})

Window:Tag({
    Title = "luau", --副标题
    Color = Color3.fromHex("#000000"), --副标题颜色
})

local homeTab = Window:Tab({ --创建选择栏
    Title = "公告", --文本
    Icon = "home", --图标
})

homeTab:Paragraph({ --文字/图片栏
    Image = "monitor", --创建图标
    Title = "感染性微笑", --副标题
    ImageSize = 68, --图片大小
    Desc = "只支持此服务器 增加武器范围", --文本
})


local homeTab = Window:Tab({ --创建选择栏
    Title = "幸存者", --文本
    Icon = "home", --图标
})  

local Sectionh = homeTab:Section({
    Title = "攻击类",
    Opened = true,
})


Sectionh:Dropdown({
    Value = "选择武器",
    Callback = function(value)
        toolgg = value
    end,
    Title = "选择武器",
    Values = {"Bat", "Katana","Knife","Spear"},
})

 local count = 0 
    Sectionh:Button({
        Title = "循环攻击",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
while count < 10 do 
game:GetService("Players").LocalPlayer.Character:WaitForChild(toolgg):WaitForChild("SwingEvent"):FireServer()
    task.wait(0) 
end       
    end
    })
 
local cunt = 0       
    Sectionh:Button({
        Title = "循环触发 - 手持物品",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
while cunt < 10 do 
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("SwingEvent"):FireServer()
    task.wait(0) 
end       
    end
    })    

Sectionh:Input({
    Callback = function(value)
        feedbackInput = value
    end,
    Placeholder = "范围",
    Title = "修改范围",
    Desc = "10",
})
      
    Sectionh:Button({
        Title = "修改范围",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
local selectionBox=Instance.new("SelectionBox")
selectionBox.Adornee=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach")
selectionBox.Parent=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach")
selectionBox.Color3=Color3.new(1,0,0)
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)
        end
    })        

    Sectionh:Button({
        Title = "修改范围 针对长枪",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
local selectionBox=Instance.new("SelectionBox")
selectionBox.Adornee=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox")
selectionBox.Parent=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox")
selectionBox.Color3=Color3.new(1,0,0)
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)
        end
    })        
    
    Sectionh:Button({
        Title = "修改范围 针对瓶子/树枝",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
local selectionBox=Instance.new("SelectionBox")
selectionBox.Adornee=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle")
selectionBox.Parent=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle")
selectionBox.Color3=Color3.new(1,0,0)
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)
        end
    })            
    

    
    
local Sectionhh = homeTab:Section({
    Title = "道具类",
    Opened = true,
})   
 
   Sectionhh:Button({
        Title = "修改透明",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach").Transparency = 1
        end
    })           
    
   Sectionhh:Button({
        Title = "修改透明 - 长矛",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox").Transparency = 1
        end
    })               
    
   Sectionhh:Button({
        Title = "修改透明 - 树枝/瓶子",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle").Transparency = 1
        end
    })               
    
   Sectionhh:Button({
        Title = "自动拾取主武器 - 规定范围内",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
local toolsq = 0        
while toolsq == 0 do
local detector = workspace.Map.HumanBase.Vendor.BatCollection.ClickDetector
local detecto = workspace.Map.ConstantTerrain.BatCollection.ClickDetector
fireclickdetector(detector)
fireclickdetector(detecto)
task.wait(1)
end
        end
    })                   


local homeTab = Window:Tab({ --创建选择栏
    Title = "感染者", --文本
    Icon = "home", --图标
})    
    
homeTab:Input({
    Callback = function(value)
        ffffh = value
    end,
    Placeholder = "范围",
    Title = "修改长度",
    Desc = "10",
})

    homeTab:Button({
        Title = "修改修改长度",
        Color = Color3.fromHex("#305dff"), -- 按钮颜色：深蓝色
        Icon = "", -- 隐藏图标
        Callback = function()
local selectionBox=Instance.new("SelectionBox")
selectionBox.Adornee=game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):WaitForChild("Part")
selectionBox.Parent=game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):WaitForChild("Part")
selectionBox.Color3=Color3.new(1,0,0)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):WaitForChild("Part").Size = Vector3.new(2,4,ffffh)
        end
    })         
