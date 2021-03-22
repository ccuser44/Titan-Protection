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

local PluginGuiService = game:GetService("PluginGuiService")
local _, RBLXPluginGui = pcall(function()
	return game:GetService("RobloxPluginGuiService")
end)
local RobloxPluginGuiService = typeof(RBLXPluginGui) == "Instance" and RBLXPluginGui or PluginGuiService
local CoreGui = game:GetService("CoreGui")

local function IsAService(Obj)
	if Obj == game then
		return true
	end
	
	local Success, Data = pcall(function()
		return game:GetService(Obj.ClassName)
	end)
	
	return Success and typeof(Data) == "Instance"
end

local function RobloxLocked(Obj)
	return not pcall(function()
		return Obj.GetFullName(Obj)
	end)
end

local function InsertDescedants(Obj,Tbl)
	for _, v in ipairs(Obj:GetDescendants()) do
		if not RobloxLocked(v) and not v:IsA("Terrain") and not v:IsDescendantOf(CoreGui) and not v:IsDescendantOf(PluginGuiService) and not v:IsDescendantOf(RobloxPluginGuiService) and not IsAService(v) then
			table.insert(Tbl, v)
		end
	end
end

local function GetDescendantsSelection(Selec)
	local Tbl = {}
	for _, MasterObj in ipairs(Selec) do
		if MasterObj and typeof(MasterObj) == "Instance" and not RobloxLocked(MasterObj) and not MasterObj:IsDescendantOf(CoreGui) and not MasterObj:IsDescendantOf(PluginGuiService) and not MasterObj:IsDescendantOf(RobloxPluginGuiService) and not IsAService(MasterObj)  and not MasterObj:IsA("Terrain") then
			table.insert(Tbl, MasterObj)
			InsertDescedants(MasterObj, Tbl)
		end
	end
	return Tbl
end

local function GetAllObjects()
	local Tbl = {}
	for _, v in ipairs(game:GetDescendants()) do
		if v and not RobloxLocked(v) and not v:IsDescendantOf(CoreGui) and not v:IsDescendantOf(PluginGuiService) and not v:IsDescendantOf(RobloxPluginGuiService) and not IsAService(v) and not v:IsA("Terrain") then
			table.insert(Tbl, v)
		end
	end
	return Tbl
end

return function(Type,Selec)
	if Selec and type(Selec)== "table" then
		return GetDescendantsSelection(Selec)
	elseif Type:lower() == "fast" then
		local Tbl = {}
		InsertDescedants(workspace, Tbl)
		InsertDescedants(game:GetService("ServerScriptService"), Tbl)
		InsertDescedants(game:GetService("Debris"), Tbl)
		InsertDescedants(game:GetService("JointsService"), Tbl)
		InsertDescedants(game:GetService("StarterPlayer"), Tbl)
		InsertDescedants(game:GetService("InsertService"), Tbl)
		InsertDescedants(game:GetService("StarterPack"), Tbl)
		InsertDescedants(game:GetService("TestService"), Tbl)
		InsertDescedants(game:GetService("TextService"), Tbl)
		return Tbl
	else
		return GetAllObjects()
	end
end
