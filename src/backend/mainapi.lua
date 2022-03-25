local pb = {}

--#region // Utilities
function afkTog(b1)
    game:GetService("ReplicatedStorage").afkTog:FireServer(b1)
end

function typeTog(b1)
    game:GetService("ReplicatedStorage").typeTog:FireServer(b1)
end

function SayMessage(msg)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end
--#endregion

--#region // SayPreach
function pb.SayPreach(preach, waitTime)
    afkTog(false)
    typeTog(true)

    task.wait(waitTime)

    SayMessage(preach)

    typeTog(false)
end
--#endregion

return pb