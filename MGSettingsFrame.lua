-- Author      : Endar_Ren
-- Create Date : 6/20/2012 2:12:58 PM
local L = LibStub("AceLocale-3.0"):GetLocale("MageGate")

function localizeUI()
	CloseButton1:SetText(L["CLOSE"])

	--Style
	lb_Abort_Style:SetText(L["ABORT_STYLE_UI"])
	lb_Ring_Style:SetText(L["RING_STYLE_UI"])
	but_Ring_SG1_Preview:SetText(L["PREVIEW"])
	but_Ring_SGA_Preview:SetText(L["PREVIEW"])
	but_Abort_SG1_Preview:SetText(L["PREVIEW"])
	but_Abort_SGA_Preview:SetText(L["PREVIEW"])

	--Features
	lb_Traveller:SetText(L["TRAVELLER_UI"]);
	lb_Auto_Summon:SetText(L["AUTO_SUMM_UI"]);
	lb_SFX_Others:SetText(L["SFX_OTHERS_UI"]);
	lb_Portal_Exit:SetText(L["PORT_EXIT_UI"]);
	lb_Ring_Teleport:SetText(L["RING_PORT_UI"]);
	lb_Portal_Tracker:SetText(L["PORT_TRACKER_UI"]);

	lb_Full_Chevron:SetText(L["FULL_CHEV"]);

	lb_SFX_Master_On:SetText(L["MASTER"]);
	lb_Sound_FX_On:SetText(L["ON"]);
	
end
function cb_FullChev_OnClick()
	if cb_FullChev:GetChecked() then
		MageGate.db.profile.ChevronCounter = true
	else
		MageGate.db.profile.ChevronCounter = false
	end
	
end
function Button1_OnClick()
	MGSettingsFrame:Hide()
end
function rb_RingSG1_Click()
	if rb_RingSG1:GetChecked() then
		--Set to SG1 ring turning
		rb_RingSGA:SetChecked(false)
		MageGate.db.profile.RingTurning = "sg1"
	else
		rb_RingSG1:SetChecked(true)
	end

end
function rb_RingSGA_Click()
	if rb_RingSGA:GetChecked() then
		--Set to SG1 ring turning
		MageGate.db.profile.RingTurning = "sga"
		rb_RingSG1:SetChecked(false)
	else
		rb_RingSGA:SetChecked(true)
	end

end
function CheckButton1_OnClick()
	if CheckButton1:GetChecked() then
		CheckButton2:SetChecked(false)
		MageGate.db.profile.AbortStyle = "sga"
	else
		CheckButton2:SetChecked(true)
		MageGate.db.profile.AbortStyle = "sg1"
	end
end
function pro ()
	print("PO")
end
function cb_Traveller_Click()
	if cb_Traveller:GetChecked() then
		
		MageGate.db.profile.Traveller = true
	else
		MageGate.db.profile.Traveller = false
	end
	
end
function OnLoad()

	if MageGate.db.profile.RingTurning == "sg1" then
		rb_RingSG1:SetChecked(true)
		rb_RingSGA:SetChecked(false)
	end
	if MageGate.db.profile.RingTurning == "sga" then
		rb_RingSG1:SetChecked(false)
		rb_RingSGA:SetChecked(true)
	end
	
	cb_Ring:SetChecked(MageGate.db.profile.TeleRing)
	if MageGate.db.profile.SoundFx == 1 then
		cb_SoundOn:SetChecked(true)
	end
	if MageGate.db.profile.SoundFx == 2 then
		cb_SoundOn:SetChecked(true)
		cb_MasterSFX_On:SetChecked(true)
	end
	if MageGate.db.profile.AbortStyle == "sg1"then
		CheckButton2:SetChecked(true)
		CheckButton1:SetChecked(false)
	end
	if MageGate.db.profile.AbortStyle == "sga"then
		CheckButton1:SetChecked(true)
		CheckButton2:SetChecked(false)
	end
	
	cb_Traveller:SetChecked(MageGate.db.profile.Traveller)
	cb_AutoSummon:SetChecked(MageGate.db.profile.AutoSumm)
	cb_OthersSFX:SetChecked(MageGate.db.profile.JustYou)
	cb_PortExit:SetChecked(MageGate.db.profile.WormExit)
	cb_PortalTracker:SetChecked(MageGate.db.profile.Marker)
	cb_Ring:SetChecked(MageGate.db.profile.TeleRing)
	if MageGate.db.profile.ChevronCount == 7 then
		cb_Chev7:SetChecked(true)
	end
	if MageGate.db.profile.ChevronCount == 8 then
		cb_Chev8:SetChecked(true)
	end
	if MageGate.db.profile.ChevronCount == 9 then
		cb_Chev9:SetChecked(true)
	end
	cb_FullChev:SetChecked(MageGate.db.profile.ChevronCounter)
end
function CheckButton2_OnClick()
	if CheckButton2:GetChecked() then
		CheckButton1:SetChecked(false)
		MageGate.db.profile.AbortStyle = "sg1"
	else
		CheckButton1:SetChecked(true)
		MageGate.db.profile.AbortStyle = "sga"
	end
end

function Frame3_OnLoad()
	
end

function cb_Chev7_OnClick()
	if cb_Chev7:GetChecked() then
		cb_Chev8:SetChecked(false)
		cb_Chev9:SetChecked(false)
		MageGate.db.profile.ChevronCount =7
	else
		cb_Chev7:SetChecked(true)
	end
end
function cb_Chev8_OnClick()
	if cb_Chev8:GetChecked() then
		cb_Chev7:SetChecked(false)
		cb_Chev9:SetChecked(false)
		MageGate.db.profile.ChevronCount = 8
	else
		cb_Chev8:SetChecked(true)
	end
end
function cb_Chev9_OnClick()
	if cb_Chev9:GetChecked() then
		MageGate.db.profile.ChevronCount =9
		cb_Chev7:SetChecked(false)
		cb_Chev8:SetChecked(false)
	else
		cb_Chev9:SetChecked(true)
	end
end
function cb_PortalTracker_OnClick()
	if cb_PortalTracker:GetChecked() then
		MageGate.db.profile.Marker = true
	else
		MageGate.db.profile.Marker = false
	end
end
function cb_AutoSumm_OnClick()
	if cb_AutoSummon:GetChecked() then
		MageGate.db.profile.AutoSumm = true
	else
		MageGate.db.profile.AutoSumm = false
	end
end

function cb_OthersSFX_OnClick()
	if cb_OthersSFX:GetChecked() then
		MageGate.db.profile.JustYou = false
	else
		MageGate.db.profile.JustYou = true
	end
end

function Frame1_OnLoad()
	
end

function cb_SoundOn_OnClick()
	if cb_SoundOn:GetChecked() then
		if cb_MasterSFX_On:GetChecked() then
			MageGate.db.profile.SoundFx = 2
		else
			MageGate.db.profile.SoundFx = 1
		end
	else
		MageGate.db.profile.SoundFx = 0

	end
--	print("SS")
--	print(SOUNDFX)
end	
function cb_MasterSFX_On_OnClick()
	if cb_MasterSFX_On:GetChecked() then
		if cb_SoundOn:GetChecked() then
			MageGate.db.profile.SoundFx = 2
		else
			MageGate.db.profile.SoundFx = 0
		end
	else
		if cb_SoundOn:GetChecked() then
			MageGate.db.profile.SoundFx = 1
		else
			MageGate.db.profile.SoundFx = 0
		end
	end
end	

function but_Abort_SG1_Preview_OnClick()
	MageGate:PlayFX(nil,"abort1")
end

function but_Abort_SGA_Preview_OnClick()
	MageGate:PlayFX(nil,"abort2")
end

function but_Ring_SG1_Preview_OnClick()
	MageGate:PlayFX(nil,"ring-turning-1")
end

function but_Ring_SGA_Preview_OnClick()
	MageGate:PlayFX(nil,"ring-turning-2")
	
end

function cb_Ring_OnClick()
	
	if cb_Ring:GetChecked() then
		MageGate.db.profile.TeleRing = true
	else
		MageGate.db.profile.TeleRing = false
	end
end

function cb_PortExit_OnClick()
	MageGate.db.profile.WormExit = cb_PortExit:GetChecked();
end
function cb_MasterSFX_On_OnEnter(self, motion)
	GameTooltip:SetOwner(self, "ANCHOR TOPRIGHT")
	GameTooltip:SetText(L["MASTER_ON_TT1"])
	GameTooltip:AddLine(L["MASTER_ON_TT2"],1,1,1)
	GameTooltip:Show()
end
function cb_MasterSFX_On_OnLeave(self,motion)
	GameTooltip:Hide()
end

function chevronSettingToolTip(self, motion)
	GameTooltip:SetOwner(self, "ANCHOR TOPRIGHT")
	GameTooltip:SetText(L["CHEVRONS_COUNT_DESC"])
	GameTooltip:Show()
end
function travellerSettingToolTip(self, motion)
	GameTooltip:SetOwner(self, "ANCHOR TOPRIGHT")
	GameTooltip:SetText(L["TRAVELLER_DESC"])
	GameTooltip:Show()
end
function casterSettingToolTip(self, motion)
	GameTooltip:SetOwner(self, "ANCHOR TOPRIGHT")
	GameTooltip:SetText(L["CASTER_TOGGLE"])
	GameTooltip:Show()
end
function wormholeExitToolTip(self, motion)
	GameTooltip:SetOwner(self, "ANCHOR TOPRIGHT")
	GameTooltip:SetText(L["WORM_EXIT_DESC"])
	GameTooltip:Show()
end
function AutoSummToolTip(self, motion)
	GameTooltip:SetOwner(self, "ANCHOR TOPRIGHT")
	GameTooltip:SetText(L["AUTO_SUMMON_DESC"])
	GameTooltip:Show()
end
function PortTrackToolTip(self, motion)
	GameTooltip:SetOwner(self, "ANCHOR TOPRIGHT")
	GameTooltip:SetText(L["MARKER_TOGGLE"])
	GameTooltip:Show()
end
function RingToolTip(self, motion)
	GameTooltip:SetOwner(self, "ANCHOR TOPRIGHT")
	GameTooltip:SetText(L["TELE_RINGS_DESC"])
	GameTooltip:Show()
end
function chevronSettingToolTipLeave()
	GameTooltip:Hide()
end