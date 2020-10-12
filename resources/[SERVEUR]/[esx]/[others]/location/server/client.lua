ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('buyBlista')
AddEventHandler('buyBlista', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    xPlayer.removeMoney(100)
end)

RegisterNetEvent('buyFaggio')
AddEventHandler('buyFaggio', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 75
    xPlayer.removeMoney(75)
end)

RegisterNetEvent('buyBmx')
AddEventHandler('buyBmx', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50
    xPlayer.removeMoney(50)
end)

