-- Create a new toolbar section titled "Custom Script Tools"
local toolbar = plugin:CreateToolbar("MadCheck")
local ui = script.Parent.UI

-- Add a toolbar button named "Create Empty Script"
local newScriptButton = toolbar:CreateButton("Scan scripts", "Check scripts for a certain text.", "rbxassetid://4458901886")

newScriptButton.Click:Connect(function()
	if ui.Parent == script.Parent then
		ui.Parent = game.CoreGui
	else
		ui.Parent = script.Parent
	end
end)
