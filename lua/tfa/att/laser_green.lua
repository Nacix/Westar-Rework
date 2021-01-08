-- Consider adding an actual hip fire bonus at the cost of MoveSpeed

if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Green Laser"
ATTACHMENT.ShortName = "GREEN" -- EDIT: Changed from L to LASER
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"],"Adds a cool but useless laser",
}
ATTACHMENT.Icon = "entities/laser_green.png"

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
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_green"
		wep.CachedRetLDCS = "#sw/visor/sw_ret_redux_green"

		wep.VElements["dotoptic"].color = Color( 0, 255, 50, 255 )
	else wep.CachedRetLDCS = "#sw/visor/sw_ret_redux_green" wep.PrecachedOpticLCDS = Color( 0, 255, 50, 255 ) end

	wep.VElements["laser"].color = Color( 0, 255, 0, 255 )
	wep.WElements["laser"].color = Color( 0, 255, 0, 255 )
end

function ATTACHMENT:Detach(wep)
	wep.ScopeVariant = "#sw/visor/sw_ret_redux_blue"
	wep.CachedRetLDCS = nil

	wep.VElements["laser"].color = Color( 0, 0, 0, 0 )
	wep.WElements["laser"].color = Color( 0, 0, 0, 0 )

	wep.VElements["dotoptic"].color = wep.SystemColor
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end