RegisterNetEvent("KzWL:CheckPermission:Return")
AddEventHandler("KzWL:CheckPermission:Return", function(havePerms, error,spawn)
    if havePerms then
		SetCanAttackFriendly(GetPlayerPed(-1), true, false)
		NetworkSetFriendlyFireOption(true)
		print("^2PVP Activé (Whitelist) | LP:RP")
    else
		SetCanAttackFriendly(GetPlayerPed(-1), false, false)
		NetworkSetFriendlyFireOption(false)
		print("^1PVP Désactivé (FreeAccess)| LP:RP")
    end
end)