local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Click TP Activated.";
	Icon = "rbxassetid://8940663323";
	Duration = 3;
	Callback = NotificationBindable;
})
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local uis = game:GetService("UserInputService")

local shifthold  = false

mouse.Button1Down:Connect(function()
    if shifthold then
        char:MoveTo(mouse.Hit.p)
    end
end)

uis.InputBegan:Connect(function(input, process)
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
        shifthold = true
    end
end)

uis.InputEnded:Connect(function(input, process)
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
        shifthold = false
    end
end)
