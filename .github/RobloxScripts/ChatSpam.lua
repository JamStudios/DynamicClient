--Chat all script (Shows in main chat) made by HollowNoob1558
--[ Configuration ]--

-- Required Code:
--  local message = "."
--  local timeRemaining = "."

--[ Do not edit under here pls ]--

while timeRemaining > 0 do
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message,"LocalPlayer")
  wait(1)
  imeRemaining = timeRemaining - 1
end
