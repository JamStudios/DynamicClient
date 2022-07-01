local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "A Player Reset Occured.";
	Icon = "rbxassetid://2867363883";
	Duration = 3;
	Callback = NotificationBindable;
})
game:GetService("Players").LocalPlayer.Character.Humanoid.Health=0
