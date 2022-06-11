i = game:GetService(“Players”). LocalPlayer.Name --Put your ROBLOX name.

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
