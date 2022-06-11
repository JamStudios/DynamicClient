
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
	Icon = "rbxassetid://7825183423";
	Duration = 3;
Callback = NotificationBindable;
