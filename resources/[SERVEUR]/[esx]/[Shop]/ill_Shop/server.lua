ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('ammu:lockpick')
AddEventHandler('ammu:lockpick', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 4550
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('lockpick', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cet objet est bien entendu illégal... ne te fait pas choper avec !")
    else
         TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)



RegisterNetEvent('ammu:pistol')
AddEventHandler('ammu:pistol', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_pistol', 200)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cette arme est bien entendu illégal... ne te fait pas choper avec !")
    else
         TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)

RegisterNetEvent('ammu:deagle')
AddEventHandler('ammu:deagle', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 7500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_heavypistol', 200)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cette arme est bien entendu illégal... ne te fait pas choper avec !")
    else
        TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)

RegisterNetEvent('ammu:smg')
AddEventHandler('ammu:smg', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_microsmg', 250)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cette arme est bien entendu illégal... ne te fait pas choper avec !")
    else
        TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)

RegisterNetEvent('ammu:ak47')
AddEventHandler('ammu:ak47', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 15000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_assaultrifle', 250)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cette arme est bien entendu illégal... ne te fait pas choper avec !")
    else
        TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)

RegisterNetEvent('ammu:ak47c')
AddEventHandler('ammu:ak47c', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 15000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_compactrifle', 250)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cette arme est bien entendu illégal... ne te fait pas choper avec !")
    else
        TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)

RegisterNetEvent('ammu:sniper')
AddEventHandler('ammu:sniper', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 45000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_sniperrifle', 12)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cette arme est bien entendu illégal... ne te fait pas choper avec !")
    else
        TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)


RegisterNetEvent('ammu:bankid')
AddEventHandler('ammu:bankid', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bankidcard',1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cette carte est bien entendu illégal... ne te fait pas choper avec !")
    else
        TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)

RegisterNetEvent('ammu:oxy')
AddEventHandler('ammu:oxy', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('oxycutter',1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        TriggerClientEvent('esx:showNotification', source, "~g~N'oublie pas,~w~ cet objet est bien entendu illégal... ne te fait pas choper avec !")
    else
        TriggerClientEvent('esx:showNotification', source, "Reviens avec de ~r~l\'argent.~w~ Tu me prends pour un con ou quoi?")
    end
end)


