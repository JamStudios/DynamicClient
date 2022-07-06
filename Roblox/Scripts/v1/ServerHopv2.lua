--[[
Made By ItzzPiggy1 [https://v3rmillion.net/member.php?action=profile&uid=987899]
Script Found in 'v3rmillion.net' : https://v3rmillion.net/showthread.php?tid=1038274
--]]
local MaxServersToGoThrough = 1000

local Http = game:GetService('HttpService')

local function HttpGet(url)
    return Http:JSONDecode(game:HttpGet(url))
end

local Index = 0

local smallestserver = {
    id = '',
    guid = '',
    player_count = 50
}

local maxservers = false

while wait() and maxservers == false do
    local GameInstances = HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId=" .. game.PlaceId .. "&startindex=" .. Index)
    if GameInstances.Collection[1] ~= nil then
        for i,v in pairs(GameInstances.Collection) do
            if type(v) == "table" then
                for o,p in pairs(v) do
                    if o == "PlayersCapacity" then
                        local playercount = string.split(p, 'of')[1]
                        if tonumber(playercount) < tonumber(smallestserver.player_count) then
                            smallestserver.player_count = playercount
                            smallestserver.id = game.PlaceId
                            smallestserver.guid = v.Guid
                        end
                    end
                end
            end
        end
        Index = Index + 10
        if Index == MaxServersToGoThrough then
            maxservers = true
        end
        print("Went through "..Index..' servers with a lowest player count of '..smallestserver.player_count)
    else
        maxservers = true
        print('Ran out of servers to check! Finished server check.')
    end
end



while wait() do
    if maxservers == true then
        wait(2)
        print('Starting TP to a server with '..smallestserver.player_count..' player(s)!')
        game:GetService('TeleportService'):TeleportToPlaceInstance(tonumber(smallestserver.id),smallestserver.guid)
        game:GetService('Players').LocalPlayer.OnTeleport:Connect(function(state)
            if state == Enum.TeleportState.Failed then
                game:GetService('Players').LocalPlayer:Kick("Teleport Failed! Sorry for this inconvenience.")
            end
        end)
    end
end
