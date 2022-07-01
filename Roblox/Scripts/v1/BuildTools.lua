local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Build Tools, Activated.";
	Icon = "rbxassetid://7825183423";
	Duration = 3;
	Callback = NotificationBindable;
})

i = game:GetService(“Players”). LocalPlayer.Name
aim = game.Players:findFirstChild(i)
root = game:GetService("InsertService"):LoadAsset(16201628)
item = root:children()
for i = 1, #item do
item[i].Parent = aim.Backpack
wait()
end

aim = game.Players:findFirstChild(i)
root = game:GetService("InsertService"):LoadAsset(16969792)
item = root:children()
for i = 1, #item do
item[i].Parent = aim.Backpack
wait()
end

aim = game.Players:findFirstChild(i)
root = game:GetService("InsertService"):LoadAsset(21001552)
item = root:children()
for i = 1, #item do
item[i].Parent = aim.Backpack
wait()
end
