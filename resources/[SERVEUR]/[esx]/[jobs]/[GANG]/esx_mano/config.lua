Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 3
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 0, g = 0, b = 255 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.ManoStations = {
  Mano = {

    Blip = {
      Pos     = {},
      Sprite  = -1,
      Display = 4,
      Scale   = 1.2,
      Colour  = 40,
    },

    AuthorizedWeapons = {
	  
    },

	  AuthorizedVehicles = {
		  { name = 'bentayga17',    label = 'Bentley Bentayga' },
		  { name = 'm5e60',  label = 'BMW M5 e60' },
      { name = 'zl12017',     label = 'Chevrolet Camaro ZL1' },
      { name = 'ram2500',     label = 'Dodge RAM2500' },
	  },

    Cloakrooms = {
      {x = -2674.14, y = 1304.979, z = 152.014}, -- fait
    },

    Armories = {
      {x = -2676.506, y = 1328.97, z = 140.881}, -- fait
    },

    Vehicles = {
      {
        Spawner    = {x = -2670.498, y = 1305.149, z = 147.118}, -- fait
        SpawnPoint = {x = -2661.449, y = 1307.38, z = 147.118}, -- fait
        Heading    = 268.904, -- fait
      }
    },

    VehicleDeleters = {
      {x = -2668.339, y = 1309.836, z = 147.118}, -- fait
    },

    BossActions = {
      {x = -2679.116, y = 1335.909, z = 152.014} -- fait
    },

  },

}