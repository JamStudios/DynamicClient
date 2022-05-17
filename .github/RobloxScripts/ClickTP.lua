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
plr = game.Players.LocalPlayer hum = plr.Character.HumanoidRootPart mouse = plr:GetMouse() mouse.KeyDown:connect(function(key) if key == "l" then if mouse.Target then hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) end end end)

plr = game.Players.LocalPlayerÂ 
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()Â 
mouse.KeyDown:connect(function(key)Â 
if key == "l" thenÂ 
if mouse.Target thenÂ 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)Â 
endÂ 
endÂ 
end)
