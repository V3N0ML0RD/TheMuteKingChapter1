local Lighting = game:GetService("Lighting")

Lighting.FogEnd = 100
Lighting.FogStart = 20
Lighting.FogColor = Color3.fromRGB(10, 10, 10)
Lighting.Ambient = Color3.fromRGB(20, 20, 20)
Lighting.Brightness = 1

local atmosphere = Instance.new("Atmosphere")
atmosphere.Density = 0.4
atmosphere.Color = Color3.fromRGB(180, 180, 200)
atmosphere.Parent = Lighting

local bloom = Instance.new("BloomEffect")
bloom.Intensity = 1.5
bloom.Threshold = 2
bloom.Size = 56
bloom.Parent = Lighting

local cc = Instance.new("ColorCorrectionEffect")
cc.Saturation = -0.2
cc.Brightness = -0.1
cc.Contrast = 0.1
cc.Parent = Lighting
