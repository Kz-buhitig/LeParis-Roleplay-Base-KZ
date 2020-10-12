local Keys = {

	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,

	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,

	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,

	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,

	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,

	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,

	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,

	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,

	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118

}



ESX = nil





Citizen.CreateThread(function()

    while ESX == nil do

	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

	Citizen.Wait(0)

    end

end)





_menuPool = NativeUI.CreatePool()

mainMenu = NativeUI.CreateMenu("Location","Liste", nil, nil, "shopui_title_ie_modgarage", "shopui_title_ie_modgarage")

_menuPool:Add(mainMenu)





spawnCar = function(car)

    local car = GetHashKey(car)



    RequestModel(car)

    while not HasModelLoaded(car) do

        RequestModel(car)

        Citizen.Wait(0)

    end



    local vehicle = CreateVehicle(car, -809.857, -121.565, 37.445, 254.441, true, false)

    SetEntityAsMissionEntity(vehicle, true, true)

    SetVehicleNumberPlateText(vehicle, "LOCATION")

end



function AddCarMenu(menu)



------ Menu



    local carsubmenu = _menuPool:AddSubMenu(menu, "Voiture", nil, nil, "shopui_title_ie_modgarage", "shopui_title_ie_modgarage")

    carsubmenu.Item:RightLabel("→")



    local motosubmenu = _menuPool:AddSubMenu(menu, "Scooter", nil, nil, "shopui_title_ie_modgarage", "shopui_title_ie_modgarage")

    motosubmenu.Item:RightLabel("→")



    local velosubmenu = _menuPool:AddSubMenu(menu, "Vélo", nil, nil, "shopui_title_ie_modgarage", "shopui_title_ie_modgarage")

    velosubmenu.Item:RightLabel("→")



------ Car Items



    local clio = NativeUI.CreateItem("Blista", "")

    carsubmenu.SubMenu:AddItem(clio)

    clio:RightLabel("100€")



    local faggio3 = NativeUI.CreateItem("Scooter", "")

    motosubmenu.SubMenu:AddItem(faggio3)

    faggio3:RightLabel("75€")



    local bmx = NativeUI.CreateItem("BMX", "")

    velosubmenu.SubMenu:AddItem(bmx)

    bmx:RightLabel("50€")



    carsubmenu.SubMenu.OnItemSelect = function(menu, item)

        if item == clio then

            TriggerServerEvent('buyBlista')

            ESX.ShowNotification('Vous avez payez ~r~100€')

            Citizen.Wait(0)

            spawnCar("Blista")

            ESX.ShowAdvancedNotification("Location", "Votre ~b~véhicule ~w~à été livré avec ~g~succés ~w~!", "", "CHAR_CARSITE", 1)

            ESX.ShowAdvancedNotification("Location", "Bonne route !", "", "CHAR_CARSITE", 1)

            _menuPool:CloseAllMenus(true)

        end

    end



    motosubmenu.SubMenu.OnItemSelect = function(menu, item)

        if item == faggio3 then

            TriggerServerEvent('buyFaggio')

            ESX.ShowNotification('Vous avez payez ~r~75€')

            Citizen.Wait(0)

            spawnCar("faggio3")

            ESX.ShowAdvancedNotification("Location", "Votre ~b~scooter ~w~à été livré avec ~g~succés ~w~!", "", "CHAR_CARSITE", 1)

            ESX.ShowAdvancedNotification("Location", "Bonne route !", "", "CHAR_CARSITE", 1)

            _menuPool:CloseAllMenus(true)

        end

    end



    velosubmenu.SubMenu.OnItemSelect = function(menu, item)

        if item == bmx then

            TriggerServerEvent('buyBmx')

            ESX.ShowNotification('Vous avez payez ~r~50€')

            Citizen.Wait(0)

            spawnCar("bmx")

            ESX.ShowAdvancedNotification("Location", "Votre ~b~vélo ~w~à été livré avec ~g~succés ~w~!", "", "CHAR_CARSITE", 1)

            ESX.ShowAdvancedNotification("Location", "Bonne route !", "", "CHAR_CARSITE", 1)

            _menuPool:CloseAllMenus(true)

        end

    end

end

        

AddCarMenu(mainMenu)

_menuPool:RefreshIndex()







-- Blips



-- Blips

local blips = {
    {title="Location", colour=37, id=50, x = -815.87042236328, y = -107.4939956665, z = 37.58209991455}
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, 50)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.8)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

local jostick = {
	{x = -815.87042236328, y = -107.4939956665, z = 37.58209991455},
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(jostick) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, jostick[k].x, jostick[k].y, jostick[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour intéragir avec le ~b~loueur")
				if IsControlJustPressed(1,51) then 
                    mainMenu:Visible(not mainMenu:Visible())
				end
            end
        end
    end
end)

local v1 = vector3(-815.87042236328, -107.4939956665, 37.58209991455)

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

local distance = 20

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Vdist2(GetEntityCoords(PlayerPedId(), false), v1) < distance then
            Draw3DText(v1.x,v1.y,v1.z, "Location")
		end
	end
end)


-- TUTO SPAWN


Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram No. 1
		if GetDistanceBetweenCoords( -828.785, -125.404, 28.175, GetEntityCoords(GetPlayerPed(-1))) < 20.0 then
			Draw3DText2( -828.785, -125.404, 28.175  -1.300, "Bienvenue sur ~o~Horizon", 1, 0.1, 0.1)
			Draw3DText2( -828.785, -125.404, 28.175  -1.600, "Tu viens de recevoire ~r~5000€", 1, 0.1, 0.1)
			Draw3DText2( -828.785, -125.404, 28.175  -1.900, "(500€ en poche et 4500€ en banque)", 1, 0.1, 0.1)		
		end		
				--Hologram No. 2
		if GetDistanceBetweenCoords( -851.015, -112.954, 28.185, GetEntityCoords(GetPlayerPed(-1))) < 20.0 then
			Draw3DText2( -851.015, -112.954, 28.185  -1.300, "Les arrivants sont invités à passer leur permis... c'est un conseil.", 1, 0.1, 0.1)
			Draw3DText2( -851.015, -112.954, 28.185  -1.600, "Rends-toi au ~y~pôle emplois~s~ histoire de te faire un peu d'argent!", 1, 0.1, 0.1)
			Draw3DText2( -851.015, -112.954, 28.185  -1.900, "Tu devrais aussi faire un tour au ~g~concessionaire~s~ pour te trouver un véhicule", 1, 0.1, 0.1)		
        end
        
        if GetDistanceBetweenCoords( -825.552, -113.31, 27.958, GetEntityCoords(GetPlayerPed(-1))) < 20.0 then
			Draw3DText2( -825.552, -113.31, 27.958  -1.300, "Un citoyen t'attend en haut.", 1, 0.1, 0.1)
			Draw3DText2( -825.552, -113.31, 27.958  -1.600, "Tu pourras lui louer un véhicule pour pas chère.", 1, 0.1, 0.1)
			Draw3DText2( -825.552, -113.31, 27.958  -1.900, "Passe un bon jeu sur ~o~Horizon", 1, 0.1, 0.1)		
		end	
	end
end

function Draw3DText2(x,y,z,textInput,fontId,scaleX,scaleY)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov   
    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(250, 250, 250, 255)		-- You can change the text color here
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
   end

Citizen.CreateThread(function()
    local hash = GetHashKey("csb_car3guy2")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
	ped = CreatePed("PED_TYPE_CIVMALE", "csb_car3guy2",-815.87042236328, -107.4939956665, 36.58209991455, 120.161, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

