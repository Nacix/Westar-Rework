if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Anti-Armor Plasma"
ATTACHMENT.ShortName = "EXP" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {
	TFA.AttachmentColors["="],"This is for armor and only armor.",
	TFA.AttachmentColors["+"],"Explosive Damage; Large Area of Effect",
	TFA.AttachmentColors["-"],"Huge Movement Penalty",
	TFA.AttachmentColors["-"],"Blast radius is larger than you think",
}
ATTACHMENT.Icon = "entities/att_explosive_ammo.png"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["Damage"] = 1000,
		["RPM"] = 20,
		["RPM_Burst"] = 20,
		["ClipSize"] = 1500,
		["DamageType"] = DMG_BLAST,
		["AmmoConsumption"] = 500,
	},
	["TracerName"] = "rw_sw_laser_green",
	["MoveSpeed"] = 0.8,
	["IronSightsMoveSpeed"] = 0.25,
	--["HoldType"] = "rpg"
}

local mat_canister = Material( "Jellyton/Custom/Weapons/Westar_M5/M_Canister" )
function ATTACHMENT:Attach(wep)
	if wep.AmmoDCS then
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_green"
		wep.VElements["laser"].active = true
		wep.WElements["laser"].active = true
		wep.VElements["laser"].color = Color( 0, 255, 0, 255 )
		wep.WElements["laser"].color = Color( 0, 255, 0, 255 )

		wep.VElements["dotoptic"].color = Color( 0, 255, 50, 255 )
	end
	wep.CachedRetADCS = "#sw/visor/sw_ret_redux_green"
	wep.PrecachedLaser = Color( 0, 255, 0, 255 )
	wep.PrecachedOptic = Color( 0, 255, 50, 255 )

	wep.ImpactEffect = "sw_explosion"
	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_green"

	wep:Unload()

	mat_canister:SetTexture( "$detail", "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Emissive_Green" )
end

function ATTACHMENT:Detach(wep)
	wep.CachedRetADCS = nil
	wep.PrecachedLaser = nil

	wep.ImpactEffect = "rw_sw_impact_blue"
	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_blue"

	if wep.AmmoDCS then
		wep.VElements["laser"].color = Color( 25, 25, 255, 0 )
		wep.WElements["laser"].color = Color( 25, 25, 255, 0 )
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_blue"

		wep.VElements["dotoptic"].color = Color( 0, 75, 255, 255 )
	end

	wep:Unload()

	mat_canister:SetTexture( "$detail", "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Emissive" )
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end