local stationaryrespawn = false
local needsrespawning = false
local haspos = false
local pos = CFrame.new()

local Respawning = Instance.new("ScreenGui")
local RespawningButton = Instance.new("TextButton")

Respawning.Name = "Respawning"
Respawning.Parent = game.CoreGui



RespawningButton.Name = "RespawningButton"
RespawningButton.Parent = Respawning
RespawningButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
RespawningButton.BackgroundTransparency = 0.30000001192093
RespawningButton.BorderSizePixel = 0
RespawningButton.Position = UDim2.new(0.0391057241, 0, 0.826617789, 0)
RespawningButton.Size = UDim2.new(0, 83, 0, 34)
RespawningButton.Font = Enum.Font.SourceSans
RespawningButton.Text = "Not Returning"
RespawningButton.TextColor3 = Color3.new(1, 1, 1)
RespawningButton.TextSize = 20
RespawningButton.TextScaled = true
RespawningButton.Draggable = true




function StatRespawn(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.N and gameProcessedEvent == false then        
stationaryrespawn = not stationaryrespawn
    end
end






game:GetService("UserInputService").InputBegan:connect(StatRespawn)



game:GetService('RunService').Stepped:connect(function()


if stationaryrespawn == true and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
if haspos == false then
pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
haspos = true
end

needsrespawning = true
end


if needsrespawning == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end


if stationaryrespawn == true then 
RespawningButton.Text = "Returning"
else
RespawningButton.Text = "Not Returning"
end


end)

game.Players.LocalPlayer.CharacterAdded:connect(function()
wait(0.6)
needsrespawning = false
haspos = false
end)
