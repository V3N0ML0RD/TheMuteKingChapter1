local monster = script.Parent
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

function getClosestPlayer()
    local closest = nil
    local shortestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - monster.Position).Magnitude
            if distance < shortestDistance then
                closest = player.Character.HumanoidRootPart
                shortestDistance = distance
            end
        end
    end

    return closest
end

RunService.Heartbeat:Connect(function()
    local target = getClosestPlayer()
    if target then
        local direction = (target.Position - monster.Position).Unit
        monster.CFrame = CFrame.new(monster.Position, target.Position)
        monster.Position = monster.Position + direction * 0.1
    end
end)
