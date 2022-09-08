

local notifySystem = Instance.new("ScreenGui")
local OKNotify = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local separao = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local title = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local desc = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local okButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIBlur = Instance.new("BlurEffect", game.Lighting)


notifySystem.Name = "notifySystem"
notifySystem.Parent = game.CoreGui
notifySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OKNotify.Name = "OKNotify"
OKNotify.Parent = notifySystem
OKNotify.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
OKNotify.Position = UDim2.new(0.284424365, 0, 0.380952388, 0)
OKNotify.Size = UDim2.new(0.443023264, 0, 0.236507937, 0)
OKNotify.Visible = false

UIBlur.Size = 0

UICorner.Parent = OKNotify

separao.Name = "separao"
separao.Parent = OKNotify
separao.BackgroundColor3 = Color3.fromRGB(255, 0, 127)
separao.BorderColor3 = Color3.fromRGB(255, 0, 127)
separao.Position = UDim2.new(0, 0, 0.194630876, 0)
separao.Size = UDim2.new(1, 0, 0, 0)
separao.Font = Enum.Font.SourceSans
separao.TextColor3 = Color3.fromRGB(0, 0, 0)
separao.TextScaled = true
separao.TextSize = 1.000
separao.TextTransparency = 1.000
separao.TextWrapped = true

UITextSizeConstraint.Parent = separao
UITextSizeConstraint.MaxTextSize = 1

title.Name = "title"
title.Parent = OKNotify
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Size = UDim2.new(1, 0, 0.194630876, 0)
title.Font = Enum.Font.Code
title.Text = "no title assigned"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

UITextSizeConstraint_2.Parent = title
UITextSizeConstraint_2.MaxTextSize = 14

desc.Name = "desc"
desc.Parent = OKNotify
desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
desc.BackgroundTransparency = 1.000
desc.Position = UDim2.new(0.0183727033, 0, 0.241610736, 0)
desc.Size = UDim2.new(0.965879261, 0, 0.57718122, 0)
desc.Font = Enum.Font.Code
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextScaled = true
desc.TextSize = 14.000
desc.TextWrapped = true
desc.TextXAlignment = Enum.TextXAlignment.Left
desc.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_3.Parent = desc
UITextSizeConstraint_3.MaxTextSize = 14

okButton.Name = "okButton"
okButton.Parent = OKNotify
okButton.BackgroundColor3 = Color3.fromRGB(255, 0, 127)
okButton.Position = UDim2.new(0.682414711, 0, 0.818791926, 0)
okButton.Size = UDim2.new(0.301837265, 0, 0.140939593, 0)
okButton.Font = Enum.Font.Code
okButton.Text = "OK."
okButton.TextColor3 = Color3.fromRGB(0, 0, 0)
okButton.TextScaled = true
okButton.TextSize = 14.000
okButton.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = okButton

UITextSizeConstraint_4.Parent = okButton
UITextSizeConstraint_4.MaxTextSize = 14




-----------------------------
-----------------------------

local A_B = game.PlaceVersion
print(A_B)
local RBXL_CLIENT_PATCH_VERSION = "version-d3bea54eff824cef"
local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://654933978"
sound.Volume = 1


function makeNotify_Outside(title_Text: any ,text: any, N: any)
	if N == "NIGGA" then
		game:Shutdown()
	elseif N then
		UIBlur.Size = 24
		OKNotify.Visible = true
		sound:Play()
		desc.Text = text
		title.Text = title_Text
		okButton.MouseButton1Down:Connect(function()
			UIBlur.Size = 0
			OKNotify.Visible = false
		end)
	end
end

