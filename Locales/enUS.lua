--localization file for english/United States
local L = LibStub("AceLocale-3.0"):NewLocale("MageGate", "enUS", true)
if ( not L ) then 
    return;
end

-- OPTIONS

--Honest Option

L["HONEST"] = "Honest Ancient Dalaran"
L["HONEST_DEC"] = "Sets whether or not you will correctly called out the Ancient Dalaran Portal or just call it Dalaran Portal."

--  Sound effects
L["SOUND_FX_DESC"]		= "Turns sound effects on, off, or on master." -- Update French
L["SOUND_FX_ON"]		= "Sound effects are on."
L["SOUND_FX_OFF"]		= "Sound effects are off."
L["SOUND_FX_MAST"]		= "Sound effects are on and set to master." -- Update French

--  Auto summon
L["AUTO_SUMMON_DESC"] = "Turns auto-accept for summon on or off."
L["AUTO_SUMMON_ON"]   = "Auto summon is on."
L["AUTO_SUMMON_OFF"]  = "Auto summon is off."

--  Abort effect
L["ABORT_FX_DESC"]			= "Changes the portal cancel sound effect.  Choices are %s, %s, %s."
L["ABORT_FX_INVALID"]		= "Invalid input.  Enter either '%s' or '%s'."
L["ABORT_FX_CURR"]			= "Abort effect is set to %s"  -- Update French

L["CASTER_REMAINING"]		= "Caster %s. Reaming time: %u seconds" --le temps restant

--   Turn off or on the chevron counter
L["CHEV_COUNT_TOGGLE"]	= "Turns the chevron count sequence on or off."
L["CHEV_COUNT_OFF"]		= "Chevron count sequence off."
L["CHEV_COUNT_ON"]		= "Chevron count sequence on."

--  Chevrons count
L["CHEVRONS_COUNT_DESC"]    = "Set the number of chevrons when channeling."
L["CHEVRONS_COUNT_INVALID"] = "Invalid input.  Enter a number between %u and %u."
L["CHEVRON_COUNT_NUM"]		= "Chevron count is %u" -- Update French

-- Wormhole Exit

L["WORM_EXIT_DESC"] = "Set whether or not the wormhole exit sound is played when you arrive at the end of a portal."-- Update French
L["WORM_EXIT_ON"]	= "Wormhole exit sound effect on."-- Update French
L["WORM_EXIT_OFF"]	= "Wormhole exit sound effect off."-- Update French

-- Marker
L["MARKER_ON"]		= "Portal markers on"-- Update French
L["MARKER_OFF"]		= "Portal markers off" -- Update French
L["MARKER_TOGGLE"]	= "Turns the portal marker display in minimap on or off." -- Update French

-- Caster Strings
L["CASTER_TOGGLE"]	= "Turns on or off whether MageGate sound effects can be triggered by other mages" -- Update French
L["CASTER_ALL"]		= "MageGate will now do sound effects for any mage casting a portal." -- Update French
L["CASTER_YOU"]		= "MageGate will only do sound effects for your portals" -- Update French


-- Teleporting Ring Strings

L["TELE_RINGS_DESC"]		= "Toggles whether or not the teleporting sound effects are used for teleport spells (Including Astral Recall and Hearth Stone)"
L["INSTANCE_RINGS"]			= "Toggles whether or not the teleporting sound effect is used when teleporting in and out of an instance or battleground and on summonings." -- Update French
L["INSTANCE_RINGS_ON"]		= "Teleporting sound effect on."
L["INSTANCE_RINGS_OFF"]		= "Teleporting sound effect off."


--Traveller

L["TRAVELLER_DESC"] = "Toggles the incoming traveller message to be broadcasted when you accept a summon."-- Update French
L["TRAVELLER_OFF"]	= "Incoming Traveller message is off"-- Update French
L["TRAVELLER_ON"]	= "Incoming Traveller message is on"-- Update French


-- Settings printing
L["PRINT_SETTINGS"] = "Prints out all of the current settings of the addon." -- Update French
L["ADDON_SETTINGS"] = "Addon Settings"-- Update French

-- ADDON TEXT
--  Channeling
L["DIALING_START"]   = "Dialing %s."
L["DIALING_ABORTED"] = "Dialing sequence aborted!"

L["CHEVRON_N_LOCKED"]  = "Chevron %u locked."
L["CHEVRON_N_ENGAGED"] = "Chevron %u engaged."

--  Auto summon
L["CONFIRM_SUMMON"] = "Incoming traveller!"

--Play Strings

L["SOUND_LIST"] = "List of sounds"-- Update French
L["PLAY_DESC"]	= "Lets you play one of the sound effects used by MageGate" -- Update French

L["SHOW"] = "Displays the settings frame"

-- OTHER
--[[
 Separator between "Portal" and its destination
 This separator differs according to game language (ie. ':' in english, 'в' in russian)
 It is used to determine portal destination
]]
L["PORTAL_SEP"]		= ":"
L["Portal1"]		= "Portal" -- Update French
L["Portal2"]		= "Teleport" 
L["ANNIVERSARY"]	= "Thank you for using MageGate!"

-- UI

L["PREVIEW"]	= "Preview"
L["DEFAULT"]	= "Default"
L["CLOSE"]		= "Close"

L["ENABLED"]			= "Enabled"
L["TRAVELLER_UI"]		= "Traveller"
L["PORT_TRACKER_UI"]	= "Portal Tracker"
L["AUTO_SUMM_UI"]		= "Auto Summon"
L["RING_PORT_UI"]		= "Ring Teleport Enabled"
L["SFX_OTHERS_UI"]		= "SFX for others portals"
L["PORT_EXIT_UI"]		= "Portal Exit Sound Effect"

L["FULL_CHEV"] = "Full Chevron Count"

L["SOUND_EFFECTS_UI"]	= "Sound Effects"
L["ON"]					= "Sound FX On"
L["MASTER"]				= "SFX Master On"

L["CHEVRON_COUNT_MAX"]	= "Chevron count max"
L["ABORT_STYLE_UI"]		= "Abort Style"
L["RING_STYLE_UI"]		= "Ring Style"
L["CHEVMAX"]			= "Chevron Max"
L["MASTER_ON_TT1"]		= "Checking this will make it so that the sound effects of MageGate "
L["MASTER_ON_TT2"]		= "will be heard even if the sound on your WoW client is disabled."


L["INCOMMING_TRAVELLER"] = "Incoming Traveller!"

L["SOUL_PORTAL"] = "soul portal"

L["SUMMONING_SETTINGS"]			= "Summoning Settings"
L["FEATURE_SETTINGS"]			= "Feature Settings"
L["PORTAL_TRACKING_SETTINGS"]	= "Portal Tracking Settings"
L["PORTAL_TRACKING"]			= "Portal Tracking"
L["PORTAL_TRACKING_DESC"]		= "Sets if portal tracking is on or off."
L["ON_WORLD_MAP"]				= "On World Map"
L["ON_WORLD_DESC"]				= "Sets if portal tracking appears on the world map."
L["ON_MINIMAP"]					= "On Minimap"
L["ON_MINIMAP_DESC"]			= "Sets if portal tracking appears on minimap."
L["ALPHA"]						= "Alpha"
L["ALPHA_DESC"]					= "Set the alpha value for the icons.  The closer to zero, the more transparent.  The closer to 1, the more solid."
L["AUTO_SUMM"]					= "Auto-summon"
L["AUTO_SUMM_DESC"]				= "Sets auto-summon is turned on."
L["SUMMON_SOUND_ON"]			= "Summoning Sound"
L["SUMMON_SOUND_ON_DESC"]		= "Sets if summoning sound is on."
L["SUMMON_SOUND"]				= "Summoning Sound"
L["SUMMON_SOUND_DESC"]			= "Set the sound effect of being summoned."

L["EXIT_PORTAL_DESC"]		= "Exiting Portal Settings"
L["WORMHOLE_EXIT_SOUND"]	= "Wormhole Exit Sound"
L["CLASSIC_SETTINGS"]		= "Classic Settings"
L["CLASSIC_MODE"]			= "Classic Mode"
L["CLASSIC_MODE_DESC"]		= "Sets the addon to use the original effect setting format (All portals use same sounds)."

L["TELE_SETTINGS"] = "Teleport Settings"

L["TELE_SOUND_LEVEL"]		= "Sound Level"
L["TELE_SOUND_LEVEL_DESC"]	= "Set the level that the sound will play on"

L["SOUNDS"]				= "Sounds"
L["TELE_SOUND_DESC"]	= "Set the sound for this teleport spell"
L["TELE_SOUND"]			= "Sound effect"
L["TELE_JUST_YOU"]		= "Just You"
L["TELE_JUST_YOU_DESC"] = "Set if this sound will go off for others besides you."

L["RING_TURNING_SOUND"]			= "1. Ring turning"
L["RING_TURNING_SOUND_DESC"]	= "Set the Ring turning for this spell"
L["RING_ABORT_SOUND"]			= "2. Abort"
L["RING_ABORT_SOUND_DESC"]		= "Set the Abort style for this spell"
L["CHEV_SETTINGS"]				= "Chevron Settings"
L["CHEV_RANGE"]					= "Chevron Range"
L["CHEV_RANGE_DESC"]			= "Set what number chevron the portal will end at."

L["GATE_SOUNDS"]	= "Gate Sounds"
L["GATE_SOUND_OP"]	= "Gate Sound Effect Options"
L["ENABLED"]= "Enabled"
L["INST_TELE"] = "Instance Teleport"
L["ENABLED_INST_TELE_DESC"] = "Enables the instance teleport sound effect"
L["INST_TELE_SOUND_DESC"] = "Set the sound for instance teleport"

L["BG_HEADER"] = "Battleground Entrance Teleport"
L["ENABLED_BG_TELE_DESC"] = "Enables the battleground teleport sound effect"
L["BG_TELE_SOUND_DESC"] = "Set the sound for battleground teleport"

L["PORT_CLOSE"] = "Portal Close Effect"
L["PORT_CLOSE_EN_DESC"] = "Enables the sound effect for portal closing"

L["SINGLE_STYLE"] = "Single Style"
L["SINGLE_STYLE_DESC_PORTAL"] = "Set whether all portal spells use the same options or not"
L["SINGLE_STYLE_DESC_TELE"] = "Set whether all teleport spells use the same options or not"

L["ANNOUNCE_ABORT"] = "Abort Message"
L["ANNOUNCE_ABORT_DESC"] = "This will set whether the abort message is sent in chat or not."

L["ANNOUNCE_LOCK"] = "Lock Message"
L["ANNOUNCE_LOCK_DESC"] = "This will set whether the final chevron locked message is sent in chat or not."

L["ANNOUNCE_DIALING"] = "Dialing Message"
L["ANNOUNCE_DIALING_DESC"] = "This will set whether the dialing message is sent in chat or not."

L["MESSAGE_SETTINGS"] = "Message Settings"

L["Ancient_Teleport:_Dalaran"]			= "Ancient Teleport: Dalaran"
L["Ancient_Portal:_Dalaran"]			= "Ancient Portal: Dalaran"
L["Astral_Recall"]						= "Astral Recall"
L["Demonic_Circle"]						= "Demonic Circle"
L["Teleport:_Dalaran"]					= "Teleport: Dalaran"
L["Teleport:_Moonglade"]				= "Teleport: Moonglade"
L["Teleport:_Darnassus"]				= "Teleport: Darnassus"
L["Teleport:_Exodar"]					= "Teleport: Exodar"
L["Teleport:_Ironforge"]				= "Teleport: Ironforge"
L["Teleport:_Silvermoon"]				= "Teleport: Silvermoon"
L["Teleport:_Stonard"]					= "Teleport: Stonard"
L["Teleport:_Stormwind"]				= "Teleport: Stormwind"
L["Teleport:_Theramore"]				= "Teleport: Theramore"
L["Teleport:_Thunder_Bluff"]			= "Teleport: Thunder Bluff"
L["Teleport:_Tol_Barad_(Alliance)"]		= "Teleport: Tol Barad (Alliance)"
L["Teleport:_Tol_Barad_(Horde)"]		= "Teleport: Tol Barad (Horde)"
L["Teleport:_Undercity"]				= "Teleport: Undercity"
L["Teleport:_Orgrimmar"]				= "Teleport: Orgrimmar"
L["Teleport:_Shattrath_(Alliance)"]		= "Teleport: Shattrath (Alliance)"
L["Teleport:_Shattrath_(Horde)"]		= "Teleport: Shattrath (Horde)"
L["Teleport:_Vale_of_Eternal_BlossomsH"]	= "Teleport: Vale of Eternal Blossoms (Horde)"
L["Teleport:_Vale_of_Eternal_BlossomsA"]	= "Teleport: Vale of Eternal Blossoms (Alliance)"
L["Teleport:_"]							= ""
L["Toshley's_Station"]					= "Ultrasafe Transporter: Toshley's Station"
L["Gadgetzan"]							= "Ultrasafe Transporter: Gadgetzan"
L["Boots_of_the_Bay"]					= "Boots of the Bay"
L["Ruby_Slippers"]						= "Ruby Slippers"
L["Hearthstone"]						= "Hearthstone"
L["The_Innkeeper's_Daughter"]			= "The Innkeeper's Daughter"
L["Scroll_of_Recall"]					= "Scroll of Recall"
L["Scroll_of_Recall_II"]				= "Scroll of Recall II"
L["Scroll_of_Recall_III"]				= "Scroll of Recall III"
L["Argent_Crusader's_Tabard"]			= "Argent Crusader's Tabard"
L["Wrap_of_UnityH"]						= "Wrap of Unity (Horde)"
L["Wrap_of_UnityA"]						= "Wrap of Unity (Alliance)"
L["Baradin's_Wardens_Tabard"]			= "Baradin's Wardens Tabard"
L["Hellscream's_Reach_Tabard"]			= "Hellscream's Reach Tabard"
L["Dalaran_Signet"]						= "Ring of the Kirin Tor"
L["The_Last_Relic_of_Argus"]			= "The Last Relic of Argus"
L["Everlook"]							= "Dimensional Ripper - Everlook"				
L["Area_52"]							= "Dimensional Ripper - Area 52"		
L["Stormpike_Insignia"]					= "Stormpike Insignia"		
L["Frostwolf_Insignia"]					= "Frostwolf Insignia"
L["Ethereal_Portal"]					= "Ethereal Portal"	
L["Blessed_Medallion_of_Karabor"]		= "Blessed Medallion of Karabor"
L["Darnarian_Scroll_of_Teleportation"]	= "Darnarian's Scroll of Teleportation"
L["Potion_of_Deepholm"]					= "Potion of Deepholm"
L["LORESTONE"]							= "Lorewalker's Lodestone"
L["KIRIN_TOR_BEACON"]					= "Kirin Tor Beacon"
L["SUNREAVER_BEACON"]					= "Sunreaver Beacon"
L["SCHOOL_ARCANE_MASTERY"]				= "The Schools of Arcane Magic - Mastery"

--Portal Names

L["Stormwind"]							= "Stormwind"
L["Ironforge"]							= "Ironforge"
L["Darnassus"]							= "Darnassus"
L["Exodar"]								= "The Exodar"
L["Theramore"]							= "Theramore"
L["Shattrath(Alliance)"]				= "Shattrath (Alliance)"
L["Tol Barad(Alliance)"]				= "Tol Barad (Alliance)"

L["Orgrimmar"]							= "Orgrimmar"
L["Undercity"]							= "Undercity"
L["Thunder_Bluff"]						= "Thunder Bluff"
L["Silvermoon"]							= "Silvermoon"
L["Stonard"]							= "Stonard"
L["Shattrath(Horde)"]					= "Shattrath (Horde)"
L["Tol Barad(Horde)"]					= "Tol Barad (Horde)"
L["Ancient_Dalaran"]                    = "Ancient Dalaran"
L["Dalaran"]							= "Dalaran - Northrend"
L["Jania's_Locket_Dalaran"]				= "Jaina's Locket"
L["Karazhan"]							= "Karazhan"
L["Vale_of_Eternal_BlossomsA"]			= "Vale of Eternal Blossoms (Alliance)"
L["Vale_of_Eternal_BlossomsH"]			= "Vale of Eternal Blossoms (Horde)"
L["Dalaran_Broken"]						= "Dalaran - Broken Isles"
L["Bizmo_Brewpub"]						= "Teleport: Bizmo's Brewpub"
L["Brawlgar_Arena"]						= "Teleport: Brawl'gar Arena"
L["Curious_Bronze_Timepiece_Alundra"]	= "Curious Bronze Timepiece (Alundra)"
L["Curious_Bronze_Timepiece_Lara"]		= "Curious Bronze Timepiece (Lara)"
L["Teleport_Jade_Serpent"]				= "Teleport to Temple of the Jade Serpent"
L["Wormhole_Northrend"] =				"Wormhole Generator: Northrend"
L["Wormhole_Pandaria"] =				"Wormhole Generator: Pandaria"

L["Portal_Warspear"] = "Warspear"
L["Portal_Stormshield"] = "Stormshield"
L["Teleport_Stormshield"]="Teleport: Stormshield"
L["Teleport_Warspear"]="Teleport: Warspear"
L["Garrison_Hearthstone"] = "Garrison Hearthstone"
L["Home_Away_from_Home"] = "Home Away from Home"
L["Timelost artifact"] = "Time-Lost Artifact"
L["Admirals_Compass"] = "Admiral's Compass"
L["Teleport: Dalaran - Broken Isles"] = "Teleport: Dalaran - Broken Isles"


L["Portal_DalaranBroken"] = "Dalaran - Broken Isles"
L["Portal_Boralus"] = "Boralus"
L["Teleport_Boralus"]="Teleport: Boralus"

L["Portal_Daz"] ="Dazar'alor"
L["Teleport_Daz"]="Teleport: Dazar'alor"

L["Portal_Oribos"] = "Oribos"
L["Teleport_Oribos"]="Teleport: Oribos"
L["Teleport_Valdrakken"]="Teleport: Valdrakken"
L["Portal_Valdrakken"]="Valdrakken"