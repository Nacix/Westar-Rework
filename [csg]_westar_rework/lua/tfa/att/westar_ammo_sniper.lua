if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Sniper Plasma"
ATTACHMENT.ShortName = "SNP"
ATTACHMENT.Description = {
	TFA.AttachmentColors["="],"Highly concentrated plasma; great for sniping.",
	TFA.AttachmentColors["+"],"High Damage",
	TFA.AttachmentColors["+"],"Very Accurate",
	TFA.AttachmentColors["-"],"10 Charges",
	TFA.AttachmentColors["-"],"Low Fire Rate",
	TFA.AttachmentColors["-"],"Reduced Movement Speed",
}
ATTACHMENT.Icon = "entities/att_heavy_ammo.png"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["Damage"] = 300,
		["RPM"] = 60,
		["ClipSize"] = 200,
		["RPM_Burst"] = 72,
		["Sound"] = "weapons/bf3/e11_heavy.wav",
		["DamageType"] = DMG_DISSOLVE,
		["AmmoConsumption"] = 20,
		["Spread"] = 0.001,
		["IronAccuracy"] = 0,
	},
	--["HoldType"] = "rpg",
	["TracerName"] = "rw_sw_laser_purple",
	--["MoveSpeed"] = 0.8,
}

local mat_canister = Material( "Jellyton/Custom/Weapons/Westar_M5/M_Canister" )
function ATTACHMENT:Attach(wep)
	wep.ImpactEffect = "rw_sw_impact_purple"
	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_purple"

	if wep.AmmoDCS then
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_purple"
		wep.VElements["laser"].active = true
		wep.WElements["laser"].active = true
		wep.VElements["laser"].color = Color( 255, 0, 255, 255 )
		wep.WElements["laser"].color = Color( 255, 0, 255, 255 )

		wep.VElements["dotoptic"].color = Color( 255, 0, 255, 200 )
	end
	wep.CachedRetADCS = "#sw/visor/sw_ret_redux_purple"
	wep.PrecachedLaser = Color( 255, 0, 255, 255 )
	wep.PrecachedOptic = Color( 255, 0, 255, 200 )

	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_purple"

	wep:Unload()

	mat_canister:SetTexture( "$detail", "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Emissive_Purple" )
end

function ATTACHMENT:Detach(wep)
	wep.ImpactEffect = "rw_sw_impact_blue"
	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_blue"

	wep.CachedRetADCS = nil
	wep.PrecachedLaser = nil

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