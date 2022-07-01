local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Health Regenerated.";
	Icon = "rbxassetid://637680764";
	Duration = 3;
	Callback = NotificationBindable;
})
game:GetService("Players").LocalPlayer.Character.Humanoid.Health=10000
