if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Suppressed barrel"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "Reduces vertical recoil by 10%",
	TFA.AttachmentColors["+"], "40% less spread",
	TFA.AttachmentColors["-"], "Increases weight of the weapon",
}
ATTACHMENT.Icon = "entities/tfa_qmark.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SUPP"

ATTACHMENT.WeaponTable = {
	["Primary"] = {
		["KickUp"] = function( wep, stat ) return stat * 0.9 end,
		["KickDown"] = function( wep, stat ) return stat * 0.9 end,
		["Spread"] = function( wep, stat ) return stat * 0.6 end,
		["Sound"] = function(wep,stat) return wep.Primary.SilencedSound or stat end,
		["Silenced"] = true,
	},
	["Secondary"] = {
		["IronAccuracy"] = function( wep, stat ) return stat * 0.6 end,
	},
	["MoveSpeed"] = function( wep, stat ) return stat * 0.9 end,
	["IronSightsMoveSpeed"] = function( wep, stat ) return stat * 0.9 end,
	["ViewModelBoneMods"] = {
		["muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 9, 0), angle = Angle(0, 0, 0) },
	},
	["WorldModelBoneMods"] = {
	},
        ["Bodygroups_V"] = {
		[6] =  2
    },
        ["Bodygroups_W"] = {
    },
}

function ATTACHMENT:Attach(wep)
	wep.Silenced = true
	wep:SetSilenced(wep.Silenced)
end

function ATTACHMENT:Detach(wep)
	wep.Silenced = false
	wep:SetSilenced(wep.Silenced)
end

ATTACHMENT.AttachSound = "TFA_FO4.MENU_MOD_SELECT"
ATTACHMENT.DetachSound = "TFA_FO4.MENU_MOD_DESELECT"

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
