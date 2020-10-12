ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

------------ Création du Menu / Sous Menu -----------

RMenu.Add('joblistmenu', 'main', RageUI.CreateMenu("Pôle Emploi", "Pôle Emploi"))
RMenu.Add('joblistmenu', 'libre', RageUI.CreateSubMenu(RMenu:Get('joblistmenu', 'main'), "Métiers intérimaire", "Métiers Interimaire"))
RMenu.Add('joblistmenu', 'whitelist', RageUI.CreateSubMenu(RMenu:Get('joblistmenu', 'main'), "Métiers WL", "Whiteliste ~r~OBLIGATOIRE"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('joblistmenu', 'main'), true, true, true, function()

            RageUI.Button("~g~Métiers intérimaire", null ,  {RightLabel = "→"},true, function()
            end, RMenu:Get('joblistmenu', 'libre'))

            RageUI.Button("~b~Métiers avec acceptation sur dossier", nul ,  {RightLabel = "→"},true, function()
            end, RMenu:Get('joblistmenu', 'whitelist'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('joblistmenu', 'libre'), true, true, true, function()

            RageUI.Button("~b~Postier", nil, {RightLabel = "→ M'indiquer"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('joblist:Postier')
                    SetNewWaypoint(78.899, 111.934)
                end
            end)

         RageUI.Button("~g~Routier", nil, {RightLabel = "→ M'indiquer"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('joblist:Routier')
                    SetNewWaypoint(1189.61, -3104.31)
                end
            end)

         RageUI.Button("~b~Technicien EDF", nil, {RightLabel = "~r~→ Clos"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('joblist:EDF')
                end
            end)

        RageUI.Button("~g~Chauffeur de bus", nil, {RightLabel = "~r~→ Clos"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('joblist:Bus')
                end
            end)

        end, function()
        end)

            RageUI.IsVisible(RMenu:Get('joblistmenu', 'whitelist'), true, true, true, function()

                RageUI.Button("~b~Police Nationale", nil, {RightLabel = "→ Informations"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Police')
                    end
                end)

                RageUI.Button("~g~Militaire", nil, {RightLabel = "~r~→ Clos"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Militaire')
                    end
                end) 

                RageUI.Button("~b~Service de Secours", nil, {RightLabel = "→ Informations"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:EMS')
                    end
                end)

                RageUI.Button("~g~Mécanicien", nil, {RightLabel = "→ Informations"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Mecano')
                    end
                end)

                 RageUI.Button("~b~Tabagiste", nil, {RightLabel = "→ Informations"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Tabac')
                    end
                end)

                RageUI.Button("~g~Vigneron", nil, {RightLabel = "→ Informations"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Vigneron')
                    end
                end)
                
                RageUI.Button("~b~Agent Immobilier", nil, {RightLabel = "~r~→ Clos"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Immo')
                    end
                end)

                RageUI.Button("~g~Banquier", nil, {RightLabel = "~r~→ Clos"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Banquier')
                    end
                end)

                RageUI.Button("~b~Bahamas (Serveur, videur, etc...)", nil, {RightLabel = "~r~→ Clos"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Bahamas')
                    end
                end)

                RageUI.Button("~g~Unicorn (Serveur, videur, etc...)", nil, {RightLabel = "→ Informations"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Unicorn')
                    end
                end)

                RageUI.Button("~b~Gouvernement (Secrétaire, etc...)", nil, {RightLabel = "~r~→ Clos"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Gouv')
                    end
                end)

                RageUI.Button("~g~Journaliste", nil, {RightLabel = "→ Informations"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('joblist:Journaliste')
                    end
                end)
                        
            end, function()
                ---Panels
            end, 1)
    
            Citizen.Wait(0)
        end
    end)



    ---------------------------------------- Position du Menu --------------------------------------------

    local position = {
        {x = -268.73 , y = -956.42, z = 31.22, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~~h~E~h~~w~] pour parler à ~b~~h~Maria",
                        time_display = 1
                    })
                   -- ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour parler à ~b~Karine")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('joblistmenu', 'main'), not RageUI.Visible(RMenu:Get('joblistmenu', 'main')))
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
    local hash = GetHashKey("a_f_y_business_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "a_f_y_business_01", -269.18, -955.27, 30.22, 213.16, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

local blips = {
        {title="Pôle Emploi", colour=38, id=407, x = -263.42, y = -967.34, z = 31.22}
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)