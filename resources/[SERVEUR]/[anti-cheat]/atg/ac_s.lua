local logs = "https://discordapp.com/api/webhooks/739501817737642025/Y0fwaHmvL2jQ1Ae-h02yoae7Lg33oY4SZkUUnlCtPDrJVN01C5lb7oDL7s5Va4CO3Y1p" -- PUT YOUR WEBHOOK HERE
local reason = "no info"
local kick = true
local ban = true
AddEventHandler('playerConnecting', function()
	local identifier = "no info"
	local license   = "no info"
	local liveid    = "no info"
	local xblid     = "no info"
	local discord   = "no info"
	local playerip = "no info"
	local reason    = "no info"
	local name = GetPlayerName(source)

	if true then
				local sourceplayername = source
					for k,v in ipairs(GetPlayerIdentifiers(source))do
						if string.sub(v, 1, string.len("steam:")) == "steam:" then
							identifier = v
						elseif string.sub(v, 1, string.len("license:")) == "license:" then
							license = v
						elseif string.sub(v, 1, string.len("live:")) == "live:" then
							liveid = v
						elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
							xblid  = v
						elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
							discord = v
						elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
							playerip = v
						end
					end
		local logt = {
        {
            ["color"] = "3296671",
            ["title"] = "Player logged by trashAC Connected ",
            ["description"] = "Player: **"..name.."** \nLicense: **"..license.."** \nDiscord: **"..discord.."** \nlive: **"..liveid.."** \nXBL: **"..xblid.."**\nIP: **"..playerip.."**\n identifier: **"..identifier.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }
PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "trashAC Server Logger", embeds = logt}), { ['Content-Type'] = 'application/json' })
	
						end
end, false)



AddEventHandler('playerDropped', function(reason)
	local identifier = "no info"
	local license   = "no info"
	local liveid    = "no info"
	local xblid     = "no info"
	local discord   = "no info"
	local playerip = "no info"
	local target    = id
	local duree     = 0
	local permanent = 0
	local name = GetPlayerName(source)

	if true then
				local sourceplayername = source
					for k,v in ipairs(GetPlayerIdentifiers(source))do
						if string.sub(v, 1, string.len("steam:")) == "steam:" then
							identifier = v
						elseif string.sub(v, 1, string.len("license:")) == "license:" then
							license = v
						elseif string.sub(v, 1, string.len("live:")) == "live:" then
							liveid = v
						elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
							xblid  = v
						elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
							discord = v
						elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
							playerip = v
						end
					end
		local logt = {
        {
            ["color"] = "3296671",
            ["title"] = "Player logged by trashAC Left ",
            ["description"] = "Player: **"..name.." ** \nReason: **"..reason.."**  ** \nLicense: **"..license.."** \nDiscord: **"..discord.."** \nlive: **"..liveid.."** \nXBL: **"..xblid.."**\nIP: **"..playerip.."**\n identifier: **"..identifier.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }
PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "trashAC Server Logger", embeds = logt}), { ['Content-Type'] = 'application/json' })
	
						end
end, false)


RegisterServerEvent('shilling=yet3')
AddEventHandler('shilling=yet3', function(reason, kick, ban)
local reason = "CHEATER"
local _source = source
PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "trashAC", content = "\nCheater: **" .. GetPlayerName(source) .. "** " .. "\nReason: " .. reason .. "\nIP:  " .. GetPlayerEndpoint(source) }), { ['Content-Type'] = 'application/json' })
-- add your ban function here
DropPlayer(_source, reason)
end)

RegisterServerEvent('acoff')
AddEventHandler('acoff', function()
print "^1[[[^1ATG ^1ANTICHEAT ^1OFF]]]"
end)

RegisterServerEvent('acon')
AddEventHandler('acon', function()
print "^2[[[^2ATG ^2ANTICHEAT ^2STARTERD]]] :"
end)

