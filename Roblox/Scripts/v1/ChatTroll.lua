local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Chat Troll Activated.";
	Icon = "rbxassetid://6779338588";
	Duration = 3;
	Callback = NotificationBindable;
})

local Action = game.Players:GetPlayers()
  for i = 1,#Action do
Action[i].Chatted:connect(function(Message)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("".."["..Action[i].Name.."]".." "..Message, "All")
  end)
end
