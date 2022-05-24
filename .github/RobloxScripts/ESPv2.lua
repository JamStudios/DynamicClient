local client = game.Players.LocalPlayer
local players = game:GetService("Players")
local rs = game:GetService("RunService")

local function clonePart(part, model, character)
   if part:IsA("BasePart") then
local head = character:WaitForChild("Head")
local clone = part:Clone()
for i, v in ipairs(clone:GetChildren()) do
if not v:IsA("SpecialMesh") then
v:Destroy()
continue
end
v.TextureId = ""
end
clone.Color = Color3.fromRGB(0, 255, 0)
pcall(function()clone.Size = clone.Size * 0.7 clone.CanCollide = false end)
clone.Parent = model
rs.RenderStepped:connect(function()
if head:IsDescendantOf(workspace) then
clone.CFrame = part.CFrame
clone.Size = part.Size
else
model:Destroy()
return
end
end)
end
end
local function chams(character)
   local model = Instance.new("Model")
   model.Name = character.Name
   model.Parent = workspace
   local cham = Instance.new("Highlight",model)
   cham.Name = "cham"
   cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop  
   cham.OutlineColor = Color3.fromRGB(0,0,0)
   cham.FillColor = Color3.fromRGB(255,0,0)
   cham.FillTransparency = 0
   cham.OutlineTransparency = 1
   local new = cham:Clone()
   new.Parent = character
   new.FillColor = Color3.fromRGB(0,255,0)
   new.DepthMode = Enum.HighlightDepthMode.Occluded  
   for i,v in ipairs(character:GetChildren()) do
-- if character has a head then
       if character:FindFirstChild("Head") then
           clonePart(v, model, character)
       end
   end
end
for i,v in ipairs(players:GetPlayers()) do
   if v~= client then
       if v.Character then
           chams(v.Character)
       end
   end
   v.CharacterAdded:connect(function()wait(0.1)chams(v.Character)end)
end
players.PlayerAdded:connect(function()
   if v~= client then
       if v.Character then
           chams(v.Character)
       end
   end
   v.CharacterAdded:connect(function()wait(0.1)chams(v.Character)end)
end)
