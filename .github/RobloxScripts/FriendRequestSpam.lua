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
