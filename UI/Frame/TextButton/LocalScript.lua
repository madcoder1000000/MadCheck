function scan(inst)
	for i,item in pairs(inst:GetDescendants()) do
		if item:IsA("ModuleScript") or item:IsA("LocalScript") or item:IsA("Script") then
			if string.find(item.Source, script.Parent.Parent.TextBox.Text) ~= nil then
				local label = Instance.new("TextButton", script.Parent.Parent.Parent.ScriptList.ScrollingFrame)
				label.Size = UDim2.new(1,0,0.05,0)
				label.Text = inst.Name.." | "..item.Name.." -Click to quarantine"
				label.BackgroundTransparency = 1
				label.TextColor3 = Color3.new(1,1,1)
				label.MouseButton1Click:Connect(function()
					if game.ServerStorage:FindFirstChild("MadCheck_quarantine") then
						item.Disabled = true
						item.Parent = game.ServerStorage.MadCheck_quarantine
					else
						local folder = Instance.new("Folder", game.ServerStorage)
						folder.Name = "MadCheck_quarantine"
					end
				end)
			end
		end
	end
end

script.Parent.MouseButton1Click:Connect(function()
	for i,item in pairs(script.Parent.Parent.Parent.ScriptList.ScrollingFrame:GetChildren()) do
		if item:IsA("TextLabel") then
			item:Destroy()
		end
	end
	scan(game.Workspace)
	scan(game.StarterGui)
	scan(game.StarterPack)
	scan(game.StarterPlayer)
	scan(game.ServerStorage)
	scan(game.ServerScriptService)
	scan(game.Teams)
	scan(game.Chat)
	scan(game.LocalizationService)
	scan(game.TestService)
	scan(game.ReplicatedStorage)
	scan(game.ReplicatedFirst)
	scan(game.Lighting)
	scan(game.Players)
	scan(game.CoreGui)
	scan(game.InsertService)
	--scan(game.CorePackages)
	scan(game.Geometry)
end)
