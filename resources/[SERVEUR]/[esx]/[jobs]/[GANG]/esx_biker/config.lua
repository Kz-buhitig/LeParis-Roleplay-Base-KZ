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

Config.BikerStations = {
  Biker = {

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
		  { name = 'GBurrito2',    label = 'Burrito' },
		  { name = 'daemon',  label = 'Daemon' },
      { name = 'sanctus',     label = 'Sanctus' },
      { name = 'nightblade',     label = 'Nightblade' },
	  },

    Cloakrooms = {
      {x = 962.163, y = -106.078, z = 74.342}, -- fait
    },

    Armories = {
      {x = 976.738, y = -103.516, z = 74.845}, -- fait
    },

    Vehicles = {
      {
        Spawner    = {x = 982.477, y = -129.516, z = 73.447}, -- fait
        SpawnPoint = {x = 978.322, y = -127.398, z = 74.061}, -- fait
        Heading    = 61.56, -- fait
      }
    },

    VehicleDeleters = {
      {x = 984.112, y = -136.772, z = 73.091}, -- fait
    },

    BossActions = {
      {x = 956.103, y = -117.974, z = 75.004} -- fait
    },

  },

}