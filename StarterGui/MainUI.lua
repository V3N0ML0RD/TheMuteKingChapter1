local screen = Instance.new("ScreenGui")
screen.Name = "MainUI"

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0.4, 0, 0.1, 0)
label.Position = UDim2.new(0.3, 0, 0, 20)
label.BackgroundTransparency = 1
label.TextScaled = true
label.TextColor3 = Color3.new(1, 1, 1)
label.Font = Enum.Font.GothamBold
label.Text = "The Mute King: Chapter 1"
label.Parent = screen

screen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
