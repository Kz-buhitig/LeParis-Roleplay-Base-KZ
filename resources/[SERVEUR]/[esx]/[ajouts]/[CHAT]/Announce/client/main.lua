
RegisterNetEvent('sendMessageAnnounceIt')
AddEventHandler('sendMessageAnnounceIt', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " [ANNONCE : LE PARIS] | " .. name .."  "..":^0  " .. message)
 	elseif pid ~= myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " [ANNONCE : LE PARIS] | " .. name .."  "..":^0  " .. message)
  end
end)


