ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

------------------------------------------------------------------------------------
---------------------------- Métiers Non Whitelist----------------------------------
------------------------------------------------------------------------------------

RegisterNetEvent('joblist:Postier')
AddEventHandler('joblist:Postier', function()
    local _source = source
    --local xPlayer = ESX.GetPlayerFromId(source)
        TriggerClientEvent('esx:showNotification', source, "~b~GPS~w~ ! Votre GPS à été mis a jours en direction du ~b~Bureau de Poste~w~.")
end)

------------------------------------------------------------------------------------
---------------------------- Métiers Whitelist--------------------------------------
------------------------------------------------------------------------------------

RegisterNetEvent('joblist:Police')
AddEventHandler('joblist:Police', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer la ~b~LSPD~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Militaire')
AddEventHandler('joblist:Militaire', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer ~b~l'armée~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:EMS')
AddEventHandler('joblist:EMS', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer les ~b~Secouristes~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Mecano')
AddEventHandler('joblist:Mecano', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer le ~b~Garage Mecano~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Tabac')
AddEventHandler('joblist:Tabac', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer les ~b~Tabagiste~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Vigneron')
AddEventHandler('joblist:Vigneron', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer le ~b~Domaine des vignerons~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Immo')
AddEventHandler('joblist:Immo', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer ~b~l'agence immobilière~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Banquier')
AddEventHandler('joblist:Banquier', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer la ~b~Banque~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Bahamas')
AddEventHandler('joblist:Bahamas', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer le ~b~Bahamas~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Unicorn')
AddEventHandler('joblist:Unicorn', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer le ~b~Unicorn~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Gouv')
AddEventHandler('joblist:Gouv', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer le ~b~Gouvernement~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

RegisterNetEvent('joblist:Journaliste')
AddEventHandler('joblist:Journaliste', function()
    local _source = source
    TriggerClientEvent('esx:showNotification', source, "Pour intégrer les ~b~Journaliste~w~, veuillez rédiger une ~b~candidature~w~ sur ~g~Discord~w~")
end)

