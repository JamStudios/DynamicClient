local a = false;
local b = settings();

game:service'UserInputService'.InputEnded:connect(function(i)
if i.KeyCode == Enum.KeyCode.F3 then
a = not a; -- ic3 was here
b.Network.IncommingReplicationLag = a and 1000 or 0;
end
end)
