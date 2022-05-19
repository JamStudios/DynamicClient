local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Anti-AFK Activated.";
	Icon = "rbxassetid://2172412880";
	Duration = 3;
	Callback = NotificationBindable;
})

wait(3)
local VirtualUser=game:service'VirtualUser'
game:service('Players').LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
