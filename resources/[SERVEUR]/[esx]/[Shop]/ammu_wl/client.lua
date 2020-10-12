ESX = nil
RMenu.Add('ammu', 'main', RageUI.CreateMenu("Armurerie", "Catalogue Armes | Accesoires"))
RMenu.Add('ammu', 'armes', RageUI.CreateSubMenu(RMenu:Get('ammu', 'main'), "Outils", "Catalogue des Outils"))
RMenu.Add('ammu', 'accessoires', RageUI.CreateSubMenu(RMenu:Get('ammu', 'main'), "Accessoires ", "Catalogue des Accessoires "))
RMenu.Add('ammu', 'finitions', RageUI.CreateSubMenu(RMenu:Get('ammu', 'main'), "Finitions ", "Catalogue des Finitions d'armes "))


local blips = {

     {title="~r~Armurerie", colour=45, id=110, x = 22.09,      y = -1107.28,   z = 28.80},

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


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('ammu', 'main'), true, true, true, function()

            RageUI.Button("Outils de chasse 🔫 ", "Choisi ton outils de chasse", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('ammu', 'armes'))

            RageUI.Button("Accessoires 🔍 ", "Choisi tes accessoires", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('ammu', 'accessoires'))

            RageUI.Button("Finitions 💎 ", "Choisi ton style", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('ammu', 'finitions'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('ammu', 'armes'), true, true, true, function()

            RageUI.Button("Couteau de chasse", "Couteau de bonne qualitée", {RightLabel = "~g~100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:cdc')
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

           RageUI.Button("Poing américain", "Parfait pour boxé le kangourou", {RightLabel = "~g~400$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:pa')
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

         RageUI.Button("Hache", "Cette hache est parfaite pour couper le bois", {RightLabel = "~g~450$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:hache')
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

          RageUI.Button("Fusil de chasse", "~r~Arme à enregistrer au poste de police", {RightLabel = "~g~1500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('ammu:fdc')
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

            RageUI.IsVisible(RMenu:Get('ammu', 'accessoires'), true, true, true, function()

                RageUI.Button("Chargeur", "5 Chargeurs simples", {RightLabel = "~g~150$"}, true, function(Hovered, Active, Selected)

                    if (Selected) then
                        TriggerServerEvent('ammu:clip')
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

             RageUI.IsVisible(RMenu:Get('ammu', 'finitions'), true, true, true, function()

                RageUI.Button("Style #1 Poing américain", "Finition Dollar", {RightLabel = "~g~550$"}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent('ammu:padol')
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

                 RageUI.Button("Silencieux", "Suppresseur", {RightLabel = "~g~550$"}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent('ammu:suppr')
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

                RageUI.Button("Style #2 Arme", "Finition Luxe", {RightLabel = "~g~550$"}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent('ammu:afl2')
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


cHavePerms = false

RegisterNetEvent("KzWL:CheckPermission:Return")
AddEventHandler("KzWL:CheckPermission:Return", function(havePerms, error)
    if havePerms then
        cHavePerms = true
        print("^2Armurie Légal Activé (Whitelist) | LP:RP")
    else
        cHavePerms = false
        print("^1Armurie Légal Désactivé (FreeAccess) | LP:RP")
    end
end)


local position = {
        {x = 22.16 , y = -1106.77, z = 29.49, }
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
                        if not cHavePerms then
                            TriggerServerEvent('ammu:nodiscord')
                        else
                        RageUI.Visible(RMenu:Get('ammu', 'main'), not RageUI.Visible(RMenu:Get('ammu', 'main')))
                        end
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
        {22.70, -1105.27, 28.79,"Vendeur",150.8,1657546978,"s_m_y_armymech_01"}
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
    
    