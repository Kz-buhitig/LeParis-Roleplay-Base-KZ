ESX = nil
RMenu.Add('ammu', 'main', RageUI.CreateMenu("Vendeur Illégal", "Catalogue Armes | Accesoires"))
RMenu.Add('ammu', 'armes', RageUI.CreateSubMenu(RMenu:Get('ammu', 'main'), "Armes", "Catalogue des Armes"))
RMenu.Add('ammu', 'outils', RageUI.CreateSubMenu(RMenu:Get('ammu', 'main'), "Outils ", "Catalogue des Outils "))
RMenu.Add('ammu', 'carte', RageUI.CreateSubMenu(RMenu:Get('ammu', 'main'), "Cartes ", "Catalogue des Cartes "))


--[[local blips = {

     {title="~r~Shop Illégal", colour=45, id=110, x = 22.09,      y = -1107.28,   z = 28.80},

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
end)]]--


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('ammu', 'main'), true, true, true, function()

            RageUI.Button("Armes 🔫 ", "Un grand choix d'armes", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('ammu', 'armes'))

            RageUI.Button("Outils 🔧 ", "Quelques outils utiles", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('ammu', 'outils'))

            RageUI.Button("Carte 🎫 ", "Tout se qu'il te faut", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('ammu', 'carte'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('ammu', 'armes'), true, true, true, function()

            RageUI.Button("Pistolet simple", "Basique, éfficace ...", {RightLabel = "~g~5500€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:pistol')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end
            end)

            RageUI.Button("Deagle", "Une des meilleures arme de poing!", {RightLabel = "~g~7500€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:deagle')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end
            end)

            RageUI.Button("Micro SMG", "Petite, facile à dissimuler.", {RightLabel = "~g~10000€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:smg')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end
            end)

            RageUI.Button("AK-47", "~r~La puissance de cette arme n'est plus à prouver", {RightLabel = "~g~15000€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:ak47')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end
            end)

            RageUI.Button("AK-47 Compact", "~r~Plus légère, mais, un recule plus élevé", {RightLabel = "~g~15000€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:ak47c')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end
            end)

            RageUI.Button("Sniper", "~r~Pour ne jamais rater sa cible", {RightLabel = "~g~45000€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:sniper')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end
            end)

        end, function()
               end)

            RageUI.IsVisible(RMenu:Get('ammu', 'outils'), true, true, true, function()

                RageUI.Button("LockPick x5", "Parfait pour quelques sérrures à casser", {RightLabel = "~g~4550$"}, true, function(Hovered, Active, Selected)

                    if (Selected) then
                        TriggerServerEvent('ammu:lockpick')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                           while not HasAnimDictLoaded('weapons@pistol@') do
                              Citizen.Wait(0)
                            end
                         TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                         Citizen.Wait(300)
                         holstered = true
                    end
                 end)

                RageUI.Button("Torche Plasma", "C'est plutot pratique pour ouvrir des petit coffres", {RightLabel = "~g~5000$"}, true, function(Hovered, Active, Selected)

                    if (Selected) then
                      TriggerServerEvent('ammu:oxy')
                      local playerPed = GetPlayerPed(-1)
                      RequestAnimDict('weapons@pistol@')
                         while not HasAnimDictLoaded('weapons@pistol@') do
                            Citizen.Wait(0)
                          end
                       TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                       Citizen.Wait(300)
                       holstered = true
                  end
               end)
            end, function()
            end, 1)

             RageUI.IsVisible(RMenu:Get('ammu', 'carte'), true, true, true, function()

                RageUI.Button("Passe Banquaire", "C'est une copie, prend en soin", {RightLabel = "~g~10000$"}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent('ammu:bankid')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                           while not HasAnimDictLoaded('weapons@pistol@') do
                              Citizen.Wait(0)
                            end
                         TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                         Citizen.Wait(300)
                         holstered = true
                    end
                 end)

            end, function()
            end, 1)
            
Citizen.Wait(0)
end
end)



local position = {
        {x = 1755.824, y = -1649.047, z = 112.655, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parler avec le ~b~Vendeur")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('ammu', 'main'), not RageUI.Visible(RMenu:Get('ammu', 'main')))
                    end
                end
                if dist ~= nil then
                    if dist > 1.5 then
                        RageUI.CloseAll()
                    end
                end		
            end
        end
    end)

    local coord = {
        {1754.413,-1649.161,111.656,"Vendeur",290.558,1657546978,"s_m_y_armymech_01"}
    }
    
    Citizen.CreateThread(function()
    
        for _,v in pairs(coord) do
          RequestModel(GetHashKey(v[7]))
          while not HasModelLoaded(GetHashKey(v[7])) do
            Wait(1)
          end
      
          RequestAnimDict("mini@strip_club@idles@bouncer@base")
          while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
            Wait(1)
          end
          ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
          SetEntityHeading(ped, v[5])
          FreezeEntityPosition(ped, true)
          SetEntityInvincible(ped, true)
          SetBlockingOfNonTemporaryEvents(ped, true)
          TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
        end
    end)

    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(100)
        end
    end)
    
    