if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Dynamic Color System (Ammo)"
ATTACHMENT.ShortName = "DCS-A" -- EDIT: Changed from L to LASER
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"],"Syncs the color of your optics to the theme of your ammo",
}
ATTACHMENT.Icon = "entities/mod_stun20_servius.png"

function ATTACHMENT:Attach(wep)
	wep.AmmoDCS = true
	if wep.CachedRetADCS ~= nil then wep.ScopeVariant = wep.CachedRetADCS end
	wep.VElements["laser"].active = true
	wep.WElements["laser"].active = true
	if wep.PrecachedLaser ~= nil and wep.PrecachedOptic ~= nil then
		wep.VElements["laser"].color = wep.PrecachedLaser
		wep.WElements["laser"].color = wep.PrecachedLaser

		wep.VElements["dotoptic"].color = wep.PrecachedOptic
	else
		wep.VElements["laser"].color = Color( 25, 25, 255, 0 )
		wep.WElements["laser"].color = Color( 25, 25, 255, 0 )

		wep.VElements["dotoptic"].color = Color( 0, 75, 255, 200 )
		--wep.WElements["dotoptic"].color = Color( 25, 25, 255, 0 )
	end
end

function ATTACHMENT:Detach(wep)
	wep.AmmoDCS = false
	wep.ScopeVariant = "#sw/visor/sw_ret_redux_blue"
	wep.VElements["laser"].active = false
	wep.WElements["laser"].active = false
	wep.VElements["laser"].color = Color( 0, 0, 0, 0 )
	wep.WElements["laser"].color = Color( 0, 0, 0, 0 )

	wep.VElements["dotoptic"].color = wep.SystemColor
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end