--localization file for french/France
local L = LibStub("AceLocale-3.0"):NewLocale("MageGate", "frFR")
if ( not L ) then 
    return;
end

-- OPTIONS

--Honest Option

L["HONEST"] = "Honnête Ancienne Dalaran"
L["HONEST_DEC"] = "Définit si vous serez ou non correctement appelé le Portail Ancienne Dalaran ou tout simplement appellent Dalaran Portal."


--  Sound effects
L["SOUND_FX_DESC"] = "Active ou désactive les effets sonores."
L["SOUND_FX_ON"]   = "Effets sonores activés."
L["SOUND_FX_OFF"]  = "Effets sonores desactivés."
L["SOUND_FX_MAST"] = "Les effets sonores sont en marche et mis à maîtriser." -- Update French

--  Auto summon
L["AUTO_SUMMON_DESC"] = "Active ou désactive l'invocation automatique."
L["AUTO_SUMMON_ON"]   = "L'invocation automatique est activée."
L["AUTO_SUMMON_OFF"]  = "L'invocation automatique est desactivée."

--  Abort effect
L["ABORT_FX_DESC"]		= "Change l'effet sonore de l'annulation du portail. Les choix sont %s, %s et %s."
L["ABORT_FX_INVALID"]	= "Entrée invalide. Choisissez '%s' ou '%s'."
L["ABORT_FX_CURR"]		= "Effet d'abandon défini à %s" 

L["CASTER_REMAINING"] ="Caster %s. le temps restant: %u secondes" --le temps restant

--   Turn off or on the chevron counter
L["CHEV_COUNT_TOGGLE"]	= "Activer ou désactiver l'affichage des chevrons." 
L["CHEV_COUNT_OFF"]		= "Affichage des chevron désactivé." 
L["CHEV_COUNT_ON"]		= "Affichage des chevron activé."

--  Chevrons count
L["CHEVRONS_COUNT_DESC"]    = "Défini le nombre de chevrons lors de l'incantation."
L["CHEVRONS_COUNT_INVALID"] = "Entrée invalide. Entrer un nombre entre %u et %u."
L["CHEVRON_COUNT_NUM"]		= "Décompte de chevron à %u" 

--Wormhole exit settings

L["WORM_EXIT_DESC"] = "Définir si le son à la sortie du trou de ver est joué lorsque vous arrivez à la fin du portail." 
L["WORM_EXIT_ON"]	= "Son à la sortie du trou de ver activé." 
L["WORM_EXIT_OFF"]	= "Son à la sortie du trou de ver desactivé." 

--Marker Settings
L["MARKER_ON"]		= "Marqueurs du portail affichés" 
L["MARKER_OFF"]		= "Marqueurs du portail cachés" 
L["MARKER_TOGGLE"]	= "Affiche ou cache le marqueur du portail sur la minimap." 

--Caster Settings
L["CASTER_TOGGLE"]	= "Défini si les effets sonores de MageGate sont activables ou non par les portails des autres mages" 
L["CASTER_ALL"]		= "MageGate va mantenant jouer un son quand un mage caste un portail." 
L["CASTER_YOU"]		= "MageGate jouera des sons uniquement pour vos portails" 


-- Teleporting Ring Strings

L["TELE_RINGS_DESC"]		= "Bascule ou non les effets sonores sont utilisés pour téléporter sorts de téléportation (y compris les rappels d'Astral et de Stone Hearth)."
L["INSTANCE_RINGS"]			= "Bascule ou non l'effet sonore téléportation est utilisé lorsque la téléportation dans et hors d'une instance ou champ de bataille et sur ​​les convocations." -- Update French
L["INSTANCE_RINGS_ON"]		= "Téléportation effet sonore sur."
L["INSTANCE_RINGS_OFF"]		= "Téléportation effet sonore hors."


--Traveller

L["TRAVELLER_DESC"] = "Diffuse ou non le message de voyageur entrant quand vous acceptez une invocation." 
L["TRAVELLER_OFF"]	= "Message de voyageur entrant désactivés" 
L["TRAVELLER_ON"]	= "Message de voyageur entrant activés" 


--Settings printing
L["PRINT_SETTINGS"] = "Affiche tous les paramètres actuel de l'addon." 
L["ADDON_SETTINGS"] = "Paramètres de l'addon" 

-- ADDON TEXT
--  Channeling
L["DIALING_START"]   = "Séquence d'ouverture destination %s."
L["DIALING_ABORTED"] = "Séquence d'ouverture interrompue !"

L["CHEVRON_N_LOCKED"]  = "Chevron %u enclenché."
L["CHEVRON_N_ENGAGED"] = "Chevron %u verrouillé."

--  Auto summon
L["CONFIRM_SUMMON"] = "Invocation automatique!"

--Play Strings

L["SOUND_LIST"] = "Liste des sons" 
L["PLAY_DESC"]	= "Vous permet de jouer un des effets sonores utilisé par MageGate" 

L["SHOW"] = "Affiche l'image des paramètres" -- French

-- OTHER
--[[
 Separator between "Portal" and its destination
 This separator differs according to game language (ie. ':' in english, 'в' in russian)
 It is used to determine portal destination
]]
L["PORTAL_SEP"]		= ":"
L["Portal1"]		= "Portail" 
L["Portal2"]		= "Téleportation" 
L["ANNIVERSARY"]	= "Merci d'utiliser MageGate de la part de tout l'équipe !"

-- UI

L["PREVIEW"]	= "Prévisualiser"
L["DEFAULT"]	= "Default"
L["CLOSE"]		= "Fermer"

L["OTHER_FEAT_UI"]				= "Autres caractéristiques" --French
L["TRAVELLER_UI"]				= "Des voyageurs"
L["PORT_TRACKER_UI"]			= "Marqueur du Portail"
L["AUTO_SUMM_UI"]				= "L'invocation Automatique"
L["RING_PORT_UI"]				= "Effet Sonore Téléport"  --French
L["SFX_OTHERS_UI"]				= "SFX pour les portails d'autres"
L["PORT_EXIT_UI"]				= "Portail Sound Effect sortie" -- French

L["FULL_CHEV"]					= "Plein Chevron comte" -- French

L["SOUND_EFFECTS_UI"]			= "Effets Sonores"
L["ON"]							= "Effets sonores activé" --French
L["MASTER"]						= "SFX Maître Sur"  --French

L["CHEVRON_COUNT_MAX"]			= "Chevron compte max"  --French
L["ABORT_STYLE_UI"]				= "Style de Abort"  --French
L["RING_STYLE_UI"]				= "Style de Sonnerie"  --French
L["CHEVMAX"]					= "Chevron maximale"  -- French
L["MASTER_ON_TT1"]				= "Vérification ce qui fera en sorte que les effets sonores de MageGate sera "
L["MASTER_ON_TT2"]				= "entendue même si le son sur votre client WoW est désactivé."


L["INCOMMING_TRAVELLER"]		= "Voyageur entrant!"

L["SOUL_PORTAL"]				= "portail des âmes"

L["SUMMONING_SETTINGS"]			= "Paramètres d'invocation"
L["FEATURE_SETTINGS"]			= "Réglages des fonctions"
L["PORTAL_TRACKING_SETTINGS"]	= "Portail de suivi des paramètres"
L["PORTAL_TRACKING"]			= "Suivi Portail"
L["PORTAL_TRACKING_DESC"]		= "Définit si le suivi portail est allumé ou éteint."
L["ON_WORLD_MAP"]				= "Sur la carte du monde"
L["ON_WORLD_DESC"]				= "Définit si le suivi portail apparaît sur la carte du monde."
L["ON_MINIMAP"]					= "Sur la minicarte"
L["ON_MINIMAP_DESC"]			= "Définit si le suivi portail apparaît sur ​​la minicarte."
L["ALPHA"]						= "Alpha"
L["ALPHA_DESC"]					= "Définissez la valeur alpha pour les icônes. Le plus proche de zéro, le plus transparent. Le plus proche de 1, le plus solide."
L["AUTO_SUMM"]					= "Auto invocation"
L["AUTO_SUMM_DESC"]				= "Ensembles auto invocation est allumé."
L["SUMMON_SOUND_ON"]			= "Invocation sonore"
L["SUMMON_SOUND_ON_DESC"]		= "Définit si son invocation est."
L["SUMMON_SOUND"]				= "Invocation sonore"
L["SUMMON_SOUND_DESC"]			= "Régler l'effet sonore d'être convoqué."

L["EXIT_PORTAL_DESC"]			= "Quitter Paramètres du Portail"
L["WORMHOLE_EXIT_SOUND"]		= "Son sortie Portail"
L["CLASSIC_SETTINGS"]			= "Paramètres classiques"
L["CLASSIC_MODE"]				= "Mode Classique"
L["CLASSIC_MODE_DESC"]			= "Définit l'addon d'utiliser le format effet original de réglage (Tous les portails d'utiliser les sons mêmes)."

L["TELE_SETTINGS"]				= "Paramètres Teleport"

L["TELE_SOUND_LEVEL"]			= "Niveau sonore"
L["TELE_SOUND_LEVEL_DESC"]		= "Réglez le niveau que le son va jouer sur."

L["SOUNDS"]						= "Sons"
L["TELE_SOUND_DESC"]			= "Réglez le son de ce sort de téléportation."
L["TELE_SOUND"]					= "effet sonore"
L["TELE_JUST_YOU"]				= "viens de vous"
L["TELE_JUST_YOU_DESC"]			= "Définir si ce bruit s'éteint pour d'autres que vous."

L["RING_TURNING_SOUND"]			= "1. Anneau Tournant"
L["RING_TURNING_SOUND_DESC"]	= "Réglez la bague tournant pour ce portail."
L["RING_ABORT_SOUND"]			= "2. Avorter"
L["RING_ABORT_SOUND_DESC"]		= "Définissez le style Abandonner pour ce portail."
L["CHEV_SETTINGS"]				= "Paramètres Chevron"
L["CHEV_RANGE"]					= "Chevron Plage"
L["CHEV_RANGE_DESC"]			= "Réglez ce nombre chevron du portail se terminera à."

L["GATE_SOUNDS"]				= "Portail des sons"
L["GATE_SOUND_OP"]				= "Portail options d'effets sonores"
L["ENABLED"]="Activé"
L["INST_TELE"] = "Instance de Téléportation"
L["ENABLED_INST_TELE_DESC"] = "Permet à l'effet sonore par exemple téléport"
L["INST_TELE_SOUND_DESC"] = "Réglez le son par exemple téléport"

L["PORT_CLOSE"] = "Portail Effet Fermer"
L["PORT_CLOSE_EN_DESC"] = "Permet à l'effet sonore pour la fermeture du portail"
L["BG_HEADER"] = "Battleground Entrance/Exit Teleport"
L["ENABLED_BG_TELE_DESC"] = "Permet à l'effet de son champ de bataille téléport"
L["BG_TELE_SOUND_DESC"] = "Réglez le son téléport pour champ de bataille"

L["SINGLE_STYLE"] = "Style Unique"
L["SINGLE_STYLE_DESC_PORTAL"] = "Définissez si tous les sorts de portail utiliser les mêmes options ou non"
L["SINGLE_STYLE_DESC_TELE"] = "Définissez si tous les sorts de téléportation utiliser les mêmes options ou non"

L["ANNOUNCE_ABORT"] = "message d'abandon"
L["ANNOUNCE_ABORT_DESC"] = "Cela permettra de définir si le message d'abandon est envoyé dans le chat ou pas."

L["ANNOUNCE_LOCK"] = "verrouiller un message"
L["ANNOUNCE_LOCK_DESC"] = "Cela permettra de définir si le message final chevron verrouillé est envoyé dans le chat ou pas."

L["ANNOUNCE_DIALING"] = "composer un message"
L["ANNOUNCE_DIALING_DESC"] = "Cela permettra de définir si le message est envoyé numérotation dans le chat ou pas."

L["MESSAGE_SETTINGS"] = "Paramètres des messages"

L["Ancient_Teleport:_Dalaran"]			= "Ancienne téléportation : Dalaran"
L["Ancient_Portal:_Dalaran"]			= "Ancien portail : Dalaran"
L["Astral_Recall"]						= "Rappel astral"
L["Demonic_Circle"]						= "Cercle démoniaque : Téléportation"
L["Teleport:_Dalaran"]					= "Téléportation : Dalaran"
L["Teleport:_Moonglade"]				= "Téléportation : Reflet-de-Lune"
L["Teleport:_Darnassus"]				= "Téléportation : Darnassus"
L["Teleport:_Exodar"]					= "Téléportation : Exodar"
L["Teleport:_Ironforge"]				= "Téléportation : Forgefer"
L["Teleport:_Silvermoon"]				= "Téléportation : Lune-d'argent"
L["Teleport:_Stonard"]					= "Téléportation : Pierrêche"
L["Teleport:_Stormwind"]				= "Téléportation : Hurlevent"
L["Teleport:_Theramore"]				= "Téléportation : Theramore"
L["Teleport:_Thunder_Bluff"]			= "Téléportation : les Pitons-du-Tonnerre"
L["Teleport:_Tol_Barad_(Alliance)"]		= "Téléportation : Tol Barad (Alliance)"
L["Teleport:_Tol_Barad_(Horde)"]		= "Téléportation : Tol Barad (Horde)"
L["Teleport:_Undercity"]				= "Téléportation : Fossoyeuse"
L["Teleport:_Orgrimmar"]				= "Téléportation : Orgrimmar"
L["Teleport:_Shattrath_(Alliance)"]		= "Téléportation : Shattrath (Alliance)"
L["Teleport:_Shattrath_(Horde)"]		= "Téléportation : Shattrath (Horde)"
L["Teleport:_Vale_of_Eternal_BlossomsH"]	= "Téléportation : Val de l’Éternel printemps (Horde)"
L["Teleport:_Vale_of_Eternal_BlossomsA"]	= "Téléportation : Val de l’Éternel printemps (Alliance)"

L["Toshley's_Station"]					= "Transporteur ultra-sécurisé : Poste de Toshley"
L["Gadgetzan"]							= "Transporteur ultra-sécurisé : Gadgetzan"
L["Boots_of_the_Bay"]					= "Bottes de la baie"
L["Ruby_Slippers"]						= "Souliers de rubis"
L["Hearthstone"]						= "Pierre de foyer"
L["The_Innkeeper's_Daughter"]			= "La fille de l'aubergiste"
L["Scroll_of_Recall"]					= "Parchemin de rappel"
L["Scroll_of_Recall_II"]				= "Parchemin de rappel II"
L["Scroll_of_Recall_III"]				= "Parchemin de rappel III"
L["Argent_Crusader's_Tabard"]			= "Tabard de croisé d'argent"
L["Wrap_of_UnityH"]						= "Foulard d'unité (Horde)"
L["Wrap_of_UnityA"]						= "Foulard d'unité (Alliance)"
L["Baradin's_Wardens_Tabard"]			= "Tabard des Gardiens de Baradin"
L["Hellscream's_Reach_Tabard"]			= "Tabard du Poing de Hurlenfer"
L["Dalaran_Signet"]						= "Anneau du Kirin Tor"
L["The_Last_Relic_of_Argus"]			= "La dernière relique d'Argus"
L["Everlook"]							= "Déchiqueteur dimensionnel - Long-Guet"				
L["Area_52"]							= "Déchiqueteur dimensionnel - Zone 52"		
L["Stormpike_Insignia"]					= "Insigne Foudrepique"		
L["Frostwolf_Insignia"]					= "Insigne Loup-de-givre"	
L["Ethereal_Portal"]					= "Portail éthérien"
L["Blessed_Medallion_of_Karabor"]		= "Médaillon béni de Karabor"
L["Darnarian_Scroll_of_Teleportation"]	= "Rouleau de téléportation de Darnarian"
L["Potion_of_Deepholm"]					= "Potion du Tréfonds"
L["LORESTONE"]							= "Magnétite de chroniqueur"
L["KIRIN_TOR_BEACON"]					= "Balise du Kirin Tor"
L["SUNREAVER_BEACON"]					= "Balise des Saccage-soleil"
L["SCHOOL_ARCANE_MASTERY"]				= "Les écoles de magie des Arcanes - Maîtrise"

--Portal Names

L["Stormwind"]							= "Hurlevent"
L["Ironforge"]							= "Forgefer"
L["Darnassus"]							= "Darnassus"
L["Exodar"]								= "L'Exodar"
L["Theramore"]							= "Theramore"
L["Shattrath(Alliance)"]				= "Shattrath (Alliance)"
L["Tol Barad(Alliance)"]				= "Tol Barad (Alliance)"

L["Orgrimmar"]							= "Orgrimmar"
L["Undercity"]							= "Fossoyeuse"
L["Thunder_Bluff"]						= "Les Pitons-du-Tonnerre"
L["Silvermoon"]							= "Lune-d'argent"
L["Stonard"]							= "Pierrêche"
L["Shattrath(Horde)"]					= "Shattrath (Horde)"
L["Tol Barad(Horde)"]					= "Tol Barad (Horde)"

L["Dalaran"]							= "Dalaran"

L["Ancient_Dalaran"]=					"Ancienne Dalaran"

L["Jania's_Locket_Dalaran"]				= "Médaillon de Jaina"
L["Karazhan"]							= "Karazhan"
L["Vale_of_Eternal_BlossomsA"]			="Val de lÉternel printemps (Alliance)"
L["Vale_of_Eternal_BlossomsH"]			="Val de lÉternel printemps (Horde)"


L["Bizmo_Brewpub"]						= "Téléportation : Bar-Tabasse de Bizmo"
L["Brawlgar_Arena"]						= "Téléportation : Arène de Castagn’ar"
L["Curious_Bronze_Timepiece_Alundra"]	= "Curieuse montre en bronze (Alundra)"
L["Curious_Bronze_Timepiece_Lara"]		= "Curieuse montre en bronze (Lara)"
L["Teleport_Jade_Serpent"]				= "Teleport to Temple of the Jade Serpent"
L["Wormhole_Northrend"] =				"Générateur de tunnel spatiotemporel : Norfendre"
L["Wormhole_Pandaria"] =				"Générateur de tunnel spatiotemporel : Pandarie"


L["Portal_Warspear"] = "Fer-de-Lance"
L["Portal_Stormshield"] = "Bouclier-des-Tempêtes"
L["Teleport_Stormshield"]="Téléportation : Bouclier-des-Tempêtes"
L["Teleport_Warspear"]="Téléportation : Fer-de-Lance"
L["Garrison_Hearthstone"] = "Pierre de foyer de fief"
L["Home_Away_from_Home"] = "Comme à la maison"
L["Timelost artifact"] = "Artéfact perdu dans le temps"
L["Admirals_Compass"] = "Boussole d’amiral"
L["Dalaran_Broken"]						= "Dalaran - Îles Brisées"
L["Teleport: Dalaran - Broken Isles"] = "Téléportation : Dalaran - Les îles Brisées"


L["Portal_DalaranBroken"] = "Dalaran - Îles Brisées"
L["Portal_Boralus"] = "Boralus"
L["Teleport_Boralus"]="Téléportation: Boralus"

L["Portal_Daz"] ="Dazar'alor"
L["Teleport_Daz"]="Téléportation: Dazar'alor"

L["Portal_Oribos"] = "Oribos"
L["Teleport_Oribos"]="Téléportation: Oribos"
L["Teleport_Valdrakken"]="Téléportation: Valdrakken"
L["Portal_Valdrakken"]="Valdrakken"
L["Teleport_Valdrakken"]="Téléportation: Dornogal"
L["Portal_Valdrakken"]="Dornogal"