if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Stun Charges"
ATTACHMENT.ShortName = "STN" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {
	TFA.AttachmentColors["="],"Stun charges for use on HVTs.",
	TFA.AttachmentColors["+"],"5 Second Stun",
}
ATTACHMENT.Icon = "entities/att_stun_ammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"

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
		["Damage"] = 0,
		["RPM"] = 200,
		["RPM_Burst"] = 99999,
		["ClipSize"] = 10,
		["AmmoConsumption"] = 1,
		["StatusEffect"] = "stun",
		["StatusEffectDmg"] = 20,
		["StatusEffectDur"] = 5,
		["StatusEffectParticle"] = true,
		["Sound"] = "weapons/bf3/e11_light.wav",
		["Spread"] = 0.015
	},
	["MoveSpeed"] = 1.15,
	["TracerName"] = "effect_sw_laser_blue_stun",
}

local mat_canister = Material( "Jellyton/Custom/Weapons/Westar_M5/M_Canister" )
function ATTACHMENT:Attach(wep)
	wep.ImpactEffect = ""
	wep:Unload()
	wep.CustomBulletCallbackOld = wep.CustomBulletCallbackOld or wep.CustomBulletCallback
	wep.CustomBulletCallback = function(a, tr, dmg)
		local wep = dmg:GetInflictor()
		if wep:GetStat("Primary.StatusEffect") then
			GMSNX:AddStatus(tr.Entity, wep:GetOwner(), wep:GetStat("Primary.StatusEffect"), wep:GetStat("Primary.StatusEffectDur"), wep:GetStat("Primary.StatusEffectDmg"), wep:GetStat("Primary.StatusEffectParticle"))
			--util.Effect("BGOLightning", ED_Stun, true, true)
		end
	end

	if wep.AmmoDCS then
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_aqua"
		wep.VElements["laser"].active = true
		wep.WElements["laser"].active = true
		wep.VElements["laser"].color = Color( 0, 255, 255, 255 )
		wep.WElements["laser"].color = Color( 0, 255, 255, 255 )

		wep.VElements["dotoptic"].color = Color( 0, 255, 255, 200 )
	end
	wep.CachedRetADCS = "#sw/visor/sw_ret_redux_aqua"
	wep.PrecachedLaser = Color( 0, 255, 255, 255 )
	wep.PrecachedOptic = Color( 0, 255, 255, 200 )

	wep:Unload()

	mat_canister:SetTexture( "$detail", "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Emissive_Cyan" )
end

function ATTACHMENT:Detach(wep)
	wep.CustomBulletCallback = wep.CustomBulletCallbackOld
	wep.CustomBulletCallbackOld = nil
	wep.ImpactEffect = "rw_sw_impact_blue"

	if wep.AmmoDCS then
		wep.VElements["laser"].color = Color( 25, 25, 255, 0 )
		wep.WElements["laser"].color = Color( 25, 25, 255, 0 )
		wep.ScopeVariant = "#sw/visor/sw_ret_redux_blue"

		wep.VElements["dotoptic"].color = Color( 0, 75, 255, 200 )
	end

	wep.ScopeVariant = "#sw/visor/sw_ret_redux_blue"
	wep.CachedRetADCS = nil
	wep.PrecachedLaser = nil

	wep.MuzzleFlashEffect = "rw_sw_muzzleflash_blue"

	wep:Unload()

	mat_canister:SetTexture( "$detail", "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Emissive" )
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end