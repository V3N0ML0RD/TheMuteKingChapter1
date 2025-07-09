local Players = game:GetService("Players")
local Config = require(script.Parent.Config)

Players.PlayerAdded:Connect(function(player)
    local lives = Instance.new("IntValue")
    lives.Name = "Lives"
    lives.Value = Config.StartingLives
    lives.Parent = player
end)
