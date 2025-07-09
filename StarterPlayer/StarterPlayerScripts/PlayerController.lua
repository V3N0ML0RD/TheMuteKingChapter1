local UIS = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        print("Flashlight toggled (placeholder)")
    end
end)
