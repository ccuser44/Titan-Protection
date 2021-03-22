--[[
    Titan Protection is an antivirus plugin designed to detect and clean up malicious scripts in a Roblox development enviroment.
    Copyright © 2020  Github@ccuser44 (ALE111_boiPNG)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

local InsertService = game:GetService("InsertService")
local RunService =  game:GetService("RunService")
local Hearbeat = RunService.Heartbeat


-- // Plugin Scanner func \\ --

return function(KnownMaliciousPluginsIDs)
	local Tab = {}-- Container
	for  i, Id in ipairs(KnownMaliciousPluginsIDs) do -- Iterate trough the malicious plugin list!
		local Obj
		local succ, err = pcall(function()
			Obj = InsertService:LoadAsset(Id)--Should error if user doesn't have the plugin!
			return true
		end)
		pcall(function()
			Obj:Destroy()
			Obj = nil
		end)
		if succ and (Obj and Obj ~= nil) then
			warn("[Ti-Protection]: The plugin rbxassetid://"..tostring(Id).." was not cleared properly. Reason : {"..tostring(err).."} Force clearing all descendants. Some viruses might be left behind yikes...")
			print("[Ti-Protection]: "..debug.traceback())
			pcall(function()
				for _, Delete in ipairs(Obj:GetDescendants()) do
					pcall(function()Delete:Destroy()end)
				end
			end)
		end
		if succ and not err then -- If the user has the plugin
			table.insert(Tab, Id)
		end
		if i % 64 == 4 then
			Hearbeat:Wait()
		end
	end
	return Tab
end
