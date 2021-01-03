--[[
    Titan Protection is an antivirus plugin designed to detect and clean up malicious scripts in a Roblox development enviroment.
    Copyright © 2020  Swan Airways

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

--[[
  _______ _ _                _____           _            _   _
 |__   __(_) |              |  __ \         | |          | | (_)
    | |   _| |_ __ _ _ __   | |__) | __ ___ | |_ ___  ___| |_ _  ___  _ __
    | |  | | __/ _` | '_ \  |  ___/ '__/ _ \| __/ _ \/ __| __| |/ _ \| '_ \
    | |  | | || (_| | | | | | |   | | | (_) | ||  __/ (__| |_| | (_) | | | |
    |_|  |_|\__\__,_|_| |_| |_|   |_|  \___/ \__\___|\___|\__|_|\___/|_| |_|

]]

local Current_Version = "Alpha 0.0.4"

-----------------
--| Lua Check |--
-----------------

if _VERSION ~= "Luau" --[[and _VERSION ~= "Lua 5.1"]] then
	print("[Ti-Protection]: Titan Protection is not running on an intended version of lua! If you think this message is a mistake contact the creator of this plugin!")
	print("[Ti-Protection]: Current version is ")
	print(_VERSION)
	warn("[Ti-Protection]: Titan Protection is not running on an intended version of lua! If you think this message is a mistake contact the creator of this plugin!")
end

-----------------
--| Variables |--
-----------------

-- // BasicSetup
local OldPrint = print
local OldWarn = warn
print = function(...) OldPrint("[Ti-Protection]: ", ...) end
warn = function(...) OldWarn("[Ti-Protection]: ", ...) end
local PluginNameID = "DEFAULT"
local GlobalFolderName = "TitanProtection_Quarantine-" .. PluginNameID

-- // Services
local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local PluginGuiService = game:GetService("PluginGuiService")
local CoreGui = game:GetService("CoreGui")
local Debris = game:GetService("Debris")
local HttpService = game:GetService("HttpService")
local StudioService = game:GetService("StudioService")

-- // Objects
local Root = script.Parent.Parent
local Container = script.Parent
local DependanciesFolder = Root:WaitForChild("Dependancies", 25)
local LibrariesContainer = Container:WaitForChild("Libs",  25)
local Sounds = Container:WaitForChild("Sound_Storage", 25)
local UI = Container:WaitForChild("UI", 25)
local DB = Container:WaitForChild("DataBase", 25) and require(Container:WaitForChild("DataBase", 25))

-- // Tables
local Dependancies = {}
local SafeHashes = {}
local GlobalAssetCache = {}
local Libraries = {}
local HiddenClasses = {"HumanoidController", "VehicleController", "ReflectionMetadataFunctions", "ReflectionMetadataEvents", "ReflectionMetadataClasses", "ReflectionMetadataClass", "ReflectionMetadata"}

-- // PluginSettings
local SaveSettings = true
local DefaultSettings = { -- // The default settings the plugin will refer to so we can get the default settings if the plugin data won't load or does not exist.
	StartUpScan = false,
	CheckScriptSource = true,
	CheckObfuscation = true,
	QuarantineInsteadOfDelete = true,
	CheckStructure = true,
	CheckLarge = true,
	CheckWhiteSpace = true,
	CheckSnippets = true,
	CheckAdware = true,
	UseDestroy = false,
	DisableFoundScripts = true,
	CheckRequireIdsAllScripts = false,
	AutoUpdate = true, -- // If this is enabled the script will use the auto updating module. If it cannot connect to it it will fal back to the offline mode.
	DoNotScanSafe = true,
	OnlyScanScripts = false,
	IsDebug = true,
	IsUI = true, -- // If the plugin will be displayed with UI
	AssetCachePersist = true
}
local SettingsCache = {}
local Settings = setmetatable({}, { -- // The metatable function for settings so we can manage them easier.
	__index = function(_, Index) -- // This metamethod will be invoked when we index something from the settings table.
		if SettingsCache[Index] then
			return SettingsCache[Index]
		end
		if SaveSettings then
			local Success, _, Return = xpcall(function()
				return plugin:GetSetting(Index)
			end, function(Err)
				warn("An error occured while trying to get settings from" .. tostring(Index) .. ", Reason: " .. tostring(Err))
				print(debug.traceback())
			end)
			if Success then
				if Return ~= nil then
					return Return
				end
			end
		end
		if DefaultSettings[Index] then
			return DefaultSettings[Index]
		end
		return nil
	end,
	__newindex = function(_, Index, Value)
		SettingsCache[Index] = Value
		if SaveSettings then
			xpcall(function()
				plugin:GetSetting(Index)
			end, function(Err)
				warn("An error occured while trying to save settings to " .. tostring(Index) .. ", Reason: " .. tostring(Err))
				print(debug.traceback())
			end)
		end
	end
})

-- // Other values
local AutoUpdateId = 0
local Running = false -- // The value tells if the plugin is already running
local LastScanMode2 = 0 -- // This values counts up each time a script with a require id is scanned. On every 35th script it waits a bit to prevent the scanner from crashing.

-------------
--| Setup |--
-------------

if Settings.AutoUpdate == true then
	local Success, Return = pcall(function()
		return require(AutoUpdateId)
	end)
	if Success and Return and type(Return) == "table" then
		DB = Return
	end
end

local VirusNames = {unpack(DB.VirusNames)}

if Libraries then
	for _, v in ipairs(LibrariesContainer:GetChildren()) do
		if v:IsA("ModuleScript") then
			pcall(function()
				Libraries[v.Name] = require(v)
			end)
		end
	end
end

if Dependancies and DependanciesFolder then
	for _, v in ipairs(DependanciesFolder:GetChildren()) do
		if v:IsA("ModuleScript") and not v:FindFirstChild("Disabled") then
			pcall(function()
				Dependancies[v.Name] = require(v)
			end)
		end
	end
end

if Dependancies and DependanciesFolder and Dependancies["HashLib"] then
	xpcall(function()
		local HashLib = Dependancies["HashLib"]
		local PluginName = Root.Name
		PluginNameID = string.sub(HashLib.md5(PluginName), 1, 7)
		GlobalFolderName = "TitanProtection_Quarantine-" .. PluginNameID
	end, function(Err)
		warn("An error occured while trying to set plugin name ID. Using default ID. Reason: " .. tostring(Err))
		print(debug.traceback())
	end)
end

--// We sanitise the strings from the database

local DB2 = DB

local function Sanitize(Str)
	return string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(Str:lower(),"\n",""),"%$","\37\37\36"),"%%","\37\37\37\37"),"%^","\37\37\94"),"%*","\37\37\42"),"%(","\37\37\40"),"%)","\37\37\41"),"%.","\37\37\46"),"%[","\37\37\91"),"%]","\37\37\93"),"%+","\37\37\43"),"%-","\37\37\45"),"%?","\37\37\63")
end

for i, v in ipairs(DB2.VirusNames) do
	DB.VirusNames[i] = Sanitize(v)
end

for i, v in ipairs(DB2.malicious_code_snippets) do
	DB.malicious_code_snippets[i] = Sanitize(v)
end

for i, v in ipairs(DB2.Obfuscation_Detection) do
	DB.Obfuscation_Detection[i] = Sanitize(v)
end

for i, v in ipairs(DB2.Adware_Detection_Formates) do
	DB.Adware_Detection_Formates[i] = string.lower(string.gsub(v, "\n", ""))
end

for _, v in ipairs(DB.Code_Snippets_Formats) do
	table.insert(DB.malicious_code_snippets, string.lower(string.gsub(v, "\n", "")))
end

for _, v in ipairs(DB.Obfuscation_Detection_Formats) do
	table.insert(DB.Obfuscation_Detection, string.lower(string.gsub(v, "\n", "")))
end

for i, v in ipairs(DB2.StaticVirusNames) do
	DB.StaticVirusNames[i] = string.lower(v)
end

for _, v in ipairs(DB.SafeScript_Hashes) do
	SafeHashes[tostring(v)] = tostring(v)
end

for _, v in ipairs(DB.SafePluginIds) do
	GlobalAssetCache[v] = {false, false, false, false, false}
end

for _, v in ipairs(DB.SafeModelIds) do
	GlobalAssetCache[v] = {false, false, false, false, false}
end

local DB_VirusNames, DB_StaticVirusNames, DB_malicious_code_snippets, DB_Obfuscation_Detection, DB_Bad_Require_Ids, DB_Adware_Detection_Formates = DB.VirusNames, DB.StaticVirusNames, DB.malicious_code_snippets, DB.Obfuscation_Detection, DB.Bad_Require_Ids, DB.Adware_Detection_Formates

--------------------
--| UI functions |--
--------------------

local function DisplayScanResults()
	
end

local function Display_Notification(Title, Text, Type)
	if not Settings.IsUI then
		if Settings.Debug then
			print(string.format(
				"Notification not displayed because UI is disabled. Type: %s, Text: %s, Notification Type: %s",
				Title,
				Text,
				Type
			))
		end
	else
		if not CoreGui:FindFirstChild("Ti-P Notifications") then
			local Gui = Instance.new("ScreenGui", CoreGui)
			Gui.Name = "Ti-P Notifications"
			Gui.Archivable = false
			-- // Other stuff
		end
		local CurrentNotification = UI:FindFirstChild("Notification_Prompt"):Clone()
		CurrentNotification.Archivable = false
		-- // Set display stuff
		CurrentNotification.Parent = CoreGui:FindFirstChild("Ti-P Notifications")

		Debris:AddItem(CurrentNotification, 1.5 + 0)
	end
end

local function UpdateScanningStatus()
	
end

local function UpdateScannedObjs()
	
end

local function PromptUserYield(Title, Text)
	local HasClicked = false
	local Clicked = Instance.new("BindableEvent")
	-- // Get prompt UI element and clone it
	local Button1, Button2 -- // GetButtons from GUI
	local Event1, Event2 = Button1.Activated:Connect(function()
		HasClicked = true
		wait(0)
		Clicked:Fire()
	end), Button2.Activated:Connect(function()
		HasClicked = true
		wait(0)
		Clicked:Fire()
	end)
	-- // Display UI
	
	Clicked.Event:wait()
	Event1:Disconnect()
	Event2:Disconnect()
	Clicked:Destroy()
	-- // Destroy prompt
	
	return HasClicked
end

-----------------
--| Functions |--
-----------------

-- // Makes a plugin button
local function MakePluginButton(ToolBar, Text, Tooltip, IconName, ClickFunction)
	local Button = ToolBar:CreateButton(Text, Tooltip, IconName)
	Button.Click:Connect(ClickFunction)
	return Button
end

-- // This allows us to check if the pluin has access to manage scripts. This access is needed to quarantine and destroy scripts as well as scan them.
local function CheckScriptPerms()
	local Temp
	local Success, Error = pcall(function()
		Temp = Instance.new("Script", workspace.CurrentCamera)
		pcall(function()
			Temp.Name = "REMOVE ME"
		end)
		pcall(function()
			Temp.Archivable = false
		end)
		Temp.Source = "-- If you see this script then it is a test for a plugin. You can remove this."
	end)
	if Temp and typeof(Temp) == "Instance" and Temp.Parent ~= nil then
		pcall(function()
			Debris:AddItem(Temp, 5)
		end)
		pcall(function()
			Temp:Destroy()
		end)
	end
	
	return Success
end

--// The function which allows the script to set waypoints
local function MakeWaypoint(Name)
	ChangeHistoryService:SetWaypoint(Name)
end

-- // Returns a library with the set name
local function GetLib(LibName)
	return Libraries[LibName]
end

-- // Returns a dependancy with the set name
local function GetDep(LibName)
	return Dependancies[LibName]
end

-- // Hashesh the source of a script
local function HashSource(Source)
	return GetLib("GetHash")(Source, GetDep("HashLib").sha1)
end

-- // Handles the quarantine folder
local function HandleContainer()
	local Folder = game:FindFirstChild(GlobalFolderName)
	if not Folder then
		local Folder = Instance.new("Folder", game)
		Folder.Name = GlobalFolderName
	end
	return Folder
end

-- // Handles the object when it is detected
local function HandleObject(Obj, CanDisable, Detection)
	local ValueContainer = Instance.new("Folder", HandleContainer())
	ValueContainer.Name = "Malicious Object-" .. tostring(string.gsub(Obj.Name, "%z", ""))
	local OrgParent = Instance.new("ObjectValue", ValueContainer)
	OrgParent.Value = Obj.Parent
	OrgParent.Name = "OriginalParent"
	local ObjectContainer = Instance.new("Configuration", ValueContainer)
	ObjectContainer.Name = "OriginalObject"
	Obj.Parent = ObjectContainer
	if Detection ~= nil then
		local DetectionVar = Instance.new("StringValue", ValueContainer)
		DetectionVar.Value = tostring(Detection)
		DetectionVar.Name = "Detection"
	end
	if (Obj:IsA("Script") or Obj:IsA("LocalScript")) and CanDisable and Obj.Disabled == false then
		Obj.Disabled = true
		local OrgDisable = Instance.new("BoolValue", ValueContainer)
		OrgDisable.Value = false
		OrgDisable.Name = "OriginalDisable"
	end
end

-- // Inserts the hashes of the Titan Protection scripts to the whitelist
local function InsertPluginHashes()
	local ScriptHashes = {}
	table.insert(ScriptHashes, script)
	if Container:WaitForChild("DataBase", 25) then -- // Inserts the database scripts hash
		table.insert(ScriptHashes, Container:WaitForChild("DataBase", 25))
	end
	
	if Container:WaitForChild("CHANGELOG", 25) then -- // Inserts the database scripts hash
		table.insert(ScriptHashes, Container:WaitForChild("CHANGELOG", 25))
	end
	
	if Libraries then
		for _, v in ipairs(LibrariesContainer:GetChildren()) do
			if v:IsA("ModuleScript") then
				table.insert(ScriptHashes, v)
			end
		end
	end
	
	if Dependancies and DependanciesFolder then
		for _, v in ipairs(DependanciesFolder:GetChildren()) do
			if v:IsA("ModuleScript") and not v:FindFirstChild("Disabled") then
				table.insert(ScriptHashes, v)
			end
		end
	end
	
	for _, v in ipairs(ScriptHashes) do -- // Hashes all of the desired scripts and inserts the hashes in the hash table.
		SafeHashes[tostring(HashSource(v.Source))] = tostring(HashSource(v.Source))
	end
end

-- // We test if HTTP service works
local function TestHTTP()
	local Success, Error = pcall(function()
		HttpService:GetAsync("https://inventory.rprxy.xyz/")
	end)
	if Settings.IsDebug and not Success and not Error:match("Http requests are not enabled. Enable via game settings") then
		warn("While trying to check for HTTP request an unexpected error happened :" .. tostring(Error) .. " . Maybe the site is down? If you belive this is a mistake contact the plugin creator.")
		print(debug.traceback())
	end
	return Success
end

-- // Main function for scanning objects
local function ScanObj(Obj, CheckSource, CheckObf, CheckSpace, CheckLen, CheckSnippets, CheckStructure, CheckAdware, RepeatCount, CachedIds, SeperateMalIds, IsDebug)
	local IsVirus = false
	local IsSuspicious = false
	local IsObfuscated = false
	local IsTooMuchWhitespace = false
	local IsAdware = false
	local ObjName = string.lower(Obj.Name)
	
	-- // This is the part which checks objects with suspicious structure
	if CheckStructure then
		if Obj.ClassName == "Fire" and Obj.Enabled == false and ObjName == "fire" and Obj.Heat == 25 and Obj.Size == 30 then -- /// We check if the object is a fire spread fire instance. All of them have these exact values so we won't get any false flags.
			if Obj:FindFirstChildOfClass("Script") and (Obj:FindFirstChildOfClass("Script").Name == "Spread" or Obj:FindFirstChildOfClass("Script").Name == "Script") then -- // We check if it has a spread script
				IsVirus = true
			else
				IsSuspicious = true
			end
		elseif Obj:IsA("JointInstance") and not Obj.Part1 and not Obj.Part0 and Obj:FindFirstChildOfClass("Script") then -- // This could be a possible weld virus
			IsSuspicious = true
		elseif HiddenClasses[Obj.ClassName] and Obj:FindFirstChildOfClass("Script") then -- // This id definetly a virus which tries to hide itself. Likely the "RopackVirus"
			IsVirus = true
		end
	end
	
	-- // We check if the object is included in the static name blacklist or it contains string from the virus names list
	if not IsVirus then
		for _, Name in ipairs(DB_StaticVirusNames) do
			if ObjName == Name then
				if IsDebug then
					print("VName ", Name)
				end
				IsVirus = true
				IsSuspicious = true
				break
			end
		end
	end
	if not IsVirus then
		for _, Name in ipairs(DB_VirusNames) do
			if string.match(ObjName, Name) then
				if IsDebug then
					print("VName ", Name)
				end
				IsVirus = true
				IsSuspicious = true
				break
			end
		end
	end
	
	-- // This checks the scripts source if it is malicious
	if CheckSource and IsVirus == false and Obj:IsA("LuaSourceContainer") then
		local ObjSource = Obj.Source
		if CheckLen and string.len(ObjSource) > 420000 then -- We check if the script is too long
			IsSuspicious = true
			IsTooMuchWhitespace = true
			if CheckSnippets then
				IsVirus = true
			end
		else
			local src = string.gsub(string.lower(ObjSource), "\n", "")
			local BadstringCount = 0
			
			for _, Str in ipairs(DB_VirusNames) do -- // We check if the script contains virus names.
				if string.match(src, Str) then
					if IsDebug then
						print(Str)
					end
					IsSuspicious = true
					BadstringCount = BadstringCount + 1
					if BadstringCount >= 4 then
						IsVirus = true
						break
					end
				end
			end
			
			if CheckSnippets and IsVirus == false then -- // We check if the script contains malicious code snippets.
				local SnippetCount = 0
				if not SeperateMalIds or string.match(src, "require") or string.match(src, "fenv") or string.match(src, "marketplace") or string.match(src, "teleport") --[[or string.match(src, "insert")]] then
					for I, Str in ipairs(DB_Bad_Require_Ids) do
						if string.match(src, Str) then
							if IsDebug then
								print(Str)
							end
							SnippetCount = SnippetCount + 1
							IsSuspicious=true
							if SnippetCount >= 1 and BadstringCount >= 1 then
								IsVirus = true
								break
							elseif SnippetCount >= 3 then
								IsVirus = true
								break
							end
						end
					end
					LastScanMode2 = LastScanMode2 + 1 -- // This is here so the plugin does not crash
					if LastScanMode2 % 50 == 3 then
						wait(0)
					end
				end
				for I, Str in ipairs(DB_malicious_code_snippets) do
					if string.match(src, Str) then
						if IsDebug then
							print(Str)
						end
						SnippetCount = SnippetCount + 1
						IsSuspicious=true
						if SnippetCount >= 1 and BadstringCount >= 1 then
							IsVirus = true
							break
						elseif SnippetCount >= 3 then
							IsVirus = true
							break
						end
					end
				end
			end
			
			if IsVirus == false and CheckObf then -- //  We check if the script contains obfuscation.
				for I, Str in ipairs(DB_Obfuscation_Detection) do
					if string.match(src, Str) then
						if IsDebug then
							print(Str)
						end
						IsObfuscated = true
						if IsSuspicious then
							IsVirus = true
						end
						break
					end
				end
			end
			
			if CheckSpace and IsVirus == false then -- // We check if the script has too much whitespace.
				if string.len(ObjSource) > 7250 and (string.len(string.gsub(ObjSource, "%s", "")) / string.len(ObjSource)) < .45 then
					IsTooMuchWhitespace = true
					if IsSuspicious == true then
						IsVirus = true
					elseif IsObfuscated == true then
						IsSuspicious = true
					end
				end
			end
			
			if IsVirus == false and CheckAdware then -- // We check if the script contains adware.
				for I, Str in ipairs(DB_Adware_Detection_Formates) do
					if string.match(src, Str) then
						if IsDebug then
							print(Str)
						end
						IsAdware = true
						if IsSuspicious or IsTooMuchWhitespace or IsObfuscated then
							IsVirus = true
						end
						break
					end
				end
			end
			
			-- // We check if a require id is malicious.
			if IsVirus == false then
				local NewSrc = string.gsub(src, "%s", "")
				repeat
					local First, Last = string.find(NewSrc, "require%b()")
					if First and Last then
						if string.sub(NewSrc, First, Last) ~= "require()" then
							
							local Id = string.sub(NewSrc, First + 8, Last - 1)
							NewSrc = string.sub(NewSrc, Last + 1)
							
							if not string.match(Id, "[\"\']") then
								if IsDebug then
									print("Titan protection found require with id ", Id)
								end
								
								if string.match(Id, "[%%%-%+%*/%^%-]") or string.match(Id, "math%.%a+") or string.match(Id, "0x%x%x") or string.match(Id, "[%d%.]+e%d") then -- // We check if the require id is obfuscated. A lot of new backdoors do this.
									IsObfuscated = true
									if IsSuspicious then
										IsVirus = true
									end
								elseif string.len(Id) >= 3 and string.match(Id, "^%d+$") and GetLib("CheckModule") and GetLib("ScanObjectsGet") then -- // We scan the id for malicious content
									local IsVir, IsSus, IsObf, IsLar, IsAdw = GetLib("CheckModule")(Id, ScanObj, GetLib("ScanObjectsGet"), RepeatCount, CachedIds, IsDebug, SafeHashes, HashSource, SeperateMalIds, {CheckSource, CheckObf, CheckSpace, CheckLen, CheckSnippets, CheckStructure, CheckAdware})
									local Detected = IsVir or IsSus or IsObf or IsLar or IsAdw
									
									if Detected then
										IsVirus, IsSuspicious, IsTooMuchWhitespace, IsObfuscated, IsAdware = IsVirus or IsVir, IsSuspicious or IsSus, IsTooMuchWhitespace or IsLar, IsObfuscated or IsObf, IsAdware or IsAdw
										if not IsVirus then
											if not IsSuspicious and IsTooMuchWhitespace and IsObfuscated then
												IsSuspicious = true
											elseif IsSuspicious and (IsTooMuchWhitespace or IsObfuscated) then
												IsVirus = true
												break
											end
											if IsAdware and (IsSuspicious or IsObfuscated or IsTooMuchWhitespace) then
												IsVirus = true
												break
											end
										end
									end
								end

							end
							
						else
							NewSrc = string.sub(NewSrc, Last + 1)
						end
					end
				until not string.match(NewSrc, "require%b()")
			end
			
		end
	end
	return IsVirus, IsSuspicious, IsObfuscated, IsTooMuchWhitespace, IsAdware
end

-- // Scan malicious plugins without HTTP permissions.
local function ScanPluginsNoHTTP()
	local Success, _, Return = xpcall(function()
		local BadPlugins = GetLib("PluginScanner")(DB.MaliciousPluginsIds)
		if #BadPlugins > 0 then
			for _, v in ipairs(BadPlugins) do
				if v then
					print("Malicious plugin found : " .. "https://www.roblox.com/library/" .. tostring(v) .. "/ . Please uninstall it from the roblox studio and remove it from your Roblox inventory.")
				end
			end
		else
			print("No malicious plugins found! :)")
		end
		return BadPlugins
	end, function(Error)
		warn("An error occured while trying to scan plugins with non HTTP method. Error:", Error)
	end)
	
	if Success and type(Return) == "table" then
		return Return
	else
		return {}
	end
end

-- // Handles the scanning of a table of assets.
local function ScanAssets(Assets, Type, CachedIds, IsDebug)
	local BadAssets = {}
	local CheckModule =  GetLib("CheckModule")
	local CheckSource, CheckObf, CheckSpace, CheckLen, CheckSnippets, CheckStructure, CheckAdware = Settings.CheckScriptSource, Settings.CheckObfuscation, Settings.CheckWhiteSpace, Settings.CheckLarge, Settings.CheckSnippets, Settings.CheckStructure, Settings.CheckAdware
	
	if Settings.IsDebug then
		print("Check Module function is :", CheckModule, "ScanObjectsGet function is", GetLib("ScanObjectsGet"))
	end
	
	for _, v in ipairs(Assets) do
		local IsVir, IsSus, IsObf, IsLar, IsAdw = CheckModule(tostring(v), ScanObj, GetLib("ScanObjectsGet"), 0, CachedIds, IsDebug, SafeHashes, HashSource, Settings.CheckRequireIdsAllScripts, {CheckSource, CheckObf, CheckSpace, CheckLen, CheckSnippets, CheckStructure, CheckAdware})
		local Detected = IsVir or IsSus or IsObf or IsLar or IsAdw
		if Detected then
			table.insert(BadAssets, v)
		end
	end
	
	if #BadAssets > 0 then
		for _, v in ipairs(BadAssets) do
			if v then
				print(string.format(
					"Malicious %s found : https://www.roblox.com/library/%d/. %s",
					tostring(Type),
					v,
					Type == "Plugin" and "Please uninstall it from the Roblox studio and remove it from your Roblox inventory." or "Please remove it from your inventory and from your games."
				))
			end
		end
	else
		print("No malicious " .. tostring(Type) .. "s found! :)")
	end
	return BadAssets
end

-- // Main function to handle scanning of inventory
local function ScanInventory(CachedIds, IsDebug)
	local PluginAssets, InventoryAssets = GetLib("GetInventoryAssets")()
	return ScanAssets(PluginAssets, "Plugin", CachedIds, IsDebug), ScanAssets(InventoryAssets, "Model", CachedIds, IsDebug)
end

-- // Main function for scanning
local function Scan(ScanType, CanAffect, Obj)
	
	UpdateScanningStatus("Initializing ...")
	-- // We need to have the user give us the permissions to inject scripts.
	if not CheckScriptPerms() then
		warn("Titan Protection doesn't have permissions to inject scripts. This is to so it can quarantine them. Please allow Ti-Protection to inject scripts by clicking allow or in the settings and allowing it there. Aborting ...")
		Display_Notification("Please allow script injection", "Titan Protection doesn't have permissions to inject scripts. This is to so it can quarantine them. Please allow Ti-Protection to inject scripts by clicking allow or in the settings and allowing it there. Aborting ...", "Error")
		return
	end
	
	print("Scan Started")
	
	local StartTick = os.clock()
	local OrgCollected = gcinfo()
	local BadObjects = 0
	-- // We store the settings in a variable so we don't have to constantly index them.
	local CheckSource, CheckObf, CheckSpace, CheckLen, CheckSnippets, CheckStructure, CheckRequireIdsAllScripts, CheckAdware, IsDebug = Settings.CheckScriptSource, Settings.CheckObfuscation, Settings.CheckWhiteSpace, Settings.CheckLarge, Settings.CheckSnippets, Settings.CheckStructure, Settings.CheckRequireIdsAllScripts, Settings.CheckAdware, Settings.IsDebug
	local CachedIds = Settings.AssetCachePersist == true and GlobalAssetCache or {}
	local BadPluginIds, BadInventoryIds = {}, {}
	
	if IsDebug == true then
		local Success, Rblx = pcall(version)
		print(string.format("Titan Protection scan was started with debug mode on. ~ Version: %s , Rblx Build: %s , PluginNameID: %s , ContainerName: %s", Current_Version, Success and Rblx or "CANNOT GET ROBLOX VERSION", PluginNameID, Root.Name))
	end
	UpdateScanningStatus("Scanning ...")
	
	if ScanType:lower() == "full" then -- // We scan all the malicious plugins.
		if TestHTTP() then
			BadPluginIds, BadInventoryIds = ScanInventory(CachedIds, IsDebug)
		elseif Settings.IsUI == false then
			warn("Could not use HTTP service to scan the plugins. Please allow the plugin to connect to https://inventory.rprxy.xyz/. Using backup method for scanning. Note this will take much longer.")
			BadPluginIds = ScanPluginsNoHTTP()
		else
			if PromptUserYield("Please allow to connect to HTTP Service", "") and wait() and TestHTTP() then
				BadPluginIds, BadInventoryIds = ScanInventory(CachedIds, IsDebug)
			else
				warn("Could not use HTTP service to scan the plugins. Please allow the plugin to connect to https://inventory.rprxy.xyz/. Using backup method for scanning. Note this will take much longer.")
				BadPluginIds = ScanPluginsNoHTTP()
			end
		end
	end
	
	local ScanObjs = Obj and GetLib("ScanObjectsGet")(ScanType, {Obj}) or GetLib("ScanObjectsGet")(ScanType) -- // We get the objects we are going to scan trough.
	
	if Settings.DoNotScanSafe == true then
		ScanObjs = GetLib("RemoveSafeObjs")(ScanObjs, Settings.OnlyScanScripts)
	end
	
	for i, Object in ipairs(ScanObjs) do
		if not Object:IsDescendantOf(HandleContainer()) then
			if i % 98304 == 2048 then -- // We have this here to introduce a bit of wait time so the plugin does not crash.
				wait(0)
			end
			-- // We check if the object is malicious.
			local IsVirus, IsSus, IsObf, IsLar, IsAdw = ScanObj(Object, CheckSource, CheckObf, CheckSpace, CheckLen, CheckSnippets, CheckStructure, CheckAdware, 0, CachedIds, CheckRequireIdsAllScripts, IsDebug)
			if IsVirus or IsSus or IsObf or IsLar or IsAdw then -- // If it got tagged we iniate action on it.
				if not (Object:IsA("LuaSourceContainer") and (string.len(Object.Source) < 400000 and SafeHashes[HashSource(Object.Source)])) then -- // We check if the object is safe.
					local Detection =  (IsVirus and "Virus" or IsSus and "Suspicious" or IsObf and "Obfuscated" or IsLar and "Too much whitespace" or IsAdw and "Adware")
					print(Object:GetFullName(), " Detection: ", Detection)
					if CanAffect then
						BadObjects = BadObjects + 1
						if Settings.Quarantine ~= false then
							HandleObject(Object, Settings.DisableFoundScripts, Detection)
						else
							if Settings.UseDestroy then
								Obj:Destroy()
							else
								Obj.Parent = nil
							end
						end
					end
				elseif IsDebug then
					print(Object:GetFullName(), " was not scanned because it was whitelisted.")
				end
			end
		end
	end
	
	UpdateScanningStatus("Scan complete!")
	print(string.format(
		"Scan Complete - Took: %d seconds - %s garbage collected: %d kilobytes - Detected objects: %d",
		math.floor(os.clock() - StartTick),
		_VERSION,
		gcinfo() - OrgCollected,
		BadObjects
	))
	
	return BadPluginIds, BadInventoryIds
end

-- // Main function to handle the main Scan function
local function InitScan(Type, CanAffect)
	if Scanning == false then
		Scanning = true
		ChangeHistoryService:SetWaypoint("Titan Protection: Start " .. tostring(Type):lower() .. " scan")
		local Success, _, Return = xpcall(Scan, function(ScanError)
			warn("An error occured while trying to make a scan! Reason: " .. tostring(ScanError))
			print(debug.traceback())
		end, Type, CanAffect)
		ChangeHistoryService:SetWaypoint("Titan Protection: Finnish " .. tostring(Type):lower() .. " scan")
		Scanning = false
	else
		warn("Cannot start a scan while an other scan is running! Aborting ...")
		if Settings.IsDebug then
			print(debug.traceback())
		end
		Display_Notification("Another scan is already running!", "Titan Protection cannot start a scan while another scan is already running. Please wait until it has finnished or stop it.", "Info")
	end
end

------------
--| Init |--
------------

Scanning = false

-- // Main init function
local function init()
	if Running == false then
		if LibrariesContainer and DB then
			Running = true
			InsertPluginHashes()
			OldPrint([[[Ti-Protection]: Titan Protection  Copyright © 2020  Swan Airways
    This program comes with ABSOLUTELY NO WARRANTY; for details see the `LISENCE' file inside the plugin folder.
    This is free software, and you are welcome to redistribute it
    under certain conditions; for details see the `LISENCE' file inside the plugin folder.]])
			local name = "|| Titan Protection ||"
			local toolbar = plugin:CreateToolbar(name)
			local FastScanButton = MakePluginButton(
				toolbar,
				"Fast Scan",
				"Perform a fast antivirus scan on your game. It is advised that you select the full option.",
				"rbxassetid://195998819",
				function()
					InitScan("Fast", true)
				end
			)
			local FullScanButton = MakePluginButton(
				toolbar,
				"Full Scan",
				"Perform a fast antivirus scan on your game. It is advised that you select the full option.",
				"rbxassetid://195998819",
				function()
					InitScan("Full", true)
				end
			)
			if Settings.StartUpScan == true then
				if Settings.IsDebug then
					debug.profilebegin("Titan Protection: Automatic scan")
				end
				Scanning = true
				ChangeHistoryService:SetWaypoint("Titan Protection: Start automatic scan")
				xpcall(Scan, function(ScanError)
					warn("An error occured while trying to make a scan! Reason: " .. tostring(ScanError))
					print(debug.traceback())
				end, "Fast", true)
				ChangeHistoryService:SetWaypoint("Titan Protection: Start automatic scan")
				Scanning = false
				if Settings.IsDebug then
					debug.profileend()
				end
			end
		else
			error("[Ti-Protection]: Some core assets are missing! Titan protection cannot continue running.")
		end
	end
end

-- // We check if the plugin can run to prevent it running in situations where it is not supposed to.
if plugin and RunService:IsStudio() then
	init()
else
	error("[Ti-Protection]: Titan Protection cannot run while not being a plugin!")
end
