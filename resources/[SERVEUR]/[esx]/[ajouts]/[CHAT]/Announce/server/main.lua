
function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			name = identity['name'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height'],
			job = identity['job'],
			group = identity['group']
		}
	else
		return nil
	end
end



  TriggerEvent('es:addCommand', 'announceit', function(source, args, user)
  	local grupos = getIdentity(source)
	local nome = getIdentity(source)
    if grupos.group == 'admin' or grupos.group == 'superadmin' then
	    TriggerClientEvent("sendMessageAnnounceIt", -1, source, nome.name, table.concat(args, " "))
	end	
  end, {help = 'Announce Admins.'})
  
