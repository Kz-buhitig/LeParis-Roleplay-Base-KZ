Deleter = true
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		local ped = PlayerPedId()
		local handle, object = FindFirstObject()
		local finished = false
		repeat
		Wait(1)
        if (Deleter == true)then
			if IsEntityAttached(object) and DoesEntityExist(object) then
			usernameid = GetPlayerName(PlayerId())
				if GetEntityModel(object) == GetHashKey("prop_acc_guitar_01") then
					DeleteObjects(object, true)
				end
			end
			for i=1,#Config.Objects do
				if GetEntityModel(object) == GetHashKey(Config.Objects[i]) then
					DeleteObjects(object, false)
				end
			end		
		end
		finished, object = FindNextObject(handle)

		until not finished
		EndFindObject(handle)	
	end
end)
function DeleteObjects(object, detach)
	if (Deleter == true)then
		if DoesEntityExist(object) then
			NetworkRequestControlOfEntity(object)
			while not NetworkHasControlOfEntity(object) do
				Citizen.Wait(1)
			end
			if detach then
				DetachEntity(object, 0, false)
			end

			SetEntityCollision(object, false, false)
			SetEntityAlpha(object, 0.0, true)
			SetEntityAsMissionEntity(object, true, true)
			SetEntityAsNoLongerNeeded(object)
			DeleteEntity(object)

		end
	end
end
