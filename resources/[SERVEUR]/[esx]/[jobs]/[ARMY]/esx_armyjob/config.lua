Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 22
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 151, g = 134, b = 67 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true -- only turn this on if you are using esx_license
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.ArmyStations = {

	ARMY = {

		Blip = {
			Pos     = { x = -2347.7, y = 3269.2, z = 32.01 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 17,
		},
		-- https://wiki.fivem.net/wiki/Weapons
		AuthorizedWeapons = {
			{ name = 'WEAPON_NIGHTSTICK',       price = 500 },
			{ name = 'WEAPON_COMBATPISTOL',     price = 500 },
			{ name = 'WEAPON_ASSAULTSMG',       price = 500 },
			{ name = 'WEAPON_SAWNOFFSHOTGUN',      price = 500 },
			{ name = 'WEAPON_STUNGUN',          price = 500 },
			{ name = 'WEAPON_CARBINERIFLE',          price = 500 },
                        { name = 'WEAPON_SNIPERRIFLE',          price = 500 },

		},

		Cloakrooms = {
			{ x = -2357.6, y = 3254.3, z = 32.7 },
		},

		Armories = {
			{ x = -2361.0, y = 3246.3, z = 92.7 },
		},

		Vehicles = {
			{
				Spawner    = { x = -2321.0, y = 3260.8, z = 33.2 },
				SpawnPoint = { x = -2326.1, y = 3272.2, z = 32.0 },
				Heading    = 334.0,
			}
		},

		Helicopters = {
			{
				Spawner    = { x = -2345.477, y = 3232.819, z = 34.291 },
				SpawnPoint = { x = -2478.04, y =  3261.14, z = 149.291 },
				Heading    = 0.0,
			}
		},

		VehicleDeleters = {
			{ x = -471.6, y = 6034.5, z = 30.3 },
			{ x = -468.2, y = 6038.5, z = 30.3 },
		},

		BossActions = {
			{ x = -2347.7, y = 3269.2, z = 32.81 }
		},

	},

}

-- https://wiki.fivem.net/wiki/Vehicles
Config.AuthorizedVehicles = {
	Shared = {
		{
			model = 'crusader',
			label = 'Voiture de l armé'
		},

		{
			model = 'barracks3',
			label = 'Camion Transports d unités'
		},
		{
			model = 'insurgent',
			label = 'Insurgent Armé'
		},

		{
			model = 'insurgent2',
			label = 'Insurgent'
		},

	},

	recruit = {

	},

	officer = {

	},

	sergeant = {

	},

	lieutenant = {
	},

	boss = {

	}
}


-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	cadet_wear = {
		male = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 10,
			['torso_1'] = 221,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 106,		['arms2'] = 7,
			['pants_1'] = 87,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0	
	},
		female = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 10,
			['torso_1'] = 221,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0	
		}
	},
	army_wear = {
		male = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 10,
			['torso_1'] = 221,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0	
		},
		female = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 10,
			['torso_1'] = 221,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0	
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 10,
			['torso_1'] = 221,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0	
		},
		female = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 10,
			['torso_1'] = 221,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0	
		}
	},
	lieutenant_wear = {
		male = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 10,
			['torso_1'] = 221,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0	
		},
		female = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 10,
			['torso_1'] = 221,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0	
		}
	},
	commandant_wear = {
		male = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 13,
			['torso_1'] = 221,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 3,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,

		},
		female = {
			['tshirt_1'] = 131,  ['tshirt_2'] = 13,
			['torso_1'] = 221,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 87,   ['pants_2'] = 3,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,

		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 10,  ['bproof_2'] = 8
		},
		female = {
			['bproof_1'] = 10,  ['bproof_2'] = 8
		}
	}

}