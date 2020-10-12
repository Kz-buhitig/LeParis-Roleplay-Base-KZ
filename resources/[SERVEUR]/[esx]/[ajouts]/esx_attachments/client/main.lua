ESX          = nil
local IsDead = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer 
end)

local used = 0

RegisterNetEvent('esx_attachments_bleiker:chargeurameliore')
AddEventHandler('esx_attachments_bleiker:chargeurameliore', function(duration)
				local inventory = ESX.GetPlayerData().inventory
				local chargeurameliore = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'chargeurameliore' then
						chargeurameliore = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used <= chargeurameliore then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_CLIP_02"))  
				   ESX.ShowNotification(_U('equip'))
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
					  used = used + 1

					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL"), GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"))  
						 ESX.ShowNotification(_U('equip')) 
						   used = used + 1

						elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
							GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CLIP_02"))  
							 ESX.ShowNotification(_U('equip')) 
							   used = used + 1		
							elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
								GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))  
								 ESX.ShowNotification(_U('equip')) 
								   used = used + 1	   


		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
					used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  			used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
		  		  	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
		  		 	used = used + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_BULLPUPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNIPERRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), GetHashKey("COMPONENT_SNIPERRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
			else
				ESX.ShowNotification(_U('error2'))  

		end
end)
				local used2 = 0

RegisterNetEvent('esx_attachments_bleiker:compensateur')
AddEventHandler('esx_attachments_bleiker:compensateur', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local compensateur = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'compensateur' then
						compensateur = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used2 <= compensateur then
						print('used2')

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP"))  
				   ESX.ShowNotification(_U('equip'))  
		  		 	used2 = used2 + 1
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP_02"))  
				   ESX.ShowNotification(_U('equip')) 
	used2 = used2 + 1
		  		

		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)
				local used3 = 0

RegisterNetEvent('esx_attachments_bleiker:viseurmk2')
AddEventHandler('esx_attachments_bleiker:viseurmk2', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local viseurmk2 = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'viseurmk2' then
						viseurmk2 = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used3 <= viseurmk2 then

			
			if currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_RAIL"))  
				   ESX.ShowNotification(_U('equip')) 
		  				used3 = used3 + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_PI_RAIL_02"))  
				   ESX.ShowNotification(_U('equip')) 
	used3 = used3 + 1
		  		
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  
		end
end)

				local used4 = 0

RegisterNetEvent('esx_attachments_bleiker:skinluxe')
AddEventHandler('esx_attachments_bleiker:skinluxe', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinluxe = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinluxe' then
						skinluxe = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used4 <= skinluxe then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
		  		 	used4 = used4 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		
				
		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
				


		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1

elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"))  
	ESX.ShowNotification(_U('equip'))  
used4 = used4 + 1

elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER"))  
	ESX.ShowNotification(_U('equip')) 
used4 = used4 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip'))  
	used4 = used4 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used5 = 0

RegisterNetEvent('esx_attachments_bleiker:viseurfusil')
AddEventHandler('esx_attachments_bleiker:viseurfusil', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local viseurfusil = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'viseurfusil' then
						viseurfusil = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used5 <= viseurfusil then

			if currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_SCOPE_MACRO"))  
				   ESX.ShowNotification(_U('equip'))  
				   used5 = used5 + 1
				
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MACRO"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used5 = used5 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used6 = 0

RegisterNetEvent('esx_attachments_bleiker:skinpapillion')
AddEventHandler('esx_attachments_bleiker:skinpapillion', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinpapillion = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinpapillion' then
						skinpapillion = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used6 <= skinpapillion then

			if currentWeaponHash == GetHashKey("WEAPON_SWITCHBLADE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SWITCHBLADE"), GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR1"))  
				   ESX.ShowNotification(_U('equip')) 
				   used6 = used6 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used7 = 0

RegisterNetEvent('esx_attachments_bleiker:skinlove')
AddEventHandler('esx_attachments_bleiker:skinlove', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinlove = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinlove' then
						skinlove = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used7 <= skinlove then

			if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_LOVE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used7 = used7 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used8 = 0

RegisterNetEvent('esx_attachments_bleiker:viseurmoyen')
AddEventHandler('esx_attachments_bleiker:viseurmoyen', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local viseurmoyen = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'viseurmoyen' then
						viseurmoyen = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used8 <= viseurmoyen then

			if currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_AT_SCOPE_SMALL_MK2"))  
				   ESX.ShowNotification(_U('equip')) 
				   used8 = used8 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used9 = 0

RegisterNetEvent('esx_attachments_bleiker:viseurgrand')
AddEventHandler('esx_attachments_bleiker:viseurgrand', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local viseurgrand = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'viseurgrand' then
						viseurgrand = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used9 <= viseurgrand then

			if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
				   ESX.ShowNotification(_U('equip')) 
				   used9 = used9 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used9 = used9 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used9 = used9 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))   

		end
end)

local used10 = 0

RegisterNetEvent('esx_attachments_bleiker:viseurholo')
AddEventHandler('esx_attachments_bleiker:viseurholo', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local viseurholo = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'viseurholo' then
						viseurholo = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used10 <= viseurholo then

			if currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_SIGHTS_SMG"))  
				   ESX.ShowNotification(_U('equip')) 
				   used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip')) 
					used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip'))  
					used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip')) 
					used10 = used10 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used11 = 0

RegisterNetEvent('esx_attachments_bleiker:skinplatinium')
AddEventHandler('esx_attachments_bleiker:skinplatinium', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinplatinium = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinplatinium' then
						skinplatinium = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used11 <= skinplatinium then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used11 = used11 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used12 = 0

RegisterNetEvent('esx_attachments_bleiker:skinbois')
AddEventHandler('esx_attachments_bleiker:skinbois', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinbois = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinbois' then
						skinbois = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used12 <= skinbois then

			if currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used12 = used12 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used13 = 0

RegisterNetEvent('esx_attachments_bleiker:skinboisfusil')
AddEventHandler('esx_attachments_bleiker:skinboisfusil', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinboisfusil = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinboisfusil' then
						skinboisfusil = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used13 <= skinboisfusil then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_03"))  
				   ESX.ShowNotification(_U('equip')) 
				   used13 = used13 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip'))  
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used14 = 0

RegisterNetEvent('esx_attachments_bleiker:skincranefusil')
AddEventHandler('esx_attachments_bleiker:skincranefusil', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skincranefusil = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skincranefusil' then
						skincranefusil = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used14 <= skincranefusil then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_04"))  
				   ESX.ShowNotification(_U('equip')) 
				   used14 = used14 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip'))  
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))   

		end
end)

local used15 = 0

RegisterNetEvent('esx_attachments_bleiker:skinzebre')
AddEventHandler('esx_attachments_bleiker:skinzebre', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinzebre = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinzebre' then
						skinzebre = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used15 <= skinzebre then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_08"))  
				   ESX.ShowNotification(_U('equip')) 
				   used15 = used15 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip'))  
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used16 = 0

RegisterNetEvent('esx_attachments_bleiker:skinboom')
AddEventHandler('esx_attachments_bleiker:skinboom', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinboom = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinboom' then
						skinboom = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used16 <= skinboom then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_10"))  
				   ESX.ShowNotification(_U('equip')) 
				   used16 = used16 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip'))  
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used17 = 0

RegisterNetEvent('esx_attachments_bleiker:freinbouche')
AddEventHandler('esx_attachments_bleiker:freinbouche', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local freinbouche = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'freinbouche' then
						freinbouche = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used17 <= freinbouche then
				if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used18 = 0

RegisterNetEvent('esx_attachments_bleiker:skinpimp')
AddEventHandler('esx_attachments_bleiker:skinpimp', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinpimp = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinpimp' then
						skinpimp = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used18 <= skinpimp then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_PIMP"))  
					ESX.ShowNotification(_U('equip')) 
					used18 = used18 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used19 = 0

RegisterNetEvent('esx_attachments_bleiker:skinbalas')
AddEventHandler('esx_attachments_bleiker:skinbalas', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinbalas = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinbalas' then
						skinbalas = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used19 <= skinbalas then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_BALLAS"))  
					ESX.ShowNotification(_U('equip')) 
					used19 = used19 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used20 = 0

RegisterNetEvent('esx_attachments_bleiker:skindollar')
AddEventHandler('esx_attachments_bleiker:skindollar', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skindollar = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skindollar' then
						skindollar = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used20 <= skindollar then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_DOLLAR"))  
					ESX.ShowNotification(_U('equip')) 
					used20 = used20 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used21 = 0

RegisterNetEvent('esx_attachments_bleiker:skindiament')
AddEventHandler('esx_attachments_bleiker:skindiament', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skindiament = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skindiament' then
						skindiament = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used21 <= skindiament then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_DIAMOND"))  
					ESX.ShowNotification(_U('equip')) 
					used21 = used21 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)



local used22 = 0

RegisterNetEvent('esx_attachments_bleiker:skinhate')
AddEventHandler('esx_attachments_bleiker:skinhate', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinhate = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinhate' then
						skinhate = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used22 <= skinhate then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_HATE"))  
					ESX.ShowNotification(_U('equip'))  
					used22 = used22 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used23 = 0

RegisterNetEvent('esx_attachments_bleiker:skinplayer')
AddEventHandler('esx_attachments_bleiker:skinplayer', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinplayer = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinplayer' then
						skinplayer = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used23 <= skinplayer then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_PLAYER"))  
					ESX.ShowNotification(_U('equip')) 
					used23 = used23 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used24 = 0

RegisterNetEvent('esx_attachments_bleiker:skinvagos')
AddEventHandler('esx_attachments_bleiker:skinvagos', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skinvagos = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skinvagos' then
						skinvagos = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used24 <= skinvagos then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_VAGOS"))  
					ESX.ShowNotification(_U('equip')) 
					used24 = used24 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used25 = 0

RegisterNetEvent('esx_attachments_bleiker:grip')
AddEventHandler('esx_attachments_bleiker:grip', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local grip = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'grip' then
						grip = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used25 <= grip then
				if currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
					ESX.ShowNotification(_U('equip')) 
					used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used26 = 0

RegisterNetEvent('esx_attachments_bleiker:Suppressor')
AddEventHandler('esx_attachments_bleiker:Suppressor', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local Suppressor = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'Suppressor' then
						Suppressor = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used26 <= Suppressor then
				if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
					ESX.ShowNotification(_U('equip')) 
					used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used27 = 0

RegisterNetEvent('esx_attachments_bleiker:flashlight')
AddEventHandler('esx_attachments_bleiker:flashlight', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local flashlight = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'flashlight' then
						flashlight = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used27 <= flashlight then
				if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
					ESX.ShowNotification(_U('equip')) 
					used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_03"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_02"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)























