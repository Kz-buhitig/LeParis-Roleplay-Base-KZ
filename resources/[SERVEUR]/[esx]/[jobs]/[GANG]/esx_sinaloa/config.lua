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

Config.SinaloaStations = {
  Sinaloa = {

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
		  { name = 'SVR14',    label = 'Range Rover SVR14' },
		  { name = 's600w220',  label = 'Mercedes S600' },
      { name = 'c7',     label = 'Chevrolet Corvette C7' },
      { name = '20f350',     label = 'Ford F350' },
	  },

    Cloakrooms = {
      {x = 1585.428, y = -2677.172, z = 44.065}, -- fait
    },

    Armories = {
      {x = 1578.219, y = -2675.892, z = 36.165}, -- fait
    },

    Vehicles = {
      {
        Spawner    = {x = 1581.966, y = -2661.812, z = 39.665}, -- fait
        SpawnPoint = {x = 1581.839, y = -2667.948, z = 39.665}, -- fait
        Heading    = 72.508, -- fait
      }
    },

    VehicleDeleters = {
      {x = 1589.138, y = -2666.925, z = 39.665}, -- fait
    },

    BossActions = {
      {x = 1564.473, y = -2690.798, z = 39.665} -- fait
    },

  },

}