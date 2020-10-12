ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)
------------ Création du Menu / Sous Menu -----------
RMenu.Add('Horizon', 'main', RageUI.CreateMenu(nil, "Menu Horizon", nil, nil, "root_cause", "shopui_title_24-7"))
RMenu.Add('Horizon', 'boisson', RageUI.CreateSubMenu(RMenu:Get('Horizon', 'main'), "", "Besoin d'un rafraichissemnt ?"))
RMenu.Add('Horizon', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('Horizon', 'main'), "", "Si tu as faim viens par la!"))
RMenu.Add('Horizon', 'autre', RageUI.CreateSubMenu(RMenu:Get('Horizon', 'main'), "", "Le bric-à-brac"))
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Horizon', 'main'), true, true, true, function()
            RageUI.Button("🥤 Boisson", "Besoin d'un rafraichissemnt ?", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('Horizon', 'boisson'))
            RageUI.Button("🌭 Nourriture", "Si tu as faim viens j'ai se qu'il te faut!", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('Horizon', 'nourriture'))
            RageUI.Button("📱 Autre", "Le bric-à-brac.", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('Horizon', 'autre'))
        end, function()
        end)
        RageUI.IsVisible(RMenu:Get('Horizon', 'boisson'), true, true, true, function()
            RageUI.Button("IceTea", "J'adore !", {RightLabel = "~g~20€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                  TriggerServerEvent('247_shop:BuyIceTea')
                end
            end)
                    RageUI.Button("Eau", "OUfff J'avais tres soifff !", {RightLabel = "~g~10€"}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            TriggerServerEvent('247_shop:BuyEau')
                end
            end)
        end, function()
        end)
            RageUI.IsVisible(RMenu:Get('Horizon', 'nourriture'), true, true, true, function()
                RageUI.Button("HotDog", "Lourd !", {RightLabel = "~g~20€"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('247_shop:BuyHotDog')
                    end
                end)
                RageUI.Button("Pain", "Miam Miam C'est bon !", {RightLabel = "~g~10€"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('247_shop:BuyPain')
                    end
                end)    
            end, function()
                ---Panels
            end, 1)
            RageUI.IsVisible(RMenu:Get('Horizon', 'autre'), true, true, true, function()
                RageUI.Button("Téléphone", "iPh0ne Nouvelle génération !", {RightLabel = "~g~200€"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('247_shop:BuyTel')
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
        {x = 25.67 , y = -1346.37, z = 29.49, },
        {x = 270.19641113282 , y = -980.04681396484, z = 29.369606018066, },
        {x = 2556.4505859375 , y = 382.10852050782, z = 108.62298583984, },
        {x = -3039.9597167968, y = 585.55432128906, z = 7.9089317321778, },
        {x = -3242.5688476562, y = 1001.2889404296, z = 12.830706596374 },
        {x = 547.87591552734, y = 2670.6474609375, z = 42.156494140625 },
        {x = 1960.8127441406, y = 3741.1262207032, z = 32.343788146972},
        {x = 2677.7900390625, y = 3280.9223632812, z = 55.241130828858},
        {x = 1729.3013916016, y = 6415.2841796875, z = 35.03722000122},
        {x = 1135.7453613282, y = -982.87957763672, z = 46.41580581665},
        {x = -1222.3515625, y = -906.87957763672, z = 12.326348304748},
        {x = -1487.3352050782, y = -378.98593139648, z = 40.163410186768},
        {x = -2967.8498535156, y = 391.43347167968, z = 15.043313026428},
        {x = 1165.3764648438, y = 2709.3469238282, z = 38.15768814087},
        {x = 1392.5499267578, y = 3604.9829101562, z = 34.980884552002},
        {x = -48.074787139892, y = -1757.5148925782, z = 29.421005249024},
        {x = 1163.5596923828, y = -323.66516113282, z = 69.205101013184},
        {x = -707.35266113282, y = -914.3833618164, z = 19.215599060058},
        {x = -1820.54296875, y = 792.7728881836, z = 138.11082458496},
        {x = 1698.0483398438, y = 4924.4916992188, z = 42.06362915039}
        
    }    
    
    local blips = {

        {title="Epicerie", colour=4, id=52, x = 25.742, y = -1345.741, z = 28.497},
    
        {title="Epicerie", colour=4, id=52, x = -3241.927, y = 1001.462, z = 11.850},
    
        {title="Epicerie", colour=4, id=52, x = 547.431, y = 2671.710, z = 41.176},
    
        {title="Epicerie", colour=4, id=52, x = 1961.464, y = 3740.672, z = 31.363},
    
        {title="Epicerie", colour=4, id=52, x = 2678.916, y = 3280.671, z = 54.261},
    
        {title="Epicerie", colour=4, id=52, x = 1729.216, y = 6414.131, z = 34.057},
    
        {title="Epicerie", colour=4, id=52, x = 1135.808, y = -982.281, z = 45.45},
    
        {title="Epicerie", colour=4, id=52, x = -1222.93, y = -906.99, z = 11.35},
    
        {title="Epicerie", colour=4, id=52, x = -1487.553, y = -379.107, z = 39.163},
    
        {title="Epicerie", colour=4, id=52, x = -2968.243, y = 390.910, z = 14.054},
    
        {title="Epicerie", colour=4, id=52, x = 1166.024, y = 2708.930, z = 37.167},
    
        {title="Epicerie", colour=4, id=52, x = 1392.562, y = 3604.684, z = 33.995},
    
        {title="Epicerie", colour=4, id=52, x = -1393.409, y = -606.624, z = 29.319},
    
        {title="Epicerie", colour=4, id=52, x = -1037.618, y = -2737.399, z = 19.169},
    
        {title="Epicerie", colour=4, id=52, x = -48.519, y = -1757.514, z = 28.47},
    
        {title="Epicerie", colour=4, id=52, x = 1163.373, y = -323.801, z = 68.27},
    
        {title="Epicerie", colour=4, id=52, x = -707.67, y = -914.22, z = 18.26},
    
        {title="Epicerie", colour=4, id=52, x = -1820.523, y = 792.518, z = 137.20},
    
        {title="Epicerie", colour=4, id=52, x = 1698.388, y = 4924.404, z = 41.083},
    
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
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then
                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder au ~b~Magasin",
                        time_display = 1
                    })
                   -- ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour acceder au ~b~Shop")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('Horizon', 'main'), not RageUI.Visible(RMenu:Get('Horizon', 'main')))
                    end
                end
            end
        end
    end)