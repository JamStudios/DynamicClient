local Aimware = Instance.new("ScreenGui")
local AimwareTitle = Instance.new("Frame")
local AimwareArrayPage = Instance.new("Frame")
local ToggleArray = Instance.new("TextButton")
local ARRAYBind = Instance.new("TextBox")
local ToggleRainbow = Instance.new("TextButton")
local AimwareTop2 = Instance.new("TextLabel")
local NextPage = Instance.new("TextButton")
local AimwareESPPage = Instance.new("Frame")
local ToggleESP = Instance.new("TextButton")
local ESPBind = Instance.new("TextBox")
local AimwareGRAVPage = Instance.new("Frame")
local ToggleGRAV = Instance.new("TextButton")
local GRAVBind = Instance.new("TextBox")
local AimwareSINKPage = Instance.new("Frame")
local ToggleSINK = Instance.new("TextButton")
local SINKBind = Instance.new("TextBox")
local AimwareArray = Instance.new("Frame")
local ESPD = Instance.new("TextLabel")
local ESPE = Instance.new("TextLabel")
local AimwareTop1 = Instance.new("TextLabel")
local GRAVD = Instance.new("TextLabel")
local GRAVE = Instance.new("TextLabel")
local SINKE = Instance.new("TextLabel")
local SINKD = Instance.new("TextLabel")
local AimwareIntro = Instance.new("TextLabel")
local AimwareIntro2 = Instance.new("TextLabel")


Aimware.Name = "Aimware"
Aimware.Parent = game.CoreGui
Aimware.ResetOnSpawn = false
ESPTOGGLE = false
MENUTOGGLE = false
ARRAYTOGGLE = false
RAINBOWTOGGLE = false
GRAVTOGGLE = false
SINKTOGGLE = false

AimwareTitle.Name = "AimwareTitle"
AimwareTitle.Parent = Aimware
AimwareTitle.Active = true
AimwareTitle.BackgroundColor3 = Color3.new(1, 0, 0)
AimwareTitle.BorderColor3 = Color3.new(1.17647, 0, 0)
AimwareTitle.BorderSizePixel = 0
AimwareTitle.Draggable = true
AimwareTitle.Position = UDim2.new(0.300000012, 0, 0.300000012, 0)
AimwareTitle.Selectable = true
AimwareTitle.Size = UDim2.new(0, 500, 0, 25)
AimwareTitle.Visible = false

AimwareArrayPage.Name = "AimwareArrayPage"
AimwareArrayPage.Parent = AimwareTitle
AimwareArrayPage.BackgroundColor3 = Color3.new(1, 1, 1)
AimwareArrayPage.BackgroundTransparency = 0.5
AimwareArrayPage.BorderColor3 = Color3.new(1, 1, 1)
AimwareArrayPage.BorderSizePixel = 0
AimwareArrayPage.Position = UDim2.new(0, 0, 0, 25)
AimwareArrayPage.Size = UDim2.new(0, 500, 0, 200)

ToggleArray.Name = "ToggleArray"
ToggleArray.Parent = AimwareArrayPage
ToggleArray.BackgroundColor3 = Color3.new(1, 1, 1)
ToggleArray.BackgroundTransparency = 1
ToggleArray.BorderSizePixel = 0
ToggleArray.Position = UDim2.new(0, 0, 0, 5)
ToggleArray.Size = UDim2.new(0, 500, 0, 25)
ToggleArray.Font = Enum.Font.Code
ToggleArray.FontSize = Enum.FontSize.Size24
ToggleArray.Text = "Toggle Array List"
ToggleArray.TextColor3 = Color3.new(1, 1, 1)
ToggleArray.TextSize = 22
ToggleArray.MouseButton1Down:connect(function()
	if ARRAYTOGGLE == false then
			AimwareArray.Visible = true
			ARRAYTOGGLE = true
	else
			AimwareArray.Visible = false
			ARRAYTOGGLE = false
	end
end)

ARRAYBind.Name = "ARRAYBind"
ARRAYBind.Parent = AimwareArrayPage
ARRAYBind.BackgroundColor3 = Color3.new(1, 1, 1)
ARRAYBind.BackgroundTransparency = 1
ARRAYBind.BorderSizePixel = 0
ARRAYBind.Position = UDim2.new(0, 0, 0, 65)
ARRAYBind.Size = UDim2.new(0, 500, 0, 25)
ARRAYBind.Font = Enum.Font.Code
ARRAYBind.FontSize = Enum.FontSize.Size24
ARRAYBind.Text = "Keybind"
ARRAYBind.TextColor3 = Color3.new(1, 1, 1)
ARRAYBind.TextSize = 22

ToggleRainbow.Name = "ToggleRainbow"
ToggleRainbow.Parent = AimwareArrayPage
ToggleRainbow.BackgroundColor3 = Color3.new(1, 1, 1)
ToggleRainbow.BackgroundTransparency = 1
ToggleRainbow.BorderSizePixel = 0
ToggleRainbow.Position = UDim2.new(0, 0, 0, 35)
ToggleRainbow.Size = UDim2.new(0, 500, 0, 25)
ToggleRainbow.Font = Enum.Font.Code
ToggleRainbow.FontSize = Enum.FontSize.Size24
ToggleRainbow.Text = "Toggle Rainbow Array"
ToggleRainbow.TextColor3 = Color3.new(1, 1, 1)
ToggleRainbow.TextSize = 22
ToggleRainbow.MouseButton1Down:connect(function()
		if RAINBOWTOGGLE == true then
		RAINBOWTOGGLE = false
		wait(0.35)
		AimwareTop1.TextColor3 = Color3.new(1, 0, 0)
		ESPD.TextColor3 = Color3.new(1, 0, 0)
		ESPE.TextColor3 = Color3.new(0, 1, 0.0980392)
		GRAVD.TextColor3 = Color3.new(1, 0, 0)
		GRAVE.TextColor3 = Color3.new(0, 1, 0.0980392)
	    SINKD.TextColor3 = Color3.new(1, 0, 0)
		SINKE.TextColor3 = Color3.new(0, 1, 0.0980392)
	else
		RAINBOWTOGGLE = true
	end
	while RAINBOWTOGGLE == true do
		AimwareTop1.TextColor3 = Color3.new(1, 0, 0)
		ESPD.TextColor3 = Color3.new(1, 0, 0)
		ESPE.TextColor3 = Color3.new(1, 0, 0)
		GRAVD.TextColor3 = Color3.new(1, 0, 0)
		GRAVE.TextColor3 = Color3.new(1, 0, 0)
		SINKD.TextColor3 = Color3.new(1, 0, 0)
		SINKE.TextColor3 = Color3.new(1, 0, 0)
		wait(0.13)
		AimwareTop1.TextColor3 = Color3.new(1, 0.333333, 0)
		ESPD.TextColor3 = Color3.new(1, 0.333333, 0)
		ESPE.TextColor3 = Color3.new(1, 0.333333, 0)
		GRAVD.TextColor3 = Color3.new(1, 0.333333, 0)
		GRAVE.TextColor3 = Color3.new(1, 0.333333, 0)
		SINKD.TextColor3 = Color3.new(1, 0.333333, 0)
		SINKE.TextColor3 = Color3.new(1, 0.333333, 0)
		wait(0.13)
		AimwareTop1.TextColor3 = Color3.new(1, 1, 0)
		ESPD.TextColor3 = Color3.new(1, 1, 0)
		ESPE.TextColor3 = Color3.new(1, 1, 0)
		GRAVD.TextColor3 = Color3.new(1, 1, 0)
		GRAVE.TextColor3 = Color3.new(1, 1, 0)
	    SINKD.TextColor3 = Color3.new(1, 1, 0)
		SINKE.TextColor3 = Color3.new(1, 1, 0)
		wait(0.13)
		AimwareTop1.TextColor3 = Color3.new(0, 1, 0)
		ESPD.TextColor3 = Color3.new(0, 1, 0)
		ESPE.TextColor3 = Color3.new(0, 1, 0)
		GRAVD.TextColor3 = Color3.new(0, 1, 0)
		GRAVE.TextColor3 = Color3.new(0, 1, 0)
		SINKD.TextColor3 = Color3.new(0, 1, 0)
		SINKE.TextColor3 = Color3.new(0, 1, 0)
		wait(0.13)
		AimwareTop1.TextColor3 = Color3.new(0, 0.333333, 1)
		ESPD.TextColor3 = Color3.new(0, 0.333333, 1)
		ESPE.TextColor3 = Color3.new(0, 0.333333, 1)
		GRAVD.TextColor3 = Color3.new(0, 0.333333, 1)
		GRAVE.TextColor3 = Color3.new(0, 0.333333, 1)
		SINKD.TextColor3 = Color3.new(0, 0.333333, 1)
		SINKE.TextColor3 = Color3.new(0, 0.333333, 1)
		wait(0.13)
		AimwareTop1.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		ESPD.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		ESPE.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		GRAVD.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		GRAVE.TextColor3 = Color3.new(0.333333, 0, 0.498039)
	    SINKD.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		SINKE.TextColor3 = Color3.new(0.333333, 0, 0.498039)
		wait(0.13)
	end
end)

AimwareTop2.Name = "AimwareTop2"
AimwareTop2.Parent = AimwareTitle
AimwareTop2.BackgroundColor3 = Color3.new(1, 1, 1)
AimwareTop2.BackgroundTransparency = 1
AimwareTop2.BorderSizePixel = 0
AimwareTop2.Position = UDim2.new(0, 4, 0, 0)
AimwareTop2.Size = UDim2.new(0, 132, 0, 25)
AimwareTop2.Font = Enum.Font.Code
AimwareTop2.FontSize = Enum.FontSize.Size24
AimwareTop2.Text = "Aimware v0.6.1"
AimwareTop2.TextColor3 = Color3.new(1, 1, 1)
AimwareTop2.TextSize = 22
AimwareTop2.TextXAlignment = Enum.TextXAlignment.Left

NextPage.Name = "NextPage"
NextPage.Parent = AimwareTitle
NextPage.BackgroundColor3 = Color3.new(1, 1, 1)
NextPage.BackgroundTransparency = 1
NextPage.BorderSizePixel = 0
NextPage.Position = UDim2.new(0, 390, 0, 0)
NextPage.Size = UDim2.new(0, 100, 0, 25)
NextPage.Font = Enum.Font.Code
NextPage.FontSize = Enum.FontSize.Size24
NextPage.Text = "Next Page"
NextPage.TextColor3 = Color3.new(1, 1, 1)
NextPage.TextSize = 22
NextPage.TextXAlignment = Enum.TextXAlignment.Right
NextPage.MouseButton1Down:connect(function()
	if AimwareArrayPage.Visible == true then
		AimwareArrayPage.Visible = false
		AimwareGRAVPage.Visible = false
		AimwareSINKPage.Visible = false
		AimwareESPPage.Visible = true
	elseif AimwareESPPage.Visible == true then
		AimwareGRAVPage.Visible = false
		AimwareESPPage.Visible = false
		AimwareSINKPage.Visible = true
		AimwareArrayPage.Visible = false
	elseif AimwareSINKPage.Visible == true then
		AimwareGRAVPage.Visible = true
		AimwareESPPage.Visible = false
		AimwareArrayPage.Visible = false
		AimwareSINKPage.Visible = false
	else
		AimwareGRAVPage.Visible = false
		AimwareESPPage.Visible = false
		AimwareArrayPage.Visible = true
		AimwareSINKPage.Visible = false
	end
end)

AimwareESPPage.Name = "AimwareESPPage"
AimwareESPPage.Parent = AimwareTitle
AimwareESPPage.BackgroundColor3 = Color3.new(1, 1, 1)
AimwareESPPage.BackgroundTransparency = 0.5
AimwareESPPage.BorderColor3 = Color3.new(1, 1, 1)
AimwareESPPage.BorderSizePixel = 0
AimwareESPPage.Position = UDim2.new(0, 0, 0, 25)
AimwareESPPage.Size = UDim2.new(0, 500, 0, 200)
AimwareESPPage.Visible = false

ToggleESP.Name = "ToggleESP"
ToggleESP.Parent = AimwareESPPage
ToggleESP.BackgroundColor3 = Color3.new(1, 1, 1)
ToggleESP.BackgroundTransparency = 1
ToggleESP.BorderSizePixel = 0
ToggleESP.Position = UDim2.new(0, 0, 0, 5)
ToggleESP.Size = UDim2.new(0, 500, 0, 25)
ToggleESP.Font = Enum.Font.Code
ToggleESP.FontSize = Enum.FontSize.Size24
ToggleESP.Text = "Toggle ESP"
ToggleESP.TextColor3 = Color3.new(1, 1, 1)
ToggleESP.TextSize = 22
ToggleESP.MouseButton1Down:connect(function()
if ESPTOGGLE == false then
			ESPTOGGLE = true
			ESPD.Visible = false
			ESPE.Visible = true
            for i,v in pairs(game.Players:GetChildren()) do
            if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
            if v.Character:FindFirstChild('Head') then
            local bill = Instance.new('BillboardGui',v.Character.Head)
            bill.Name = "thingyye"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(2,1,2)
            bill.Adornee = v.Character.Head 
            local txt = Instance.new('TextLabel',bill)
            txt.Text = v.Name
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(1,0,1,0)
            txt.TextColor3 = v.TeamColor.Color
            end
            for a,c in pairs(v.Character:GetChildren()) do
            if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
            doit(c)
            elseif c.ClassName == "Part" and c.Transparency ~= 1 then
            doit(c)
            end
            end
            end 
            end 
            else
			ESPTOGGLE = false
			ESPD.Visible = true
			ESPE.Visible = false
			for i,v in pairs(game.Players:GetChildren()) do
			undo(v.Character)
			end
			end
end)

ESPBind.Name = "ESPBind"
ESPBind.Parent = AimwareESPPage
ESPBind.BackgroundColor3 = Color3.new(1, 1, 1)
ESPBind.BackgroundTransparency = 1
ESPBind.BorderSizePixel = 0
ESPBind.Position = UDim2.new(0, 0, 0, 35)
ESPBind.Size = UDim2.new(0, 500, 0, 25)
ESPBind.Font = Enum.Font.Code
ESPBind.FontSize = Enum.FontSize.Size24
ESPBind.Text = "Keybind"
ESPBind.TextColor3 = Color3.new(1, 1, 1)
ESPBind.TextSize = 22

AimwareGRAVPage.Name = "AimwareGRAVPage"
AimwareGRAVPage.Parent = AimwareTitle
AimwareGRAVPage.BackgroundColor3 = Color3.new(1, 1, 1)
AimwareGRAVPage.BackgroundTransparency = 0.5
AimwareGRAVPage.BorderColor3 = Color3.new(1, 1, 1)
AimwareGRAVPage.BorderSizePixel = 0
AimwareGRAVPage.Position = UDim2.new(0, 0, 0, 25)
AimwareGRAVPage.Size = UDim2.new(0, 500, 0, 200)
AimwareGRAVPage.Visible = false

ToggleGRAV.Name = "ToggleGRAV"
ToggleGRAV.Parent = AimwareGRAVPage
ToggleGRAV.BackgroundColor3 = Color3.new(1, 1, 1)
ToggleGRAV.BackgroundTransparency = 1
ToggleGRAV.BorderSizePixel = 0
ToggleGRAV.Position = UDim2.new(0, 0, 0, 5)
ToggleGRAV.Size = UDim2.new(0, 500, 0, 25)
ToggleGRAV.Font = Enum.Font.Code
ToggleGRAV.FontSize = Enum.FontSize.Size24
ToggleGRAV.Text = "Toggle Low Gravity"
ToggleGRAV.TextColor3 = Color3.new(1, 1, 1)
ToggleGRAV.TextSize = 22
ToggleGRAV.MouseButton1Down:connect(function()
	if GRAVTOGGLE == false then
			GRAVD.Visible = false
			GRAVE.Visible = true
			GRAVTOGGLE = true
			game.workspace.Gravity = 45
	else
			GRAVD.Visible = true
			GRAVE.Visible = false
			GRAVTOGGLE = false	
			game.workspace.Gravity = 196.2
		end
end)

GRAVBind.Name = "GRAVBind"
GRAVBind.Parent = AimwareGRAVPage
GRAVBind.BackgroundColor3 = Color3.new(1, 1, 1)
GRAVBind.BackgroundTransparency = 1
GRAVBind.BorderSizePixel = 0
GRAVBind.Position = UDim2.new(0, 0, 0, 35)
GRAVBind.Size = UDim2.new(0, 500, 0, 25)
GRAVBind.Font = Enum.Font.Code
GRAVBind.FontSize = Enum.FontSize.Size24
GRAVBind.Text = "Keybind"
GRAVBind.TextColor3 = Color3.new(1, 1, 1)
GRAVBind.TextSize = 22

AimwareSINKPage.Name = "AimwareSINKPage"
AimwareSINKPage.Parent = AimwareTitle
AimwareSINKPage.BackgroundColor3 = Color3.new(1, 1, 1)
AimwareSINKPage.BackgroundTransparency = 0.5
AimwareSINKPage.BorderColor3 = Color3.new(1, 1, 1)
AimwareSINKPage.BorderSizePixel = 0
AimwareSINKPage.Position = UDim2.new(0, 0, 0, 25)
AimwareSINKPage.Size = UDim2.new(0, 500, 0, 200)
AimwareSINKPage.Visible = false

ToggleSINK.Name = "ToggleSINK"
ToggleSINK.Parent = AimwareSINKPage
ToggleSINK.BackgroundColor3 = Color3.new(1, 1, 1)
ToggleSINK.BackgroundTransparency = 1
ToggleSINK.BorderSizePixel = 0
ToggleSINK.Position = UDim2.new(0, 0, 0, 5)
ToggleSINK.Size = UDim2.new(0, 500, 0, 25)
ToggleSINK.Font = Enum.Font.Code
ToggleSINK.FontSize = Enum.FontSize.Size24
ToggleSINK.Text = "Toggle Sink"
ToggleSINK.TextColor3 = Color3.new(1, 1, 1)
ToggleSINK.TextSize = 22
ToggleSINK.MouseButton1Down:connect(function()
	if SINKTOGGLE == false then
			SINKD.Visible = false
			SINKE.Visible = true
			SINKTOGGLE = true
			game.Players.LocalPlayer.Character.Humanoid.Sit = true
	else
			SINKD.Visible = true
			SINKE.Visible = false
			SINKTOGGLE = false	
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
		end
end)

SINKBind.Name = "SINKBind"
SINKBind.Parent = AimwareSINKPage
SINKBind.BackgroundColor3 = Color3.new(1, 1, 1)
SINKBind.BackgroundTransparency = 1
SINKBind.BorderSizePixel = 0
SINKBind.Position = UDim2.new(0, 0, 0, 35)
SINKBind.Size = UDim2.new(0, 500, 0, 25)
SINKBind.Font = Enum.Font.Code
SINKBind.FontSize = Enum.FontSize.Size24
SINKBind.Text = "Keybind"
SINKBind.TextColor3 = Color3.new(1, 1, 1)
SINKBind.TextSize = 22

AimwareArray.Name = "AimwareArray"
AimwareArray.Parent = Aimware
AimwareArray.BackgroundColor3 = Color3.new(1.17647, 0, 0)
AimwareArray.BackgroundTransparency = 1
AimwareArray.BorderColor3 = Color3.new(1, 1, 1)
AimwareArray.BorderSizePixel = 0
AimwareArray.Size = UDim2.new(0, 138, 0, 25)
AimwareArray.Visible = false

ESPD.Name = "ESPD"
ESPD.Parent = AimwareArray
ESPD.BackgroundColor3 = Color3.new(1, 1, 1)
ESPD.BackgroundTransparency = 1
ESPD.BorderSizePixel = 0
ESPD.Position = UDim2.new(0, 4, 0, 25)
ESPD.Size = UDim2.new(0, 200, 0, 25)
ESPD.Font = Enum.Font.Code
ESPD.FontSize = Enum.FontSize.Size24
ESPD.Text = "ESP Disabled"
ESPD.TextColor3 = Color3.new(1, 0, 0)
ESPD.TextSize = 20
ESPD.TextXAlignment = Enum.TextXAlignment.Left

ESPE.Name = "ESPE"
ESPE.Parent = AimwareArray
ESPE.BackgroundColor3 = Color3.new(1, 1, 1)
ESPE.BackgroundTransparency = 1
ESPE.BorderSizePixel = 0
ESPE.Position = UDim2.new(0, 4, 0, 25)
ESPE.Size = UDim2.new(0, 200, 0, 25)
ESPE.Visible = false
ESPE.Font = Enum.Font.Code
ESPE.FontSize = Enum.FontSize.Size24
ESPE.Text = "ESP Enabled"
ESPE.TextColor3 = Color3.new(0, 1, 0.0980392)
ESPE.TextSize = 20
ESPE.TextXAlignment = Enum.TextXAlignment.Left

AimwareTop1.Name = "AimwareTop1"
AimwareTop1.Parent = AimwareArray
AimwareTop1.BackgroundColor3 = Color3.new(1, 1, 1)
AimwareTop1.BackgroundTransparency = 1
AimwareTop1.BorderSizePixel = 0
AimwareTop1.Position = UDim2.new(0, 4, 0, 0)
AimwareTop1.Size = UDim2.new(0, 132, 0, 25)
AimwareTop1.Font = Enum.Font.Code
AimwareTop1.FontSize = Enum.FontSize.Size24
AimwareTop1.Text = "Aimware v0.6.1"
AimwareTop1.TextColor3 = Color3.new(1, 0, 0)
AimwareTop1.TextSize = 22
AimwareTop1.TextXAlignment = Enum.TextXAlignment.Left

GRAVD.Name = "GRAVD"
GRAVD.Parent = AimwareArray
GRAVD.BackgroundColor3 = Color3.new(1, 1, 1)
GRAVD.BackgroundTransparency = 1
GRAVD.BorderSizePixel = 0
GRAVD.Position = UDim2.new(0, 4, 0, 65)
GRAVD.Size = UDim2.new(0, 200, 0, 25)
GRAVD.Font = Enum.Font.Code
GRAVD.FontSize = Enum.FontSize.Size24
GRAVD.Text = "Low Gravity Disabled"
GRAVD.TextColor3 = Color3.new(1, 0, 0)
GRAVD.TextSize = 20
GRAVD.TextXAlignment = Enum.TextXAlignment.Left

GRAVE.Name = "GRAVE"
GRAVE.Parent = AimwareArray
GRAVE.BackgroundColor3 = Color3.new(1, 1, 1)
GRAVE.BackgroundTransparency = 1
GRAVE.BorderSizePixel = 0
GRAVE.Position = UDim2.new(0, 4, 0, 65)
GRAVE.Size = UDim2.new(0, 200, 0, 25)
GRAVE.Visible = false
GRAVE.Font = Enum.Font.Code
GRAVE.FontSize = Enum.FontSize.Size24
GRAVE.Text = "Low Gravity Enabled"
GRAVE.TextColor3 = Color3.new(0, 1, 0.0980392)
GRAVE.TextSize = 20
GRAVE.TextXAlignment = Enum.TextXAlignment.Left

SINKE.Name = "SINKE"
SINKE.Parent = AimwareArray
SINKE.BackgroundColor3 = Color3.new(1, 1, 1)
SINKE.BackgroundTransparency = 1
SINKE.BorderSizePixel = 0
SINKE.Position = UDim2.new(0, 4, 0, 45)
SINKE.Size = UDim2.new(0, 200, 0, 25)
SINKE.Visible = false
SINKE.Font = Enum.Font.Code
SINKE.FontSize = Enum.FontSize.Size24
SINKE.Text = "Sink Enabled"
SINKE.TextColor3 = Color3.new(0, 1, 0.0980392)
SINKE.TextSize = 20
SINKE.TextXAlignment = Enum.TextXAlignment.Left

SINKD.Name = "SINKD"
SINKD.Parent = AimwareArray
SINKD.BackgroundColor3 = Color3.new(1, 1, 1)
SINKD.BackgroundTransparency = 1
SINKD.BorderSizePixel = 0
SINKD.Position = UDim2.new(0, 4, 0, 45)
SINKD.Size = UDim2.new(0, 200, 0, 25)
SINKD.Font = Enum.Font.Code
SINKD.FontSize = Enum.FontSize.Size24
SINKD.Text = "Sink Disabled"
SINKD.TextColor3 = Color3.new(1, 0, 0)
SINKD.TextSize = 20
SINKD.TextXAlignment = Enum.TextXAlignment.Left

AimwareIntro.Name = "AimwareIntro"
AimwareIntro.Parent = Aimware
AimwareIntro.BackgroundColor3 = Color3.new(1, 1, 1)
AimwareIntro.BackgroundTransparency = 1
AimwareIntro.BorderSizePixel = 0
AimwareIntro.Position = UDim2.new(0.449999988, 4, 0.400000006, 0)
AimwareIntro.Size = UDim2.new(0, 132, 0, 25)
AimwareIntro.Visible = false
AimwareIntro.Font = Enum.Font.Code
AimwareIntro.FontSize = Enum.FontSize.Size28
AimwareIntro.Text = "Aimware"
AimwareIntro.TextColor3 = Color3.new(1, 0, 0)
AimwareIntro.TextSize = 26
AimwareIntro.TextWrapped = true

AimwareIntro2.Name = "AimwareIntro2"
AimwareIntro2.Parent = Aimware
AimwareIntro2.BackgroundColor3 = Color3.new(1, 1, 1)
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro2.BorderSizePixel = 0
AimwareIntro2.Position = UDim2.new(0.379999995, 4, 0.430000007, 0)
AimwareIntro2.Size = UDim2.new(0, 300, 0, 25)
AimwareIntro2.Visible = false
AimwareIntro2.Font = Enum.Font.Code
AimwareIntro2.FontSize = Enum.FontSize.Size24
AimwareIntro2.Text = "One Step Ahead Of The Game"
AimwareIntro2.TextColor3 = Color3.new(1, 0, 0)
AimwareIntro2.TextSize = 22
AimwareIntro2.TextWrapped = true
wait(0.3)
AimwareIntro.Transparency = 1
AimwareIntro.BackgroundTransparency = 1
AimwareIntro.Visible = true
wait(0.1)
AimwareIntro.Transparency = 0.9
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0.8
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0.7
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0.6
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0.5
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0.4
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0.3
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0.2
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0.1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro.Transparency = 0
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 1
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro2.Visible = true
wait(0.1)
AimwareIntro2.Transparency = 0.9
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.8
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.7
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.6
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.5
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.4
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.3
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.2
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.1
AimwareIntro2.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0
AimwareIntro2.BackgroundTransparency = 1
wait(2)
AimwareIntro2.Transparency = 0.1
AimwareIntro.Transparency = 0.1
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.2
AimwareIntro.Transparency = 0.2
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.3
AimwareIntro.Transparency = 0.3
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.4
AimwareIntro.Transparency = 0.4
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.5
AimwareIntro.Transparency = 0.5
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.6
AimwareIntro.Transparency = 0.6
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.7
AimwareIntro.Transparency = 0.7
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.8
AimwareIntro.Transparency = 0.8
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 0.9
AimwareIntro.Transparency = 0.9
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
wait(0.1)
AimwareIntro2.Transparency = 1
AimwareIntro.Transparency = 1
AimwareIntro2.BackgroundTransparency = 1
AimwareIntro.BackgroundTransparency = 1
Key = game.Players.LocalPlayer:GetMouse()
function EnableMENU(key)
	if (key == "=") then
	if MENUTOGGLE == false then
			AimwareTitle.Visible = true
			MENUTOGGLE = true
	else
			AimwareTitle.Visible = false
			MENUTOGGLE = false					
		end		
	end
end
Key.KeyDown:connect(EnableMENU)
function EnableSINK(key)
	if (key == SINKBind.Text) then
	if SINKTOGGLE == false then
			SINKD.Visible = false
			SINKE.Visible = true
			SINKTOGGLE = true
			game.Players.LocalPlayer.Character.Humanoid.Sit = true
	else
			SINKD.Visible = true
			SINKE.Visible = false
			SINKTOGGLE = false	
			game.Players.LocalPlayer.Character.Humanoid.Sit = false	
		end		
	end
end
Key.KeyDown:connect(EnableSINK)
function EnableGRAV(key)
	if (key == GRAVBind.Text) then
	if GRAVTOGGLE == false then
			GRAVD.Visible = false
			GRAVE.Visible = true
			GRAVTOGGLE = true
			game.workspace.Gravity = 45
	else
			GRAVD.Visible = true
			GRAVE.Visible = false
			GRAVTOGGLE = false	
			game.workspace.Gravity = 196.2		
		end		
	end
end
Key.KeyDown:connect(EnableGRAV)
function EnableARRAY(key)
	if (key == ARRAYBind.Text) then
	if ARRAYTOGGLE == false then
			AimwareArray.Visible = true
			ARRAYTOGGLE = true
	else
			AimwareArray.Visible = false
			ARRAYTOGGLE = false					
		end		
	end
end
Key.KeyDown:connect(EnableARRAY)
function EnableESP(key)
	if (key == ESPBind.Text) then
		if ESPTOGGLE == false then
			ESPTOGGLE = true
			ESPD.Visible = false
			ESPE.Visible = true
            for i,v in pairs(game.Players:GetChildren()) do
            if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
            if v.Character:FindFirstChild('Head') then
            local bill = Instance.new('BillboardGui',v.Character.Head)
            bill.Name = "thingyye"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(2,1,2)
            bill.Adornee = v.Character.Head 
            local txt = Instance.new('TextLabel',bill)
            txt.Text = v.Name
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(1,0,1,0)
            txt.TextColor3 = v.TeamColor.Color
            end
            for a,c in pairs(v.Character:GetChildren()) do
            if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
            doit(c)
            elseif c.ClassName == "Part" and c.Transparency ~= 1 then
            doit(c)
            end
            end
            end 
            end 
            else
			ESPTOGGLE = false
			ESPD.Visible = true
			ESPE.Visible = false
			for i,v in pairs(game.Players:GetChildren()) do
			undo(v.Character)
			end
			end
	end
end
Key.KeyDown:connect(EnableESP)
function doit(hey)
local t1 = Instance.new('SurfaceGui',hey)
t1.AlwaysOnTop = true
local t1g = Instance.new('Frame',t1)
t1g.Size = UDim2.new(1,0,1,0)
t1g.BackgroundColor3 = t1.Parent.BrickColor.Color
local t2 = Instance.new('SurfaceGui',hey) 
t2.AlwaysOnTop = true
t2.Face = Enum.NormalId.Right
local t2g = Instance.new('Frame',t2)
t2g.Size = UDim2.new(1,0,1,0)
t2g.BackgroundColor3 = t2.Parent.BrickColor.Color
local t3 = Instance.new('SurfaceGui',hey)
t3.AlwaysOnTop = true
t3.Face = Enum.NormalId.Left
local t3g = Instance.new('Frame',t3)
t3g.Size = UDim2.new(1,0,1,0)
t3g.BackgroundColor3 = t3.Parent.BrickColor.Color
local t4 = Instance.new('SurfaceGui',hey)
t4.AlwaysOnTop = true
t4.Face = Enum.NormalId.Back
local t4g = Instance.new('Frame',t4)
t4g.Size = UDim2.new(1,0,1,0)
t4g.BackgroundColor3 = t4.Parent.BrickColor.Color
local t5 = Instance.new('SurfaceGui',hey)
t5.AlwaysOnTop = true
t5.Face = Enum.NormalId.Top
local t5g = Instance.new('Frame',t5)
t5g.Size = UDim2.new(1,0,1,0)
t5g.BackgroundColor3 = t5.Parent.BrickColor.Color
local t6 = Instance.new('SurfaceGui',hey)
t6.AlwaysOnTop = true
t6.Face = Enum.NormalId.Bottom
local t6g = Instance.new('Frame',t6)
t6g.Size = UDim2.new(1,0,1,0)
t6g.BackgroundColor3 = t6.Parent.BrickColor.Color
end
function undo(chr)
for i,v in pairs(chr:GetChildren()) do
if v.ClassName == "Part" or v.ClassName == "MeshPart" then
for a,c in pairs(v:GetChildren()) do
if c.ClassName == "SurfaceGui" then
c:Destroy()
end
if c.ClassName == "BillboardGui" and c.Name == "thingyye" then
c:Destroy()
end
end
end
end
end
