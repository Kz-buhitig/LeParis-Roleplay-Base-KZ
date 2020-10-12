Config = {}
Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	{
		objName = 'v_ilev_ph_door01',
		objCoords  = {x = 434.747, y = -980.618, z = 30.839},
		textCoords = {x = 434.747, y = -981.50, z = 31.50},
		authorizedCodes = 5555,
		locked = false,
		distance = 2.5
	},

	{
		objName = 'v_ilev_ph_door002',
		objCoords  = {x = 434.747, y = -983.215, z = 30.839},
		textCoords = {x = 434.747, y = -982.50, z = 31.50},
		authorizedCodes = 5555,
		locked = false,
		distance = 2.5
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objCoords  = {x = 449.698, y = -986.469, z = 30.689},
		textCoords = {x = 450.104, y = -986.388, z = 31.739},
		authorizedCodes = 1234,
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objCoords  = {x = 464.361, y = -984.678, z = 43.834},
		textCoords = {x = 464.361, y = -984.050, z = 44.834},
		authorizedCodes = 1234,
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 461.286, y = -985.320, z = 30.839},
		textCoords = {x = 461.50, y = -986.00, z = 31.50},
		authorizedCodes = 1234,
		locked = true
	},

	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 452.618, y = -982.702, z = 30.689},
		textCoords = {x = 453.079, y = -982.600, z = 31.739},
		authorizedCodes = 1234,
		locked = true
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objCoords  = {x = 447.238, y = -980.630, z = 30.689},
		textCoords = {x = 447.200, y = -980.010, z = 31.739},
		authorizedCodes = 1234,
		locked = true
	},

	-- To downstairs (double doors)
	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 443.97, y = -989.033, z = 30.6896},
		textCoords = {x = 444.020, y = -989.445, z = 31.739},
		authorizedCodes = 5555,
		locked = true,
		distance = 4
	},

	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 445.37, y = -988.705, z = 30.6896},
		textCoords = {x = 445.350, y = -989.445, z = 31.739},
		authorizedCodes = 5555,
		locked = true,
		distance = 4
	},

	-- 
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 463.815, y = -992.686, z = 24.9149},
		textCoords = {x = 463.30, y = -992.686, z = 25.10},
		authorizedCodes = 5555,
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.381, y = -993.651, z = 24.914},
		textCoords = {x = 461.806, y = -993.308, z = 25.064},
		authorizedCodes = 5555,
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.331, y = -998.152, z = 24.914},
		textCoords = {x = 461.806, y = -998.800, z = 25.064},
		authorizedCodes = 5555,
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.704, y = -1001.92, z = 24.9149},
		textCoords = {x = 461.806, y = -1002.450, z = 25.064},
		authorizedCodes = 5555,
		locked = true
	},

	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = {x = 463.478, y = -1003.538, z = 25.005},
		textCoords = {x = 464.00, y = -1003.50, z = 25.50},
		authorizedCodes = 1234,
		locked = true
	},

	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 467.371, y = -1014.452, z = 26.536},
		textCoords = {x = 468.09, y = -1014.452, z = 27.1362},
		authorizedCodes = 1234,
		locked = true,
		distance = 4
	},

	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 469.967, y = -1014.452, z = 26.536},
		textCoords = {x = 469.35, y = -1014.452, z = 27.136},
		authorizedCodes = 1234,
		locked = true,
		distance = 4
	},

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objCoords  = {x = 488.894, y = -1017.210, z = 27.146},
		textCoords = {x = 488.894, y = -1020.210, z = 30.00},
		authorizedCodes = 1234,
		locked = true,
		distance = 14,
		size = 2
	},

	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objCoords  = {x = 1855.105, y = 3683.516, z = 34.266},
		textCoords = {x = 1855.105, y = 3683.516, z = 35.00},
		authorizedCodes = 1234,
		locked = false
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.14, y = 6015.685, z = 31.716},
		textCoords = {x = -443.14, y = 6015.685, z = 32.00},
		authorizedCodes = 1234,
		locked = false,
		distance = 2.5
	},

	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.951, y = 6016.622, z = 31.716},
		textCoords = {x = -443.951, y = 6016.622, z = 32.00},
		authorizedCodes = 1234,
		locked = false,
		distance = 2.5
	},

	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1844.998, y = 2604.810, z = 44.638},
		textCoords = {x = 1844.998, y = 2608.50, z = 48.00},
		authorizedCodes = 1234,
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1818.542, y = 2604.812, z = 44.611},
		textCoords = {x = 1818.542, y = 2608.40, z = 48.00},
		authorizedCodes = 1234,
		locked = true,
		distance = 12,
		size = 2
	},

	--
	-- Vespucci
	--
	{
		objName = 'vesp_garage_door',
		distance = 10,
		size = 2,
		objCoords  = vector3(-1072.74, -851.43, 4.88),         -- GARAZA DONJA
		textCoords = vector3(-1072.85, -850.83, 4.96),
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'vesp_garage_door',
		distance = 10,
		size = 2,
		objCoords  = vector3(-1118.91, -838.93, 13.42),		-- GARAZA GORNJA
		textCoords = vector3(-1118.91, -838.93, 13.42),
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -142.0,
		objCoords  = vector3(-1073.23, -827.07, 5.49),
		textCoords = vector3(-1073.23, -827.07, 5.49),		-- ULAZ U CELIJE
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -142.0,
		objCoords  = vector3(-1087.32, -829.52, 5.48),
		textCoords = vector3(-1087.32, -829.52, 5.48),		-- ULAZ U CELIJE
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -52.0,
		objCoords  = vector3(-1091.09, -820.99, 5.48),
		textCoords = vector3(-1091.09, -820.99, 5.48),		
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -52.0,
		objCoords  = vector3(-1088.78, -824.09, 5.48),
		textCoords = vector3(-1088.78, -824.09, 5.48),		
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -52.0,
		objCoords  = vector3(-1086.16, -827.38, 5.48),
		textCoords = vector3(-1086.16, -827.38, 5.48),		
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -52.0,
		objCoords  = vector3(-1096.3, -820.36, 5.48),
		textCoords = vector3(-1096.3, -820.36, 5.48),		
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -52.0,
		objCoords  = vector3(-1093.91, -823.28, 5.48),
		textCoords = vector3(-1093.91, -823.28, 5.48),		
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -52.0,
		objCoords  = vector3(-1091.46, -826.57, 5.48),
		textCoords = vector3(-1091.46, -826.57, 5.48),		
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -52.0,
		objCoords  = vector3(-1089.24, -829.7, 5.48),
		textCoords = vector3(-1089.24, -829.7, 5.48),		
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 37.5,
		objCoords  = vector3(-1079.34, -855.71, 5.21),
		textCoords = vector3(-1079.34, -855.71, 5.21),		
		authorizedCodes = 1234,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = -55.0,
		objCoords  = vector3(-1061.32, -828.19, 19.43),
		textCoords = vector3(-1061.68, -827.56, 19.41),	
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = 127.5,
		objCoords  = vector3(-1062.13, -826.99, 19.43),
		textCoords = vector3(-1061.68, -827.56, 19.41),			
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = 37.5,
		objCoords  = vector3(-1093.0, -811.0, 19.37),
		textCoords = vector3(-1093.47, -811.2, 19.37),		
		authorizedCodes = 1234,
		distance = 4,
		locked = false
	},
	{
		objName = 'vesp_glav_door',
		objYaw = -142.5,
		objCoords  = vector3(-1094.02, -811.77, 19.37),
		textCoords = vector3(-1093.47, -811.2, 19.37),			
		authorizedCodes = 1234,
		distance = 4,
		locked = false
	},
	{
		objName = 'vesp_glav_door',
		objYaw = 127.5,
		objCoords  = vector3(-1112.38, -847.45, 13.48),
		textCoords = vector3(-1112.01, -847.97, 13.48),			
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = -53.0,
		objCoords  = vector3(-1111.49, -848.43, 13.48),
		textCoords = vector3(-1112.01, -847.97, 13.48),			
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'v_ilev_rc_door2',
		objYaw = -52.5,
		objCoords  = vector3(-1091.71, -834.57, 5.48),
		textCoords = vector3(-1091.48, -835.15, 5.48),	
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 127.5,
		objCoords  = vector3(-1091.23, -835.44, 5.48),
		textCoords = vector3(-1091.48, -835.15, 5.48),			
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 37.5,
		objCoords  = vector3(-1058.19, -840.13, 5.11),
		textCoords = vector3(-1057.94, -839.74, 5.11),
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'v_ilev_rc_door2',
		objYaw = -143.0,
		objCoords  = vector3(-1057.17, -839.45, 5.11),
		textCoords = vector3(-1057.94, -839.74, 5.11),		
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'v_ilev_rc_door2',
		objYaw = -142.5,
		objCoords  = vector3(-1093.96, -834.4, 14.28),
		textCoords = vector3(-1094.51, -834.93, 14.28),
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 37.5,
		objCoords  = vector3(-1094.97, -835.39, 14.28),
		textCoords = vector3(-1094.51, -834.93, 14.28),		
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = -142.0,
		objCoords  = vector3(-1112.15, -825.5, 19.33),
		textCoords = vector3(-1111.81, -825.14, 19.33),		
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = 36.0,
		objCoords  = vector3(-1111.32, -824.79, 19.33),
		textCoords = vector3(-1111.81, -825.14, 19.33),		
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = 125.0,
		objCoords  = vector3(-1108.51, -842.63, 19.32),
		textCoords = vector3(-1108.22, -843.06, 19.32),		
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = -52.5,
		objCoords  = vector3(-1107.77, -843.61, 19.32),
		textCoords = vector3(-1108.22, -843.06, 19.32),
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = 125.0,
		objCoords  = vector3(-1106.85, -844.08, 19.32),
		textCoords = vector3(-1106.59, -845.28, 19.32),
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	{
		objName = 'vesp_glav_door',
		objYaw = -52.5,
		objCoords  = vector3(-1106.15, -845.75, 19.32),
		textCoords = vector3(-1106.59, -845.28, 19.32),
		authorizedCodes = 1234,
		distance = 4,
		locked = true
	},
	
		
}