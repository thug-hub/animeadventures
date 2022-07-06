-- THUG HUB ANIME ADVENTURES ERWIN BUFF --

local me = game.Players.LocalPlayer
local remote = game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack
local Erwin = {}

for _,v in pairs(game:GetService("Workspace")["_UNITS"]:GetDescendants()) do
    if v.Name == 'erwin' and v._stats.player.Value == me then
        table.insert(Erwin, v)
    end
end

if #Erwin == 3 then
    while getgenv().ErwinBuff do
        remote:InvokeServer(Erwin[1])
        wait(20.5)
        remote:InvokeServer(Erwin[2])
        wait(20.5)
        remote:InvokeServer(Erwin[3])
        wait(20.5)
    end
end
