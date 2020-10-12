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

Config.BloodsStations = {
  Bloods = {

    Blip = {
      Pos     = {},
      Sprite  = -1,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
	  
    },

	  AuthorizedVehicles = {
		  { name = 'sultan',    label = 'Sultan' },
		  { name = 'scijo',  label = 'Sirocco' },
      { name = 'rumpo3',     label = 'Rumpo' },
		  { name = 'chino2',  label = 'Chino' },
	  },

    Cloakrooms = {
      { x = 117.73, y = -1964.22, z = 21.33 }, -- fait
    },

    Armories = {
      { x = 107.92, y = -1980.26, z = 20.96 }, -- fait
    },

    Vehicles = {
      {
        Spawner    = { x = 106.58, y = -1957.67, z = 20.74 }, -- fait
        SpawnPoint = { x = 103.60777282714, y = -1937.7110595704, z = 20.803720474244 }, -- fait
        Heading    = 211.314, -- fait
      }
    },

    VehicleDeleters = {
      { x = 92.85, y = -1963.08, z = 20.75 }, -- fait
    },

    BossActions = {
      { x = 119.92, y = -1968.47, z = 21.33 } -- fait
    },

  },

}