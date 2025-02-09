local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "D_Loader"
screenGui.Parent = CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 300)
mainFrame.Position = UDim2.new(0.5, -125, -0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = mainFrame

local imageLabel = Instance.new("ImageLabel")
imageLabel.Image = "http://www.roblox.com/asset/?id=8850953349"
imageLabel.Size = UDim2.new(0, 150, 0, 150)
imageLabel.Position = UDim2.new(0.5, -75, 0.3, -50)
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = mainFrame

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0.5, -100, 0.8, -25)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.GothamBold
textLabel.TextSize = 24
textLabel.Parent = mainFrame

local closeButton = Instance.new("TextLabel")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 20
closeButton.Parent = mainFrame

local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
local tweenGoal = {Position = UDim2.new(0.5, -125, 0.5, -150)}
local tween = TweenService:Create(mainFrame, tweenInfo, tweenGoal)
tween:Play()

wait(1)
textLabel.Text = "Loading..."
wait(1)
textLabel.Text = "Injecting..."
wait(3)
textLabel.Text = "Complete"
wait(2)

local fadeOut = TweenInfo.new(0.5, Enum.EasingStyle.Quad)
local fadeGoal = {Position = UDim2.new(0.5, -125, 1.5, -150)}
local fadeTween = TweenService:Create(mainFrame, fadeOut, fadeGoal)
fadeTween:Play()
fadeTween.Completed:Wait()
screenGui:Destroy()

closeButton.MouseButton1Click:Connect(function()
   local fadeOut = TweenInfo.new(0.5, Enum.EasingStyle.Quad)
   local fadeGoal = {Position = UDim2.new(0.5, -125, 1.5, -150)}
   local fadeTween = TweenService:Create(mainFrame, fadeOut, fadeGoal)
   fadeTween:Play()
   fadeTween.Completed:Wait()
   screenGui:Destroy()
end)
