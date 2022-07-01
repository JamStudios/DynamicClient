
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "LagSwitch Activated, Use F3 to Switch between modes.";
	Icon = "rbxassetid://5718757541";
	Duration = 3;
	Callback = NotificationBindable;
})

local a = false;
local b = settings();

game:service'UserInputService'.InputEnded:connect(function(i)
if i.KeyCode == Enum.KeyCode.F3 then
a = not a; -- ic3 was here
b.Network.IncommingReplicationLag = a and 1000 or 0;
end
end)
