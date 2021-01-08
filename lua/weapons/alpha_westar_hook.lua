SWEP.Gun 							= "gun_base"
if (GetConVar(SWEP.Gun .. "_allowed")) != nil and not (GetConVar(SWEP.Gun .. "_allowed"):GetBool()) then
	SWEP.Base = "tfa_blacklisted"
	SWEP.PrintName = SWEP.Gun
return end

SWEP.Base							= "tasty_grapple_base"
SWEP.Category						= "Tasty's SWEPs"
SWEP.Manufacturer 					= "Jellyton, ChanceSphere574 & Servius"
SWEP.Author							= "Tasty"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Westar-M5 Hook"
SWEP.Type							= "Modified Alpha ARC Rifle"
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 75
SWEP.Slot							= 3
SWEP.SlotPos						= 100

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.Silenced 						= false

SWEP.DoMuzzleFlash 					= false
SWEP.CustomMuzzleFlash 				= true
SWEP.MuzzleFlashEffect 				= "rw_sw_muzzleflash_blue"

SWEP.SelectiveFire					= true
SWEP.DisableBurstFire				= false
SWEP.OnlyBurstFire					= false
SWEP.DefaultFireMode 				= "Automatic"
SWEP.FireModeName 					= nil
SWEP.DisableChambering 				= true

SWEP.Primary.ClipSize				= 75
SWEP.Primary.DefaultClip			= 500
SWEP.Primary.RPM					= 475
SWEP.Primary.RPM_Burst				= 650
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= -1
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.RPM_Semi				= nil
SWEP.Primary.BurstDelay				= 0.2
SWEP.Primary.Sound 					= Sound ("westar.wav")
SWEP.Primary.ReloadSound 			= Sound ("weapons/bf3/standard_reload2.ogg");
SWEP.Primary.PenetrationMultiplier 	= 0
SWEP.Primary.Damage					= 55
SWEP.Primary.HullSize 				= 0
SWEP.DamageType 					= nil

SWEP.FireModes = {
	"Automatic",
	"2Burst",
	"5Burst",
	"Single"
}


SWEP.IronRecoilMultiplier			= 0.45
SWEP.CrouchRecoilMultiplier			= 0.55
SWEP.JumpRecoilMultiplier			= 2
SWEP.WallRecoilMultiplier			= 1.1
SWEP.ChangeStateRecoilMultiplier	= 1.2
SWEP.CrouchAccuracyMultiplier		= 0.8
SWEP.ChangeStateAccuracyMultiplier	= 1
SWEP.JumpAccuracyMultiplier			= 2.5
SWEP.WalkAccuracyMultiplier			= 1.8
SWEP.NearWallTime 					= 0.5
SWEP.ToCrouchTime 					= 0.25
SWEP.WeaponLength 					= 35
SWEP.SprintFOVOffset 				= 12
SWEP.ProjectileVelocity 			= 9

SWEP.ProjectileEntity 				= nil
SWEP.ProjectileModel 				= nil

SWEP.ViewModel						= "models/servius/starwars/c_westarm5.mdl"
SWEP.WorldModel						= "models/servius/starwars/w_westarm5.mdl"
SWEP.ViewModelFOV					= 70
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "ar2"
SWEP.ReloadHoldTypeOverride 		= "smg"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0,-1.5,-0.05)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 0
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"

SWEP.Tracer							= 0
SWEP.TracerName 					= "rw_sw_laser_blue"
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0.01
SWEP.ImpactEffect 					= "effect_sw_impact"
SWEP.ImpactDecal 					= "FadingScorch"

SWEP.VMPos = Vector(0, 0, 0)
SWEP.VMAng = Vector(0, 0, 0)

SWEP.IronSightTime 					= 0.65
SWEP.Primary.KickUp					= 0.04
SWEP.Primary.KickDown				= 0.03
SWEP.Primary.KickHorizontal			= 0.01
SWEP.Primary.StaticRecoilFactor 	= 0.65
SWEP.Primary.Spread					= 0.005
SWEP.Primary.IronAccuracy 			= 0.0001
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 1

SWEP.IronSightsPos 					= Vector(-3.07, -4.02, 1.6875)
SWEP.IronSightsAng					= Vector(0, 0, 0)
SWEP.RunSightsPos 					= Vector(5.226, -2, 0)
SWEP.RunSightsAng 					= Vector(-18, 36, -13.5)
SWEP.InspectPos 					= Vector(8, -4.8, -3)
SWEP.InspectAng 					= Vector(11.199, 38, 0)

SWEP.IsScopeActive = false
SWEP.ScopeVariant = "#sw/visor/sw_ret_redux_blue"

SWEP.LaserDCS 						= false
SWEP.AmmoDCS 						= false

SWEP.CachedRetLDCS					= nil
SWEP.PrecachedLaser					= nil
SWEP.PrecachedOptic					= nil
SWEP.PrecachedOpticLCDS				= nil
SWEP.CachedRetADCS					= nil

SWEP.IronSightsSensitivity			= 0.7

SWEP.FOV							= 8

SWEP.SystemColor = Color(255, 0, 0, 200)

SWEP.VElements = {
	["lasersight"] = { type = "Model", model = "models/sw_battlefront/props/flashlight/flashlight.mdl", bone = "weapon", rel = "", pos = Vector(1.2, -1, 7.791), angle = Angle(90, 90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(80, 80, 80, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonermerge = true, active = true  },

	["laser"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "weapon", rel = "lasersight", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.144, 1.144, 1.144), color = SWEP.SystemColor, surpresslightning = false, material = "models/props_combine/tpballglow", skin = 0, bodygroup = {}, bonermerge = true, active = false },

	["scope"] = { type = "Model", model = "models/servius/starwars/w_scope.mdl", bone = "weapon", rel = "", pos = Vector(3.07, -4.9, -11.8), angle = Angle(0, 0, -90), size = Vector(1.0, 1.0, 1.0), color = Color(255, 255, 255, 255),surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonermerge = true, active = false },
	["reticle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "weapon", rel = "scope", pos = Vector(-3.047, 9, -2.026), angle = Angle(0, 90, 0), size = Vector(0.275, 0.275, 0.275), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {}, bonermerge = true, active = false },
	["ironsight"] = { type = "Model", model = "models/optics/kemper_xl_xl.mdl", bone = "weapon", rel = "", pos = Vector(0.015, -2.1, 0.8), angle = Angle(270, 0, -90), size = Vector(0.6, 0.6, 0.6), color = Color(30.5, 30.5, 30.5, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {}, bonermerge = true, active = true },

	["barrel"] = { type = "Model", model = "models/servius/starwars/iqa_barrel1.mdl", bone = "weapon", rel = "", pos = Vector(-.8, -3.03, -15.3), angle = Angle(90, 105, 10), size = Vector(0.8, 0.899, 0.899), color = Color(30.5, 30.5, 30.5, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {}, active = true },

	["dotoptic"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "weapon", rel = "ironsight", pos = Vector(1.5, -0.0001 , 1.177), angle = Angle(90, 0, 0), size = Vector(0.0005, 0.0005, 0.0005), color = SWEP.SystemColor, surpresslightning = true, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {}, bonermerge = true, active = true }
}

SWEP.WElements = {
	["westar"] = { type = "Model", model = "models/servius/starwars/w_westar_noscope.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.75, 0, -05.5), angle = Angle(-15, 0, 180), size = Vector(1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["scope"] = { type = "Model", model = "models/servius/starwars/w_scope.mdl", bone = "", rel = "westar", pos = Vector(-19.8, 2.85, 0), angle = Angle(180, 90, 0), size = Vector(1.299, 1.299, 1.299), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonermerge = true, active = false  },

	["laser"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "lasersight", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.755, 0.755, 0.755), color = SWEP.SystemColor, surpresslightning = false, material = "models/props_combine/tpballglow", skin = 0, bodygroup = {}, bonermerge = true, active = false  },

	["lasersight"] = { type = "Model", model = "models/sw_battlefront/props/flashlight/flashlight.mdl", bone = "", rel = "westar", pos = Vector(8, -02, -0.3), angle = Angle(0, 0, 180), size = Vector(0.5, 0.5, 0.5), color = Color(70, 70, 70, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonermerge = true, active = true },
	["ironsight"] = { type = "Model", model = "models/optics/kemper_xl_xl.mdl", bone = "", rel = "westar", pos = Vector(-4.9, -1.05, 1), angle = Angle(0, 180, 0), size = Vector(0.6, 0.6, 0.6), color = Color(30.5, 30.5, 30.5, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {}, bonermerge = true, active = true },

	["barrel"] = { type = "Model", model = "models/servius/starwars/iqa_barrel1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-13.2, .99, -2.335), angle = Angle(-14.9, -360, 1.506), size = Vector(0.975, .85, 1.31), color = Color(30, 30, 30, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {}, active = true },

	["dotoptic"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "weapon", rel = "ironsight", pos = Vector(1.5, -0.0001 , 1.177), angle = Angle(90, 0, 0), size = Vector(0.0005, 0.0005, 0.0005), color = SWEP.SystemColor, surpresslightning = true, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {}, bonermerge = true, active = true }
}

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "laser_red", "laser_green", "laser_cyan", "laser_purple", "laser_white" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "westar_scope_zoom", "westar_scope_4x", "westar_scope_8x", "westar_grapple" }, order = 2 },
	[3] = { offset = { 0, 0 }, atts = { "westar_ammo_shotgun", "westar_ammo_sniper", "westar_ammo_stun", "westar_ammo_explosive" }, order = 3 }, -- EDIT: Added new attachments and implemented scrapped content
	[4] = { offset = { 0, 0 }, atts = { "dcs_laser", "dcs_ammo" }, order = 4 },
}

SWEP.AttachmentExclusions = {
	["laser_red"] = { [4] = "dcs_ammo" },
	["laser_green"] = { [4] = "dcs_ammo"},
	["laser_cyan"] = { [4] = "dcs_ammo"},
	["laser_purple"] = { [4] = "dcs_ammo"},
	["laser_white"] = { [4] = "dcs_ammo"},
	["dcs_ammo"] = { [1] = "laser_red", "laser_green", "laser_cyan", "laser_purple", "laser_white" }
}

SWEP.IronSightsPos_Westar = Vector(-3.07, -6, 2.08)
SWEP.IronSightsAng_Westar = Vector(0, 0, 0)

SWEP.ThirdPersonReloadDisable		= false
SWEP.Primary.DamageType 			= DMG_BULLET
SWEP.DamageType 					= DMG_BULLET
SWEP.RTScopeAttachment				= -1
SWEP.Scoped_3D 						= false
SWEP.ScopeReticule 					= "#sw/visor/sw_ret_redux_blue"
SWEP.ScopeReticule_Scale 			= {1.1,1.1}
if surface then
	SWEP.Secondary.ScopeTable = nil --[[
		{
			scopetex = surface.GetTextureID("scope/gdcw_closedsight"),
			reticletex = surface.GetTextureID("scope/gdcw_acogchevron"),
			dottex = surface.GetTextureID("scope/gdcw_acogcross")
		}
	]]--
end

DEFINE_BASECLASS( SWEP.Base )

-------- [Materials (VMT Format)] --------
if CLIENT then
	CreateMaterial( "!M_WestarCanister_Grey", "VertexLitGeneric", {
		["$basetexture"] = "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Color",
		["$bumpmap"] = "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Normal",
		["$phongexponenttexture"] = "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Exponent",

		["$detail"] = "Jellyton/Custom/Weapons/Westar_M5/T_WestarM5_Emissive",
		["$detailblendmode"] = 5,
		["$detailscale"] = 1,
		["$detailblendfactor"] = 4,

		["$phong"] = 1,
		["$phongboost"] = 15,
		["$phongalbedotint"] = 1,
		["$phongfresnelranges"] = "[1 5 22.5]",

		["$envmap"] = "Jellyton/Custom/Weapons/Westar_M5/cubemaps/brushed_silver.hdr",
		["$envmaptint"] = "[ 0.08 0.08 0.08 ]",
		["$envmapfresnel"] =  0.1,
		["$basemapalphaenvmapmask"] = 1,
	})
end

function SWEP:Think()
	BaseClass.Think(self)
	if CLIENT or game.SinglePlayer() then
		hook.Add( "PlayerBindPress", "VariableZoom", function( ply, bind, pressed )
			if pressed and ply:IsValid() and ply:GetActiveWeapon() == self and ply:GetActiveWeapon():IsAttached( "westar_scope_zoom" ) and string.find( bind, "+zoom" ) and self.CLIronSightsProgress > 0.5 then
				surface.PlaySound( "buttons/blip1.wav" )
				if self.FOV == 8 then
					self.FOV = 2
					self.IronSightsSensitivity = 0.1
				else
					self.FOV = 8
					self.IronSightsSensitivity = 0.3
				end
				self:Detach( "westar_scope_zoom" )
				self:Attach( "westar_scope_zoom" )
			return true end
		end )
	end
end