------------------------------------------------
--------- Discord Whitelist par KZ#5669 --------
------------------------------------------------

AddEventHandler('playerSpawned', function()
    local src = source
    TriggerServerEvent("KzWL:CheckPermission", src)
end)

RegisterCommand("checkwl", function() 
    local src = source
    TriggerServerEvent("KzWL:CheckPermission", src)
end)

RegisterNetEvent("KzWL:CheckPermission:Return")
AddEventHandler("KzWL:CheckPermission:Return", function(havePerms, error,spawn)
    if error then
        print("^1Discord n'est pas détecté /ou/ vous n'êtes pas sur le discord du serveur! ^rVos permissions sont automatiquement misent en FreeAccess")
    end
end)


-- EXEMPLE


--[[RegisterNetEvent("KzWL:CheckPermission:Return")
AddEventHandler("KzWL:CheckPermission:Return", function(havePerms, error,spawn)
    if error then
        print("^1No Discord identifier/guild was found! ^rPermissions set to false. See this link for a debugging process - docs.faxes.zone/docs/debugging-discord")
    end
    if havePerms then
		SetCanAttackFriendly(GetPlayerPed(-1), true, false)
		NetworkSetFriendlyFireOption(true)
		print("^1PVP Activé")
    else
		SetCanAttackFriendly(GetPlayerPed(-1), false, false)
		NetworkSetFriendlyFireOption(false)
		print("^1PVP Désactivé")
    end
end)

---------------------------


cHavePerms = false

RegisterNetEvent("KzWL:CheckPermission:Return")
AddEventHandler("KzWL:CheckPermission:Return", function(havePerms, error)
    if error then
        print("^1No Discord identifier/guild was found! ^rPermissions set to false. See this link for a debugging process - docs.faxes.zone/docs/debugging-discord")
    end
    if havePerms then
        cHavePerms = true
    else
        cHavePerms = false
    end
end) ]]--
