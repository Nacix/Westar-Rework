if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Apache Rockets"
ATTACHMENT.ShortName = "ARP" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {
	TFA.AttachmentColors["="],"Perfect for African Village raids",
	TFA.AttachmentColors["+"],"brrt",
	TFA.AttachmentColors["-"],"say bye bye to staff",
}
ATTACHMENT.Icon = "entities/att_explosive_ammo.png"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["Damage"] = 420,
		["RPM"] = 99999999,
		["RPM_Burst"] = 99999999,
		["ClipSize"] = 6969,
		["DamageType"] = DMG_BLAST,
		["AmmoConsumption"] = 0,
		["Knockback"] = 20
	},
	["TracerName"] = "rw_sw_laser_green",
	["HoldType"] = "rpg"
}

function ATTACHMENT:Attach(wep)
	wep.ImpactEffect = "sw_explosion"
	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_green"
	wep:Unload()
end

function ATTACHMENT:Detach(wep)
	wep.ImpactEffect = "rw_sw_impact_blue"
	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_blue"
	wep:Unload()
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end