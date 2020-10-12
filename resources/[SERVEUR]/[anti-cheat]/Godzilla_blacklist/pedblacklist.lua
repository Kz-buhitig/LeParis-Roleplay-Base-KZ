-- CONFIG --

-- Blacklisted ped models
pedblacklist = {
	"CSB_BallasOG",
	"MP_S_ARMOURED_01",
	"S_F_Y_Cop_01",
	"S_F_Y_Cop_02",
	"S_F_Y_Cop_03",
	"S_M_Y_Cop_01",
	"S_M_Y_Cop_02",
	"S_M_Y_Cop_03",
	"S_F_Y_Sheriff_01",
	"S_F_Y_Sheriff_02",
	"S_F_Y_Sheriff_03",
	"S_M_Y_Marine_01",
	"S_M_Y_Marine_02",
	"S_M_Y_Marine_03",
	"S_M_SECURITY_01",
	"S_M_SECURITY_02",
	"s_m_y_swat_01",
        "a_m_y_mexthug_01",
        "a_c_husky", 
        "a_c_cat_01", 
        "a_c_boar", 
        "a_c_sharkhammer", 
        "a_c_coyote", 
        "a_c_chimp", 
        "a_c_chop", 
        "a_c_cow", 
        "a_c_deer", 
        "a_c_dolphin", 
        "a_c_fish", 
        "a_c_hen", 
        "a_c_humpback", 
        "a_c_killerwhale", 
        "a_c_mtlion", 
        "a_c_pig", 
        "a_c_pug", 
        "a_c_rabbit_01", 
        "a_c_retriever", 
        "a_c_rhesus", 
        "a_c_rottweiler", 
        "a_c_sharktiger", 
        "a_c_shepherd", 
        "a_c_westy",
        "a_c_cat_01",
        0x573201B8,
        ox573201B8,
        1462895032,
        "u_m_y_zombie_01"
	"S_M_SECURITY_03",
	"S_M_Y_ARMYMECH_01",
	"S_M_Y_ARMYMECH_02",
	"S_M_Y_ARMYMECH_03",
	"S_M_Y_BLACKOPS_01",
	"S_M_Y_BLACKOPS_02",
	"S_M_Y_BLACKOPS_03"
}

-- Defaults to this ped model if an error happened
defaultpedmodel = "a_m_y_skater_01"

-- CODE --

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			playerModel = GetEntityModel(playerPed)

			if not prevPlayerModel then
				if isPedBlacklisted(prevPlayerModel) then
					SetPlayerModel(PlayerId(), GetHashKey(defaultpedmodel))
				else
					prevPlayerModel = playerModel
				end
			else
				if isPedBlacklisted(playerModel) then
					SetPlayerModel(PlayerId(), prevPlayerModel)
					sendForbiddenMessage("This ped model is blacklisted!")
				end

				prevPlayerModel = playerModel
			end
		end
	end
end)

function isPedBlacklisted(model)
	for _, blacklistedPed in pairs(pedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end