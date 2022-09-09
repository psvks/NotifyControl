
-- Alan Mussifuck was here... Bitches


ver = "Unknown"


if NotiFyControlLoaded and not _G.NotifyControl == true then

	return
end

pcall(function() getgenv().NotiFyControlLoaded = true end)

COREGUI = game:GetService("CoreGui")
if not game:IsLoaded() then
	print("client not loaded yet. w control notify")
end




local NotifyControl = Instance.new("ScreenGui")
local NotifyMain = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local separao = Instance.new("TextLabel")

local title = Instance.new("TextLabel")

local desc = Instance.new("TextLabel")

local okButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")



NotifyControl.Name = "NotifyControl"
NotifyControl.Parent = game.CoreGui
NotifyControl.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

NotifyMain.Name = "NotifyMain"
NotifyMain.Parent = NotifyControl
NotifyMain.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
NotifyMain.Position = UDim2.new(0.00694638537, 0, 0.0111111104, 0)
NotifyMain.Size = UDim2.new(0, 270, 0, 124)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = NotifyMain

separao.Name = "separao"
separao.Parent = NotifyMain
separao.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
separao.BorderColor3 = Color3.fromRGB(255, 0, 127)
separao.Position = UDim2.new(0, 0, 0.169354841, 0)
separao.Size = UDim2.new(0, 270, 0, 0)
separao.Font = Enum.Font.SourceSans
separao.Text = " "
separao.TextColor3 = Color3.fromRGB(0, 0, 0)
separao.TextSize = 14.000



title.Name = "title"
title.Parent = NotifyMain
title.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.025925925, 0, 0, 0)
title.Size = UDim2.new(0, 193, 0, 21)
title.Font = Enum.Font.Code
title.Text = "COD"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000
title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
title.TextXAlignment = Enum.TextXAlignment.Left



desc.Name = "desc"
desc.Parent = NotifyMain
desc.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
desc.BackgroundTransparency = 1.000
desc.Position = UDim2.new(0.0111111114, 0, 0.217741936, 0)
desc.Size = UDim2.new(0, 261, 0, 72)
desc.Font = Enum.Font.Code
desc.TextColor3 = Color3.fromRGB(255, 0, 127)
desc.TextSize = 14.000
desc.TextWrapped = true
desc.TextXAlignment = Enum.TextXAlignment.Left
desc.TextYAlignment = Enum.TextYAlignment.Top



okButton.Name = "okButton"
okButton.Parent = NotifyMain
okButton.BackgroundColor3 = Color3.fromRGB(255, 0, 127)
okButton.Position = UDim2.new(0.688888907, 0, 0.79838711, 0)
okButton.Size = UDim2.new(0, 78, 0, 18)
okButton.Font = Enum.Font.SourceSans
okButton.TextColor3 = Color3.fromRGB(0, 0, 0)
okButton.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = okButton



UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = okButton

UISTROK = Instance.new("UIStroke")

UISTROK.Parent = NotifyMain
UISTROK.Color = Color3.fromRGB(255, 0, 127)
UISTROK.Thickness = 1


okButton.Text = "OK."
okButton.Font = Enum.Font.Code

local speed = 0.01

function gtSound(Play) -- Play function
	local sound = Instance.new("Sound", game.Workspace)
	sound.SoundId = "rbxassetid://654933978"
	sound.Volume = 5
	sound:Play()
end

function notify(txt: any, dec: any) -- NOT OPEN {-0.275, -10},{0.014, -2}, OPEN {-0.275, 279},{0.014, -2}
	title.Text = txt
	desc.Text = dec
	okButton.Visible = true
	NotifyMain.Visible = true
	gtSound()
	okButton.MouseButton1Click:Connect(function()
		okButton.Visible = false
		NotifyMain.BackgroundTransparency = 0.1
		separao.BackgroundTransparency = 0.1
		wait(speed)


		NotifyMain.BackgroundTransparency = 0.2
		separao.BackgroundTransparency = 0.2
		wait(speed)


		NotifyMain.BackgroundTransparency = 0.3
		separao.BackgroundTransparency = 0.3
		wait(speed)


		NotifyMain.BackgroundTransparency = 0.4
		separao.BackgroundTransparency = 0.4
		wait(speed)


		NotifyMain.BackgroundTransparency = 0.5
		separao.BackgroundTransparency = 0.5
		wait(speed)


		NotifyMain.BackgroundTransparency = 0.6
		separao.BackgroundTransparency = 0.6
		wait(speed)


		NotifyMain.BackgroundTransparency = 0.7
		separao.BackgroundTransparency = 0.7
		wait(speed)


		NotifyMain.BackgroundTransparency = 0.8
		separao.BackgroundTransparency = 0.8
		wait(speed)


		NotifyMain.BackgroundTransparency = 0.9
		separao.BackgroundTransparency = 0.9
		wait(speed)


		NotifyMain.BackgroundTransparency = 1
		separao.BackgroundTransparency = 1

		NotifyMain.Visible = false
		NotifyMain.BackgroundTransparency = 0
		desc.BackgroundTransparency = 0
		title.BackgroundTransparency = 0
		separao.BackgroundTransparency = 0
	end)
end

function testNotify()
	notify("Hello world", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
end

function exit(any: void)
	game:Shutdown()
end
