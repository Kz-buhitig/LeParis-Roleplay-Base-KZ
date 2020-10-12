function SetData()

	players = {}

	for _, player in ipairs(GetActivePlayers()) do

		local ped = GetPlayerPed(player)

		table.insert( players, player )

end



	

	local name = GetPlayerName(PlayerId())

	local id = GetPlayerServerId(PlayerId())

	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', "~y~LE PARIS ~w~ROLEPLAY ~y~| ~w~Discord : ~y~https://discord.gg/change-me | ~w~ID: "..id.."~w~ | ~y~".. #players .." connecté(e)s")

end



Citizen.CreateThread(function()

	while true do

		Citizen.Wait(100)

		SetData()

	end

end)



Citizen.CreateThread(function()

    AddTextEntry("PM_PANE_LEAVE", "~y~Se ~w~déconnecter ~y~de ~y~LE PARIS ~w~Roleplay~y~ 😭")

end)



Citizen.CreateThread(function()

    AddTextEntry("PM_PANE_QUIT", "~r~Quitter ~b~FiveM 🐌")

end)