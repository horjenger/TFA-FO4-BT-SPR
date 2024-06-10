local path = "shrimp/fo4/bt_spr/"
local pref = "TFA_FO4_BT_SPR"

TFA.AddSound(pref..".Fire", CHAN_USER_BASE, 1, 140, {99, 101}, path.."SPR_Fire01.wav", "SPR_Fire02.wav", "SPR_Fire03.wav", ")")
TFA.AddSound(pref..".Suppressor", CHAN_USER_BASE, 1, 140, {99, 101}, path.."SPR_Fire01_Silenced.wav", "SPR_Fire02_Silenced.wav", "SPR_Fire03_Silenced.wav", ")")

TFA.AddWeaponSound(pref .. ".WPNSPRRaise", path .. "Foley/SP-R 208_raise_quick.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRBoltClose", path .. "Foley/SP-R 208_reload_empty_fast_xmags_boltclose.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRReloadEnd", path .. "Foley/SP-R 208_inspect_up.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRBoltOpen", path .. "Foley/SP-R 208_reload_empty_xmags_boltopen.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRMagGrab", path .. "Foley/SP-R 208_reload_empty_xmags_grab.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRMagOut", path .. "Foley/SP-R 208_reload_empty_xmags_magout.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRMagDrop", path .. "Foley/FAL_reload_empty_fast_xmag_dropmag.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRMagHit", path .. "Foley/SP-R 208_reload_empty_xmags_maghit.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRMagIn", path .. "Foley/SP-R 208_reload_empty_xmags_magin.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRRechamberUp", path .. "Foley/SP-R 208_reload_empty_fast_up.wav")
TFA.AddWeaponSound(pref .. ".WPNSPRRechamber", path .. "Foley/SP-R 208_rechamber_bolt.wav")