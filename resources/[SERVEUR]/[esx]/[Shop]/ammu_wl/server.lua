ESX = nil

--- Code ---


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('ammu:clip')
AddEventHandler('ammu:clip', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('clip', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('ammu:nodiscord')
AddEventHandler('ammu:nodiscord', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx:showNotification', source, "~r~DISCORD~w~ vous devez être Whitelist pour accéder à l'armurie !")
end)



RegisterNetEvent('ammu:cdc')
AddEventHandler('ammu:cdc', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_knife', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('ammu:padol')
AddEventHandler('ammu:padol', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 550
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('skindollar', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('ammu:suppr')
AddEventHandler('ammu:suppr', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 550
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('Suppressor', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('ammu:afl2')
AddEventHandler('ammu:afl2', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 550
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('skinluxe', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)





RegisterNetEvent('ammu:pa')
AddEventHandler('ammu:pa', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 400
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_knuckle', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)







RegisterNetEvent('ammu:hache')
AddEventHandler('ammu:hache', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 450
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_battleaxe', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)









RegisterNetEvent('ammu:fdc')
AddEventHandler('ammu:fdc', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_musket', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~r~Pense à enregistrer ton arme~w~ auprès du commissariat !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


