-- FISH IT AUTO REJOIN
-- Universal best-effort

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

local player = Players.LocalPlayer
local placeId = game.PlaceId
local jobId = game.JobId

local function rejoin()
    pcall(function()
        TeleportService:TeleportToPlaceInstance(
            placeId,
            jobId,
            player
        )
    end)

    task.wait(3)

    pcall(function()
        TeleportService:Teleport(placeId, player)
    end)
end

player.OnTeleport:Connect(function(state)
    if state == Enum.TeleportState.Failed then
        task.wait(3)
        rejoin()
    end
end)

game:GetService("GuiService").ErrorMessageChanged:Connect(function(message)
    if message ~= "" then
        task.wait(2)
        rejoin()
    end
end)

print("FISH IT AUTO REJOIN ACTIVE")
