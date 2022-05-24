noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Head.CanCollide = true
game.Players.LocalPlayer.Character.Torso.CanCollide = true
end
end)
