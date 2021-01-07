if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "How did we get here?"
ATTACHMENT.ShortName = "huh" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {
	TFA.AttachmentColors["="],"holy dog shit",
	TFA.AttachmentColors["+"],"it shoots",
	TFA.AttachmentColors["-"],"300% Reduction to Framerate",
}
ATTACHMENT.Icon = "entities/att_explosive_ammo.png"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["Damage"] = 420,
		["RPM"] = 99999999,
		["RPM_Burst"] = 99999999,
		["ClipSize"] = 6969,
		["DamageType"] = bit.bor(DMG_CRUSH, DMG_BULLET, DMG_SLASH, DMG_BURN, DMG_VEHICLE, DMG_FALL, DMG_BLAST, DMG_CLUB, DMG_SHOCK, DMG_SONIC, DMG_ENERGYBEAM, DMG_PREVENT_PHYSICS_FORCE, DMG_NEVERGIB, DMG_DROWN, DMG_PARALYZE, DMG_NERVEGAS, DMG_POISON, DMG_RADIATION, DMG_ACID, DMG_DROWNRECOVER, DMG_SLOWBURN, DMG_REMOVENORAGDOLL, DMG_PHYSGUN, DMG_PLASMA, DMG_AIRBOAT, DMG_DISSOLVE, DMG_BLAST_SURFACE, DMG_DIRECT, DMG_BUCKSHOT, DMG_SNIPER, DMG_MISSILEDEFENSE),
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