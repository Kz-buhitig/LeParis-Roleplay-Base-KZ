------------------------------------------------
--- Discord Vehicle Whitelist, Made by FAXES ---
------------------------------------------------

--- Config ---

local whitelistRoles = { -- Role(s) needed to bypass the Discord vehicle whitelist (be able to use the listed vehicles).
    "ID ROLE",
}

local ESX = nil
-- ESX
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--- Code ---

RegisterServerEvent("KzWL:CheckPermission")
AddEventHandler("KzWL:CheckPermission", function()
    local src = source
    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            identifierDiscord = v
        end
    end

    if identifierDiscord then
        exports['discordroles']:isRolePresent(src, whitelistRoles, function(hasRole, roles)
            if not roles then
                TriggerClientEvent("KzWL:CheckPermission:Return", src, false, true)
            end
            if hasRole then
                TriggerClientEvent("KzWL:CheckPermission:Return", src, true, false)
            else
                TriggerClientEvent("KzWL:CheckPermission:Return", src, false, false)
            end
        end)
    else
        TriggerClientEvent("KzWL:CheckPermission:Return", src, false, true)
    end
end)