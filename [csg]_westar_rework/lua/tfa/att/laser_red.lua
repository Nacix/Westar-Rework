-- Consider adding an actual hip fire bonus at the cost of MoveSpeed

if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Red Laser"
ATTACHMENT.ShortName = "RED" -- EDIT: Changed from L to LASER
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"],"Adds a cool but useless laser",
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

		wep.VElements["dotoptic"].color = wep.SystemColor
	else wep.CachedRetLDCS = "#sw/visor/sw_ret_redux_red" wep.PrecachedOpticLCDS = wep.SystemColor end

	wep.VElements["laser"].color = Color( 255, 0, 0, 255 )
	wep.WElements["laser"].color = Color( 255, 0, 0, 255 )
end

function ATTACHMENT:Detach(wep)
	wep.ScopeVariant = "#sw/visor/sw_ret_redux_blue"
	wep.CachedRetLDCS = nil

	wep.VElements["laser"].color = Color( 0, 0, 0, 0 )
	wep.WElements["laser"].color = Color( 0, 0, 0, 0 )

	wep.PrecachedOpticLCDS = wep.SystemColor
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end