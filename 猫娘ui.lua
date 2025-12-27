-- 有些地方已经明确写过一些数值可能不同

local _ = ((table and 11269854); -- 11269854 or 12071442)
local LocalPlayer = game:GetService("Players").LocalPlayer
local _call3 = BrickColor.new("Nougat")
local _call4 = BrickColor.new("Black")
local Character = LocalPlayer.Character
if Character then -- ran, expr id 1, has an else.
    local Head = Character.Head
    for i, v in ipairs(Head:GetChildren()) do
        local _ = ((i and 12209286); -- 12209286 or function()--[[function ignored]]end)
        local Decal = v:IsA("Decal")
        if not Decal then -- didnt run, expr id 2, has an else.
        else
            v:Destroy()
        end
    end
    Character:GetChildren()
    local Head_2 = Character:WaitForChild("Head")
    local face = Instance.new("Decal")
    face.Name = "face"
    face.Texture = "rbxassetid://82934831703390"
    face.Face = Enum.NormalId.Front
    face.Parent = Head_2
    local BodyColors = Character:FindFirstChildOfClass("BodyColors")
end
if BodyColors then -- ran, expr id 3, has an else.
    BodyColors.HeadColor = _call3
end
BodyColors.LeftArmColor = _call3
BodyColors.RightArmColor = _call3
BodyColors.LeftLegColor = _call3
BodyColors.RightLegColor = _call3
BodyColors.TorsoColor = _call4
BodyColors.Parent = Character
local Shirt = Instance.new("Shirt")
Shirt.ShirtTemplate = "rbxassetid://11759774656"
Shirt.Parent = Character
local Pants = Instance.new("Pants")
Pants.PantsTemplate = "rbxassetid://12446554618"
Pants.Parent = Character
local CFrame = Head_2.CFrame
local Character_2 = LocalPlayer.Character
local NekoHair1 = Instance.new("Part")
NekoHair1.Name = "NekoHair1"
NekoHair1.Size = Vector3.new(1.5, 1, 1.5)
NekoHair1.Color = Color3.fromRGB(0, 0, 0)
NekoHair1.Material = Enum.Material.SmoothPlastic
NekoHair1.Anchored = false
NekoHair1.CanCollide = false
NekoHair1.CFrame = CFrame
NekoHair1.Parent = Character_2
local SpecialMesh = Instance.new("SpecialMesh")
SpecialMesh.Parent = NekoHair1
SpecialMesh.MeshId = "rbxassetid://6725535380"
SpecialMesh.TextureId = "rbxassetid://6671678298"
SpecialMesh.Scale = Vector3.new(1, 1, 1)
local WeldConstraint = Instance.new("WeldConstraint")
WeldConstraint.Part0 = Character_2:WaitForChild("Head")
WeldConstraint.Part1 = NekoHair1
WeldConstraint.Parent = NekoHair1
local Character_3 = LocalPlayer.Character
local NekoEars = Instance.new("Part")
NekoEars.Name = "NekoEars"
NekoEars.Size = Vector3.new(1, 1, 1)
NekoEars.Color = Color3.fromRGB(0, 0, 0)
NekoEars.Material = Enum.Material.SmoothPlastic
NekoEars.Anchored = false
NekoEars.CanCollide = false
NekoEars.CFrame = Head_2.CFrame * CFrame.new(0, 0.75, 0)
NekoEars.Parent = Character_3
local SpecialMesh_2 = Instance.new("SpecialMesh")
SpecialMesh_2.Parent = NekoEars
SpecialMesh_2.MeshId = "rbxassetid://12133263575"
SpecialMesh_2.TextureId = "rbxassetid://13966424626"
SpecialMesh_2.Scale = Vector3.new(1, 1, 1)
local WeldConstraint_2 = Instance.new("WeldConstraint")
WeldConstraint_2.Part0 = Character_3:WaitForChild("Head")
WeldConstraint_2.Part1 = NekoEars
WeldConstraint_2.Parent = NekoEars
local Character_4 = LocalPlayer.Character
local NekoTail = Instance.new("Part")
NekoTail.Name = "NekoTail"
NekoTail.Size = Vector3.new(1, 4, 1)
NekoTail.Color = Color3.fromRGB(0, 0, 0)
NekoTail.Material = Enum.Material.SmoothPlastic
NekoTail.Anchored = false
NekoTail.CanCollide = false
NekoTail.CFrame = Head_2.CFrame * CFrame.new(0, -2, 1)
NekoTail.Parent = Character_4
local SpecialMesh_3 = Instance.new("SpecialMesh")
SpecialMesh_3.Parent = NekoTail
SpecialMesh_3.MeshId = "rbxassetid://13547082932"
SpecialMesh_3.TextureId = "rbxassetid://12134359927"
SpecialMesh_3.Scale = Vector3.new(1, 1, 1)
local WeldConstraint_3 = Instance.new("WeldConstraint")
WeldConstraint_3.Part0 = Character_4:WaitForChild("Head")
WeldConstraint_3.Part1 = NekoTail
WeldConstraint_3.Parent = NekoTail
Instance.new("CharacterMesh").MeshId = "48112070"
error("[internal]: Unable to assign property MeshId. int64 expected, got string") -- Internal Error
