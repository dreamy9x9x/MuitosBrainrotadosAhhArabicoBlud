local player = game.Players.LocalPlayer
local quetqtg = 1000 

local function applyGrip(tool)
	if tool:IsA("Tool") and string.find(tool.Name, "Prop") then
		tool.Grip = CFrame.new(0, quetqtg, 0)
	end
end

for _, tool in ipairs(player.Backpack:GetChildren()) do
	applyGrip(tool)
end


player.Backpack.ChildAdded:Connect(applyGrip)

player.CharacterAdded:Connect(function(character)
	character.ChildAdded:Connect(applyGrip)
end)
