local Topbar=game.Players.LocalPlayer.PlayerGui .StudioGui.TopBar 

if Topbar: FindFirstChild("Plugin Button") then
	Topbar["PluginButton"]:Destroy()
	pcall(function()
		Topbar.PluginsMenu:Destroy()
	end)
end


local Plugin = Topbar.File:Clone()
Plugin.Name = "Plugin Button"
Plugin.Position = UDim2.new(0.42,0,0,0)
Plugin.Text = "Plugins"
Plugin.Parent = Topbar
local PluginPage = Topbar.FileMenu:Clone()
PluginPage.Name = "PluginsMenu"
PluginPage.Parent = Topbar
Plugin.FileClickLocal.Disabled = true
Plugin.MouseButton1Click:Connect(function() 
	warn("Executando")
	PluginPage.Visible = not PluginPage.Visible
	local StudioGui = game.Players.LocalPlayer.PlayerGui:WaitForChild("StudioGui", 9)
	local FileMenu = StudioGui:WaitForChild("TopBar"):WaitForChild("PluginsMenu")
	StudioGui:WaitForChild("SplashFrame").Visible = false
	StudioGui:WaitForChild("OpenSaveFrame").Visible = false
	StudioGui.TopBar:WaitForChild("OpenSamplesMenu").Visible = false
	StudioGui.TopBar:WaitForChild("SaveDetailsFrame").Visible = false
	StudioGui:WaitForChild("ViewScriptFrame").Visible = false
	StudioGui:WaitForChild("ToolboxFrame").Visible = false
	StudioGui:WaitForChild("MainBar"):WaitForChild("sel").Visible = false
	StudioGui:WaitForChild("InsertScriptFrame").Visible = false
	StudioGui:WaitForChild("InsertLocalScriptFrame").Visible = false
end)



for _, sla in pairs(PluginPage:GetChildren()) do
	if sla:IsA("GuiButton") and sla.Name ~= "New" then
		sla:Destroy()
	end
end
PluginPage.Position = UDim2.new(0.42,0,1,0)
PluginPage.New.Text = "Generate Battleground"
PluginPage.New.Name = "Generate"

local GenerateButton:TextButton = PluginPage:FindFirstChild('Generate')
GenerateButton.MouseButton1Click:Connect(function()


	local M1_Client = Instance.new('LocalScript', game.StarterPlayer.StarterPlayerScripts)
	M1_Client.Name = 'MainClient'

	local TextBox = Instance.new('TextBox',M1_Client)
	TextBox.Name =  'SL_CodeTextBox'
	TextBox.Text = [[
			local UIS = game:GetService('UserInputService')
			local MobileHudFoda10 = Instance.new("ScreenGui")
			MobileHudFoda10.Name = "MobileHudFoda1"
			MobileHudFoda10.DisplayOrder = 0
			MobileHudFoda10.IgnoreGuiInset = false

			local combat1 = Instance.new("ImageButton")
			combat1.Name = "combat"
			combat1.HoverImage = ''
				combat1.Image = 'rbxassetid://14586039707'
			combat1.ImageColor3 = Color3.new(1, 1, 1)
			combat1.ImageRectOffset = Vector2.new(0, 0)
			combat1.ImageRectSize = Vector2.new(0, 0)
			combat1.ImageTransparency = 0
			
			local UICorner2 = Instance.new("UICorner")
			UICorner2.Name = "UICorner"
			UICorner2.CornerRadius = UDim.new(0, 100)



			combat1.MouseButton1Click:Connect(function()
				script.Clique:FireServer()
			end)

			MobileHudFoda10.Enabled = UIS.TouchEnded

			UIS.InputBegan:Connect(function(inpt, chat)
				if not chat then
					if inpt.UserInputType == Enum.UserInputType.MouseButton1 then
						script.Clique:FireServer()
					end
					if inpt.KeyCode == Enum.KeyCode.F then
						script.Block:FireServer(true)
						print('chamano')
					end
				end
			end)

			UIS.InputEnded:Connect(function(inpt)
				if inpt.KeyCode == Enum.KeyCode.F then
					script.Block:FireServer(false)
				end
			end)
			
	]]
	local Objct=Instance.new('ObjectValue', TextBox)
	Objct.Name = 'SaveChangesTo'
	Objct.Value = TextBox
	do -- Awaken Bar
		local AwakenBar = Instance.new("ScreenGui")
		local MagicHealth = Instance.new("Frame")
		local Health = Instance.new("Frame")
		local Bar = Instance.new("ImageLabel")
		local Bar_2 = Instance.new("ImageLabel")
		local Empty = Instance.new("UIGradient")
		local Glow = Instance.new("ImageLabel")
		local TextLabel = Instance.new("TextLabel")
		local TextLabel_2 = Instance.new("TextLabel")
		local Ult = Instance.new("TextLabel")
		local TextLabel_3 = Instance.new("TextLabel")
		local ImageLabel = Instance.new("ImageLabel")

		--Properties:

		AwakenBar.Name = "AwakenBar"
		AwakenBar.Parent = game.Workspace
		AwakenBar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		MagicHealth.Name = "MagicHealth"
		MagicHealth.Parent = AwakenBar
		MagicHealth.AnchorPoint = Vector2.new(0.5, 0.5)
		MagicHealth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MagicHealth.BackgroundTransparency = 1.000
		MagicHealth.BorderColor3 = Color3.fromRGB(27, 42, 53)
		MagicHealth.Position = UDim2.new(0.5, 0, 1, -90)
		MagicHealth.Size = UDim2.new(0, 397, 0, 25)

		Health.Name = "Health"
		Health.Parent = MagicHealth
		Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Health.BackgroundTransparency = 1.000
		Health.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Health.ClipsDescendants = true
		Health.Size = UDim2.new(1, 0, 1, 0)

		Bar.Name = "Bar"
		Bar.Parent = Health
		Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Bar.BackgroundTransparency = 1.000
		Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Bar.BorderSizePixel = 0
		Bar.ClipsDescendants = true
		Bar.Position = UDim2.new(0, 0, 1, -25)
		Bar.Size = UDim2.new(1, 0, 0, 25)
		Bar.ZIndex = 3
		Bar.Image = "rbxassetid://7884720727"
		Bar.ImageColor3 = Color3.fromRGB(255, 87, 87)
		Bar.ImageTransparency = 1.000

		Bar_2.Name = "Bar"
		Bar_2.Parent = Bar
		Bar_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Bar_2.BackgroundTransparency = 1.000
		Bar_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Bar_2.BorderSizePixel = 0
		Bar_2.Position = UDim2.new(0, 0, 1, -25)
		Bar_2.Size = UDim2.new(0, 397, 0, 25)
		Bar_2.ZIndex = 3
		Bar_2.Image = "rbxassetid://7884720727"
		Bar_2.ImageColor3 = Color3.fromRGB(255, 87, 87)

		Empty.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
		Empty.Rotation = -90
		Empty.Name = "Empty"
		Empty.Parent = Bar_2

		Glow.Name = "Glow"
		Glow.Parent = Health
		Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Glow.BackgroundTransparency = 1.000
		Glow.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Glow.BorderSizePixel = 0
		Glow.Size = UDim2.new(0, 397, 0, 25)
		Glow.ZIndex = 7
		Glow.Image = "rbxassetid://7885533165"
		Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		Glow.ImageTransparency = 0.500

		TextLabel.Parent = MagicHealth
		TextLabel.AnchorPoint = Vector2.new(0.5, 0)
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
		TextLabel.Position = UDim2.new(0.5, 0, -0.840000033, 10)
		TextLabel.Size = UDim2.new(0, 163, 0, 25)
		TextLabel.ZIndex = 8
		TextLabel.Font = Enum.Font.Unknown
		TextLabel.Text = "SERIOUS MODE"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 22.000
		TextLabel.TextStrokeTransparency = 0.750

		TextLabel_2.Parent = TextLabel
		TextLabel_2.AnchorPoint = Vector2.new(0.5, 0)
		TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_2.BackgroundTransparency = 1.000
		TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
		TextLabel_2.Position = UDim2.new(0.5, 2, 0, 2)
		TextLabel_2.Size = UDim2.new(0, 163, 0, 25)
		TextLabel_2.ZIndex = 3
		TextLabel_2.Font = Enum.Font.Unknown
		TextLabel_2.Text = "SERIOUS MODE"
		TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel_2.TextSize = 22.000
		TextLabel_2.TextStrokeTransparency = 0.750

		Ult.Name = "Ult"
		Ult.Parent = MagicHealth
		Ult.AnchorPoint = Vector2.new(0.5, 0)
		Ult.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Ult.BackgroundTransparency = 1.000
		Ult.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Ult.Position = UDim2.new(0.5, 0, -0.839999974, 29)
		Ult.Size = UDim2.new(0, 163, 0, 27)
		Ult.Visible = false
		Ult.ZIndex = 8
		Ult.Font = Enum.Font.Unknown
		Ult.Text = "[G]"
		Ult.TextColor3 = Color3.fromRGB(255, 255, 255)
		Ult.TextSize = 18.000
		Ult.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

		TextLabel_3.Parent = Ult
		TextLabel_3.AnchorPoint = Vector2.new(0.5, 0)
		TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_3.BackgroundTransparency = 1.000
		TextLabel_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
		TextLabel_3.Position = UDim2.new(0.5, 2, 0, 2)
		TextLabel_3.Size = UDim2.new(0, 163, 0, 27)
		TextLabel_3.ZIndex = 3
		TextLabel_3.Font = Enum.Font.Unknown
		TextLabel_3.Text = "[G]"
		TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel_3.TextSize = 18.000
		TextLabel_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

		ImageLabel.Parent = Ult
		ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
		ImageLabel.Position = UDim2.new(0.5, 0, -2, 0)
		ImageLabel.Size = UDim2.new(0, 84, 0, 91)
		ImageLabel.Visible = false
		ImageLabel.Image = "rbxassetid://12553547082"

	end
end)
PluginPage.MenuClickLocal:Destroy()
Plugin.FileClickLocal.Enabled=false
Plugin: FindFirstChildWhichIsA("LocalScript"):Destroy()
warn("Completo")
