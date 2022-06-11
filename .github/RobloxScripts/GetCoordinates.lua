local x = game.Players.LocalPlayer.Character.Torso.Position
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Your current coordinates are in:", x;
	Icon = "rbxassetid://7825183423";
	Duration = 3;
	Callback = NotificationBindable;
})
