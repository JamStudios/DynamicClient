local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Friend Request Spam Activated.";
	Icon = "rbxassetid://4774152984";
	Duration = 3;
	Callback = NotificationBindable;
})

local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')
RemoteEvent_NewFollower = RobloxReplicatedStorage:WaitForChild('NewFollower')
while wait(0) do
for i,v in pairs(game.Players:GetChildren()) do
game.Players.LocalPlayer:RequestFriendship(v)
RemoteEvent_NewFollower:FireServer(v, true)
wait(0.01)
RemoteEvent_NewFollower:FireServer(v, false)
game.Players.LocalPlayer:RevokeFriendship(v)
end
end
