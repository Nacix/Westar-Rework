if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Grappling Hook"
ATTACHMENT.ShortName = "HOOK" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = {
	TFA.AttachmentColors["="],"A long range grappling hook",
	TFA.AttachmentColors["+"],"Allows for quick upward travel",
	TFA.AttachmentColors["-"],"Disables aiming while enabled",
}
ATTACHMENT.Icon = "entities/mod_stun20_servius.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"

ATTACHMENT.WeaponTable = {
	["data"] = {
		["ironsights"] = 0,
	},
	["MaxGrappleDist"] = 5000,
	["GrappleEnabled"] = true,
}

function ATTACHMENT:Attach(wep)
end

function ATTACHMENT:Detach(wep)
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
