Config              = {}
Config.MarkerType   = -1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 5.0, y = 5.0, z = 3.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.ShowBlips    = false

Config.RequiredCopsWeed  	= 0
Config.RequiredCopsCoke  	= 0
--------------------------------
--------------------------------
Config.RequiredCopsMeth     = 0
Config.RequiredCopsMethlab  = 0
Config.RequiredCopsAcetone  = 0
Config.RequiredCopsLithium  = 0
--------------------------------
--------------------------------
Config.RequiredCopsCrack    = 0
Config.RequiredCopsKetamine = 0
Config.RequiredCopsEcstasy  = 2
-------------------------------
Config.RequiredCopsBillet   = 2
-------------------------------
Config.RequiredCopsOpium    = 2

Config.TimeToFarm           = 5 * 1000
Config.TimeToProcess        = 5 * 1000
Config.TimeToSell           = 5 * 1000

Config.Locale = 'fr'

Config.Zones = {
    CokeField           = {x=-326.429,  y=-2438.663,   z=7.358,   name = _U('coke_field'),         sprite = 501,    color = 40},
    CokeProcessing      = {x=2434.235,  y=4968.84,   z=42.348,   name = _U('coke_processing'),    sprite = 478,    color = 40},
    CokeDealer          = {x=-620.115,  y=302.167,   z=82.253,   name = _U('coke_dealer'),        sprite = 500,    color = 75},
	---------------------------------------------------------------------------------------------------------------------------
	--MethField           = {x=0.0,  	   y=0.0,        z=0.0,     name = _U('meth_field'),         sprite = 499,    color = 26}, -- pas use
	MethlabField        = {x=1957.35,  y=5056.65,    z=45.92,   name = _U('methlab_field'),      sprite = 499,    color = 26}, --methilamine
	AcetoneField        = {x=1774.42,  y=3841.21,    z=34.32,   name = _U('acetone_field'),      sprite = 499,    color = 26},
	LithiumField        = {x= 1342.70, y= 4389.92, z= 44.34,   name = _U('lithium_field'),      sprite = 499,    color = 26},
	--MethProcessing      = {x=0.0,  	   y=0.0,        z=0.0,     name = _U('meth_processing'),    sprite = 499,    color = 26}, --Pas use
    MethDealer          = {x=93.52,    y=3753.52,    z=40.77,   name = _U('meth_dealer'),        sprite = 500,    color = 75},
	---------------------------------------------------------------------------------------------------------------------------
    WeedField           = {x=1406.695, y=3667.312, z=34.035,   name = _U('weed_field'),         sprite = 496,    color = 52},
    WeedProcessing      = {x=429.032, y=6469.281, z=35.83,  name = _U('weed_processing'),    sprite = 496,    color = 52},
    WeedDealer          = {x=1420.727, y =6345.633, z =23.989,   name = _U('weed_dealer'),        sprite = 500,    color = 75},
	---------------------------------------------------------------------------------------------------------------------------
	--CrackField          = {x=1099.826,  y=-3194.494, z=-38.993,	name = _U('crack_field'),		 sprite = 501,	color = 40},
	--CrackProcessing     = {x=1093.462,  y=-3197.138, z=-38.993,	name = _U('crack_processing'),	 sprite = 478,	color = 40},
	--CrackDealer         = {x=-452.300,  y=-1735.002,  z=16.763,	name = _U('crack_dealer'),		 sprite = 500,	color = 75},
	---------------------------------------------------------------------------------------------------------------------------
	--KetamineField       = {x=1003.918,  y=-3199.353, z=-38.993,	name = _U('ketamine_field'),	 sprite = 499,	color = 26},
	--KetamineProcessing  = {x=1011.043,  y=-3196.531, z=-38.993,	name = _U('ketamine_processing'),sprite = 499,	color = 26},
	--KetamineDealer      = {x=2746.221,  y=1542.212,  z=42.893,	name = _U('ketamine_dealer'),	 sprite = 500,	color = 75},
	---------------------------------------------------------------------------------------------------------------------------
	EcstasyField        = {x=-1158.58, y=-521.25, z=32.833,	name = _U('ecstasy_field'),		 sprite = 496,	color = 52},
	EcstasyProcessing   = {x=3617.158, y =5024.97, z =11.419,	name = _U('ecstasy_processing'), sprite = 496,	color = 52},
	EcstasyDealer       = {x=895.116, y=-1996.489, z=30.629,	name = _U('ecstasy_dealer'),	 sprite = 500,	color = 75},
	---------------------------------------------------------------------------------------------------------------------------
	BilletField         = {x=-574.728, y=5361.352, z=70.228,	name = _U('billet_field'),		 sprite = 500,	color = 1},
	BilletProcessing    = {x=-595.799, y=-1598.406, z=27.011,	name = _U('billet_processing'),	 sprite = 500,	color = 1},
	BilletDealer        = {x=99.32, y=6620.74, z=32.435,	name = _U('billet_dealer'),		 sprite = 500,	color = 1},
	---------------------------------------------------------------------------------------------------------------------------
	OpiumField      	= {x=2222.315, y=5577.124, z=53.845,	name = _U('opium_field'),		 sprite = 51,	color = 60},
	OpiumProcessing 	= {x=-225.226, y=-2655.601, z=6.0,	name = _U('opium_processing'),	 sprite = 51,	color = 60},
	OpiumDealer     	= {x=245.692, y=370.782, z=105.738,	name = _U('opium_dealer'),		 sprite = 500,	color = 75}
}
