Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.EnableESXIdentity          = false
Config.Locale                     = 'fr'

Config.Cig = {
  'malbora',
  'gitanes'
}

Config.CigResellChances = {
  malbora = 45,
  gitanes = 55,
}

Config.CigResellQuantity= {
  malbora = {min = 5, max = 10},
  gitanes = {min = 5, max = 10},
}

Config.CigPrices = {
  malbora = {min = 10, max = 20},
  gitanes = {min = 10,   max = 20},
}

Config.CigPricesHigh = {
  malbora = {min = 20, max = 25},
  gitanes = {min = 20,   max = 25},
}

Config.Time = {
	malbora = 5 * 60,
	gitanes = 5 * 60,
}

Config.Zones = {

  -- Actions Boss, Stocks, Véhicules etc...
  TabacActions = {
    Pos   = {x = 2340.429, y = 3125.475, z = 47.209},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = {r = 136, g = 243, b = 216},
    Name  = "Action Tabac",
    Type  = 27
  },

  -- Récolte Tabac
  Recolte = {
    Pos   = {x = 745.72, y = 6463.858, z = 29.73},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = {r = 136, g = 243, b = 216},
    Name  = "Récolte Tabac",
    Type  = 1
  },

  -- Séchage Tabac
  Craft = {
    Pos   = {x = 2348.929, y = 3123.567, z = 47.209},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = {r = 136, g = 243, b = 216},
    Name  = "Séchage Tabac",
    Type  = 27
  },

  -- Transformation en Clope
  Craft2 = {
    Pos   = {x = 2344.049, y = 3141.812, z = 47.209},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = {r = 136, g = 243, b = 216},
    Name  = "Transformation Tabac",
    Type  = 27
  },

  -- Spawn Véhicule
  VehicleSpawnPoint = {
    Pos   = {x = 2329.059, y = 3138.503, z = 48.16},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Name  = "Point spawn Véhicule",
    Type  = -1
  },

  -- Supression véhicule
  VehicleDeleter = {
    Pos   = {x = 2344.418, y = 3155.405, z = 48.237},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Name  = "Ranger son véhicule",
    Type  = 36
  },

  -- Point de vente tabac
  SellFarm = {
    Pos   = {x = -314.945, y = -2781.046, z = 4.0},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	  Color = {r = 136, g = 243, b = 216},
    Name  = "Vente des produits",
    Type  = 1
  },
  
}
