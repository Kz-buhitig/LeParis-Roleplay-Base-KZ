-- CONFIG --



-- Blacklisted vehicle models

carblacklist = {	

	"INSURGENT",

	"INSURGENT2",

        "VIGILANTE",

	"BARRACKS2",

	"BARRACKS3",

	"BALLER5",

	"BALLER6",

	"BLIMP",

	"BULLDOZER",

	"CARGOPLANE",

	"COG552",

	"COGNOSCENTI2",

	"CUBAN800",

	"DUKES2",

	"DUMP",

	"DUSTER",

	"HYDRA",

	"LAZER",

	"LIMO2",

	"VOLATOL",

	"SAVAGE",

	"BUZZARD",

	"BOMBUSHKA",

	"LUXOR2",

	"MAMARUS",

	"NIMBUS",

	"SHAMAL",

	"TECHNICAL",

	"LAZER",

	"RHINO",

	"DUSTER"

}



-- CODE --



-- CODE --



Citizen.CreateThread(function()

	while true do

		Wait(1)



		playerPed = GetPlayerPed(-1)

		if playerPed then

			checkCar(GetVehiclePedIsIn(playerPed, false))



			x, y, z = table.unpack(GetEntityCoords(playerPed, true))

			for _, blacklistedCar in pairs(carblacklist) do

				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 70))

			end

		end

	end

end)



function checkCar(car)

	if car then

		carModel = GetEntityModel(car)

		carName = GetDisplayNameFromVehicleModel(carModel)



		if isCarBlacklisted(carModel) then

			SetEntityAsMissionEntity( car, true, true )

			_DeleteEntity(car)

			--sendForbiddenMessage("This vehicle is blacklisted!")

		end

	end

end



function isCarBlacklisted(model)

	for _, blacklistedCar in pairs(carblacklist) do

		if model == GetHashKey(blacklistedCar) then

			return true

		end

	end



	return false

end