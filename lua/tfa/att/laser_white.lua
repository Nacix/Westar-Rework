-- Consider adding an actual hip fire bonus at the cost of MoveSpeed

if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "White Laser"
ATTACHMENT.ShortName = "WHITE" -- EDIT: Changed from L to LASER
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"],"Adds a cool but useless laser",
}
ATTACHMENT.Icon = "entities/laser_white.png"

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
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_white"
		wep.CachedRetLDCS = "#sw/visor/sw_ret_redux_white"

		wep.VElements["dotoptic"].color = Color( 150, 150, 150, 200 )
	else wep.CachedRetLDCS = "#sw/visor/sw_ret_redux_white" wep.PrecachedOpticLCDS = Color( 150, 150, 150, 200 ) end

	wep.VElements["laser"].color = Color( 255, 255, 255, 255 )
	wep.WElements["laser"].color = Color( 255, 255, 255, 255 )
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

--[[
["laser_red"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "weapon", rel = "lasersight", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.144, 1.144, 1.144), color = Color(255, 0, 0, 255), surpresslightning = false, material = "models/props_combine/tpballglow", skin = 0, bodygroup = {}, bonermerge = true, active = false },
["laser_green"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "weapon", rel = "lasersight", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.144, 1.144, 1.144), color = Color(0, 255, 0, 255), surpresslightning = false, material = "models/props_combine/tpballglow", skin = 0, bodygroup = {}, bonermerge = true, active = false },
["laser_cyan"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "weapon", rel = "lasersight", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.144, 1.144, 1.144), color = Color(0, 255, 255, 255), surpresslightning = false, material = "models/props_combine/tpballglow", skin = 0, bodygroup = {}, bonermerge = true, active = false },
["laser_purple"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "weapon", rel = "lasersight", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.144, 1.144, 1.144), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/props_combine/tpballglow", skin = 0, bodygroup = {}, bonermerge = true, active = false },
["laser_white"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "weapon", rel = "lasersight", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.144, 1.144, 1.144), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/tpballglow", skin = 0, bodygroup = {}, bonermerge = true, active = false },
--]]