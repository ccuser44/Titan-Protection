--[[
    Titan Protection is an antivirus plugin designed to detect and clean up malicious scripts in a Roblox development enviroment.
    Copyright © 2020  Github@ccuser44

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

local HttpService = game:GetService("HttpService")
local StudioService = game:GetService("StudioService")

local function GetModels(Type, Id)
	local Success, Data = pcall(function()
		local Request = HttpService:GetAsync("https://inventory.rprxy.xyz/v1/users/" .. tostring(Id) .. "/inventory/" .. tostring(Type))
		local JSONdecode = HttpService:JSONDecode(Request)
		return JSONdecode.data
	end)
	if Success and Data ~= nil then
		return Data
	else
		warn(string.format("[Ti-Protection]: Could not get inventory with category with type: %s , with user id: %d , Reason: %s",
			tostring(Type),
			Id,
			tostring(Data or "pcall returned nil")
		))
		return {}
	end
end

return function()
	local StudioLocalId = StudioService:GetUserId()
	local Tbl, Tbl2 = GetModels("Plugin", StudioLocalId), GetModels("Model", StudioLocalId)
	return Tbl, Tbl2
end
