--here is a little test shader for you
--Shader grabbed at https://github.com/ROTIFINE/ROTIFINE-Shaders
local API = require(game.ReplicatedStorage.ROTIFINE.ShaderApi)
local RequiredVer = 1.0
if API.Version == 1.0 then
local Lighting = game:GetService("Lighting")
local Bloom = Instance.new("BloomEffect")
local Blur = Instance.new("BlurEffect")
local ColorCor = Instance.new("ColorCorrectionEffect")
local SunRays = Instance.new("SunRaysEffect")
local Sky = Instance.new("Sky")
local Atm = Instance.new("Atmosphere")
	
	API.ClearLighting() --uses api clear

Bloom.Parent = Lighting
Blur.Parent = Lighting
ColorCor.Parent = Lighting
SunRays.Parent = Lighting
Sky.Parent = Lighting
Atm.Parent = Lighting



Bloom.Intensity = 0.3
Bloom.Size = 10
Bloom.Threshold = 4

Blur.Size = 5

ColorCor.Brightness = 0.1
ColorCor.Contrast = 0.5
ColorCor.Saturation = 0.3
ColorCor.TintColor = Color3.fromRGB(255, 255, 255)

SunRays.Intensity = 0.075
SunRays.Spread = 0.727


Sky.SunAngularSize = 10

Lighting.Ambient = Color3.fromRGB(2,2,2)
Lighting.Brightness = 2.25
Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
Lighting.ColorShift_Top = Color3.fromRGB(0,0,0)
Lighting.EnvironmentDiffuseScale = 0.2
Lighting.EnvironmentSpecularScale = 0.2
Lighting.GlobalShadows = true
Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
Lighting.ShadowSoftness = 0.2
Lighting.ClockTime = 15
Lighting.GeographicLatitude = 45
Lighting.ExposureCompensation = 0.5

Atm.Density = 0.364
Atm.Offset = 0.556
Atm.Color = Color3.fromRGB(199, 175, 166)
Atm.Decay = Color3.fromRGB(44, 39, 33)
Atm.Glare = 0.36
Atm.Haze = 1.72

	script:Destroy()
else
	error(script.Name.." Cannot Run The API is missing or its outdated It Requires V"..RequiredVer.." OF ROTIFINE TELL THE CREATOR OF THE SHADER TO UPDATE")
	end
