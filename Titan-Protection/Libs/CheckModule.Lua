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

local MarketplaceService = game:GetService("MarketplaceService")
local StudioService = game:GetService("StudioService")

local StudioLocalId = StudioService:GetUserId()

return function(Id, ScanFunction, GetObjectsFunction, RepeatCount, IdIgnoreTable, IsDebug, SafeHashes, HashSource, SeperateMalIds, ScannerSettingsTable, BadGroups, BadUsers)
	if not IdIgnoreTable then
		warn("[Ti-Protection]: Cached table not found! , FunctionArgs: " .. string.format(
			"Id: %s, ScanFunction: %s, GetObjsFunction: %s, Repeatcount: %s, IdIgnoreTable: %s, IsDebug: %s, SafeHashes: %s, HashSource: %s, SeperateMalIds: %s, ScannerSettingsTable: %s, ScannerSTableLen: %s",
			tostring(Id), tostring(ScanFunction), tostring(GetObjectsFunction),tostring(RepeatCount), tostring(IdIgnoreTable), tostring(IsDebug), tostring(SafeHashes), tostring(HashSource), tostring(SeperateMalIds), tostring(ScannerSettingsTable), tostring(ScannerSettingsTable and #ScannerSettingsTable or 0)
		))
		print(debug.traceback())
	end
	local IsVir, IsSus, IsObf, IsLar, IsAdw = false, false, false, false, false
	local RealId = tonumber(string.match(Id,"^%d+$"))
	
	if RealId and RealId >= 1000 then -- // We check if we should scan the id.
		if not IdIgnoreTable[RealId] then
			RepeatCount += 1
			
			local info
			local Succ, Err = xpcall(function() -- // We get the info of the asset
				info = MarketplaceService:GetProductInfo(RealId)
			end, function(Err)
				warn("[Ti-Protection]: " .. "An error occured while trying to get info of rbxassetid://" .. tostring(RealId) .. " Reason:"..tostring(Err))
				print("[Ti-Protection]: " .. debug.traceback())
			end)
			
			if Succ and info and type(info) == "table" and not((game.CreatorType == Enum.CreatorType.User and info.Creator.CreatorType == "User" or game.CreatorType == Enum.CreatorType.Group and info.Creator.CreatorType == "Group") and (game.CreatorId == info.Creator.CreatorTargetId or StudioLocalId == info.Creator.CreatorTargetId)) then -- // We check if the asset can be scanned.
				if info.Creator.CreatorType == "Group" and BadGroups[info.Creator.CreatorTargetId] or info.Creator.CreatorType == "User" and BadUsers[info.Creator.CreatorTargetId] then
					IsVir, IsSus, IsObf, IsLar, IsAdw = true, true, true, true, true
					IdIgnoreTable[RealId] = {IsVir, IsSus, IsObf, IsLar, IsAdw} -- // We cache our results
				else
					if IsDebug then
						print("[Ti-Protection]: Checking for viruses: rbxassetid://"..RealId)
					end
					
					if RepeatCount > 5 then -- // We check if the module is obfuscated with a require id chain.
						IsObf = true
					else
						local Success, Error = pcall(function()
							local Objs = game:GetObjects("rbxassetid://"..tostring(RealId))
							for _, Obj in ipairs(GetObjectsFunction("Fast", Objs)) do
								if Obj then
									-- // We first set a dummy table for the cache so the script does not repeatedly scan the module.
									IdIgnoreTable[RealId] = {false, false, false, false, false}
									
									-- // We scan the descendants of the asset.
									local CheckSource, CheckObf, CheckSpace, CheckLen, CheckSnippets, CheckStructure, CheckAdware = unpack(ScannerSettingsTable)
									IsVir, IsSus, IsObf, IsLar, IsAdw = ScanFunction(Obj, CheckSource, CheckObf, CheckSpace, CheckLen, CheckSnippets, CheckStructure, CheckAdware, RepeatCount, IdIgnoreTable, SeperateMalIds, IsDebug)
									
									if IsVir or IsSus or IsObf or IsLar or IsAdw then
										if not(Obj:IsA("LuaSourceContainer") and (string.len(Obj.Source) < 400000 and SafeHashes[HashSource(Obj.Source)])) then
											if IsVir then
												if IsDebug then
													print("[Ti-Protection]: Found viruses in module: rbxassetid://"..RealId)
												end
												break
											elseif IsDebug then
												print("[Ti-Protection]: Found suspicious activity in module: rbxassetid://"..RealId)
											end
										else
											if IsDebug then
												print("[Ti-Protection]: ", Obj:GetFullName(), " was not scanned because it was whitelisted.")
											end
											IsVir, IsSus, IsObf, IsLar, IsAdw = false, false, false, false, false
										end
									end
									
									IdIgnoreTable[RealId] = {IsVir, IsSus, IsObf, IsLar, IsAdw} -- // We cache our results
								end
							end
						end, function(Error)
							if info.IsPublicDomain == false and Error:match("409") then -- // The asset is a private module
								IsObf = true
							elseif (Error:match("403") or Error:lower():match("bad request")) and info.Name:match("[Content Deleted]") then -- // Asset is terminated
								IsSus = true
							else
								warn("[Ti-Protection]: An error occured while trying to check rbxassetid://"..tostring(RealId).." for viruses. Reason "..tostring(Error))
								print("[Ti-Protection]: "..debug.traceback())
							end
						end)
					end
				end
			end
		else -- // We have already cached the state of the module. We will us the cached values.
			if IsDebug then
				print("[Ti-Protection]: Retrieving cached values from asset rbxassetid://"..tostring(RealId))
			end
			IsVir, IsSus, IsObf, IsLar, IsAdw = unpack(IdIgnoreTable[RealId])
		end
	end
	
	if RealId and not IdIgnoreTable[RealId] then -- // None of the detections returned anything. This module is safe. However we will still cache it for performance.
		IdIgnoreTable[RealId] = {false, false, false, false, false}
	end
	
	return IsVir, IsSus, IsObf, IsLar, IsAdw, IdIgnoreTable
end
