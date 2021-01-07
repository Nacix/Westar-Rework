-- Consider adding an actual hip fire bonus at the cost of MoveSpeed

if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "stupid Laser"
ATTACHMENT.ShortName = "ni" -- EDIT: Changed from L to LASER
ATTACHMENT.Description = { 
	TFA.AttachmentColors["+"],"it goes lkje a rainbow",
	TFA.AttachmentColors["+"],"prophet loves you and he said you hafve a big cock",
}
ATTACHMENT.Icon = "entities/laser_red.png"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["laser"] = {
			["active"] = true
		},
	},
	["WElements"] = {
		["laser"] = {
			["active"] = true
		},
	},
}

function ATTACHMENT:Attach(wep)
	if wep.LaserDCS then
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_red"
		wep.CachedRetLDCS = "#sw/visor/sw_ret_redux_red"
	else wep.CachedRetLDCS = "#sw/visor/sw_ret_redux_red" end
	
	wep.VElements["laser"].color = Color( 255, 0, 0, 255 )
	wep.WElements["laser"].color = Color( 255, 0, 0, 255 )
end

function ATTACHMENT:Detach(wep)
	wep.ScopeVariant = "#sw/visor/sw_ret_redux_blue"
	wep.CachedRetLDCS = nil
	
	wep.VElements["laser"].color = Color( 0, 0, 0, 0 )
	wep.WElements["laser"].color = Color( 0, 0, 0, 0 )
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end