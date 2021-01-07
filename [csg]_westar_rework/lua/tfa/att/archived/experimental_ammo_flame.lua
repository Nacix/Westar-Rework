if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Super Epic Flame Plasma"
ATTACHMENT.ShortName = "FLAME"
ATTACHMENT.Description = { 
	TFA.AttachmentColors["="],"It's a heckin' flamegun",
	TFA.AttachmentColors["+"],"Lights people on fire",
	TFA.AttachmentColors["-"],"Lights people on fire",
}
ATTACHMENT.Icon = "entities/att_heavy_ammo.png"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["Damage"] = 20,
		["RPM"] = 100,
		["ClipSize"] = 12,
		["RPM_Burst"] = 100,
		["NumShots"] = 15,
		["Sound"] = "weapons/bf3/e11_heavy.wav",
		["DamageType"] = DMG_BURN,
		["Spread"] = 0.05,
		["IronAccuracy"] = 0.05,
	},
	
	["TracerName"] = "rw_sw_laser_orange",
}

function ATTACHMENT:Attach(wep)
	wep.ImpactEffect = "rw_sw_impact_orange"
	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_orange"
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