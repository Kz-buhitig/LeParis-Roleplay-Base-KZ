local logs = "https://discordapp.com/api/webhooks/737368411503591515/Ujq_Zm0WyZbBzVXtz7NOZmHOmJW_AOIxUr4FfOpMpMEZB5CmeG55R83ySYfGg9eonDYC"
local communityname = "Horizon"
local communtiylogo = "https://i.imgur.com/3kqJjI7.png" --Must end with .png or .jpg

AddEventHandler('playerConnecting', function()
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local connect = {
        {
            ["color"] = "8663711",
            ["title"] = "Connection / Téléchargement des ressources",
            ["description"] = "Joueur: **"..name.."**\nIP: **"..ip.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Horizon Bot", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local disconnect = {
        {
            ["color"] = "8663711",
            ["title"] = "Joueur déconnecté",
            ["description"] = "Joueur: **"..name.."** \nRaison: **"..reason.."**\nIP: **"..ip.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Horizon Bot", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)
