local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Autowalk Activated";
	Icon = "rbxassetid://8466853767";
	Duration = 3;
	Callback = NotificationBindable;
})

game.Players.LocalPlayer.Character.Humanoid:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+workspace.Camera.CFrame.lookVector*100)
