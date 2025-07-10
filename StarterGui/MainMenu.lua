local StarterGui = game:GetService("StarterGui")

local screen = Instance.new("ScreenGui")
screen.Name = "MainMenu"
screen.ResetOnSpawn = false

local playButton = Instance.new("TextButton")
playButton.Size = UDim2.new(0.3, 0, 0.1, 0)
playButton.Position = UDim2.new(0.35, 0, 0.4, 0)
playButton.Text = "▶ Play"
playButton.Font = Enum.Font.GothamBold
playButton.TextSize = 32
playButton.BackgroundColor3 = Color3.fromRGB(50, 205, 50)
playButton.Parent = screen

local shopButton = Instance.new("TextButton")
shopButton.Size = UDim2.new(0.3, 0, 0.08, 0)
shopButton.Position = UDim2.new(0.35, 0, 0.55, 0)
shopButton.Text = "💰 Robux Store"
shopButton.Font = Enum.Font.Gotham
shopButton.TextSize = 24
shopButton.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
shopButton.Parent = screen

playButton.MouseButton1Click:Connect(function()
	screen.Enabled = false
end)

shopButton.MouseButton1Click:Connect(function()
	game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 12345678)
end)

screen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
