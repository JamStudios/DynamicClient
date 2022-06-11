local Players = game:GetService("Players")
Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		while humanoidRootPart do
			local NotificationBindable = Instance.new("BindableFunction")
			NotificationBindable.OnInvoke = callback
			--
			game.StarterGui:SetCore("SendNotification",  {
				Title = "Dynamic Client";
				Text = player.Name,"is at",tostring(humanoidRootPart.Position);
				Icon = "rbxassetid://7825183423";
				Duration = 3;
				Callback = NotificationBindable;
			})
			wait(4)
		end
	end)
end)
