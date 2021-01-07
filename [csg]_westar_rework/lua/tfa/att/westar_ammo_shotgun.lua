if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Burst Cells"
ATTACHMENT.ShortName = "SHG" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {
TFA.AttachmentColors["="],"Overloaded shotgun charges useful for CQB.",
TFA.AttachmentColors["+"],"High Damage",
TFA.AttachmentColors["-"],"Low Rate of Fire",
TFA.AttachmentColors["-"],"Low Accuracy",
TFA.AttachmentColors["-"],"Reduced Movement Speed",
}
ATTACHMENT.Icon = "entities/att_ext_ammo.png"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["barrel"] = {
			["active"] = false
		},
		["barrel_01"] = {
			["active"] = false
		},
	},
	["WElements"] = {
		["barrel"] = {
			["active"] = false
		},
	},
	["Primary"] = {
		["Sound"] = "weapons/bf3/e11_a.wav",
		["Damage"] = 35,
		["RPM"] = 165,
		["RPM_Burst"] = 165,
		["ClipSize"] = 16,
		["Spread"] = 0.02,
		["IronAccuracy"] = 0.02,
		["KickUp"]	= 0.25,
		["NumShots"] = 6,
	},
	["IronSightsMoveSpeed"] = 0.8,
	["IronRecoilMultiplier"] = 0.55,
	--["CrouchRecoilMultiplier"] = 0.65,
}

local mat_canister = Material( "Jellyton/Custom/Weapons/Westar_M5/M_Canister" )
function ATTACHMENT:Attach(wep)
	if wep.AmmoDCS then
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_white"
		wep.VElements["laser"].active = true
		wep.WElements["laser"].active = true
		wep.VElements["laser"].color = Color( 255, 255, 255, 255 )
		wep.WElements["laser"].color = Color( 255, 255, 255, 255 )

		wep.VElements["dotoptic"].color = Color( 150, 150, 150, 200 )
	end
	wep.CachedRetADCS = "#sw/visor/sw_ret_redux_white"
	wep.PrecachedLaser = Color( 255, 255, 255, 255 )
	wep.PrecachedOptic = Color( 150, 150, 150, 200 )

	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_white"

	wep:Unload()

	mat_canister:SetTexture( "$detail", "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Emissive_Grey" )
end

function ATTACHMENT:Detach(wep)
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