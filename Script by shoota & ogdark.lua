
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animationId1 = "rbxassetid://74238051754912"
local animationId2 = "rbxassetid://87482480949358"
local animationId3 = "rbxassetid://100986631322204"
local animationId4 = "rbxassetid://107464355830477"
local animationId5 = "rbxassetid://107464355830477"
local audioId1 = "rbxassetid://123236721947419"
local audioId2 = "rbxassetid://132297506693854"
local audioId3 = "rbxassetid://131936418953291"
local audioId4 = "rbxassetid://77601084987544"
local audioId5 = "rbxassetid://120176009143091"

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.4, 0)
frame.Position = UDim2.new(0.3, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
frame.Parent = screenGui

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0.3, 0, 0.2, 0)
button1.Position = UDim2.new(0.05, 0, 0.3, 0)
button1.Text = "tocar: Shucks (oh merda)"
button1.TextColor3 = Color3.fromRGB(255, 255, 255)
button1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button1.BorderColor3 = Color3.fromRGB(255, 0, 0)
button1.Parent = frame

local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0.3, 0, 0.2, 0)
button2.Position = UDim2.new(0.35, 0, 0.3, 0)
button2.Text = "parar as animações"
button2.TextColor3 = Color3.fromRGB(255, 255, 255)
button2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button2.BorderColor3 = Color3.fromRGB(255, 0, 0)
button2.Parent = frame

local button3 = Instance.new("TextButton")
button3.Size = UDim2.new(0.3, 0, 0.2, 0)
button3.Position = UDim2.new(0.65, 0, 0.3, 0)
button3.Text = "tocar: Subterfuge"
button3.TextColor3 = Color3.fromRGB(255, 255, 255)
button3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button3.BorderColor3 = Color3.fromRGB(255, 0, 0)
button3.Parent = frame

local button4 = Instance.new("TextButton")
button4.Size = UDim2.new(0.3, 0, 0.2, 0)
button4.Position = UDim2.new(0.05, 0, 0.55, 0)
button4.Text = "tocar: I Miss The Quiet"
button4.TextColor3 = Color3.fromRGB(255, 255, 255)
button4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button4.BorderColor3 = Color3.fromRGB(255, 0, 0)
button4.Parent = frame

local button5 = Instance.new("TextButton")
button5.Size = UDim2.new(0.3, 0, 0.2, 0)
button5.Position = UDim2.new(0.35, 0, 0.55, 0)
button5.Text = "tocar: Silly Billy"
button5.TextColor3 = Color3.fromRGB(255, 255, 255)
button5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button5.BorderColor3 = Color3.fromRGB(255, 0, 0)
button5.Parent = frame

local button6 = Instance.new("TextButton")
button6.Size = UDim2.new(0.3, 0, 0.2, 0)
button6.Position = UDim2.new(0.65, 0, 0.55, 0)
button6.Text = "tocar: Silly Billy Thick of It (trash)"
button6.TextColor3 = Color3.fromRGB(255, 255, 255)
button6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button6.BorderColor3 = Color3.fromRGB(255, 0, 0)
button6.Parent = frame

local creditText = Instance.new("TextLabel")
creditText.Size = UDim2.new(1, 0, 0.2, 0)
creditText.Position = UDim2.new(0, 0, 0, 0)
creditText.Text = "Feito por:shoota ontop"
creditText.TextColor3 = Color3.fromRGB(255, 255, 255)
creditText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
creditText.BorderColor3 = Color3.fromRGB(255, 0, 0)
creditText.Parent = frame

local animation1 = Instance.new("Animation")
animation1.AnimationId = animationId1

local animation2 = Instance.new("Animation")
animation2.AnimationId = animationId2

local animation3 = Instance.new("Animation")
animation3.AnimationId = animationId3

local animation4 = Instance.new("Animation")
animation4.AnimationId = animationId4

local animation5 = Instance.new("Animation")
animation5.AnimationId = animationId5

local animationTrack1 = humanoid:LoadAnimation(animation1)
local animationTrack2 = humanoid:LoadAnimation(animation2)
local animationTrack3 = humanoid:LoadAnimation(animation3)
local animationTrack4 = humanoid:LoadAnimation(animation4)
local animationTrack5 = humanoid:LoadAnimation(animation5)

local audio1 = Instance.new("Sound")
audio1.SoundId = audioId1
audio1.Parent = character

local audio2 = Instance.new("Sound")
audio2.SoundId = audioId2
audio2.Parent = character

local audio3 = Instance.new("Sound")
audio3.SoundId = audioId3
audio3.Parent = character

local audio4 = Instance.new("Sound")
audio4.SoundId = audioId4
audio4.Parent = character

local audio5 = Instance.new("Sound")
audio5.SoundId = audioId5
audio5.Parent = character

local function playAnimation1()
    animationTrack1:Play()
    audio1:Play()
end

local function stopAnimations()
    animationTrack1:Stop()
    animationTrack2:Stop()
    animationTrack3:Stop()
    animationTrack4:Stop()
    animationTrack5:Stop()
    audio1:Stop()
    audio2:Stop()
    audio3:Stop()
    audio4:Stop()
    audio5:Stop()
end

local function playAnimation2()
    animationTrack2:Play()
    audio2:Play()
end

local function playAnimation3()
    animationTrack3:Play()
    audio3:Play()
end

local function playAnimation4()
    animationTrack4:Play()
    audio4:Play()
end

local function playAnimation5()
    animationTrack5:Play()
    audio5:Play()
end

button1.MouseButton1Click:Connect(playAnimation1)

button2.MouseButton1Click:Connect(stopAnimations)

button3.MouseButton1Click:Connect(playAnimation2)

button4.MouseButton1Click:Connect(playAnimation3)

button5.MouseButton1Click:Connect(playAnimation4)

button6.MouseButton1Click:Connect(playAnimation5)
