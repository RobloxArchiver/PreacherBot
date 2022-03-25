getgenv().pb = {}

-- Fix by Server Nood, I fraantically dmd them xD

local WL = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/RobloxArchiver/WrapperLib/main/games/church/Remote.lua"))()

function SayMessage(msg)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

--#region // SayPreach
function pb.SayPreach(preach, waitTime)
    WL.afkTog(true)
    WL.typeTog(true)

    task.wait(waitTime)
    SayMessage(preach)

    WL.typeTog(false)
end
--#endregion

getgenv().pb = pb
