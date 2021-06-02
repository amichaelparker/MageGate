-- ====================================================================================================== --
------------------------------------------------MageGate----------------------------------------------------
-- ====================================================================================================== --
-- Written by: Endar_Ren																				  --
-- ====================================================================================================== --
----------------------------------------------Change History------------------------------------------------
-- ====================================================================================================== --
-- Version 1.1 Changes 8/25/2010																		  --
-- *  Fixed use of addon when a target or a group member is casting a portal.							  --
-- *  Corrected GateGroup function so that the Party channel is used outside of an instance.			  --
-- *  Corrected spelling error:  "Dailing".																  --
-- ====================================================================================================== --							
-- Version 1.2 Changes 10/5/10																			  --
-- *  Fixed the nothing happening in Party group type. (I think)										  --
-- ====================================================================================================== --
-- Version 1.3 Changes 10/13/2010																		  --
-- *  Now usable in 4.0.1.																				  --
-- ====================================================================================================== --
-- Version 1.4 Changes 11/3/2010																		  --
-- *  Add in Slash Command to turn the addon on and off. (Does not disable or enable the addon)			  --
-- ====================================================================================================== --
-- Version 1.4.1 Changes 11/18/2010																		  --
-- *  Added Confirm Summons event and "Incoming traveller" message.  Need to test.	FAILED				  --
-- *  Changed GateGroup to use number in the party to see if you are alone.	Need to test.  FAILED		  --
-- *  Added version number field.																		  --
-- ====================================================================================================== --
-- Version 1.4.2  Changed 1/3/2011																		  --
-- * Adding in sound effects.  Sounds given to me by Ricardo58.  Thank you.								  --
-- ====================================================================================================== --
-- Version 1.4.3 Changed 4/26/2011																		  --
-- * TOC version number changed to 40100.																  --
-- ====================================================================================================== --
-- Version 2 Changed 7/1/2011																			  --
-- * TOC version number changed to 40200.																  --
-- * Ace3 Library implemented.																		 	  --
-- * New Slash commands:  sfx & autosum.																  --
-- * New Sound Effect for summon																		  --
-- * Stargate Atlantis Dialing abort sound effect option added.											  --
-- ====================================================================================================== --
-- Version 2.1 Changed 3/5/2012																			  --
-- * TOC AUTOSUMM saved variable renamed to self.db.profile.AutoSumm.									  --
-- * self.db.profile.AutoSumm is set to false by default now.								    		  --
-- * Fixed get for abortfx to actually return self.db.profile.AbortStyle.								  -- 
-- ====================================================================================================== --
-- Version 3.0 Changed 5/2/2012																			  --
-- * Changes made by Daimanu.																			  --
-- * Portal identification method changed to deal with other languages.									  --
-- * Chevron count up added, with customizable chevron number range.									  --
-- *  French translation added.																			  --
-- ====================================================================================================== --
--  Version 3.1 Changed 5/17/2012																		  --
--  *  Added option to disable the chevron count text.													  --
--  *  Added sound effects of ring turning start and continue turning.									  --
-- ====================================================================================================== --
--	Version 6.0 Changed 6/12/2012																		  --
--	*	Added play command to have sound effects play on request.										  --
--	**		play command without value will list the names of all the sound effects.					  --
--	*	Changed self.db.profile.SoundFx to an integer:  0 =off, 1=on, 2 = on &							  --
--	*    master (will be heard when WoW sound off.														  --	
--	*	Added caster command to allow player to toogle whether portals casted by others will trigger fx.  --
--	*	Hooks added for detection of using any portal.													  --
--	*	SG exit sound fx added.																			  --
--	*	Added Astrolabe library.																		  --
--  *   Table of the IDs of all teleport spells.														  --
--  *   Portal Tracking added on minimap.																  --
--  *   UI Added.																						  --
--  *   Added Star Gate:Atlantis Ring turning sound.                                                      --
--  *   self.db.profile.RingTurning value holds which ring turning to use.  "sg1" or "sga".               --
--  *   self.db.profile.TeleRing for basic teleport sfx on/off.										      --
--  *   Chevron count fixed.																			  --
--  *   Moved all saved variables into an AceDB.														  --
-- ====================================================================================================== --
--  Version 7 changes.																					  --
--  *	Completely moved saved variables to AceDB.														  --
--	*	Switched to Configuration window in Interface.													  --
--	*	Made it so that each teleport and portal can have different sounds.								  --
--	*	Modified database to have each teleport and portal setting.										  --
--	*	Added StarGate Universe gate sounds.															  --
--	*	Added Asguard Teleport sound.																	  --
--	*	Added Star Trek TOS Transporter sound.															  --
-- ====================================================================================================== --
--	Version 7.1 changes. 8/21/2012+																	      --
--  *	Minimap icons of portals can now be hidden and shown.										      --
--	*	AcceptBattlefieldPort has been hooked for BG Teleport effect.									  --
--	*	BGTeleport table added to database.																  --
--	*	Modified the portalID table be have tables with a name and a continent number.					  --
-- ====================================================================================================== --
--	 Version 7.2 changes.  8/30/12																		  --
--	*	Fixed portal watcher?																			  --
--	*	Testing StopSound.																				  --
--	*	Removed following functions:																	  --
--	**		MageGate:ChangeAbortSFX.																	  --
--	**		MageGate:SoundEffects																		  --
--	**		MageGate:AutoSummon																			  --
--	*	Removed following database elements:															  --
--	**		AbortStyle																					  --
--	**		RingTurning																					  --
-- ====================================================================================================== --
--	Version 7.3.1																						  --
--	*	Added Lorewalker's Lodestone to localization as LORESTONE.  Its spell ID was added to			  --
--			teleportsID as 126956.																		  --
--																										  --
-- ====================================================================================================== --
--	Verson 7.4.1																						  --
--	* Fixed compatibility bug with Sexymaps.  Notified by Cleopandra on Curse.							  --
-- ====================================================================================================== --
--	Version 7.4.2																						  --
--	10/18/2012																							  --
--	*  Added teleport and portal for Vale of Eternal Blossoms.											  --
-- ====================================================================================================== --
--	Version 7.4.3																						  --
--	11/29/2012																							  --
--	*  Modified TOC for 5.1.																			  --
--	*  Added INSTANCE_CHAT for gategroup function for groups in an instance.							  --
--	*  Added Shard Portals as a new group of portals??													  --
-- ====================================================================================================== --
--	Version 7.4.4																						  --
--	1/11/2013																							  --
--	*	Added Ancient Teleport and Portal: Dalaran														  --
-- ====================================================================================================== --
--	Version 7.4.7																						  --
--	3/25/2013																							  --
--	*	Added Kirin Tor Beacon
--	*	Added Sunreaver Beacon
--	*	Added The Schools of Arcane Magic - Mastery														  --
-- ====================================================================================================== --
--	Version 7.5																							  --
--	8/7/2013																							  --
--	*	Added icon for Ancient Dalaran Portal															  --
--	*	Added honest option on whether to say you are dialing Ancient Dalaran or not.					  --
-- ====================================================================================================== --
-- ====================================================================================================== --
--	Version 8																						  --
--	12/29/2015																						  --
--	*	Added Admiral's Compass															  --
--	*	Fixed portal dialing sequence.					  --
-- ====================================================================================================== --
--	Version 9																						  --
--	9/24/2016																						  --
--	*	Added new library.				  --
-- ====================================================================================================== --
--  Version 9.1
--  10/23/2018
-- Updated version number.
-- Removed spell name and spell rank from events.
-- Updated libraries.
--	Added BFA Teleports and Portals.
-- ====================================================================================================== --
local G						= getfenv(0)
local protX, protY			= nil,nil;
MageGate					= LibStub("AceAddon-3.0"):NewAddon("MageGate","AceConsole-3.0","AceComm-3.0", "AceEvent-3.0", "AceTimer-3.0","AceHook-3.0")
local L						= LibStub("AceLocale-3.0"):GetLocale("MageGate")

local HBD					= LibStub("HereBeDragons-2.0")
local HBDpin				= LibStub("HereBeDragons-Pins-2.0")
local settingMenu			= LibStub("AceConfigDialog-3.0")
local AceConfig				= LibStub("AceConfig-3.0")
-- ========================================================================================================================================================= --
--  Fields
-- ========================================================================================================================================================= --
--local ringCount				= 0;
local tooltip				= CreateFrame("GameTooltip", "MGTooltip", UIParent, "GameTooltipTemplate")
tooltip.lines				= {}
local channeling			= false;
local goingThroughPortal	= false
local openPortalList		= {} --Used to store opened portals for tracking.
local ActiveEffect			= {}
local EndEffectConditions	= {}
local DHDScroll			= nil
local portalButtons = {}
local glyphButtons = {}
local currentPortal = 0
local GateSpinTimer = nil
-- ========================================================================================================================================================= --
-- Teleport
-- ========================================================================================================================================================= --
local teleportsID = {}	
	teleportsID[120145]		= L["Ancient_Teleport:_Dalaran"]
	teleportsID[556]		= L["Astral_Recall"]
	teleportsID[48020]		= L["Demonic_Circle"]	
	teleportsID[53140]		= L["Teleport:_Dalaran"]
	teleportsID[18960]		= L["Teleport:_Moonglade"]
	teleportsID[3565]		= L["Teleport:_Darnassus"]
	teleportsID[32271]		= L["Teleport:_Exodar"]
	teleportsID[3562]		= L["Teleport:_Ironforge"]
	teleportsID[32272]		= L["Teleport:_Silvermoon"]
	teleportsID[49358]		= L["Teleport:_Stonard"]
	teleportsID[3561]		= L["Teleport:_Stormwind"]
	teleportsID[49359]		= L["Teleport:_Theramore"]
	teleportsID[3566]		= L["Teleport:_Thunder_Bluff"]
	teleportsID[88342]		= L["Teleport:_Tol_Barad_(Alliance)"]	
	teleportsID[88344]		= L["Teleport:_Tol_Barad_(Horde)"]
	teleportsID[3563]		= L["Teleport:_Undercity"]
	teleportsID[3567]		= L["Teleport:_Orgrimmar"]
	teleportsID[33690]		= L["Teleport:_Shattrath_(Alliance)"]
	teleportsID[35715]		= L["Teleport:_Shattrath_(Horde)"]
	teleportsID[132621]		= L["Teleport:_Vale_of_Eternal_BlossomsA"]
	teleportsID[132627]		= L["Teleport:_Vale_of_Eternal_BlossomsH"]
	teleportsID[36941]		= L["Toshley's_Station"]
	teleportsID[23453]		= L["Gadgetzan"]		
	teleportsID[71436]		= L["Boots_of_the_Bay"]
	teleportsID[39937]		= L["Ruby_Slippers"]	
	teleportsID[8690]		= L["Hearthstone"]
	teleportsID[94719]		= L["The_Innkeeper's_Daughter"]	
	teleportsID[48129]		= L["Scroll_of_Recall"]
	teleportsID[60320]		= L["Scroll_of_Recall_II"]
	teleportsID[60321]		= L["Scroll_of_Recall_III"]
	teleportsID[66238]		= L["Argent_Crusader's_Tabard"]
	teleportsID[89157]		= L["Wrap_of_UnityA"]
	teleportsID[89158]		= L["Wrap_of_UnityH"]
	teleportsID[89597]		= L["Baradin's_Wardens_Tabard"]
	teleportsID[89598]		= L["Hellscream's_Reach_Tabard"]
	teleportsID[54406]		= L["Dalaran_Signet"]	
	teleportsID[82674]		= L["The_Last_Relic_of_Argus"]
	teleportsID[23442]		= L["Everlook"]					
	teleportsID[36890]		= L["Area_52"]	
	teleportsID[22564]		= L["Stormpike_Insignia"]		
	teleportsID[22563]		= L["Frostwolf_Insignia"]	
	teleportsID[75136]		= L["Ethereal_Portal"]
	teleportsID[41234]		= L["Blessed_Medallion_of_Karabor"]
	teleportsID[46149]		= L["Darnarian_Scroll_of_Teleportation"]
	teleportsID[80256]		= L["Potion_of_Deepholm"]	
	teleportsID[126956]		= L["LORESTONE"]		
	teleportsID[140295]		= L["KIRIN_TOR_BEACON"] 
	teleportsID[140300]		= L["SUNREAVER_BEACON"]
	teleportsID[59317]		= L["SCHOOL_ARCANE_MASTERY"]	
	
	teleportsID[139437]		= L["Bizmo_Brewpub"]
	teleportsID[139432]		= L["Brawlgar_Arena"]
	teleportsID[147985]		= L["Curious_Bronze_Timepiece_Alundra"]
	teleportsID[147988]		= L["Curious_Bronze_Timepiece_Lara"]
	teleportsID[128832]		=  L["Teleport_Jade_Serpent"]
	teleportsID[145430]		= L["Timelost artifact"]
	
	
	teleportsID[176248]		= L["Teleport_Stormshield"]
	teleportsID[176242]		= L["Teleport_Warspear"]
	teleportsID[171253]		= L["Garrison_Hearthstone"]
	teleportsID[147988]		= L["Curious_Bronze_Timepiece_Lara"]
	teleportsID[128832]		=  L["Teleport_Jade_Serpent"]
	teleportsID[168487]  =L["Home_Away_from_Home"] 
	teleportsID[145430]		= L["Timelost artifact"]
	teleportsID[189838]		= L["Admirals_Compass"]
	teleportsID[224869] = L["Teleport: Dalaran - Broken Isles"]
	
	teleportsID[281403] = L["Teleport_Boralus"]
	teleportsID[281404] = L["Teleport_Daz"]
	teleportsID[344587] = L["Teleport_Oribos"]
	--teleportsID[64024]		= L["Teleport_Conservatory"]
	
	

			
	--teleportsID[120145] = L["Ancient_Dalaran"]

-- ========================================================================================================================================================= --
-- Teleport Objects IDs
-- ========================================================================================================================================================= --
	-- Halls of Origination Transit Device
	
-- ========================================================================================================================================================= --
-- Portal IDs
-- ========================================================================================================================================================= --
--Remake table with elements {Name = , Continenint = }

local portalsID = {}
	portalsID[120146] =  L["Ancient_Portal:_Dalaran"]	
	portalsID[10059] =  L["Stormwind"]	
	portalsID[11416] =  L["Ironforge"]	
	portalsID[11417] =  L["Orgrimmar"]
	portalsID[11418] =  L["Undercity"]	
	portalsID[11419] =  L["Darnassus"]
	portalsID[11420] =  L["Thunder_Bluff"]	
	portalsID[32266] =  L["Exodar"]	
	portalsID[32267] =  L["Silvermoon"]	
	portalsID[33691] =  L["Shattrath(Alliance)"]
	portalsID[35717] =  L["Shattrath(Horde)"]
	portalsID[49360] =  L["Theramore"]	
	portalsID[49361] =  L["Stonard"]
	portalsID[53142] =  L["Dalaran"]
	portalsID[88345] =  L["Tol Barad(Alliance)"]
	portalsID[88346] =  L["Tol Barad(Horde)"]
	portalsID[73324] =  L["Jania's_Locket_Dalaran"]	
	portalsID[28148] =	L["Karazhan"]
	portalsID[132626] = L["Vale_of_Eternal_BlossomsH"]
	portalsID[132620] = L["Vale_of_Eternal_BlossomsA"]
	portalsID[67833] = L["Wormhole_Northrend"]
	portalsID[126755] = L["Wormhole_Pandaria"]
	portalsID[224871] = L["Dalaran_Broken"]
	portalsID[176246] = L["Portal_Stormshield"]
	portalsID[176244] = L["Portal_Warspear"]
	portalsID[224871] = L["Portal_DalaranBroken"]
	portalsID[281400] = L["Portal_Boralus"]
	portalsID[281402] = L["Portal_Daz"]
	portalsID[344597] = L["Portal_Oribos"]
	wormholeDestinations = {}
	wormholeDestinations[67833] = "Northrend"
	wormholeDestinations[126755] = "Pandaria"
	

-- ========================================================================================================================================================= --
-- Dropdown Menu Values
-- ========================================================================================================================================================= --
local PortalValues =	{"SG-1", "SG-A", "SG-U"}
local soundLevels =		{"FX", "Music", "Ambience" , "Master"}
-- ========================================================================================================================================================= --
--	Sound Effect List
-- ========================================================================================================================================================= --
local soundEffectTable = {}

	soundEffectTable["ring-start-1"]		= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\SG-1 Ring Starts Turning.ogg",			length = 3.6870}
	soundEffectTable["ring-turning-1"]		= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\SG Ring Turning without start.ogg",	length = 2.5890}
	soundEffectTable["ring-turning-2"]		= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\Atlantis Ring Turn.ogg",				length = 2.1590}
	soundEffectTable["open"]				= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\Kawoosh 1.ogg",						length = 6.4750}
	soundEffectTable["abort1"]				= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\SG-1 Dial Abort.ogg",					length = 2.0310}
	soundEffectTable["abort2"]				= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\Atlantis Dial Abort.ogg",				length = 1.6300}
	soundEffectTable["rings"]				= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\Rings 1.ogg",							length = 5.7920}
	soundEffectTable["chrono"]				= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\chronosphere.ogg",						length = 2.0430}
	soundEffectTable["asguard-tele"]		= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\Asguard Teleporter.ogg",				length = 3.2150}
	soundEffectTable["sgu-start"]			= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\SGU Gate Start.ogg",					length = 2.8300}
	soundEffectTable["sgu-abort"]			= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\SGU Abort.ogg",						length = 2.2450}
	soundEffectTable["sgu-turning"]			= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\SGU Ring Loop.ogg",					length = 3.9770}
	soundEffectTable["st-tos-trans"]		= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\Star Trek TOS Transporter.ogg",		length = 5.6306}
	soundEffectTable["close"]				= {fileName = "Interface\\AddOns\\MageGate\\Sound Files\\Close.ogg",							length = 2.6250}
	
-- ========================================================================================================================================================= --
--												startSoundSchemes 
-- ========================================================================================================================================================= --
local startSoundSchemes = {}

	startSoundSchemes[1]	= {{Sound = "ring-start-1",		Count = 1},		{Sound = "ring-turning-1",	Count = 4}	}
	startSoundSchemes[2]	= {{Sound = "ring-turning-2",	Count = 5}												}
	startSoundSchemes[3]	= {{Sound = "sgu-start",		Count = 1},		{Sound = "sgu-turning",		Count = 4}	}
	startSoundSchemes[4]	= {{Sound = "abort1",			Count = 1}												}
	startSoundSchemes[5]	= {{Sound = "abort2",			Count = 1}												}
	startSoundSchemes[6]	= {{Sound = "sgu-abort",		Count = 1}												}
	startSoundSchemes[7]	= {{Sound = "open",				Count = 1}												}
	startSoundSchemes[8]	= {{Sound = "rings",			Count = 1}												}
	startSoundSchemes[9]	= {{Sound = "asguard-tele",		Count = 1}												}
	startSoundSchemes[10]	= {{Sound = "st-tos-trans",		Count = 1}												}
	startSoundSchemes[11]	= {{Sound = "chrono",			Count = 1}												}

-- ========================================================================================================================================================= --
--					Command Line Option Table
-- ========================================================================================================================================================= --
NeooptionTable = {
		name	= "MageGate",
		handler = MageGate,
		type	= 'group',
		args = {
						dhd	 =		{ name = "Show Gate Settings",
										desc = "Show Gate Settings",
										type = "execute",
										func = function () MageGateDHD:Show() end
						
						},
						play = 		{
									name = "Play a sound effect",
									desc = L["PLAY_DESC"],
									type = "input",
									set  = "PlayFX",
									get  = function () return nil end
									},
						show = 		{
											name = "Show control frame",
											desc = L["SHOW"] ,
											type = "execute",
											func = function ()  InterfaceOptionsFrame_OpenToCategory(MageGate.optionFrames.main)  end
									}
--				sfx =		{
--									name = "Sound Effects",
--									desc = L["SOUND_FX_DESC"],
--									type = "execute",
--									func = "SoundEffects"
--							},
--				settings =	{
--									name = "MageGate Settings",
--									desc = L["PRINT_SETTINGS"],
--									type = "execute",
--									func = "PrintSettings"
--							},
--				autosum  =  {
--									name = "Auto Summon",
--									desc = L["AUTO_SUMMON_DESC"],
--									type = "execute",
--									func = "AutoSummon"
--							},
--				abortfx  =  {
--									name = "Abort Effect",
--									desc = string.format(L["ABORT_FX_DESC"], "sg1", "sga", "sgu"),
--									type = "toggle",
--									set = function(info, val) 
--										if val == "sg1" then
--											MageGate.db.profile.AbortStyle = 1
--										end
--										if val == "sga" then
--											MageGate.db.profile.AbortStyle = 2
--										end
--										if val == "sgu" then
--											MageGate.db.profile.AbortStyle = 3
--										end
--										 end,
--									get = function() return MageGate.db.profile.AbortStyle end
--							},
--				marker  =   {
--									name = "Marker Toggle",
--									desc = L["MARKER_TOGGLE"],
--									type = "toggle",
--									set  = "MarkerToggle",
--									get  = function () return MARKER end
--							},
--				chevcount = {
--									name = "Print chevron count",
--									desc = string.format(L["CHEV_COUNT_TOGGLE"]),
--									type = "toggle",
--									set  = "ChangeChevronCounter",
--									get  = function () return self.db.profile.ChevronCounter end
--							},
--				wormexit =  {
--									name = "Toggle Worm exit sfx",
--									desc = string.format(L["WORM_EXIT_DESC"]),
--									type = "toggle",
--									set  = "toggleWormExit",
--									get  = function () return self.db.profile.WormExit end
--							},
--				caster =	{
--									name = "Toggle caster requirement",
--									desc = L["CASTER_TOGGLE"],
--									type = "toggle",
--									set  = "ToogleJustYou",
--									get  = function () return self.db.profile.JustYou end
--							},
---,
--				chevrons  = {
--									name = "Number of chevrons",
--									desc = L["CHEVRONS_COUNT_DESC"],
--									type = "range",
--									min  = 7,
--									max  = 9,
--									step = 1,
--									set  = "SetChevronCount",
--									get  = function () return self.db.profile.ChevronCount end
--							},
				}
			}

LibStub("AceConfig-3.0"):RegisterOptionsTable("MageGate", NeooptionTable, {"mgate"})

-- ========================================================================================================================================================== --
--														DEFAULTS
-- ========================================================================================================================================================== --
--------------------------------------------------------------------------------------------------------------------------------------
--- Structure of defaults table.
-- * profile 
-- ** PortalClose		= { On = [true, false],
-- ***						Level = [1,2,3,4]}
-- ** Classic			= [true, false].	Value determines if the addon will be in classic mode or not.
-- ** AbortStyle		= [1,2,3]			Sets the abort style in classic.
-- ** JustYou			= [true,false]		Sets if sound effects go off for others or just you in classic.
-- ** SoundFx			= [1,2,3]			Sets if sound effects are off, on, or on master in classic.
-- ** ChevronCount		= [7,8,9]			Sets the highest chevron to use in classic.
-- ** ChevronCounter	= [true,false]		Sets whether the full chevron count is done in classic.
-- ** TeleSound			= [1,2,3].			Sets what the teleport sound for all teleports in classic.
-- ** TeleRing			= [true, false]		Sets if teleport spells have sound effect in classic.
-- ** Marker			= [true, false].	Set is portal tracking is on in classic.
-- ** RingTurning		= [1,2,3].			Set the ring turning style when using classic mode.
-- ** On				= [true,false]		Sets whether all function are on or off in classic.
-- ** Teleports[string of spellID]	= {Sound = [1,2,3,4], 
-- ***								   JustYou = [true,false], 
-- ***								   Level = [1,2,3,4]}
-- ** Portal[spellID]				= {Abort =[1,2,3],			The abort setting for a particuler portal.
-- ***								   RingTurning = [1,2,3],	The ring turning sound effect for a particular portal.
-- ***								   ChevronCount = [7,8,9], 
-- ***								   ChevronCall = [true,false],
-- ***								   Level = [1,2,3,4],
-- ***								   AnnounceDialing = [true, false],
-- ***								   AnnounceLock = [true, false],
-- ***								   AnnounceAbort = [true, false]	 }
-- ** InstanceTeleport				=  { Active = [true, false], 
-- ***									Level = [1,2,3,4]
-- ***									Sound = [1,2,3,4]}
-- ** SummonSFX						= { Active = [true, false], 
-- ***									Level = [1,2,3,4]
-- ***									Sound = [1,2,3,4]}
-- ** PortalTracking				= {Active = [true, false], 
-- ***								   Alpha = [0.0 - 1.0], 
-- ***								   WorldMap =[true,false], 
-- ***								   Minimap = [true, false]}	
-- ** AutoSumm		= [true,false]
-- ** Traveller		= [true, false]
-- ** WormExit		= [true, false] 
--------------------------------------------------------------------------------------------------------------------------------------
local defaults = {
	profile={
		PortalClose				=	{	Active = true, 
										Level	= 4
									},
		JustYou					=	true,			--Classic setting
		SoundFx					=	1,			--Classic setting
		AutoSumm				=	false,
		ChevronCount			=	7,		--Classic setting
		ChevronCounter			=	false, --Classic setting
		SingleTeleportSetting	=	{	Active	= false, 
										Sound	= 2, 
										Level	= 4, 
										JustYou = true
									},
		SinglePortalSetting		=	{	Active			= false, 
										Abort			= 1, 
										RingTurning		= 1, 
										Level			= 4, 
										JustYou			= true, 
										FullChev		= false, 
										ChevMax			= 7,
										AnnAbort		= true,
										AnnDial			= true,
										AnnLock			= true
									},
		WormExit				=	true, 
		Honest					=   true,
		Traveller				=	true, 
		TeleSound				=	2,
		TeleRing				=	true,		--Classic setting
		Marker					=	true,			--Classic setting
--		RingTurning = 1,		--Classic setting
		On						=	true, 
		Teleports				=	{	-- Teleports[string of spellID] =	{	Sound	= [true,false], 
										--										JustYou = [true,false], 
										--										Level	= [1,2,3,4]
										--									}
									},			

		Portal					=	{	-- Portal[spellID] =	{	Abort			= [1,2,3], 
										--							RingTurning		= [1,2,3], 
										--							ChevronCount	= [7,8,9], 
										--							ChevronCall		= [true,false], 
										--							Level			= [1,2,3,4],
										--							UncanonChev		= [true, false],
										--							GateCastBar		= {
										--												Enabled = true,
										--												NumChevrons = 7,
										--												Glyphs = {}
										--										}
										--						}
									},
		InstanceTeleport		=	{	Active	= true,
										Level	= 4,
										Sound	= 2								
									},
		BGTeleport				=	{	Active	= true,
										Level	= 4,
										Sound	= 2
									},
		SummonSFX				=	{	Active	= true, 
										Level	= 4,
										Sound	= 2
									},
		PortalTracking			=	{	Alpha		= 1.0, 
										WorldMap	= false, 
										Minimap		= true
									},
		Classic					= false
}}
---This function is used to fill the default values for each teleport spell.
--It does not effect the saved values.
function MageGate:FillTeleDefaults()
	for key, val in pairs(teleportsID) do
		--teleoptions.args[val
		defaults.profile.Teleports[tostring(key)] = {Sound = 2, JustYou = true,Level =4}
	end
end
---This function is used to fill the default values for each portal spell.
--It does not effect the saved values.
function MageGate:FillPortalDefaults()
	for key, val in pairs(portalsID) do
		defaults.profile.Portal[key] = {Abort = 1, RingTurning = 1, ChevronCount = 7, ChevronCall = false, Level = 4, UncanonChev = false,
		AnnounceDialing = true, AnnounceLock = true, AnnounceAbort = true,
		
		GateCastBar		= {
								Enabled = true,
								NumChevrons = 7,
								Glyphs = {}
							}
		
		
		}
	end
end


-- ========================================================================================================================================================== --
---Option Tables
-- ========================================================================================================================================================== --
local main = {
	name = "MageGate",
	type = "group",
	handler = MageGate,
	args = {
		confgendesc = {
			order = 1,
			type = "description",
			name = GetAddOnMetadata("MageGate", "Notes").."\n\n",
			cmdHidden = true
		},
		confinfodesc = {
			name = "",
			type = "group", inline = true,
			args = {
				confversiondesc = {
					order = 1,
					type = "description",
					name = "|cffffd700".."version "..": "
					..G["GREEN_FONT_COLOR_CODE"]..tostring(GetAddOnMetadata("MageGate", "Version")).."\n",
					cmdHidden = true
				},
				confauthordesc = {
					order = 2,
					type = "description",
					name = "|cffffd700".."Author "..": "
					..G["ORANGE_FONT_COLOR_CODE"]..GetAddOnMetadata("MageGate", "Author").."\n",
					cmdHidden = true
				},

			}
		}
	},
}
-- ========================================================================================================================================================= --
-- GateFxOptions
-- ========================================================================================================================================================= --
local GateFxOptions = {	name = L["GATE_SOUND_OP"], 
						type = "group", 
						handler = MageGate,
						args = { 
										Single = {
											type = "toggle",
											name = L["SINGLE_STYLE"] , 
											desc = L["SINGLE_STYLE_DESC_PORTAL"], 
											order = 1,
											set = function (info, value) MageGate.db.profile.SinglePortalSetting.Active = value
													
																				MageGate:PortalToggle(value)
													
																		 end,
											get = function ()  return MageGate.db.profile.SinglePortalSetting.Active end
										},
									RingTurning = {
										type = "select",
										style = "dropdown",
										name = L["RING_TURNING_SOUND"] ,
										desc = L["RING_TURNING_SOUND_DESC"],
										order = 2,
										set = function(info,value) MageGate.db.profile.SinglePortalSetting.RingTurning = value end,
										get = function () return MageGate.db.profile.SinglePortalSetting.RingTurning end,
										values = PortalValues},
									Abort = {type = "select",
										style = "dropdown",
										name = L["RING_ABORT_SOUND"],
										desc = L["RING_ABORT_SOUND_DESC"],
										order = 2,
										set = function(info,value) MageGate.db.profile.SinglePortalSetting.Abort = value end,
										get = function () return MageGate.db.profile.SinglePortalSetting.Abort end,
										values = PortalValues},
									GateSoundLevel = {type = "select",
										style = "dropdown",
										name = L["TELE_SOUND_LEVEL"],
										desc = L["TELE_SOUND_LEVEL_DESC"],
										order = 2,
										set = function(info,value) MageGate.db.profile.SinglePortalSetting.Level = value end,
										get = function () return MageGate.db.profile.SinglePortalSetting.Level end,
										values = {"FX", "Music", "Ambience" , "Master"}
											},
									
									ChevronCount = {
										type = "range",
										name = L["CHEV_RANGE"],
										desc = L["CHEV_RANGE_DESC"] ,
										order = 4,
										min = 7,
										max = 9,
										step = 1,
										set = function(info, val) MageGate.db.profile.SinglePortalSetting.ChevMax = val end,
										get = function() return MageGate.db.profile.SinglePortalSetting.ChevMax end
										},
									ChevronCall = {
										type = "toggle",
										name = L["FULL_CHEV"],
										desc = string.format(L["CHEV_COUNT_TOGGLE"]),
										order = 4,
										set = function(info, val) MageGate.db.profile.SinglePortalSetting.FullChev = val end,
										get = function() return MageGate.db.profile.SinglePortalSetting.FullChev end
									},
								annDialing = {
					type = "toggle",
					name = L["ANNOUNCE_DIALING"],
					desc = L["ANNOUNCE_DIALING_DESC"],
					order = 6,
					set = function(info, val) MageGate.db.profile.SinglePortalSetting.AnnDial = val end,
					get = function() return MageGate.db.profile.SinglePortalSetting.AnnDial end
				},annLock = {
					type = "toggle",
					name = L["ANNOUNCE_LOCK"],
					desc = L["ANNOUNCE_LOCK_DESC"],
					order = 6,
					set = function(info, val) MageGate.db.profile.SinglePortalSetting.AnnLock = val end,
					get = function() return MageGate.db.profile.SinglePortalSetting.AnnLock end
				},
				annAbort = {
					type = "toggle",
					name = L["ANNOUNCE_ABORT"],
					desc = L["ANNOUNCE_ABORT_DESC"],
					order = 6,
					set = function(info, val) MageGate.db.profile.SinglePortalSetting.AnnAbort = val end,
					get = function() return MageGate.db.profile.SinglePortalSetting.AnnAbort end
				}

								}



--SinglePortalSetting = {Active = false, Abort = 1, RingTurning = 1, Level = 4, JustYou = true, FullChev = false, ChevMax = 7},
};

---This function fills the group GateFxOptions with a sub group for each portal.

function MageGate:PortalToggle(value)
	for key, val in pairs(portalsID) do
		GateFxOptions.args[tostring(val)].disabled = value
	end
end

function MageGate:FillRingStyles ()
	--defaults.profile.Portal[key]
	for key, val in pairs(portalsID) do
		GateFxOptions.args[tostring(val)] =	{	
			name = val,
			type = "group",
			handler = MageGate,
			disabled = MageGate.db.profile.SinglePortalSetting.Active,
			args = {
				GateHeader = {
					type = "header", 
					name = L["GATE_SOUNDS"], 
					order = 1},
				RingTurning = {
					type = "select",
					style = "dropdown",
					name = L["RING_TURNING_SOUND"] ,
					desc = L["RING_TURNING_SOUND_DESC"],
					order = 2,
					set = function(info,value) MageGate.db.profile.Portal[key].RingTurning = value end,
					get = function () return MageGate.db.profile.Portal[key].RingTurning end,
					values = PortalValues},
				Abort = {type = "select",
					style = "dropdown",
					name = L["RING_ABORT_SOUND"],
					desc = L["RING_ABORT_SOUND_DESC"],
					order = 2,
					set = function(info,value) MageGate.db.profile.Portal[key].Abort = value end,
					get = function () return MageGate.db.profile.Portal[key].Abort end,
					values = PortalValues},
					GateSoundLevel = {type = "select",
						style = "dropdown",
						name = L["TELE_SOUND_LEVEL"],
						desc = L["TELE_SOUND_LEVEL_DESC"],
						order = 2,
						set = function(info,value) MageGate.db.profile.Portal[key].Level = value end,
						get = function () return MageGate.db.profile.Portal[key].Level end,
						values = {"FX", "Music", "Ambience" , "Master"}
},
				GateHeader2 = {
					type = "header", 
					name = L["CHEV_SETTINGS"], order = 3},
				ChevronCount = {
					type = "range",
					name = L["CHEV_RANGE"],
					desc = L["CHEV_RANGE_DESC"] ,
					order = 4,
					min = 7,
					max = 9,
					step = 1,
					set = function(info, val) MageGate.db.profile.Portal[key].ChevronCount = val end,
					get = function() return MageGate.db.profile.Portal[key].ChevronCount end
					},
				ChevronCall = {
					type = "toggle",
					name = L["FULL_CHEV"],
					desc = string.format(L["CHEV_COUNT_TOGGLE"]),
					order = 4,
					set = function(info, val) MageGate.db.profile.Portal[key].ChevronCall = val end,
					get = function() return MageGate.db.profile.Portal[key].ChevronCall end
				},
				GateHeader3 = {
					type = "header", 
					name = L["MESSAGE_SETTINGS"], order = 4},
				annDialing = {
					type = "toggle",
					name = L["ANNOUNCE_DIALING"],
					desc = L["ANNOUNCE_DIALING_DESC"],
					order = 6,
					set = function(info, val) MageGate.db.profile.Portal[key].AnnounceDialing = val end,
					get = function() return MageGate.db.profile.Portal[key].AnnounceDialing end
				},annLock = {
					type = "toggle",
					name = L["ANNOUNCE_LOCK"],
					desc = L["ANNOUNCE_LOCK_DESC"],
					order = 6,
					set = function(info, val) MageGate.db.profile.Portal[key].AnnounceLock = val end,
					get = function() return MageGate.db.profile.Portal[key].AnnounceLock end
				},
				annAbort = {
					type = "toggle",
					name = L["ANNOUNCE_ABORT"],
					desc = L["ANNOUNCE_ABORT_DESC"],
					order = 6,
					set = function(info, val) MageGate.db.profile.Portal[key].AnnounceAbort = val end,
					get = function() return MageGate.db.profile.Portal[key].AnnounceAbort end
				}
					}
		}
	end
end
--AnnounceDialing = true, AnnounceLock = true, AnnounceAbort = true
-- ========================================================================================================================================================= --
--
-- ========================================================================================================================================================= --

local FeatureOptions = {
	name = L["FEATURE_SETTINGS"],
	type = "group",
	handler = MageGate,
--	get = function(item) return MageGate.db.profile.PortalTracking[item[#item]] end,
--	set = function(item, value) MageGate.db.profile.PortalTracking[item[#item]] = value end,
	args = {
		ADHonest = {type = "toggle", name = L["HONEST"], desc = L["HONEST_DEC"] ,order = 1,set = function (info, val) MageGate.db.profile.Honest = val; end, get = function (info) return MageGate.db.profile.Honest  end   },
		PortalHeader = {
			type = "header", 
			name = L["PORTAL_TRACKING_SETTINGS"] ,
			order = 1},
--		WorldMap = {type = "toggle",
--			name = L["ON_WORLD_MAP"],
--			desc = L["ON_WORLD_DESC"] ,
--			order = 2,
--			set = function (info, val) MageGate.db.profile.PortalTracking.WorldMap = val end,
--			get = function () return MageGate.db.profile.PortalTracking.WorldMap end},
		Minimap = {type = "toggle",
			name = L["ON_MINIMAP"],
			desc = L["ON_MINIMAP_DESC"] ,
			order = 2,
			set = function (info, val) MageGate.db.profile.PortalTracking.Minimap = val;  MageGate:TogglePortalHide(val) end,
			get = function () return MageGate.db.profile.PortalTracking.Minimap end},
		Alpha = {
			type = "range",
			name = L["ALPHA"],
			desc = L["ALPHA_DESC"],
			order = 3,
			min = 0,
			max = 1,
			step = 0.1,
			set = function (info,val)MageGate.db.profile.PortalTracking.Alpha = val end,
			get = function() return MageGate.db.profile.PortalTracking.Alpha end
		},
		
		spacer1 = {
			order = 3,
			type = "description",
			name = "\n",
		},
		
		SummonHeader = {
			type = "header", 
			name = L["SUMMONING_SETTINGS"], 
			order = 4},
		AutoSumm = {type = "toggle",
			name = L["AUTO_SUMM"],
			desc = L["AUTO_SUMMON_DESC"],
			order = 5,
			set = function (info, val) MageGate.db.profile.AutoSumm = val end,
			get = function () return MageGate.db.profile.AutoSumm end},
		SummonSFXAct = {type = "toggle",
			name = L["SUMMON_SOUND_ON"],
			desc = L["SUMMON_SOUND_ON_DESC"],
			order = 5,
			set = function (info, val) MageGate.db.profile.SummonSFX.Active = val end,
			get = function () return MageGate.db.profile.SummonSFX.Active end},
		SummonSound=	{
			type = "select",
			style = "dropdown",
			name = L["SUMMON_SOUND"],
			desc = L["SUMMON_SOUND_DESC"],
			order = 5,
			set = function(info,value) MageGate.db.profile.SummonSFX.Sound = value end,
			get = function () return MageGate.db.profile.SummonSFX.Sound end,
			values = {"Rings","Asguard","Star Trek TOS","Chrono"}
		},
		SummonSoundLevel=	{
			type = "select",
			style = "dropdown",
			name = L["TELE_SOUND_LEVEL"],  
			desc = L["TELE_SOUND_LEVEL_DESC"],
			order = 5,
			set = function(info,value) MageGate.db.profile.SummonSFX.Sound = value end,
			get = function () return MageGate.db.profile.SummonSFX.Sound end,
			values = soundLevels
		},
		
		Traveller = {type = "toggle",
			name = L["TRAVELLER_UI"],
			desc = L["TRAVELLER_DESC"],
			order = 5,
			set = function (info, val) MageGate.db.profile.Traveller = val end,
			get = function () return MageGate.db.profile.Traveller end},
		InstanceHeader = {
			type = "header", 
			name = L["INST_TELE"], 
			order = 6},
		InstanceActive = {type = "toggle",
			name = L["ENABLED"], 
			desc =L["ENABLED_INST_TELE_DESC"], 
			order = 7,
			set = function (info, val) MageGate.db.profile.InstanceTeleport.Active = val end,
			get = function () return MageGate.db.profile.InstanceTeleport.Active end},
		InstanceSound=	{
			type = "select",
			style = "dropdown",
			name = L["SOUNDS"]	, 
			desc = L["INST_TELE_SOUND_DESC"],
			order = 7,
			set = function(info,value) MageGate.db.profile.InstanceTeleport.Sound = value end,
			get = function () return MageGate.db.profile.InstanceTeleport.Sound end,
			values = {"Rings","Asguard","Star Trek TOS","Chrono"}
		},
		InstanceSoundLevel=	{
			type = "select",
			style = "dropdown",
			name = L["TELE_SOUND_LEVEL"],  
			desc = L["TELE_SOUND_LEVEL_DESC"],
			order = 7,
			set = function(info,value) MageGate.db.profile.InstanceTeleport.Level = value end,
			get = function () return MageGate.db.profile.InstanceTeleport.Level end,
			values = soundLevels
		},
		BGHeader = {
			type = "header", 
			name = L["BG_HEADER"], 
			order = 8},	
		BGActive = {type = "toggle",
			name = L["ENABLED"], 
			desc =L["ENABLED_BG_TELE_DESC"], 
			order = 9,
			set = function (info, val) MageGate.db.profile.BGTeleport.Active = val end,
			get = function () return MageGate.db.profile.BGTeleport.Active end},
		BGSound=	{
			type = "select",
			style = "dropdown",
			name = L["SOUNDS"]	, 
			desc = L["BG_TELE_SOUND_DESC"],
			order = 9,
			set = function(info,value) MageGate.db.profile.BGTeleport.Sound = value end,
			get = function () return MageGate.db.profile.BGTeleport.Sound end,
			values = {"Rings","Asguard","Star Trek TOS","Chrono"}
		},
		BGSoundLevel=	{
			type = "select",
			style = "dropdown",
			name = L["TELE_SOUND_LEVEL"],  
			desc = L["TELE_SOUND_LEVEL_DESC"],
			order = 9,
			set = function(info,value) MageGate.db.profile.BGTeleport.Level = value end,
			get = function () return MageGate.db.profile.BGTeleport.Level end,
			values = soundLevels
		},

			--BGTeleport
		ExitHeader = {
			type = "header", 
			name = L["EXIT_PORTAL_DESC"], 
			order = 10},
		WormExit = {type = "toggle",
			name = L["WORMHOLE_EXIT_SOUND"],
			desc = L["WORM_EXIT_DESC"],
			order = 11,
			set = function (info, val) MageGate.db.profile.WormExit = val end,
			get = function () return MageGate.db.profile.WormExit end},

		PortalCloseHeader = {
			type = "header", 
			name = L["PORT_CLOSE"] , 
			order = 11},
		PortalCloseActive = {type = "toggle",
			name = L["ENABLED"], 
			desc =L["PORT_CLOSE_EN_DESC"], 
			order = 12,
			set = function (info, val) MageGate.db.profile.PortalClose.Active = val end,
			get = function () return MageGate.db.profile.PortalClose.Active end},
		PortalCloseLevel=	{
			type = "select",
			style = "dropdown",
			name = L["TELE_SOUND_LEVEL"],  
			desc = L["TELE_SOUND_LEVEL_DESC"],
			order = 12,
			set = function(info,value) MageGate.db.profile.PortalClose.Level = value end,
			get = function () return MageGate.db.profile.PortalClose.Level end,
			values = soundLevels
		}	
			
	},
}

-- ========================================================================================================================================================= --
--Teleport Spell Options
-- ========================================================================================================================================================= --
local teleoptions = {name = L["TELE_SETTINGS"],
	type = "group",
	handler = MageGate,
	get = function(item) return MageGate.db.profile.Teleports[item[#item]] end,
	set = function(item, value) MageGate.db.profile.Teleports[item[#item]] = value end,
	args = {
				GlobHeader = {
						type = "header", 
						name = "Global", 
						order = 1},
				Single = {
						type = "toggle",
						name = L["SINGLE_STYLE"]  , 
						desc = L["SINGLE_STYLE_DESC_TELE"] , 
						order = 1,
						set = function (info, value) MageGate.db.profile.SingleTeleportSetting.Active = value
													
															MageGate:TeleToogle (value)
													
													 end,
						get = function ()  return MageGate.db.profile.SingleTeleportSetting.Active end
					},
					--SingleTeleportSetting = {Active = false, Sound = 2, Level = 4, JustYou = true},
				JustYou = {
						type = "toggle",
						name = L["TELE_JUST_YOU"] ,
						desc = L["TELE_JUST_YOU_DESC"],
						order = 2,
						set = function (info, value) MageGate.db.profile.SingleTeleportSetting.JustYou = value end,
						get = function ()  return MageGate.db.profile.SingleTeleportSetting.JustYou end
					},
			TelesoundLevel = {type = "select",
						style = "dropdown",
						name = L["TELE_SOUND_LEVEL"],
						desc = L["TELE_SOUND_LEVEL_DESC"],
						order = 3,
						set = function(info,value) MageGate.db.profile.SingleTeleportSetting.Level = value end,
						get = function () return MageGate.db.profile.SingleTeleportSetting.Level end,
						values = {"FX", "Music", "Ambience" , "Master"}
					},
			Telesound = {type = "select",
						style = "dropdown",
						name = L["TELE_SOUND"],
						desc = L["TELE_SOUND_DESC"],
						order = 3,
						set = function(info,value) MageGate.db.profile.SingleTeleportSetting.Sound = value end,
						get = function () return MageGate.db.profile.SingleTeleportSetting.Sound end,
						values = {"None","Rings","Asguard","Star Trek TOS","Chrono"}}
				
			}
}
function MageGate:TeleToogle (value)
	for key, val in pairs(teleportsID) do
		teleoptions.args[tostring(val)].disabled = value
	end
end
function MageGate:FillTeleOptions()
	for key, val in pairs(teleportsID) do
	teleoptions.args[tostring(val)] =	{
			type = "group",
			name = val,
			disabled = MageGate.db.profile.SingleTeleportSetting.Active,
		--	set = function(info,value) MageGate.db.profile.Teleports[key].Sound = value end,
		--	get = function () return MageGate.db.profile.Teleports[key].Sound end,
			args = {
					
				JustYou = {
						type = "toggle",
						name = L["TELE_JUST_YOU"] ,
						desc = L["TELE_JUST_YOU_DESC"],
						order = 1,
						set = function (info, value)  MageGate.db.profile.Teleports[tostring(key)].JustYou = value end,
						get = function ()  return MageGate.db.profile.Teleports[tostring(key)].JustYou end
					},
				SoundHeader = {
						type = "header", 
						name = L["SOUNDS"], 
						order = 2},
				Telesound = {type = "select",
						style = "dropdown",
						name = L["TELE_SOUND"],
						desc = L["TELE_SOUND_DESC"],
						order = 3,
						set = function(info,value) MageGate.db.profile.Teleports[tostring(key)].Sound = value end,
						get = function () return MageGate.db.profile.Teleports[tostring(key)].Sound end,
						values = {"None","Rings","Asguard","Star Trek TOS","Chrono"}},
				
				TelesoundLevel = {type = "select",
						style = "dropdown",
						name = L["TELE_SOUND_LEVEL"],
						desc = L["TELE_SOUND_LEVEL_DESC"],
						order = 3,
						set = function(info,value) MageGate.db.profile.Teleports[tostring(key)].Level = value end,
						get = function () return MageGate.db.profile.Teleports[tostring(key)].Level end,
						values = {"FX", "Music", "Ambience" , "Master"}
					},
					}
										}
	end
end


-- ========================================================================================================================================================= --
--											Sound Effect Functions
-- ========================================================================================================================================================= --
---Sound Effect Looper function.
--This function will be copy and used in Sound Master.
--@param key The index value to the element in the ActiveEffect table.
function MageGate:EffectLooper(key)
	if key == nil  then
		return false
	end
	if ActiveEffect[key] == nil then
		return false
	end
	ActiveEffect[key].Counts = ActiveEffect[key].Counts-1 --Error:  Might invovle other mage teleporting or making a portal.
	if ActiveEffect[key].Counts == 0 then
		MageGate:CancelTimer(ActiveEffect[key].Timer, true)
		ActiveEffect[key].Current = ActiveEffect[key].Current + 1
		if ActiveEffect[key].SoundData[ActiveEffect[key].Current] ~= nil then
			bla ,ActiveEffect[key].SoundEffectID = PlaySoundFile(ActiveEffect[key].SoundData[ActiveEffect[key].Current].FileName,ActiveEffect[key].SoundData[ActiveEffect[key].Current].Level)
			ActiveEffect[key].Counts = ActiveEffect[key].SoundData[ActiveEffect[key].Current].Times
			ActiveEffect[key].Timer = MageGate:ScheduleRepeatingTimer("EffectLooper", ActiveEffect[key].SoundData[ActiveEffect[key].Current].length,key)
		else
			MageGate:CancelTimer(ActiveEffect[key].Timer,true)
			ActiveEffect[key] = nil;
		end
	else
		PlaySoundFile(ActiveEffect[key].SoundData[ActiveEffect[key].Current].FileName,ActiveEffect[key].SoundData[ActiveEffect[key].Current].Level)
	end
end

---Add an effect to the ActiveEffect table and start it.
--It will create a basic end function for the events that will return true is the input casterID and spellId from the event matches the input to AddActiveEffect.
--This function will be copy and used in Sound_Master.
--@param SoundTable A table containing the sounds to be used.  Each element is a table has a FileName, length of the sound in seconds. Times, the number of times the 
-- sound is replayed.  If it is -1, then it will keep going until end event happens.  Level is the level of sound effects that it is played on.
-- Each table in SoundTable is indexed by an integer and placed in the order they will be played in.
--@param casterName The name of the caster.
--@param spellID The spellID of the spell/ability that was used.
--@param EndEventTable A table containing the names of the events that can end this effect.
--@param unitID The unitID of the caster of the spell.
function MageGate:AddActiveEffect(SoundTable, casterName, spellID, EndEventTable, unitID)
	 key = casterName.."-"..tostring(spellID)
	PlaySoundFile(SoundTable[1].FileName,SoundTable[1].Level)
	ActiveEffect[key] = {	Func = function(eveN, uID, lID, spID) if casterName== UnitName(unitID) and spID == spellID then return true end return false  end, 
							Timer = MageGate:ScheduleRepeatingTimer("EffectLooper", SoundTable[1].length,key), 
							Counts = SoundTable[1].Times, 
							Current = 1, 
							SoundData = SoundTable,
							SoundEffectID = 0}
	for k, v in pairs (EndEventTable) do
		if EndEffectConditions[v] == nil then
			EndEffectConditions[v] = {}
		end
		EndEffectConditions[v][key] = true
	end
end

---Create an Effect from a sound scheme.
--This function is the first step to add an effect to ActiveEffect.  
--It makes the sound table for AddActiveEffect using the scheme input
-- and the profile settings.
--This function will be copied and used in Sound Master.
--@param spellID The ID of the spell that triggered this event.
--@param casterID The ID of the caster of the spell.
--@param scheme A table containing tables indexed by integers and arranged in the order they will be played in.  
--Each table in scheme has two componenets.
-- Sound = the key of the sound from the sound database table.
-- Count = the number of times that sound will be played.  If it is -1, it will go until the end event happens.
--@param level The level the sounds will be played on in the sound effects.
--@endEvents A table of the name of the events that can end the effect.
function MageGate:CreateEffectEvent(spellID, casterID, scheme, level, endEvents)
	--Compile SoundTable
	soundTable = {}
	count = 1;
	for k, v in pairs (startSoundSchemes[scheme]) do
		soundTable[count] = {	FileName = soundEffectTable[v.Sound].fileName, 
								length = soundEffectTable[v.Sound].length, 
								Times = v.Count, 
								Level = level}
		count = count +1
	end
	MageGate:AddActiveEffect(soundTable, UnitName(casterID), spellID, endEvents, casterID)
end

--TODO
function MageGate:SummSound()
--Special thanks to Garshaw of Mok`Nathal for this idea.
	area = GetSummonConfirmAreaName()
	if self.db.profile.Traveller then
		self.SendGateMessage(string.format(L["CONFIRM_SUMMON"]))
	end
	if MageGate.db.profile.SummonSFX.Sound == 2 then
		MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Rings 1.ogg",soundLevels[MageGate.db.profile.SummonSFX.Level])
	end
	if MageGate.db.profile.SummonSFX.Sound == 3 then
		MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Asguard Teleporter.ogg",soundLevels[MageGate.db.profile.SummonSFX.Level])
	end
	if MageGate.db.profile.SummonSFX.Sound == 4 then
		MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Star Trek TOS Transporter.ogg",soundLevels[MageGate.db.profile.SummonSFX.Level])
	end
	if MageGate.db.profile.SummonSFX.Sound == 5 then
		MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\chronosphere.ogg",soundLevels[MageGate.db.profile.SummonSFX.Level])
	end--{"None","Rings","Asguard","Star Trek TOS","Chrono"}
end

-- ========================================================================================================================================================== --
--									Spell Identifying Functions
-- ========================================================================================================================================================== --
--- Indicates if the given spell is a portal spell
--@param spellID
--@return true is it is a portal, false if not.
function isAPortal( spellID )
	for index, oneId in pairs( portalsID ) do
		if index == spellID then
			return true
		end		
	end
	return false
end
--- Is the spell ID that of a teleporting spell.
--@param spellID a Spell ID.
--@return boolean.
function MageGate:isATeleport(spellID)
	--teleportsID
	for index, oneId in pairs( teleportsID ) do
		if index == spellID then
			return true
		end
	end
	return false
end

-- ========================================================================================================================================================== --
--																	Timer Functions
-- ========================================================================================================================================================== --
local pTimer			= nil
local ringStartTimer	= nil
local nTicCount			= 1
--- Handler for a timer tic.
--It will print out the chevrons.
--@param spell The spell key used in the database to make sure this does not pass the portals set max chevron.
function MageGate:ChevronNLocked(spell)
	if channeling == false then
		self:CancelChevrons()
		return
	end
	if (nTicCount >= MageGate.db.profile.Portal[spell].ChevronCount) then
		self:CancelChevrons()
		return
	end
	self.SendGateMessage(string.format(L["CHEVRON_N_ENGAGED"], nTicCount))
	nTicCount = nTicCount + 1
end
--TODO
function MageGate:WormholeSoundLoop(key)


end

function MageGate:Soundcatch(...)
	a1, a2 = ...;
--	print(a1)
	--print(a2)
end

--- Called when a portal is cancelled.
--Stops the chevron message printing.
function MageGate:CancelChevrons()
	MageGate:CancelTimer(pTimer, false)
	pTimer = nil
	channeling = false
	nTicCount = 1
end
function MageGate:toggleEnabledOnInterface(val)
	for key, va in pairs(portalsID) do
		if val == true then
			GateFxOptions.args[tostring(va)].disabled = true
		else
			GateFxOptions.args[tostring(va)].disabled = false
		end
	end
	for key, va in pairs(teleportsID) do
		if val == true then
			teleoptions.args[tostring(va)].disabled = true
		else
			teleoptions.args[tostring(va)].disabled = false
		end
	end
end
-- ========================================================================================================================================================== --
---------------------------------------------------- Ace3 Functions ----------------------------------------------------
-- ========================================================================================================================================================== --
function MageGate:OnInitialize()

	MageGate:FillTeleDefaults()
	MageGate:FillPortalDefaults()
	self.db = LibStub("AceDB-3.0"):New("MGDATABASE", defaults)
	MageGate:FillTeleOptions()
	MageGate:FillRingStyles ()
	
	local config = LibStub("AceConfig-3.0")
	config:RegisterOptionsTable("MageGate", NeooptionTable, {"mgate"})
	local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	local registry = LibStub("AceConfigRegistry-3.0")
	
	registry:RegisterOptionsTable("MageGateMain", main)
	registry:RegisterOptionsTable("Teleport Settings", teleoptions)
	registry:RegisterOptionsTable("Gate Sound Effects",GateFxOptions)
	registry:RegisterOptionsTable("Feature Settings",FeatureOptions)

	registry:RegisterOptionsTable("Profiles", profiles)

	local dialog = LibStub("AceConfigDialog-3.0")
	self.optionFrames = {
		main = dialog:AddToBlizOptions("MageGateMain", "MageGate"),
		PortalTracking = dialog:AddToBlizOptions("Feature Settings", "Feature Settings", "MageGate"),
		GateFxOptions = dialog:AddToBlizOptions("Gate Sound Effects", "Gate Sound Effects", "MageGate"),
		teleoptions = dialog:AddToBlizOptions("Teleport Settings", "Teleport Settings", "MageGate"),
	--	profiles = dialog:AddToBlizOptions("Profiles", "Profiles", "MageGate")
	}
	
	
	self:RegisterEvent("UNIT_SPELLCAST_START")
	self:RegisterEvent("UNIT_SPELLCAST_STOP")
	self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	self:RegisterEvent("UNIT_SPELLCAST_FAILED_QUIET")
	self:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED") 
	--self:RegisterEvent("WORLD_MAP_UPDATE")
	self:RegisterEvent("UI_ERROR_MESSAGE") -- REMOVE
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:SecureHook("TurnOrActionStart","CCL")
	self:SecureHook("TurnOrActionStop","SSL")

	self:SecureHook("PlaySoundFile","Soundcatch")
	self:SecureHook("PlaySound","Soundcatch")

	self:SecureHook("AcceptBattlefieldPort","BGTeleportEffect")
	self:SecureHook("LeaveBattlefield","BGTeleportEffect")
	self:HookScript(GameTooltip,"OnUpdate","CIT")
	self:SecureHook("LFGTeleport","LFGTeleportEffect")
	
	self:SecureHook(C_SummonInfo,"ConfirmSummon","SummSound")
	self:RegisterComm("MageGate") 

	DHDScroll = CreateFrame("Frame", "PortScroll", MageGateDHD.portals)
	DHDScroll:SetSize(128, 28)
	DHDScroll:SetPoint("TOPLEFT", MageGateDHD.portals,10,-60 )
	DHDScroll:Show()
		
	MageGateDHD.portals.DHDScroll = DHDScroll
 
	MageGateDHD.portals:SetScrollChild(DHDScroll)
	 MageGate:FillDHDScroll()
	MageGate:FillGlyphButtons()
end
function MageGate:SetUpMGRingFrame()
	MGRingFrame.art:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Syms.blp")
	MGRingFrame.outer:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Stargate Outer.blp")
	--GateSpinTimer
	--TODO Light chevrons
end
function MageGate:SetUpDHDforPortalID(pid)
	currentPortal = pid
	--TODO  Change Selected Chevrons.
	--TODO  Change Enabled.
	--TODO  Change entered Dial Sequence
end
function MageGate:EngageChevron(index)
	if index == 1 then
		MGRingFrame.glyph1:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph1:Show()
	end
	if index == 2 then
		MGRingFrame.glyph2:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph2:Show()
	end
	if index == 3 then
		MGRingFrame.glyph3:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph3:Show()
	end
	if index == 4 then
		MGRingFrame.glyph4:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph4:Show()
	end
	if index == 5 then
		MGRingFrame.glyph5:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph5:Show()
	end
	if index == 6 then
		MGRingFrame.glyph6:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph6:Show()
	end
	if index == 7 then
		MGRingFrame.glyph7:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph7:Show()
	end
	if index == 8 then
		MGRingFrame.glyph8:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph8:Show()
	end
	if index == 9 then
		MGRingFrame.glyph9:SetTexture("Interface\\AddOns\\MageGate\\Images\\Star Gates\\Classic\\Chevron "..index.." Engaged.blp")
		MGRingFrame.glyph9:Show()
	end
	
end
function MageGate:FillGlyphButtons()
--glyphButtons
	local level = 0
	for k = 1, 39 do
		glyphButtons[k] = CreateFrame("Button","MGGlyphButton"..k,MageGateDHD.GlyphMGFrame)
		glyphButtons[k]:SetSize(20,20)
glyphButtons[k]:Show()
		local index = k
		glyphButtons[k]:SetScript("OnClick", function() print(index) end)
		glyphButtons[k]:SetNormalTexture("Interface\\Addons\\MageGate\\Images\\Glyphs\\Glyph "..k)
		end
		
		for k = 1,13 do
			if (k)%13 == 0 then
				glyphButtons[k]:SetPoint("TOPLEFT", MageGateDHD.GlyphMGFrame, "TOPLEFT", (22* (12) ),-22*level)
				level = level + 1
			else
				glyphButtons[k]:SetPoint("TOPLEFT", MageGateDHD.GlyphMGFrame, "TOPLEFT", (22* ((k%13)-1) ),-22*level)
			end
		end
		for k = 1,13 do
			if (k)%13 == 0 then
				glyphButtons[k+13]:SetPoint("TOPLEFT", MageGateDHD.GlyphMGFrame, "TOPLEFT", (22* (12) ),-22*level)
				level = level + 1
			else
				glyphButtons[k+13]:SetPoint("TOPLEFT", MageGateDHD.GlyphMGFrame, "TOPLEFT", (22* ((k%13)-1) ),-22*level)
			end
		end
		for k = 1,13 do
			if (k)%13 == 0 then
				glyphButtons[k+26]:SetPoint("TOPLEFT", MageGateDHD.GlyphMGFrame, "TOPLEFT", (22* (12) ),-22*level)
				level = level + 1
			else
				glyphButtons[k+26]:SetPoint("TOPLEFT", MageGateDHD.GlyphMGFrame, "TOPLEFT", (22* ((k%13)-1) ),-22*level)
			end
		end
end
function MageGate:FillDHDScroll()
--MageGateDHD.portals

	--DHDScroll			= nil
local portalButtons = {}

	--PortalListElement
	--portalsID[key] = portal name
	local count = 1
	for k,v in pairs (portalsID) do
		portalButtons[count] = {ID = k, 
			Frame = CreateFrame("Frame","portalbutton"..count, DHDScroll,"PortalListElement")}
--	
	if count == 1 then
			portalButtons[count].Frame:SetPoint("TOPLEFT", DHDScroll,"TOPLEFT")
		else
			portalButtons[count].Frame:SetPoint("TOPLEFT", portalButtons[count-1].Frame,"BOTTOMLEFT")
		end
		portalButtons[count].Frame.but.dest:SetText(v)
		local key = k
		portalButtons[count].Frame.but:SetScript("OnClick", function () 
		
		MageGate:SetUpDHDforPortalID(key)
		end)
		count = count + 1
	end
end

--GateCastBar		= {
--								Enabled = true,
--								NumChevrons = 7,
--								Glyphs = {}
--							}
function MageGate:ToggleMode()
	for k,v in pairs (self.optionFrames.PortalTracking) do
		
	end

end
function MageGate:OnEnable()
end

function MageGate:OnDisable()
end

function MageGate:OnCommReceived (prefix, mess, distr, sender)
	local yourName = UnitName("player")

	if sender ~= yourName then
		splitMes = MageGate:MessageBreaker(mess)
		len = MageGate:TableSize(splitMes)
		--MageGate:SendCommMessage("MageGate","New Portal~"..UnitName(casterName).."~"..spellID.."~"..m.."~"..f.."~"..x.."~"..y,MageGate:GateGroup ())
		if splitMes [1] == "New Portal" then
		
			caster = splitMes[2]
			spellID = tonumber(splitMes[3]) ---
			m = tonumber(splitMes[4])
			f = tonumber(splitMes[5])
			x = tonumber(splitMes[6])
			y = tonumber(splitMes[7])
			portalKey = caster.."-"..spellID
			if openPortalList[portalKey] == nil then
				openPortalList[portalKey] = {	duration = 60,
												spent = 0,
												sfxTimer = 0,
												icon ={}}
				MageGate:ScheduleTimer("PortalExpire",60,UnitName(caster).."-"..spellID)
				if self.db.profile.Marker then
					MageGate:AddPortalToMinimap(caster, spellID,m, f, x, y )
				end
			end
		end
	end
end

-- ========================================================================================================================================================= --
---------------------------------------------------- Hook Functions ----------------------------------------------------
-- ========================================================================================================================================================= --
---The hook handler for AcceptBattlefieldPort.
-- Added in MageGate version 7.1.   8/21/2012.
function MageGate:BGTeleportEffect()
	if MageGate.db.profile.BGTeleport.Active then
	MageGate:CreateEffectEvent("bgteleport", "player", MageGate.db.profile.BGTeleport.Sound+7, soundLevels[MageGate.db.profile.BGTeleport.Level], {})
	end
end
function MageGate:LFGTeleportEffect()
	if MageGate.db.profile.InstanceTeleport.Active == true then
		MageGate:CreateEffectEvent("lgfteleport", "player", MageGate.db.profile.InstanceTeleport.Sound+7, soundLevels[MageGate.db.profile.InstanceTeleport.Level], {})
	end
end
function MageGate:CIT()
--print(_G["GameTooltipTextLeft1"]:GetText())
	if _G["GameTooltipTextLeft1"]:GetText()~= nil then
		local beg, last = string.find(_G["GameTooltipTextLeft1"]:GetText(), L["Portal1"]);
		if strfind(strlower(_G["GameTooltipTextLeft1"]:GetText()),L["SOUL_PORTAL"]) ~= nil then
		
			if beg ~= nil then
				--print("It is a portalA")
				goingThroughPortal = true
			
			else
				goingThroughPortal = false
			end
		end
	end
end

--TurnOrActionStart
function MageGate:CCL()
if _G["GameTooltipTextLeft1"]:GetText()~= nil then
		local beg, last = string.find(_G["GameTooltipTextLeft1"]:GetText(), L["Portal1"]);
		if inRange ==false then
		end
	end
end
local xxx = 0
local yyy = 0
function MageGate:SSL()
	--GameTooltip:ClearLines()
	--GameTooltip:Show()
	if _G["GameTooltipTextLeft1"]:GetText()~= nil then
		local beg, last = string.find(_G["GameTooltipTextLeft1"]:GetText(), L["Portal1"]);
		if beg ~= nil then
			--print("stopped Is portal")
			if inRange then
			--	print("Stoop GOOD")
			else
				
			end
			goingThroughPortal = true
			--xxx, yyy = GetPlayerMapPosition("player");
		else
			goingThroughPortal = false
		end
	end
	inRange = true
end
-- ========================================================================================================================================================= --
---------------------------------------------------- Portal Tracking Functions ----------------------------------------------------
-- ========================================================================================================================================================= --

function MageGateMinimap_OnClick(self)
	--print("Casted by "..self.caster..".  Remainind time: "..tostring(60-(time()-openPortalList[self.caster.."-"..self.special].spent)))
	MageGate:Mprint(string.format(L["CASTER_REMAINING"],self.caster, 60-(time()-openPortalList[self.caster.."-"..self.special].spent)))
end
--- On cursor entering an icon of a portal on the Minimap.
-- The function is called when the cursor enters an icon on the minimap.
-- It will fill in a tooltip by that portal displaying where that portal goes.
-- @param self The icon that the cursor is over. 
-- @param motion Not used but needed.
function MageGatemarkerOnEnter(self, motion)

	name = select(1,GetSpellInfo(self.special))
	local beg, last = string.find(name, L["PORTAL_SEP"]);

	local destinationName =  ""
	if beg == nil then
		--Wormhole
		destinationName=	wormholeDestinations[spellID]

	else
		destinationName =	string.sub(name, last+2)
	end
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
	GameTooltip:SetText(destinationName)
	GameTooltip:Show()
end
--- On cursor leaving an icon of a portal on the Minimap.
-- The function is called when the cursor leaves an icon on the minimap.
-- It will hide the tooltip that was shown for the portal.
-- @param selfl The icon that the cursor is over. 
-- @param motion Not used but needed.
function MageGate:markerOnLeave(selfl, motion)
	GameTooltip:Hide()
end

--- Checks if the player is near a portal in the portal table.
--TODO.
--@return boolean.
function MageGate:IsNearPortal(portalKey)
	x1, y1, m1, f1 = HBD:GetPlayerWorldPosition()
HBD:GetPlayerWorldPosition()
HBD:GetZoneDistance(oZone, oX, oY, dZone, dX, dY)
	if x1 ~= nil and y1~= nil then
	HBD:GetZoneDistance(m1, f1, x1, y1, openPortalList[portalKey].icon.m, openPortalList[portalKey].icon.f, openPortalList[portalKey].icon.x, openPortalList[portalKey].icon.y)
	--HBD:GetWorldDistance
	dist, xDelta, yDelta = 	HBD:GetZoneDistance(m1, f1, x1, y1, openPortalList[portalKey].icon.m, openPortalList[portalKey].icon.f, openPortalList[portalKey].icon.x, openPortalList[portalKey].icon.y)
		if dist ~= nil then
			if dist < 60 then
				if MageGate.db.profile.PortalClose.Active then
					PlaySoundFile(soundEffectTable["close"].fileName,soundLevels[MageGate.db.profile.PortalClose.Level])
				end
			end
		end
	end
end
--- Adds a portal to the table of portals.
--
-- @param casterName The name of the person who made the portal.
-- @param spellID The spell ID of the portal spell that was cast.
function MageGate:AddOpenPortal(casterName, spellID)
--Step 1:  Add it to the table.
--Step 2:  Create a timer, if the duration is not negative.
	if openPortalList[UnitName(casterName).."-"..spellID] == nil then
		openPortalList[UnitName(casterName).."-"..spellID] = { duration = 60, spent = time(), sfxTimer = 0, icon ={}}
		MageGate:ScheduleTimer("PortalExpire",63,UnitName(casterName).."-"..spellID)
--HBD:GetUnitWorldPosition(unitID)
--HBD:GetPlayerZonePosition()
--HBD:GetWorldCoordinatesFromZone(x, y, zone, level)
		local x, y, m, f	= HBD:GetPlayerZonePosition();
		--astrolabe:GetUnitPosition(UnitName(casterName), true)
--		protX				= x;
--		protY				= y
	
		--print("New Portal~"..UnitName(casterName).."~"..spellID.."~"..m.."~"..f.."~"..x.."~"..y)
		if m ~= nil and x ~= nil and y~= nil then
			if MageGate:GateGroup () ~="SAY" then
		
				MageGate:SendCommMessage("MageGate","New Portal~"..UnitName(casterName).."~"..spellID.."~"..m.."~"..f.."~"..x.."~"..y,MageGate:GateGroup ())
				--print("New Portal~"..UnitName(casterName).."~"..spellID.."~"..m.."~"..f.."~"..x.."~"..y)
			
			end
			MageGate:AddPortalToMinimap(UnitName(casterName), spellID,m, f, x, y)
		end
		
	end
end
--- Portal Timer Expired handler.
-- This function is called when a portal's lifetime timer goes off.  This function will
-- remove the portal from the minimap and from openPortalList.
-- @param id The ID of the portal.
function MageGate:PortalExpire(id)
		MageGate:IsNearPortal(id)
		--TODO remove minimap icon
		--astrolabe:RemoveIconFromMinimap(openPortalList[id].icon.minimap)--Unknown glitch
		--ClearWaypoint openPortalList[casterName.."-"..spellID].uid 

		HBDpin.RemoveMinimapIcon(self, openPortalList[id].icon);
		openPortalList[id]=nil
end
function MageGate:TogglePortalHide(valu)
	for id, val in pairs (openPortalList) do
		if valu == true then

			openPortalList[id].icon.show_minimap	=true
			openPortalList[id].icon.minimap:Show()
			--TODO place minimap icon
			--astrolabe:PlaceIconOnMinimap(openPortalList[id].icon.minimap, openPortalList[id].icon.m, openPortalList[id].icon.f, openPortalList[id].icon.x, openPortalList[id].icon.y)

		else
		--TODO remove minimap icon
			--astrolabe:RemoveIconFromMinimap(openPortalList[id].icon.minimap)

		end
	end
end

--- Toggle Minimap Markers.
-- This function turns whether markers for portals are shown on the minimap on or off.
-- @param info Ace3 parameter.
-- @param val Ace3 parameter.  Unused.
function MageGate:MarkerToggle(info,val)
	self.db.profile.Marker = self.db.profile.Marker == false
	if self.db.profile.Marker then
		MageGate:Mprint(L["MARKER_ON"])
	else
		MageGate:Mprint(L["MARKER_OFF"])
	end
end
--- Add a portal to the Minimap.
--
-- @param casterName The name of the caster.
-- @param spellID The spellID of the portal.
-- @param m
-- @param f
-- @param x The x coordinates of the caster.
-- @param y The y coordinates of the caster.
function MageGate:AddPortalToMinimap(casterName, spellID,m, f, x, y)
	
	local minimap = CreateFrame("Button", nil, minimapParent)
	minimap:SetHeight(20)
	minimap:SetWidth(20)
	
	minimap.icon = minimap:CreateTexture("BACKGROUND")
	if spellID == 10059 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\SW")
	end
	if spellID == 11416 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\IF")
	end
	if spellID == 11419 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\Dar")
	end
	if spellID == 32266 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\Exa")
	end
	if spellID == 49360 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\Thera")
	end
	if spellID == 88345 or spellID == 88346 or spellID == 176246 or spellID == 176244 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\TBA")
	end
	if spellID == 35717 or spellID == 33691  then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\Shatt")
	end
	if spellID == 132626 or spellID == 132620 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\ev")
	end
	if spellID == 11417 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\Org")
	end
	if spellID == 11418 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\UC")
	end
	if spellID == 11420 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\Thun")
	end
	if spellID == 49361 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\Sto")
	end
	if spellID == 32267 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\SM")
	end
	if spellID == 53142 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\Dal")
	end
	if spellID == 120146 then
		minimap.icon:SetTexture("Interface\\AddOns\\MageGate\\Images\\A Dal")
	end
	minimap.special = spellID
	minimap.caster = casterName
	minimap:SetScript("OnEnter",  MageGatemarkerOnEnter)
    minimap:SetScript("OnLeave", markerOnLeave)
	minimap:SetScript("OnClick", MageGateMinimap_OnClick)
	minimap.icon:SetPoint("CENTER", 0, 0)
	minimap:SetAlpha(MageGate.db.profile.PortalTracking.Alpha)
	minimap.icon:SetHeight(12)
	minimap.icon:SetWidth(12)
	minimap.arrow = minimap:CreateTexture("BACKGROUND")
	minimap.arrow:SetTexture("Interface\\AddOns\\MageGate\\Images\\Chevron Arrow")
	minimap.arrow:SetPoint("CENTER", 0 ,0)
	minimap.arrow:SetHeight(40)
	minimap.arrow:SetWidth(40)
	minimap.arrow:Hide()

	point											= {}
	point.m											= m
    point.f											= f
    point.x											= x
    point.y											= y
    point.show_world								= true
    point.show_minimap								= true
	point.minimap									= minimap
	openPortalList[casterName.."-"..spellID].icon	= point
	openPortalList[casterName.."-"..spellID].icon.minimap = minimap
	openPortalList[casterName.."-"..spellID].icon.minimap.special = spellID
	openPortalList[casterName.."-"..spellID].icon.minimap.caster = casterName
  --  point.minimap.callbacks = callbacks and callbacks.minimap
	if  MageGate.db.profile.PortalTracking.Minimap == false then
		minimap.icon:Hide()
	end
	--print("ADD")
	--openPortalList[casterName.."-"..spellID].icon.minimap
	--function pins:AddMinimapIconMF(ref, icon, mapID, mapFloor, x, y, floatOnEdge)
		--	HBDpin.AddMinimapIconMF(self, 
		--	point,				--icon
		--	m, 		--mapID
		--	f, 															--mapFloor
			--x, 															--x
		--	y, 															--y
		--	false)														--floatOnEdge)
	--, icon, instanceID, x, y, floatOnEdge)
	--openPortalList[casterName.."-"..spellID].icon.minimap
		--astrolabe:PlaceIconOnMinimap(openPortalList[casterName.."-"..spellID].icon.minimap, m, f, x, y)
	
	
	
	
	
	
	
	

    -- Try to acquire a waypoint from the frame pool
  

    

    --waypointMap[waypoint] = point

    point.m = m
    point.f = f
    point.x = x
    point.y = y
    point.show_world = show_world
    point.show_minimap = show_minimap
    point.callbacks = callbacks
   -- point.worldmap.callbacks = callbacks and callbacks.world
    point.minimap.callbacks = callbacks and callbacks.minimap

    -- Process the callbacks table to put distances in a consumable format

	-- Clear the state for callbacks
	point.state = nil
	point.lastdist = nil

    -- Link the actual frames back to the waypoint object
    point.minimap.point = point
   -- point.worldmap.point = point
    point.uid = waypoint

    -- Place the waypoint
	openPortalList[casterName.."-"..spellID].icon = point.minimap;
	openPortalList[casterName.."-"..spellID].uid = waypoint
    HBDpin:AddMinimapIconWorld(self, openPortalList[casterName.."-"..spellID].icon, m, f, x, y, true)
	
	
	
	
	
end

-- ========================================================================================================================================================= --
--													Event Handlers
-- ========================================================================================================================================================= --



---This function is the handler for a spellcast starting.
--@param eveName
--@param unitID
--@param spell
--@param rank
--@param lineID
--@param spellID
function MageGate:UNIT_SPELLCAST_START(eveName, unitID, lineID, spellID)


	if isAPortal(spellID) and (unitID == "player") then
	
	local destinationName = portalsID[spellID]

		MageGate:Anniversary()
		if MageGate.db.profile.SinglePortalSetting.Active == false then
			MageGate:CreateEffectEvent(spellID, unitID, MageGate.db.profile.Portal[spellID].RingTurning, soundLevels[MageGate.db.profile.Portal[spellID].Level], {"UNIT_SPELLCAST_FAILED_QUIET", "UNIT_SPELLCAST_INTERRUPTED", "UNIT_SPELLCAST_STOP", "UNIT_SPELLCAST_SUCCEEDED"})
			channeling = true;
			
			--AnnounceDialing
			if MageGate.db.profile.Portal[spellID].AnnounceDialing then
			
				if spellID == 120146 then
					if MageGate.db.profile.Honest == true then
						self.SendGateMessage(string.format(L["DIALING_START"], L["Ancient_Dalaran"]), spellID); --Displays portal destination
					else
						self.SendGateMessage(string.format(L["DIALING_START"], destinationName), spellID); --Displays portal destination
					end
				else
					self.SendGateMessage(string.format(L["DIALING_START"], destinationName), spellID); --Displays portal destination
				end
				
			end

			if MageGate.db.profile.Portal[spellID].ChevronCall == true then  -- Only needs timer if chevron counter is on.

				local name, rank, icon, castTime, minRange, maxRange = GetSpellInfo(spellID)

				--print (castTime .. " / " .. MageGate.db.profile.Portal[spellID].ChevronCount..  " * 1000")--  castTime / (MageGate.db.profile.Portal[spellID].ChevronCount*1000))
				pTimer = MageGate:ScheduleRepeatingTimer("ChevronNLocked", castTime / (MageGate.db.profile.Portal[spellID].ChevronCount*1000), spellID )
			end
		else
			MageGate:CreateEffectEvent(spellID, unitID,  MageGate.db.profile.SinglePortalSetting.RingTurning, soundLevels[ MageGate.db.profile.SinglePortalSetting.Level], {"UNIT_SPELLCAST_FAILED_QUIET", "UNIT_SPELLCAST_INTERRUPTED", "UNIT_SPELLCAST_STOP", "UNIT_SPELLCAST_SUCCEEDED"})
			channeling = true;
			--AnnounceDialing
			if MageGate.db.profile.SinglePortalSetting.AnnDial then
				self.SendGateMessage(string.format(L["DIALING_START"], destinationName)); --Displays portal destination
			end
			if  MageGate.db.profile.SinglePortalSetting.FullChev == true then  -- Only needs timer if chevron counter is on.
				local name, rank, icon, castTime, isFunnel, powerType, emyt, minRange, maxRange = GetSpellInfo(spell)
				pTimer = MageGate:ScheduleRepeatingTimer("ChevronNLocked", castTime / ( MageGate.db.profile.SinglePortalSetting.ChevMax*1000), spellID )
			end
		end
	-- ! Timer
	end
end
inRange = true
function MageGate:UI_ERROR_MESSAGE(info, mess)

	inRange = false
end
--@param eveName
--@param unitID
--@param spell
--@param rank
--@param lineID
--@param spellID
function MageGate:UNIT_SPELLCAST_STOP(eveName, unitID, lineID, spellID)

end
---This function handles the event of a unit successfully casting a spell.
--@param eveName .
--@param unitID .
--@param lineID .
--@param spellID .
function MageGate:UNIT_SPELLCAST_SUCCEEDED(eveName, unitID, lineID, spellID)
	--Doesn't cancel timer, it might have stoped itself
	
	if unitID ~= nil  and spellID ~= nil and UnitName(unitID)~= nil then
	
	key = UnitName(unitID).."-"..spellID
	if EndEffectConditions[eveName]~= nil then
		if EndEffectConditions[eveName][key] == true then
			if  ActiveEffect[key] ~= nil then
				if ActiveEffect[key].Func ~= nil then
					if ActiveEffect[key].Func(eveName, unitID, lineID, spellID) == true then
						MageGate:CancelTimer(ActiveEffect[key].Timer,true)
						ActiveEffect[key] = nil
						for ke, va in pairs (EndEffectConditions) do
							for ek, av in pairs (EndEffectConditions[ke]) do
								if ek == key then
									EndEffectConditions[ke][ek] = nil
								end
							end
						end
					end
				end
			end
		end
	end

	if MageGate:isATeleport(spellID)  then
		if MageGate.db.profile.SingleTeleportSetting.Active == false then
			if MageGate.db.profile.Teleports[tostring(spellID)].JustYou == true and UnitName(unitID) ~=UnitName("player") then
				return nil
			end
			if MageGate.db.profile.Teleports[tostring(spellID)].Sound ~= 1 then
				MageGate:CreateEffectEvent(spellID, unitID, MageGate.db.profile.Teleports[tostring(spellID)].Sound+6, soundLevels[MageGate.db.profile.Teleports[tostring(spellID)].Level], {})
			end
		else
			if MageGate.db.profile.SingleTeleportSetting.JustYou == true and UnitName(unitID) ~=UnitName("player") then
				return nil
			end
			if MageGate.db.profile.SingleTeleportSetting.Sound ~= 1 then
				MageGate:CreateEffectEvent(spellID, unitID, MageGate.db.profile.SingleTeleportSetting.Sound+6, soundLevels[MageGate.db.profile.SingleTeleportSetting.Level], {})
			end
		end
	end

	if isAPortal(spellID)  then
		MageGate:AddOpenPortal(unitID,spellID)
		if  (unitID == "player") then
			channeling = false;
		end
		
		if MageGate.db.profile.SinglePortalSetting.Active then
			if MageGate.db.profile.SinglePortalSetting.JustYou then
				
				if unitID == "player" then
					MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Kawoosh 1.ogg",soundLevels[MageGate.db.profile.SinglePortalSetting.Level])
					if unitID == "player" then
						if MageGate.db.profile.SinglePortalSetting.AnnLock then
				self.SendGateMessage(string.format(L["CHEVRON_N_LOCKED"], MageGate.db.profile.SinglePortalSetting.ChevMax));
				end
			end
				end
			else
				MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Kawoosh 1.ogg",soundLevels[MageGate.db.profile.SinglePortalSetting.Level])
			end
		
		else
			if self.db.profile.JustYou then
			
				if unitID == "player" then

					MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Kawoosh 1.ogg",soundLevels[MageGate.db.profile.Portal[spellID].Level])
				end
			else	
				MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Kawoosh 1.ogg",soundLevels[MageGate.db.profile.Portal[spellID].Level])
			end
		
			if unitID == "player" and  MageGate.db.profile.Portal[spellID].AnnounceLock then
				self.SendGateMessage(string.format(L["CHEVRON_N_LOCKED"], MageGate.db.profile.Portal[spellID].ChevronCount));
			end
		end
		
			
		end
		
	end
	
end
---This function is called when a spellcast is interrupted.
--@param eveName
--@param unitID
--@param lineID
--@param spellID
function MageGate:UNIT_SPELLCAST_INTERRUPTED(eveName, unitID, lineID, spellID)
	if UnitName(unitID) ~= nil and spellID ~= nil then
		key = UnitName(unitID).."-"..spellID
		if EndEffectConditions[eveName]~= nil then
			if  ActiveEffect[key] ~= nil then
				if EndEffectConditions[eveName][key] == true then
					if ActiveEffect[key].Func ~= nil then
						if ActiveEffect[key].Func(eveName, unitID, lineID, spellID) == true then
							MageGate:CancelTimer(ActiveEffect[key].Timer,true)
							--TODO stop sound
							StopSound(ActiveEffect[key].SoundEffectID)
							ActiveEffect[key] = nil
							for ke, va in pairs (EndEffectConditions) do
								for ek, av in pairs (EndEffectConditions[ke]) do
									if ek == key then
										EndEffectConditions[ke][ek] = nil
									end
								end
							end
						end
					end
				end
			end
		end
		if channeling == false then
			return
		end
		
		if isAPortal(spellID)  then
		
			if  (unitID == "player")  then
				channeling = false;
				if MageGate.db.profile.Portal[spellID].AnnounceAbort and MageGate.db.profile.SinglePortalSetting.Active == false or MageGate.db.profile.SinglePortalSetting.Active and MageGate.db.profile.SinglePortalSetting.AnnAbort then
					self.SendGateMessage(L["DIALING_ABORTED"]);
				end
				if self.db.profile.ChevronCounter == true or MageGate.db.profile.SinglePortalSetting.FullChev == true then
					self:CancelChevrons();
					--self:CancelRing();
				end
			end
			if MageGate.db.profile.SinglePortalSetting.Active then
				if MageGate.db.profile.SinglePortalSetting.JustYou then
					if unitID == "player" then
						if MageGate.db.profile.SinglePortalSetting.Abort == 1  then 
							MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\SG-1 Dial Abort.ogg",soundLevels[MageGate.db.profile.SinglePortalSetting.Level])
						end
						if MageGate.db.profile.SinglePortalSetting.Abort == 2  then 
						--Atlantis Dial Abort
							MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Atlantis Dial Abort.ogg",soundLevels[MageGate.db.profile.SinglePortalSetting.Level])
						end
						if MageGate.db.profile.SinglePortalSetting.Abort == 3  then 
						--Universe Dial Abort
							MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\SGU Abort.ogg",soundLevels[MageGate.db.profile.SinglePortalSetting.Level])
						end
					end
				else
					MageGate:CreateEffectEvent(spellID, unitID, startSoundSchemes[3+MageGate.db.profile.SinglePortalSetting.Abort], soundLevels[MageGate.db.profile.SinglePortalSetting.Level], {})	
				end
			else
		
				if self.db.profile.JustYou then
					if unitID == "player" then
						if MageGate.db.profile.Portal[spellID].Abort == 1  then 
							MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\SG-1 Dial Abort.ogg",soundLevels[MageGate.db.profile.Portal[spellID].Level])
						end
						if MageGate.db.profile.Portal[spellID].Abort == 2  then 
						--Atlantis Dial Abort
							MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Atlantis Dial Abort.ogg",soundLevels[MageGate.db.profile.Portal[spellID].Level])
						end
						if MageGate.db.profile.Portal[spellID].Abort == 3  then 
						--Atlantis Dial Abort
							MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\SGU Abort.ogg",soundLevels[MageGate.db.profile.Portal[spellID].Level])
						end
					end
				else
					MageGate:CreateEffectEvent(spellID, unitID, startSoundSchemes[3+MageGate.db.profile.Portal[spellID].Abort], soundLevels[MageGate.db.profile.Portal[spellID].Level], {})	
				end
			end
		end
	end
end
---This function handles the event when a unit fails a spellcast.
--@param eveName
--@param unitID
--@param lineID
--@param spellID
function MageGate:UNIT_SPELLCAST_FAILED_QUIET(eveName, unitID,  lineID, spellID)
	if UnitName(unitID) ~= nil and spellID ~= nil then
		key = UnitName(unitID).."-"..spellID
		if EndEffectConditions[eveName]~= nil then
			if EndEffectConditions[eveName][key] == true then
				if ActiveEffect[key].Func ~= nil then
					if ActiveEffect[key].Func(eveName, unitID, lineID, spellID) == true then
						MageGate:CancelTimer(ActiveEffect[key].Timer,true)
						ActiveEffect[key] = nil
						for ke, va in pairs (EndEffectConditions) do
							for ek, av in pairs (EndEffectConditions[ke]) do
								if ek == key then
									EndEffectConditions[ke][ek] = nil
								end
							end
						end
					end
				end
			end
		end
		if channeling == false then
			return
		end
		if isAPortal(spellID) and (unitID == "player") then
			channeling = false;
			self.SendGateMessage(L["DIALING_ABORTED"]);
			if self.db.profile.ChevronCounter == true then
				self:CancelChevrons();
			end
			MageGate:CreateEffectEvent(spellID, unitID, startSoundSchemes[3+MageGate.db.profile.Portal[spellID].Abort], MageGate.db.profile.Portal[spellID].Level, {})
		end
	end
end
---
function MageGate:PLAYER_ENTERING_WORLD()
	if goingThroughPortal and self.db.profile.WormExit then
		MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Exit-Enter 1.ogg", "Master")
		GameTooltip:ClearLines()
		goingThroughPortal = false;
	else
		goingThroughPortal = false;
	end
end
---
function MageGate:WORLD_MAP_UPDATE()
	if goingThroughPortal and self.db.profile.WormExit then
		local map = C_Map.GetBestMapForUnit("player")
		local position = C_Map.GetPlayerMapPosition(map, "player");
		posX, posY = position.GetXY()
			if xxx == posX and posY == yyy then
			MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Exit-Enter 1.ogg", "Master")
			GameTooltip:ClearLines()
			goingThroughPortal = false;
			end
		else
			goingThroughPortal = false;
	end
end

-- ==========================================================================================================================================================--
--													Classic Settings Functions
-- ==========================================================================================================================================================--


function MageGate:ToogleJustYou()
	self.db.profile.JustYou = self.db.profile.JustYou == false
	if self.db.profile.JustYou then
		MageGate:Mprint(L["CASTER_YOU"])
	else
		MageGate:Mprint(L["CASTER_ALL"])
	end
end
-- @param info, val  not really used.
function MageGate:toggleWormExit(info,val)
	self.db.profile.WormExit = self.db.profile.WormExit == false
	if self.db.profile.WormExit then
		MageGate:Mprint(L["WORM_EXIT_ON"])
	else
		MageGate:Mprint(L["WORM_EXIT_OFF"])
	end
	
end

function MageGate:TravellerToggle(info,val)
	self.db.profile.Traveller = self.db.profile.Traveller == false
	if self.db.profile.Traveller == true then
		MageGate:Mprint(L["self.db.profile.Traveller_OFF"])
	else
		MageGate:Mprint(L["self.db.profile.Traveller_ON"])
	end
end
function MageGate:ChangeChevronCounter(info, val)
	if val then
		MageGate.db.profile.ChevronCounter = true
		MageGate:Mprint(string.format(L["CHEV_COUNT_ON"]))
	else
		MageGate.db.profile.ChevronCounter = false
		MageGate:Mprint(string.format(L["CHEV_COUNT_OFF"]))
	end
end
-- Graphics

function MageGate:ShowGateChanneling ()
	CastingBarFrame:Hide()
end

-- ========================================================================================================================================================== --
--									Utility Functions 
-- ========================================================================================================================================================== --

--- Check to see if it is Mage Gate's anniversary.
-- August 10.
function MageGate:Anniversary()
	--weekday, month, day, year = CalendarGetDate();
	--if month == 8 and day == 10 then
	--	MageGate:Mprint(L["ANNIVERSARY"])
	--end
end
--- A function that does a more formal printout for Mage Gate.
--@param s the input string.
function MageGate:Mprint(s)
	DEFAULT_CHAT_FRAME:AddMessage(("|cffffd800<|r|cffffd200%s|r|cffffd800>|r %s"):format(tostring("MageGate"), tostring(s..".")))
				--					 cffffd800
end
--- Plays a sound effect, reguardless of client sound settings.
function MageGate:PlayFX(info, val)
		if soundEffectTable[val] ~= nil then
			PlaySoundFile(soundEffectTable[val].fileName, "Master")
		else
			MageGate:Mprint(L["SOUND_LIST"] )
			for key,val in pairs(soundEffectTable) do
				MageGate:Mprint(key)
			end
		end
end

---Hijack the SendChatMessage function when not in a group.
--@param message string
function MageGate.SendGateMessage(message, spellID)
	local chat_type = MageGate:GateGroup()

	if(chat_type == "SAY") then
		print(string.format(message))
	else
		SendChatMessage(message, chat_type)
	end
end

--This function is used to determine which kind of group,
--if any, the player is in.  It returns the channel name
--needed to reach all the players in that group.
--The return value is a String.
---
function MageGate:GateGroup ()
	if(IsInGroup(LE_PARTY_CATEGORY_INSTANCE)) then
		return "INSTANCE_CHAT"
	end
	local chan = select(2, IsInInstance()) == "pvp" and "INSTANCE_CHAT" or ((UnitInRaid("player") and "RAID") or (UnitInParty("player") and "PARTY") or "SAY")

	return chan
end

--- Do a sound effect.
-- This function will play a sound effect based on the current settings.
-- If master is on, it will play sound effects so that they are always heard.
-- Otherwise, it will play sound effects dependent on the client's sound.
-- @param fx The sound file address.
function MageGate:DoFx(fx, level)


		PlaySoundFile(fx,level)

end
function MageGate:TableSize(tab)
	count =0
	for key,val in pairs(tab) do
		count= count +1
	end
	return count
end
---
--@param str A string.
--@return eke A table containing the parts of the input string.
function MageGate:MessageBreaker(str)
	temp = str
	eke = {}
	count = 1
	while string.find(temp,"~")~= nil do
		eke[count]=string.sub(temp,0,string.find(temp,"~")-1)
		count = count+1
		temp = string.sub(temp,string.find(temp,"~")+1,string.len(temp))
	end
	eke[count] = temp
	return eke
end
---Another message break functions.
--@param str the string to break up.
--@return eke the table that holds the parts of str.
function MageGate:MessageBreaker2(str)
	temp = str
	eke = {}
	count = 1
	while string.find(temp,"-")~= nil do
		eke[count]=string.sub(temp,0,string.find(temp,"-")-1)
		count = count+1
		temp = string.sub(temp,string.find(temp,"-")+1,string.len(temp))
	end
	eke[count] = temp
	return eke
end


-- ========================================================================================================================================================== --
--  Gate Spinning Cast Bar Effect
-- ========================================================================================================================================================== --
local spinTimer = nil


function MageGate:DialingForSpin(spellID)
	
	if MageGate.db.profile.Portal[spellID].GateCastBar.Enabled then
		if #MageGate.db.profile.Portal[spellID].GateCastBar.Glyphs ~= ageGate.db.profile.Portal[spellID].GateCastBar.NumChevrons then
			print("Glyphs were not set")
		else
		
		end
	end
		
		-- = {
		--						Enabled = true,
		--						NumChevrons = 7,
		--						Glyphs = {}
		--					}
end


-- ========================================================================================================================================================== --
-- No longer used functions.
-- ========================================================================================================================================================== --
--local rTimer			= nil
---Ring Turning sound effect loop function.
--This function is called by rTimer when it reaches the end of a cycle.
--If the caster is still making a portal, it will continue the sound loop.
--If the caster has stopped, either because the portal is complete or the caster aborted,
--the function will stop rTimer from looping again.
--function MageGate:RingLoop(spellID)
--	if channeling == false then
--		--self:CancelRing()
--		ringCount = 0
--		return
--	end
--	if MageGate.db.profile.Portal[spellID].RingTurning == 1 then
--		MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\SG Ring Turning without start.ogg")
--	end
--	if MageGate.db.profile.Portal[spellID].RingTurning == 2 then
--		MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Atlantis Ring Turn.ogg")
--	end
--	if MageGate.db.profile.Portal[spellID].RingTurning == 3 then
--		MageGate:DoFx(soundEffectTable["sgu-turning"].fileName)
--	end
--	ringCount = ringCount+1
--	if ringCount == 6 then
--		MageGate:CancelRing()
--		ringCount = 0
--	end
	--SG Ring Turning without start.ogg
--end

--function MageGate:RingTurningSoundSetup(spellID, casterID)
--	if MageGate.db.profile.Classic == true then
	
--	else
--				SoundTable = {}
--	SoundTable[1] = {FileName = "Interface\\AddOns\\MageGate\\Sound Files\\SG-1 Ring Starts Turning.ogg",  length = 3.687, Times = 1,Level = "Master"}
--	SoundTable[2] = {FileName ="Interface\\AddOns\\MageGate\\Sound Files\\SG Ring Turning without start.ogg", length = 2.589, Times = 4,Level = "Master"}
--	MageGate:AddActiveEffect(SoundTable, 
--		UnitName(casterID), 
	--	spellID, 
	--	{"UNIT_SPELLCAST_FAILED_QUIET", "UNIT_SPELLCAST_INTERRUPTED", "UNIT_SPELLCAST_STOP", "UNIT_SPELLCAST_SUCCEEDED"},casterID
	--	 )

--		if MageGate.db.profile.Portal[spellID].RingTurning == 1 then
--			MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\SG-1 Ring Starts Turning.ogg")
--			rTimer = MageGate:ScheduleRepeatingTimer("RingLoop", 2, spellID)
--		end
--		if MageGate.db.profile.Portal[spellID].RingTurning == 2 then
--			MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Atlantis Ring Turn.ogg")
--			rTimer = MageGate:ScheduleRepeatingTimer("RingLoop", 2, spellID)
--		end
--		if MageGate.db.profile.Portal[spellID].RingTurning == 3 then
--			MageGate:DoFx(soundEffectTable["sgu-start"].fileName)
--			rTimer = MageGate:ScheduleRepeatingTimer("RingLoop", 2, spellID)
--		end
--	end

--end
--- Cancel Ring Sound Effect Loop Timer.
-- 
--function MageGate:CancelRing()
--	if rTimer ~= nil then
--		MageGate:CancelTimer(rTimer, true)
--	else
--		MageGate:CancelTimer(ringStartTimer, true)
--	end
--	rTimer = nil
--	channeling = false
--	ringStartTimer = nil
--	ringCount = 0
--end

--function MageGate:CURSOR_UPDATE(...)

	--MageGate:ScheduleTimer("CIT", 1 )
	 
	--self:CCL()
	-- for i=1,GameTooltip:NumLines()do print(_G["GameTooltipTextLeft"..i]:GetText())end
	
--	for i = 1, select("#", GameTooltip:GetRegions()) do
   --     local region = select(i, GameTooltip:GetRegions())
   --     if region and region:GetObjectType() == "FontString" then
    --        local text = region:GetText() -- string or nil
	--		if text ~= nil then
			
	--		print ("TT "..text)
	--		end
    --    end
   -- end
--end
--function MageGate:TeleportSoundGenerator(spellID)
--
--	if MageGate.db.profile.Classic == false then
--		if MageGate.db.profile.Teleports[tostring(spellID)].Sound == 2 then
--			MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Rings 1.ogg")
--		end
--		if MageGate.db.profile.Teleports[tostring(spellID)].Sound == 3 then
--			MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Asguard Teleporter.ogg")
--		end
--		if MageGate.db.profile.Teleports[tostring(spellID)].Sound == 4 then
--			MageGate:DoFx(soundEffectTable["st-tos-trans"].fileName)
--		end
--		soundEffectTable["st-tos-trans"]
--		if MageGate.db.profile.Teleports[tostring(spellID)].Sound == 5 then
--			MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\chronosphere.ogg")
--		end
--	else
--		if MageGate.db.profile.TeleRing == true then
		--TeleSound
--			if MageGate.db.profile.TeleSound == 1 then
--				MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Rings 1.ogg")
--			end
--			if MageGate.db.profile.TeleSound == 2 then
--				MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\Asguard Teleporter.ogg")
--			end
--			if MageGate.db.profile.TeleSound == 3 then
--				MageGate:DoFx("Interface\\AddOns\\MageGate\\Sound Files\\chronosphere.ogg")
--			end
--		end
--	end
--end
--local options1 = {
--	name = "Chevron Settings",
--	type = "group",
--	handler = MageGate,
--	get = function(item) return MageGate.db.profile[item[#item]] end,
--	set = function(item, value) MageGate.db.profile[item[#item]] = value end,
--	args = {
--		ChevronCount = {
--			type = "range",
--			name = "Chevron Range",
--			desc = "Chevron Range",
--			order = 1,
--			min = 7,
--			max = 9,
--			step = 1,
--			set = "SetChevronCount",
--		},
--		spacer1 = {
--			order = 2,
--			type = "description",
--			name = "\n",
--		},
--		ChevronCounter = {
--			type = "toggle",
--			name = "Full chevron count",
--			desc = string.format(L["CHEV_COUNT_TOGGLE"]),
--			order = 1,
--			set = "ChangeChevronCounter",
--			get = function () return MageGate.db.profile.ChevronCounter end
--		}
--	},
--}

--TODO
--function MageGate:SetChevronCount(info, val)
--	local min, max = options1.args.ChevronCount["min"], options1.args.ChevronCount["max"] -- Better way to get params ?
--	if (val >= min) and (val <= max) then
--		self.db.profile.ChevronCount = val
--		if val == 9 then
--			cb_Chev9_OnClick()
--		end
--		if val == 8 then
--			cb_Chev8_OnClick()
--		end
--		if val == 7 then
--			cb_Chev7_OnClick()
--		end
--	else
--		MageGate:Mprint(string.format(L["CHEVRONS_COUNT_INVALID"], min, max))
--	end
--end


--- Print out the settings of MageGate.
--function MageGate:PrintSettings(info,val)

--	MageGate:Mprint(L["ADDON_SETTINGS"])
	-- Addon Active
	-- Autosummon
--	if MageGate.db.profile.AutoSumm then
--		MageGate:Mprint(L["AUTO_SUMMON_ON"])
--	else
--		MageGate:Mprint(L["AUTO_SUMMON_OFF"])
--	end
	--Chevron Counter
--	if self.db.profile.ChevronCounter == true then
--		MageGate:Mprint(string.format(L["CHEV_COUNT_OFF"]))
--	else
--		MageGate:Mprint(string.format(L["CHEV_COUNT_ON"]))
--	end
	
	--Chevron Number
--	MageGate:Mprint(string.format(L["CHEVRON_COUNT_NUM"],self.db.profile.ChevronCount))
	
	-- Sound Effects
	
--	if self.db.profile.SoundFx == 0 then
--		MageGate:Mprint(L["SOUND_FX_OFF"])
--	end
--	if self.db.profile.SoundFx == 1 then
--		MageGate:Mprint(L["SOUND_FX_ON"])
--	end
--	if self.db.profile.SoundFx == 2 then
--		MageGate:Mprint(L["SOUND_FX_MAST"])
--	end
	-- Markers
--	if self.db.profile.Marker then
--		MageGate:Mprint(L["MARKER_ON"])
--	else
--		MageGate:Mprint(L["MARKER_OFF"])
--	end
	-- Caster has sound effect.
--	if self.db.profile.JustYou then
--		MageGate:Mprint(L["CASTER_YOU"])
--	else
--		MageGate:Mprint(L["CASTER_ALL"])
--	end
	
	-- Exit Wormhole
	--self.db.profile.WormExit
--	if self.db.profile.WormExit then
--		MageGate:Mprint(L["WORM_EXIT_ON"])
--	else
--		MageGate:Mprint(L["WORM_EXIT_OFF"])
--	end
	-- Abort Sfx Style
--	MageGate:Mprint(string.format(L["ABORT_FX_CURR"], self.db.profile.AbortStyle))
	
--	if self.db.profile.Traveller then
--		MageGate:Mprint(L["self.db.profile.Traveller_ON"])
--	else
--		MageGate:Mprint(L["self.db.profile.Traveller_OFF"])
--	end
--end
--function MageGate:ChangeAbortSFX(info, val)
--	if string.len(val) == 3 then
--		if string.find("sg1",val) == nil then
--			self.db.profile.AbortStyle = "sga"
--		else
--			self.db.profile.AbortStyle = "sg1"
--		end
--	else
--		MageGate:Mprint(string.format(L["ABORT_FX_INVALID"], "sg1", "sga"))
--	end
--end
--TODO
--function MageGate:SoundEffects(info,val)
--	if val == nil then
--		if self.db.profile.SoundFx ~= 2 then
--			self.db.profile.SoundFx= self.db.profile.SoundFx+1
--			if self.db.profile.SoundFx == 1 then
--				MageGate:Mprint(L["SOUND_FX_ON"])
--			else
--				MageGate:Mprint(L["SOUND_FX_MAST"])
--			end
--		else
--			self.db.profile.SoundFx = 0
--			MageGate:Mprint(L["SOUND_FX_OFF"])
--		end
--	else
--		self.db.profile.SoundFx = self.db.profile.SoundFx == false;
--		if self.db.profile.SoundFx then
--			MageGate:Mprint(L["SOUND_FX_ON"])
--		else
--			MageGate:Mprint(L["SOUND_FX_OFF"])
--		end
--	end
--end
--function MageGate:AutoSummon(info, val)
--	self.db.profile.AutoSumm = self.db.profile.AutoSumm == false;
--	if self.db.profile.AutoSumm then
--		MageGate:Mprint(L["AUTO_SUMMON_ON"])
--	else
--		MageGate:Mprint(L["AUTO_SUMMON_OFF"])
--	end
--end