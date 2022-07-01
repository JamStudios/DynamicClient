local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Keep Inventory has been activated.";
	Icon = "rbxassetid://6415742822";
	Duration = 3;
	Callback = NotificationBindable;
})

--[[
Cyclically's Save Tools On Respawn
After executing the script, please wait until you are able to move your character again.
https://v3rmillion.net/member.php?action=profile&uid=785986

this is so simple but some people wanted it
]]

-- Don't edit script unless you know what you're doing. If you wanna add this into a script, please give credits and message me on discord that you added it in a script at Cyclically#9215

local LocalPlayer = game:GetService("Players").LocalPlayer
local function saveTools()
LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
if tool:IsA("Tool") then
tool.Parent = LocalPlayer
end
end
end)
end
LocalPlayer.CharacterAdded:Connect(function(char)
for _, tool in pairs(LocalPlayer:GetChildren()) do
if tool:IsA("Tool") then
tool.Parent = LocalPlayer.Backpack
end
end
saveTools()
end)
saveTools()
