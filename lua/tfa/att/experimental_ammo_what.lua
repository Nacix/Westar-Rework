if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Good Time Ammo"
ATTACHMENT.ShortName = "AHH"
ATTACHMENT.Description = {
	TFA.AttachmentColors["="],"That wasn't bacta",
	TFA.AttachmentColors["+"],"You can see the future",
	TFA.AttachmentColors["-"],"The walls are plotting against you",
}
ATTACHMENT.Icon = "entities/att_heavy_ammo.png"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["Damage"] = 1,
		["RPM"] = 10000,
		["ClipSize"] = 9999999,
		["RPM_Burst"] = 99999999,
		["NumShots"] = 1000000,
		["Sound"] = "weapons/bf3/e11_heavy.wav",
		["DamageType"] = DMG_BURN,
		["Spread"] = 0,
		["IronAccuracy"] = 0,
		["Knockback"] = 100,
		["AmmoConsumption"] = 0,
	},
	["MoveSpeed"] = 1000,
	["TracerName"] = "rw_sw_laser_purple",
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