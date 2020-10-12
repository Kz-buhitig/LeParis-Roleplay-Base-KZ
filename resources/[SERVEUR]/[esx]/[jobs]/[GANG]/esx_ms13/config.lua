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

Config.MS13Stations = {
  MS13 = {

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
		  { name = 'virgo',    label = 'Virgo' },
		  { name = 'subwrx',  label = 'Subaru' },
      { name = 'bison',     label = 'Bison' },
      { name = 'e34',     label = 'BMW e34' },
	  },

    Cloakrooms = {
      {x = 349.131, y = -2058.156, z = 22.245}, -- fait
    },

    Armories = {
      { x = 338.0453491211, y = -2012.9422607422, z = 22.394945144654 }, -- fait
    },

    Vehicles = {
      {
        Spawner    = { x = 336.17013549804, y = -2035.6008300782, z = 21.276762008666 }, -- fait
        SpawnPoint = { x = 332.7859802246, y = -2031.3057861328, z = 21.227151870728 }, -- fait
        Heading    = 91.314, -- fait
      }
    },

    VehicleDeleters = {
      { x = 326.58172607422, y = -2040.83984375, z = 20.7301197052 }, -- fait
    },

    BossActions = {
      { x = 331.9602355957, y = -2013.4301757812, z = 22.394941329956 } -- fait
    },

  },

}