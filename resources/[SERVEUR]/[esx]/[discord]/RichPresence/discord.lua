Citizen.CreateThread(function()

	while true do



	local count = 0



local text = {

"Serious RP",

"Venez découvrir le serveur",

"Serious Staff" -- Don't forget to remove the comma

}



		for _, __ in pairs(text) do 

			count = count + 1

		end

	

		local presence  = math.random(1, count)

	

		local player = GetPlayerPed(-1)

	

		SetDiscordAppId('730716465376002089')

		SetDiscordRichPresenceAsset('n551')

		SetDiscordRichPresenceAssetText('LE PARIS ROLEPLAY')

		SetDiscordRichPresenceAssetSmall('')

		SetDiscordRichPresenceAssetSmallText('https://discord.gg/')

		

		while true do

        Citizen.Wait(1500)

        players = {}

        for i = 0, 128 do

            if NetworkIsPlayerActive( i ) then

                table.insert( players, i )

            end

        end

        SetRichPresence("‍"..GetPlayerName(PlayerId()) .. " - ID : " ..GetPlayerServerId(PlayerId()).. " - " .. #players .. "/64 Joueurs")

	end

	

	--	SetRichPresence((GetPlayerName(PlayerId())) .. " -") -- [Steam username] [text]

	--	SetRichPresence("".. text[presence] .."")  -- [text]

		SetDiscordRichPresenceAssetText('https://discord.gg/')

		print('^5Discord rich presence mis a jour :D')

		Citizen.Wait(300000) -- 5 minutes 

	end

end)