if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Dynamic Color System (LASER)"
ATTACHMENT.ShortName = "DCS-L" -- EDIT: Changed from L to LASER
ATTACHMENT.Description = { 
	TFA.AttachmentColors["+"],"Syncs the color of your optics to the color of your laser",
}
ATTACHMENT.Icon = "entities/mod_stun20_servius.png"

function ATTACHMENT:Attach(wep)
	wep.LaserDCS = true
	
	if wep.CachedRetLDCS ~= nil then 
		wep.ScopeVariant = wep.CachedRetLDCS
	end
	
	if wep.PrecachedOpticLCDS ~= nil then
		wep.VElements["dotoptic"].color = wep.PrecachedOpticLCDS
	end
end

function ATTACHMENT:Detach(wep)
	wep.LaserDCS = false
	wep.ScopeVariant = "#sw/visor/sw_ret_redux_blue"
	wep.VElements["dotoptic"].color = wep.SystemColor
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end