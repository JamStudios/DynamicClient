local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Music Player Activated.";
	Icon = "rbxassetid://5459918444";
	Duration = 3;
	Callback = NotificationBindable;
})

--Made by 2spooky4me

-- local s = Instance.new("Sound")
-- s.SoundId = "https://www.roblox.com/asset/?id=188011001" 
-- s.Name = "Sound"
-- s.Volume = 100
-- s.Looped = true

-- wait(3)
-- s:play()
