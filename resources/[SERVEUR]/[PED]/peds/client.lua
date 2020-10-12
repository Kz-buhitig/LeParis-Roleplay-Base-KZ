local jostick = {
        {x = -618.933, y = 301.964, z = 82.253}, --Coke
        {x = 1417.949, y = 6344.727, z = 23.996}, -- Weed
        {x = 245.334, y = 371.729, z = 105.738}, -- Opium
        {x = 895.715, y = -1996.431, z = 30.631}, -- Extasy
        {x = 99.66, y = 6621.158, z = 32.435}, -- Billet
        {x =  -1082.973, y = -246.098, z = 38.00}, -- Pole emploi
        {x = 1133.1433105468, y = -987.9262084961, z = 47.204750061036}, -- Blanchisseur
    }
    local v1 = vector3(-618.933, 301.964, 82.253) -- Coke
    local v2 = vector3(1417.949, 6344.727, 23.996) -- Weed
    local v3 = vector3(245.334,371.729,105.738) -- Opium
    local v4 = vector3(895.715,-1996.431,30.631) -- Extasy
    local v5 = vector3(99.66,6621.158,32.435) -- Billet
    local v6 = vector3(-1082.973 ,-246.098 ,38.000) -- Pole emploi
    local v7 = vector3(1133.1433105468 ,-987.9262084961 ,47.204750061036) -- Blanchisseur

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
                Draw3DText(v1.x,v1.y,v1.z, "Anonyme")
            end
        end
    end)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), v2) < distance then
                Draw3DText(v2.x,v2.y,v2.z, "Anonyme")
            end
        end
    end)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), v3) < distance then
                Draw3DText(v3.x,v3.y,v3.z, "Anonyme")
            end
        end
    end)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), v4) < distance then
                Draw3DText(v4.x,v4.y,v4.z, "Anonyme")
            end
        end
    end)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), v5) < distance then
                Draw3DText(v5.x,v5.y,v5.z, "Anonyme")
            end
        end
    end)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), v6) < distance then
                Draw3DText(v6.x,v6.y,v6.z, "Pôle Emploi")
            end
        end
    end)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), v7) < distance then
                Draw3DText(v7.x,v7.y,v7.z, "Blanchisseur")
            end
        end
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("ig_g")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "ig_g",-618.933,301.964,81.253, 84.168, false, true) --Coke
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    Citizen.CreateThread(function()
        local hash = GetHashKey("ig_ortega")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "ig_ortega",1417.949,6344.727,22.996, 268.838, false, true) -- Weed
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    Citizen.CreateThread(function()
        local hash = GetHashKey("csb_grove_str_dlr")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "csb_grove_str_dlr",245.334,371.729,104.738, 162.548, false, true) -- Opium
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    Citizen.CreateThread(function()
        local hash = GetHashKey("csb_prologuedriver")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "csb_prologuedriver",895.715,-1996.431,29.631, 83.615, false, true) -- Extasy
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    Citizen.CreateThread(function()
        local hash = GetHashKey("csb_ramp_mex")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "csb_ramp_mex",99.66,6621.158,31.435, 169.304, false, true) -- Billet
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    Citizen.CreateThread(function()
        local hash = GetHashKey("s_f_m_shop_high")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "s_f_m_shop_high",-1083.16,-245.634,36.763, 211.335, false, true) -- Pôle Emploi
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)
    Citizen.CreateThread(function()
        local hash = GetHashKey("ig_lestercrest_2")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "ig_lestercrest_2",1133.1433105468,-987.9262084961,45.204750061036, 913.161, false, true) -- Blanchisseur
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)