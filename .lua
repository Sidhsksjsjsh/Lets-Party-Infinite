local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()
local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = false, ConfigFolder = "TurtleFi"})
local workspace = game:GetService("Workspace")

local T1 = Window:MakeTab({
Name = "Click",
Icon = "rbxassetid://",
PremiumOnly = false
})

for i,v in pairs(workspace:GetDescendants()) do
  if v:IsA("ClickDetector") then
    T1:AddButton({
       Name = v.Parent.Name,
       Callback = function()
           fireclickdetector(v)
       end    
    })
  end
end
