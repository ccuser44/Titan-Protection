--[[
    Titan Protection is an antivirus plugin designed to detect and clean up malicious scripts in a Roblox development enviroment.
    Copyright © 2020 ccuser44 (ALE111_boiPNG)

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

-- // This model is here to reduce the amount of objects being scanned.

return function(Objs, OnlyScanScripts)
	local NewTable = {}
	for _, v in ipairs(Objs) do
		if OnlyScanScripts and not v:IsA("LuaSourceContainer") or v:IsA("Part") and (v.Name == "Part" or v.Name == "Torso" or v.Name == "Head" or v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "SmoothBlockModel" or v.Name == "Handle") or v:IsA("UnionOperation") and v.Name == "Union" or v.ClassName == "Model" and v.Name == "Model" or v:IsA("Humanoid") and v.Name == "Humanoid" or v:IsA("SpecialMesh") and v.Name == "Mesh" or v:IsA("BlockMesh") and v.Name == "Mesh" then
			-- Do nothing as we do not wan't to insert this object as it is 100% safe
		else
			table.insert(NewTable, v)
		end
	end
	return NewTable
end
