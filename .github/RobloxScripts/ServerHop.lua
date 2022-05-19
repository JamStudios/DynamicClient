local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Server Hopping in 3 Seconds.";
	Icon = "rbxassetid://7917955541";
	Duration = 3;
	Callback = NotificationBindable;
})
wait(4)
game:GetService("TeleportService"):Teleport(gameid, game:GetService("Players").LocalPlayer)
