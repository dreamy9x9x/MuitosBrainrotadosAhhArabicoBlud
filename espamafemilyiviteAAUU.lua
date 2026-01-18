local svcPlayers = game:GetService("Players")
local svcStorage = game:GetService("ReplicatedStorage")

local evtInvite = svcStorage
	:WaitForChild("Remotes")
	:WaitForChild("InvitePlayerToFamily")

for attempt = 1, 100 do
	task.spawn(function()
		for _, MatemOsUrsosPolares in ipairs(svcPlayers:GetPlayers()) do
			if MatemOsUrsosPolares ~= svcPlayers.LocalPlayer then
				evtInvite:FireServer(MatemOsUrsosPolares.UserId, "Wheel")
			end
		end
	end)
end
