
forward RemoveObjectsForPlayer(playerid);
forward LoadObjects();


public RemoveObjectsForPlayer(playerid)
{
	// LS Truck
	RemoveBuildingForPlayer(playerid, 5305, 2198.8516, -2213.9219, 14.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3747, 2234.3906, -2244.8281, 14.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 3747, 2226.9688, -2252.1406, 14.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 3747, 2219.4219, -2259.5234, 14.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3747, 2212.0938, -2267.0703, 14.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 3747, 2204.6328, -2274.4141, 14.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 3569, 2204.6328, -2274.4141, 14.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 3569, 2212.0938, -2267.0703, 14.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 3569, 2219.4219, -2259.5234, 14.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3569, 2226.9688, -2252.1406, 14.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 3569, 2234.3906, -2244.8281, 14.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 5244, 2198.8516, -2213.9219, 14.8828, 0.25);
	//LS STATIC AIRPORT STAIRS.
    RemoveBuildingForPlayer(playerid, 3663, 1664.4531, -2439.8047, 14.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 3663, 1832.4531, -2388.4375, 14.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 3663, 1882.2656, -2395.7813, 14.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 3663, 1580.0938, -2433.8281, 14.5703, 0.25);
	//LS STATIC AIRPORT STAIRS.
	//LV Static CRATES
	RemoveBuildingForPlayer(playerid, 8334, 1621.7813, 1316.9922, 13.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 8336, 1646.3516, 1345.9844, 13.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 8340, 1568.0000, 1676.1953, 13.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 8335, 1621.7813, 1316.9922, 13.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 8337, 1646.3516, 1345.9844, 13.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 8341, 1568.0000, 1676.1953, 13.8203, 0.25);
	//LV Static CRATES
	//LV DESERT REMOVED PLANES
	RemoveBuildingForPlayer(playerid, 3367, 149.9141, 2614.6172, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3368, 161.7891, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3369, 123.0469, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3368, 311.1328, 2614.6172, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3368, 176.7891, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3368, 338.0078, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3368, 323.0078, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3369, 203.6563, 2614.6172, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3369, 230.5234, 2641.4844, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3369, 349.8750, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3369, 269.2656, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3369, 242.3984, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3369, 188.6563, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3369, 108.0469, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3367, 176.7891, 2641.4844, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3367, 230.5234, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3367, 257.3984, 2614.6172, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3367, 284.2656, 2641.4844, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3367, 284.2656, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3367, 296.1406, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3367, 215.5313, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3367, 134.9141, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3269, 108.0469, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3270, 161.7891, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3269, 188.6563, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 134.9141, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 215.5313, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3269, 242.3984, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3269, 269.2656, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 296.1406, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3269, 123.0469, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3270, 176.7891, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 230.5234, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 284.2656, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 149.9141, 2614.6172, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 176.7891, 2641.4844, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3269, 230.5234, 2641.4844, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3269, 203.6563, 2614.6172, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 257.3984, 2614.6172, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3271, 284.2656, 2641.4844, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3270, 323.0078, 2411.3828, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3269, 349.8750, 2438.2500, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3270, 338.0078, 2587.7422, 15.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 3270, 311.1328, 2614.6172, 15.4766, 0.25);
	//LV DESERT REMOVED PLANES
	//BLEW'S MAP
	RemoveBuildingForPlayer(playerid, 3459, 2521.8906, 683.5000, 17.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 8596, 2490.4297, 703.1953, 21.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 3459, 2498.5391, 698.8906, 17.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 3459, 2497.6328, 733.5391, 17.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 3459, 2597.2813, 683.4766, 17.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 3459, 2672.4219, 683.4609, 17.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 3459, 2696.2500, 698.8906, 17.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, 2682.8125, 708.2188, 14.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 3459, 2697.1250, 729.7031, 17.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, 2691.5938, 752.4688, 14.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 3459, 2697.1172, 757.9375, 17.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 1350, 2692.9688, 763.0859, 9.7969, 0.25);
	RemoveBuildingForPlayer(playerid, 1350, 2677.2969, 767.6250, 9.7891, 0.25);
	//BLEW'S MAP
	//Nodroz's MAP
	RemoveBuildingForPlayer(playerid, 13218, 1258.2188, 374.4375, 23.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 785, 1322.0078, 437.5938, 17.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 13485, 1304.3047, 330.1563, 23.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 1229.9688, 362.8281, 18.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 1688, 1251.6563, 361.2969, 23.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 1687, 1257.6797, 358.6484, 23.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 1271.9922, 359.8750, 19.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 1688, 1237.9688, 369.9297, 27.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 1691, 1236.0234, 365.4922, 26.9219, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, 1253.4375, 365.0547, 18.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 1691, 1269.5859, 370.8281, 23.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1687, 1270.7656, 364.5469, 23.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 955, 1277.8359, 372.5156, 18.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 13440, 1282.2422, 369.1406, 28.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, 1262.4609, 365.8359, 18.5313, 0.25);
	RemoveBuildingForPlayer(playerid, 13012, 1258.2188, 374.4375, 23.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 1687, 1271.0547, 376.8281, 22.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 1688, 1280.0156, 386.6875, 27.5391, 0.25);
	RemoveBuildingForPlayer(playerid, 769, 1288.9063, 392.2969, 18.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 1289.5938, 389.1328, 19.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 791, 1322.0078, 437.5938, 17.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 690, 1285.0313, 459.9844, 16.6172, 0.25);
	//Nodroz's MAP
	//Blew's AIRLINE BASE MAP
	RemoveBuildingForPlayer(playerid, 735, 1064.8359, 693.9922, 8.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 735, 1100.1484, 693.9922, 7.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 735, 1191.0859, 693.9922, 7.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1268, 1078.0703, 792.3203, 24.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 656, 983.1094, 723.1250, 11.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 736, 1018.0547, 740.8125, 20.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 615, 1039.3984, 699.2422, 9.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 736, 1042.2969, 751.2656, 20.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 736, 1027.5078, 744.6328, 20.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 736, 1060.3750, 751.2656, 20.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 736, 1068.4063, 748.7266, 20.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 736, 1069.1953, 761.9063, 20.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 8292, 1076.8984, 793.6719, 30.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 1259, 1078.0703, 792.3203, 24.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 615, 1128.3672, 728.2578, 9.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 736, 1095.3750, 774.2891, 20.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 615, 1148.6172, 728.2578, 9.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1162.8203, 733.7266, 9.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 615, 1167.6016, 728.2578, 9.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 775, 1199.5156, 733.8672, 9.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, 1338.9844, 715.0938, 14.2734, 0.25);
	//BLEW'S AIRLINE BASE MAP.
	//Remove tree's at Bayside Map by HighFlyer
	RemoveBuildingForPlayer(playerid, 688, -2391.8594, 2531.7813, 13.9219, 0.25);
	RemoveBuildingForPlayer(playerid, 688, -2409.5781, 2524.7188, 12.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 715, -2429.8359, 2523.1328, 21.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 785, 1322.0078, 437.5938, 17.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 769, 1288.9063, 392.2969, 18.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 791, 1322.0078, 437.5938, 17.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 690, 1285.0313, 459.9844, 16.6172, 0.25);
	//Remove tree's at Bayside Map by HighFlyer.
	//Remove gates @ Bulftrik's SEED MAP AIRPORT (pickup)
	RemoveBuildingForPlayer(playerid, 1447, -1128.6875, -1604.4141, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1131.0391, -1606.9844, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -1123.4531, -1604.3984, 76.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -1118.2188, -1604.5000, 76.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1113.0156, -1604.6250, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1454, -1089.2031, -1608.7344, 76.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1454, -1093.1563, -1608.7344, 76.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1454, -1097.1094, -1608.7344, 76.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1454, -1101.0625, -1608.7344, 76.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -1097.5469, -1604.3438, 76.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -1107.8750, -1604.5781, 76.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1102.8125, -1604.3516, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -1092.4688, -1604.2969, 76.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1087.4063, -1604.0703, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1454, -1085.2500, -1608.7344, 76.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1454, -1078.3125, -1608.7344, 76.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -1067.1172, -1603.8750, 76.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -1072.1875, -1603.9141, 76.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -1082.5156, -1604.1484, 76.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1077.4531, -1603.9219, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -1056.7891, -1603.6406, 76.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1062.0547, -1603.6484, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -1036.0625, -1603.2500, 76.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -1041.2734, -1603.3516, 76.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -1051.6016, -1603.5859, 76.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1046.5391, -1603.3594, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1005.1094, -1602.4375, 76.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -1010.1641, -1602.6250, 76.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -1020.4922, -1602.8594, 76.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1015.4297, -1602.6328, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -1025.7344, -1603.0156, 76.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -1031.0000, -1603.0234, 76.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -994.7422, -1601.5625, 76.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -989.4766, -1601.5547, 76.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -984.4297, -1601.3203, 76.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -999.8047, -1601.7891, 76.6797, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -979.2109, -1601.1875, 76.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -963.8906, -1601.1875, 76.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -969.1094, -1601.3203, 76.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -974.1563, -1601.5547, 76.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -958.4375, -1601.1875, 77.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -953.1563, -1601.1875, 77.7344, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -947.8125, -1601.1875, 78.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -945.0703, -1603.9375, 78.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -945.0703, -1609.2031, 79.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -944.5391, -1614.3203, 80.9219, 0.25);
	//Remove gates @ Bulftrik's SEED MAP AIRPORT (pickup)
	//Belftrik's map @ LS.
	RemoveBuildingForPlayer(playerid, 3276, -263.8672, -2231.5781, 28.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 17038, -280.1875, -2167.7031, 27.7891, 0.25);
	RemoveBuildingForPlayer(playerid, 17037, -288.2734, -2163.5000, 30.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 17036, -285.3984, -2151.0469, 27.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 17039, -260.5391, -2182.6094, 26.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 17040, -257.5313, -2202.8359, 27.5781, 0.25);
	//Belftrik's map @ LS.

}

public LoadObjects()
{
	//-------------BAYSIDE AIRPORT - HIGHFLYER ----------------- [START]
	CreateDynamicObject(3113,-2337.26001000,2559.60839800,23.08219000,0.00000000,285.56760819,185.86120620, .streamdistance = 10000.0); //object(carrier_door_sfse)(1)
	CreateDynamicObject(8947,-2353.34057600,2562.09887700,20.61179500,0.00000000,0.00000000,275.14499024, .streamdistance = 10000.0); //object(vgelkup)(9)
	CreateDynamicObject(8947,-2377.38354500,2559.97045900,20.63004700,0.00000000,0.00000000,275.14160979, .streamdistance = 10000.0); //object(vgelkup)(10)
	CreateDynamicObject(8947,-2401.64355500,2557.79443400,20.65432700,0.00000000,0.00000000,275.14160979, .streamdistance = 10000.0); //object(vgelkup)(11)
	CreateDynamicObject(8947,-2448.71997100,2553.30127000,20.65433900,0.00000000,0.00000000,95.75133162, .streamdistance = 10000.0); //object(vgelkup)(13)
	CreateDynamicObject(5706,-2438.20043900,2537.28125000,19.92467500,0.00000000,0.00000000,185.08496298, .streamdistance = 10000.0); //object(studiobld03_law)(1)
	CreateDynamicObject(5706,-2438.24926800,2537.26611300,15.88541600,0.00000000,0.00000000,185.08118146, .streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-2405.85473600,2540.19311500,19.91835400,0.00000000,0.00000000,185.33116295, .streamdistance = 10000.0); //object(studiobld03_law)(3)
	CreateDynamicObject(16021,-2448.38305700,2527.75659200,23.32016600,0.00000000,0.00000000,272.23997962, .streamdistance = 10000.0); //object(des_geyhotbase_)(1)
	CreateDynamicObject(5706,-2453.76367200,2535.89062500,19.93861800,0.00000000,0.00000000,185.08118146, .streamdistance = 10000.0); //object(studiobld03_law)(4)
	CreateDynamicObject(5706,-2453.73315400,2535.88208000,16.24375000,0.00000000,0.00000000,185.08118146, .streamdistance = 10000.0); //object(studiobld03_law)(5)
	CreateDynamicObject(3578,-2348.55883800,2562.39062500,22.91839800,0.00000000,0.00000000,4.96995051, .streamdistance = 10000.0); //object(dockbarr1_la)(1)
	CreateDynamicObject(3578,-2362.05932600,2561.20556600,22.94339800,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(dockbarr1_la)(2)
	CreateDynamicObject(3578,-2380.05493200,2559.66162100,22.93664700,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(dockbarr1_la)(4)
	CreateDynamicObject(3578,-2396.70141600,2558.26611300,22.93592800,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(dockbarr1_la)(6)
	CreateDynamicObject(3578,-2414.90063500,2556.70556600,22.93592100,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(dockbarr1_la)(8)
	CreateDynamicObject(3578,-2432.22387700,2555.09838900,22.96093900,0.00000000,0.00000000,5.21580670, .streamdistance = 10000.0); //object(dockbarr1_la)(10)
	CreateDynamicObject(3578,-2448.81469700,2553.65869100,22.93590200,0.00000000,0.00000000,5.21299920, .streamdistance = 10000.0); //object(dockbarr1_la)(11)
	CreateDynamicObject(3578,-2454.53076200,2553.13769500,22.93590900,0.00000000,0.00000000,5.46303799, .streamdistance = 10000.0); //object(dockbarr1_la)(12)
	CreateDynamicObject(3578,-2423.58105500,2538.86889600,22.99189600,0.00000000,0.00000000,94.53488493, .streamdistance = 10000.0); //object(dockbarr1_la)(13)
	CreateDynamicObject(3578,-2410.19384800,2540.44140600,22.96689600,0.00000000,0.00000000,96.01500680, .streamdistance = 10000.0); //object(dockbarr1_la)(14)
	CreateDynamicObject(3578,-2396.89135700,2541.92407200,22.96687300,0.00000000,0.00000000,96.01500680, .streamdistance = 10000.0); //object(dockbarr1_la)(16)
	CreateDynamicObject(3526,-2340.84912100,2556.11767600,23.84383600,0.00000000,0.00000000,186.05492324, .streamdistance = 10000.0); //object(vegasairportlight)(1)
	CreateDynamicObject(3526,-2340.86377000,2558.01245100,23.74930000,0.00000000,0.00000000,186.55333922, .streamdistance = 10000.0); //object(vegasairportlight)(2)
	CreateDynamicObject(3526,-2341.09228500,2560.35327100,23.74940500,0.00000000,0.00000000,186.55333922, .streamdistance = 10000.0); //object(vegasairportlight)(3)
	CreateDynamicObject(3526,-2341.34668000,2562.68676800,23.74926900,0.00000000,0.00000000,186.55333922, .streamdistance = 10000.0); //object(vegasairportlight)(4)
	CreateDynamicObject(3526,-2341.56127900,2564.75561500,23.74924900,0.00000000,0.00000000,186.55333922, .streamdistance = 10000.0); //object(vegasairportlight)(5)
	CreateDynamicObject(3526,-2341.78637700,2567.22216800,23.74950400,0.00000000,0.00000000,186.55333922, .streamdistance = 10000.0); //object(vegasairportlight)(6)
	CreateDynamicObject(3526,-2342.04003900,2569.36718800,23.74919900,0.00000000,0.00000000,186.55333922, .streamdistance = 10000.0); //object(vegasairportlight)(7)
	CreateDynamicObject(3526,-2459.98803700,2545.57641600,23.77630000,0.00000000,0.00000000,188.03844583, .streamdistance = 10000.0); //object(vegasairportlight)(8)
	CreateDynamicObject(3526,-2460.12524400,2548.21972700,23.77630000,0.00000000,0.00000000,186.05148549, .streamdistance = 10000.0); //object(vegasairportlight)(9)
	CreateDynamicObject(3526,-2460.51342800,2551.04467800,23.77630000,0.00000000,0.00000000,186.04799045, .streamdistance = 10000.0); //object(vegasairportlight)(10)
	CreateDynamicObject(3526,-2460.82788100,2554.02807600,23.77630000,0.00000000,0.00000000,186.04799045, .streamdistance = 10000.0); //object(vegasairportlight)(11)
	CreateDynamicObject(3526,-2461.11084000,2556.71313500,23.77630000,0.00000000,0.00000000,186.04799045, .streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-2461.37768600,2559.24877900,23.77630000,0.00000000,0.00000000,186.04799045, .streamdistance = 10000.0); //object(vegasairportlight)(13)
	CreateDynamicObject(1290,-2433.59570300,2534.07226600,29.76858100,0.00000000,0.00000000,276.63061250, .streamdistance = 10000.0); //object(lamppost2)(1)
	CreateDynamicObject(1290,-2444.24340800,2533.63232400,30.20053900,0.00000000,0.00000000,273.38028023, .streamdistance = 10000.0); //object(lamppost2)(2)
	CreateDynamicObject(1290,-2455.19165000,2533.25097700,29.78252400,0.00000000,0.00000000,273.37827488, .streamdistance = 10000.0); //object(lamppost2)(3)
	CreateDynamicObject(1290,-2418.71167000,2527.22729500,29.76226000,0.00000000,0.00000000,273.37827488, .streamdistance = 10000.0); //object(lamppost2)(4)
	CreateDynamicObject(1290,-2407.71582000,2527.55493200,29.76226000,0.00000000,0.00000000,273.37827488, .streamdistance = 10000.0); //object(lamppost2)(5)
	CreateDynamicObject(1290,-2395.55346700,2529.14013700,29.76226000,0.00000000,0.00000000,273.37827488, .streamdistance = 10000.0); //object(lamppost2)(6)
	CreateDynamicObject(3578,-2438.45996100,2539.64672900,22.96214500,0.00000000,0.00000000,94.53184825, .streamdistance = 10000.0); //object(dockbarr1_la)(18)
	CreateDynamicObject(3578,-2454.57470700,2539.11865200,23.01215900,0.00000000,0.00000000,94.53184825, .streamdistance = 10000.0); //object(dockbarr1_la)(19)
	CreateDynamicObject(5706,-2437.69824200,2531.84082000,19.81321700,0.00000000,0.00000000,181.32933923, .streamdistance = 10000.0); //object(studiobld03_law)(7)
	CreateDynamicObject(3361,-2466.23754900,2519.73364300,21.56421100,0.00000000,0.00000000,180.86495694, .streamdistance = 10000.0); //object(cxref_woodstair)(1)
	CreateDynamicObject(3361,-2470.44897500,2523.64355500,17.50064300,0.00000000,0.00000000,91.25739445, .streamdistance = 10000.0); //object(cxref_woodstair)(2)
	CreateDynamicObject(5706,-2437.40942400,2519.07959000,19.90516500,0.00000000,0.00000000,181.32933923, .streamdistance = 10000.0); //object(studiobld03_law)(7)
	CreateDynamicObject(3578,-2347.86157200,2557.08154300,22.91839800,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(81)
	CreateDynamicObject(3578,-2348.19311500,2559.93920900,22.96839700,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(82)
	CreateDynamicObject(3578,-2348.53710900,2564.77148400,22.89339800,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(83)
	CreateDynamicObject(3578,-2348.50610400,2567.76562500,22.91839800,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(84)
	CreateDynamicObject(3578,-2454.15673800,2550.66308600,22.93594000,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(85)
	CreateDynamicObject(3578,-2453.94018600,2547.72607400,22.98593900,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(86)
	CreateDynamicObject(3578,-2454.54541000,2555.24951200,22.96093900,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(87)
	CreateDynamicObject(3578,-2454.78833000,2558.18188500,22.96093900,0.00000000,0.00000000,4.96582521, .streamdistance = 10000.0); //object(88)
	CreateDynamicObject(16364,-2312.05419900,2491.39160200,0.93465600,0.00000000,0.00000000,146.24999822, .streamdistance = 10000.0); //object(91)
	CreateDynamicObject(9237,-2437.81005900,2524.29956100,34.61704600,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(86)
	CreateDynamicObject(1243,-2358.02636700,2553.46679700,10.72014200,0.00000000,0.00000000,-84.84336112, .streamdistance = 10000.0); //object(87)
	CreateDynamicObject(1243,-2357.90576200,2552.22851600,10.70577800,0.00000000,0.00000000,-85.94366927, .streamdistance = 10000.0); //object(88)
	CreateDynamicObject(1215,-2357.81079100,2550.67456100,22.77460900,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(89)
	CreateDynamicObject(1215,-2357.68676800,2549.24658200,22.79176300,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(90)
	CreateDynamicObject(8947,-2425.02905300,2555.71215800,20.65441900,0.00000000,0.00000000,275.14160979, .streamdistance = 10000.0); //object(91)
	CreateDynamicObject(5706,-2437.49438500,2519.14672900,13.50586700,0.00000000,0.00000000,181.32933923, .streamdistance = 10000.0); //object(92)
	CreateDynamicObject(2792,-2454.06518600,2528.53881800,27.10453000,0.00000000,0.00000000,40.70280717, .streamdistance = 10000.0); //object(93)
	CreateDynamicObject(970,-2458.62695300,2526.10937500,25.07477200,0.00000000,0.00000000,2.57831008, .streamdistance = 10000.0); //object(94)
	CreateDynamicObject(970,-2462.68554700,2526.04760700,25.07477200,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(95)
	CreateDynamicObject(970,-2466.72949200,2525.50195300,25.07477200,0.00000000,0.00000000,16.40658917, .streamdistance = 10000.0); //object(96)
	CreateDynamicObject(1569,-2456.78759800,2526.22753900,24.50291800,0.00000000,0.00000000,-89.99998128, .streamdistance = 10000.0); //object(102)
	CreateDynamicObject(1569,-2456.78564500,2523.56811500,24.49482900,0.00000000,0.00000000,89.99998128, .streamdistance = 10000.0); //object(103)
	CreateDynamicObject(2797,-2456.69384800,2524.91064500,27.73897700,0.00000000,0.00000000,-87.42167120, .streamdistance = 10000.0); //object(104)
	//-------------BAYSIDE AIRPORT - HIGHFLYER ----------------- [FINISH]
	//-------------PRICKLEPINE AIRPORT - HIGHFLYER ----------------- [START]
	CreateDynamicObject(5706,1012.89666700,2659.88354500,6.17679800,0.00000000,0.00000000,-23.35943201, .streamdistance = 10000.0); //object(8)
	CreateDynamicObject(5706,1043.05651900,2647.21167000,6.18710700,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(9)
	CreateDynamicObject(5706,1073.19226100,2634.71972700,6.21210100,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(10)
	CreateDynamicObject(5706,1102.99401900,2622.37158200,6.23709900,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(11)
	CreateDynamicObject(5706,1132.13769500,2610.31738300,6.28710000,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(12)
	CreateDynamicObject(5706,993.60675000,2668.21948200,6.18709900,0.00000000,0.00000000,-23.35943201, .streamdistance = 10000.0); //object(12)
	CreateDynamicObject(5706,1155.83752400,2600.52343800,6.31210000,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(13)
	CreateDynamicObject(4642,1006.11657700,2674.76782200,8.32915900,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(18)
	CreateDynamicObject(4642,1004.48846400,2670.48266600,8.32917300,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(19)
	CreateDynamicObject(4642,1002.80340600,2666.19897500,8.37917600,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(20)
	CreateDynamicObject(4642,1001.09906000,2661.88574200,8.30417300,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(21)
	CreateDynamicObject(4642,999.43994100,2657.65405300,8.30417700,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(22)
	CreateDynamicObject(4597,1025.42041000,2656.56933600,9.57868400,0.00000000,0.00000000,-23.35943201, .streamdistance = 10000.0); //object(23)
	CreateDynamicObject(4597,1058.21801800,2642.62622100,9.63899600,0.00000000,0.00000000,-23.35943201, .streamdistance = 10000.0); //object(24)
	CreateDynamicObject(4597,1093.29089400,2627.48486300,9.63899000,0.00000000,0.00000000,-23.35943201, .streamdistance = 10000.0); //object(25)
	CreateDynamicObject(4597,1129.19055200,2612.45385700,9.71398900,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(26)
	CreateDynamicObject(4642,1163.56750500,2589.21557600,8.45418500,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(27)
	CreateDynamicObject(4642,1165.30664100,2592.97656300,8.47918100,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(28)
	CreateDynamicObject(4642,1166.88366700,2596.89746100,8.47917400,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(29)
	CreateDynamicObject(4642,1168.74548300,2601.46264600,8.50418100,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(30)
	CreateDynamicObject(4642,1170.38513200,2605.79199200,8.45417000,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(31)
	CreateDynamicObject(4597,1147.46801800,2604.89135700,9.71397900,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(33)
	CreateDynamicObject(5706,1001.70977800,2696.01562500,6.23710100,0.00000000,0.00000000,67.74085741, .streamdistance = 10000.0); //object(22)
	CreateDynamicObject(5706,1008.54394500,2704.53881800,6.21210200,0.00000000,0.00000000,157.12227345, .streamdistance = 10000.0); //object(23)
	CreateDynamicObject(5706,1036.65844700,2692.70800800,5.96210300,0.00000000,-0.85943669,157.12227345, .streamdistance = 10000.0); //object(25)
	CreateDynamicObject(8251,981.11346400,2712.54126000,13.62311700,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(30)
	CreateDynamicObject(3643,1030.66040000,2707.31933600,15.00010300,0.00000000,0.00000000,67.49998596, .streamdistance = 10000.0); //object(33)
	CreateDynamicObject(3287,1037.41552700,2697.90087900,14.49362000,0.00000000,0.00000000,-18.20281186, .streamdistance = 10000.0); //object(34)
	CreateDynamicObject(3287,1034.08337400,2687.75415000,14.48436000,0.00000000,0.00000000,-17.34337516, .streamdistance = 10000.0); //object(35)
	CreateDynamicObject(5706,1149.17590300,2584.51171900,6.13709800,0.00000000,0.00000000,68.60029411, .streamdistance = 10000.0); //object(36)
	CreateDynamicObject(5706,1136.15893600,2569.98242200,6.13710200,0.00000000,0.00000000,158.84114684, .streamdistance = 10000.0); //object(37)
	CreateDynamicObject(5706,1108.48669400,2580.64257800,6.16210000,0.00000000,0.00000000,158.84114684, .streamdistance = 10000.0); //object(38)
	CreateDynamicObject(5706,1079.77648900,2591.79687500,6.08709900,0.00000000,0.00000000,158.84114684, .streamdistance = 10000.0); //object(39)
	CreateDynamicObject(5706,1050.69409200,2603.03759800,6.08710200,0.00000000,0.00000000,158.84114684, .streamdistance = 10000.0); //object(40)
	CreateDynamicObject(5706,1021.75268600,2614.20410200,6.13710200,0.00000000,0.00000000,158.84114684, .streamdistance = 10000.0); //object(41)
	CreateDynamicObject(5706,991.29101600,2625.99169900,6.16210000,0.00000000,0.00000000,158.84114684, .streamdistance = 10000.0); //object(42)
	CreateDynamicObject(5706,978.84442100,2630.75244100,6.14937400,0.00000000,0.00000000,158.84114684, .streamdistance = 10000.0); //object(44)
	CreateDynamicObject(4832,1113.93408200,2537.20678700,42.06454500,0.00000000,0.00000000,338.35942377, .streamdistance = 10000.0); //object(45)
	CreateDynamicObject(5706,1129.83142100,2553.55053700,6.16210100,0.00000000,0.00000000,158.84120414, .streamdistance = 10000.0); //object(46)
	CreateDynamicObject(5706,1071.89465300,2573.03808600,6.13710000,0.00000000,0.00000000,158.84120414, .streamdistance = 10000.0); //object(48)
	CreateDynamicObject(4642,1011.73852500,2667.49877900,8.34387100,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(42)
	CreateDynamicObject(4642,1008.27887000,2658.85424800,8.34386700,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(45)
	CreateDynamicObject(1215,1005.05658000,2677.76831100,9.78464500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(46)
	CreateDynamicObject(1215,1014.01782200,2673.86303700,9.80184000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(47)
	CreateDynamicObject(1215,1026.02490200,2668.67016600,9.72684100,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(48)
	CreateDynamicObject(1215,1040.43273900,2662.75708000,9.80218500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(49)
	CreateDynamicObject(1215,995.82287600,2656.43627900,9.81161700,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(50)
	CreateDynamicObject(1215,1005.00750700,2652.55346700,9.78464500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(51)
	CreateDynamicObject(1215,1015.83068800,2647.86914100,9.83464400,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(52)
	CreateDynamicObject(1215,1029.47851600,2642.12011700,9.80964500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(53)
	CreateDynamicObject(1215,1055.42749000,2656.42480500,9.78464500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(54)
	CreateDynamicObject(1215,1045.07080100,2635.69482400,9.90964300,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(55)
	CreateDynamicObject(1215,1070.88488800,2650.08325200,9.78464500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(56)
	CreateDynamicObject(1215,1061.83776900,2628.74755900,9.78464900,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(57)
	CreateDynamicObject(1215,1089.49450700,2642.46484400,9.78464500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(58)
	CreateDynamicObject(1215,1080.53991700,2620.95068400,9.75964500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(59)
	CreateDynamicObject(1215,1105.13122600,2635.97168000,9.73464600,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(60)
	CreateDynamicObject(1215,1095.88501000,2614.54345700,9.83464400,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(61)
	CreateDynamicObject(1215,1123.27429200,2628.44995100,9.75964500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(62)
	CreateDynamicObject(1215,1114.02087400,2606.94848600,9.73464600,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(63)
	CreateDynamicObject(1215,1142.54418900,2620.43017600,9.83464400,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(64)
	CreateDynamicObject(1215,1133.29394500,2599.09301800,9.80964900,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(65)
	CreateDynamicObject(1215,1159.33422900,2613.52856400,9.80964500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(66)
	CreateDynamicObject(1215,1174.50952100,2607.27417000,9.80964500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(67)
	CreateDynamicObject(1215,1165.55114700,2585.85546900,9.78464300,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(68)
	CreateDynamicObject(1278,1011.19549600,2642.42260700,5.45978400,0.00000000,0.00000000,-191.24998886, .streamdistance = 10000.0); //object(70)
	CreateDynamicObject(16368,1010.44641100,2642.47827100,19.51341100,37.81521448,-5.15662016,0.00000000, .streamdistance = 10000.0); //object(71)
	CreateDynamicObject(1569,1104.38855000,2555.75634800,10.01639700,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(73)
	CreateDynamicObject(1569,1107.11120600,2554.65844700,10.01639700,0.00000000,0.00000000,157.49996723, .streamdistance = 10000.0); //object(74)
	CreateDynamicObject(1569,1128.71521000,2539.89526400,9.97912300,0.00000000,0.00000000,158.35940393, .streamdistance = 10000.0); //object(75)
	CreateDynamicObject(1569,1125.94262700,2540.99877900,9.97912300,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(76)
	CreateDynamicObject(2790,1126.70336900,2540.43920900,12.06416600,13.75098708,0.00000000,158.35940393, .streamdistance = 10000.0); //object(77)
	CreateDynamicObject(2789,1105.69995100,2555.00219700,12.06261200,13.75098708,0.00000000,158.35940393, .streamdistance = 10000.0); //object(78)
	CreateDynamicObject(1278,1134.81042500,2540.95947300,19.92205800,0.00000000,0.00000000,-193.82829894, .streamdistance = 10000.0); //object(79)
	CreateDynamicObject(1278,1070.68945300,2558.92334000,17.09706700,0.00000000,0.00000000,-198.98497639, .streamdistance = 10000.0); //object(80)
	CreateDynamicObject(10764,930.05688500,2696.79492200,12.76697000,0.00000000,0.00000000,112.49997660, .streamdistance = 10000.0); //object(81)
	CreateDynamicObject(3578,990.73419200,2658.38549800,9.18562800,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(82)
	CreateDynamicObject(3578,979.53112800,2663.09472700,9.16062100,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(83)
	CreateDynamicObject(5706,1102.22595200,2561.28564500,6.16210300,0.00000000,0.00000000,158.84114684, .streamdistance = 10000.0); //object(101)
	CreateDynamicObject(1215,1136.28979500,2594.68896500,9.75964500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(86)
	CreateDynamicObject(1215,1136.02587900,2594.03027300,9.75964200,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(87)
	CreateDynamicObject(1243,1135.72021500,2593.33544900,-2.74149100,0.00000000,0.00000000,247.50000580, .streamdistance = 10000.0); //object(88)
	CreateDynamicObject(1243,1135.47692900,2592.68188500,-2.69148900,0.00000000,0.00000000,247.50000580, .streamdistance = 10000.0); //object(89)
	CreateDynamicObject(16096,1170.37194800,2586.94384800,8.15414300,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(90)
	CreateDynamicObject(16096,1172.14221200,2591.30883800,8.15414100,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(91)
	CreateDynamicObject(16096,1173.88806200,2595.61914100,8.17914300,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(92)
	CreateDynamicObject(16096,1175.72058100,2600.11059600,8.15414100,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(93)
	CreateDynamicObject(16096,1176.90283200,2602.98388700,8.16766500,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(94)
	CreateDynamicObject(16096,1174.77587900,2585.11157200,8.15415300,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(95)
	CreateDynamicObject(16096,1176.51574700,2589.29711900,8.15414200,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(96)
	CreateDynamicObject(16096,1178.34033200,2593.83813500,8.17914500,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(97)
	CreateDynamicObject(16096,1180.17028800,2598.18798800,8.16329900,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(98)
	CreateDynamicObject(16096,1181.44580100,2601.08911100,8.18118500,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(99)
	CreateDynamicObject(16096,1181.22509800,2587.85351600,8.15414900,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(101)
	CreateDynamicObject(16096,1182.98681600,2592.22656300,8.17914500,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(103)
	CreateDynamicObject(16096,1184.85937500,2596.69067400,8.17914500,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(104)
	CreateDynamicObject(16096,1185.90405300,2599.24340800,8.17915200,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(105)
	CreateDynamicObject(16096,1179.24292000,2583.24926800,8.17914100,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(108)
	CreateDynamicObject(1243,1180.03881800,2582.12744100,-2.15297400,0.00000000,0.00000000,-111.79506662, .streamdistance = 10000.0); //object(109)
	CreateDynamicObject(1243,1174.38366700,2584.55664100,-2.32796100,0.00000000,0.00000000,-111.79506662, .streamdistance = 10000.0); //object(110)
	CreateDynamicObject(1243,1168.31274400,2587.12280300,-2.52797300,0.00000000,0.00000000,-116.09225008, .streamdistance = 10000.0); //object(111)
	CreateDynamicObject(1243,1169.96289100,2591.04736300,-2.50297500,0.00000000,0.00000000,-113.51394001, .streamdistance = 10000.0); //object(112)
	CreateDynamicObject(1243,1171.66125500,2595.19433600,-2.42797300,0.00000000,0.00000000,-113.51394001, .streamdistance = 10000.0); //object(113)
	CreateDynamicObject(1243,1173.48449700,2599.65161100,-2.42797300,0.00000000,0.00000000,-113.51394001, .streamdistance = 10000.0); //object(114)
	CreateDynamicObject(1243,1175.25207500,2603.67504900,-2.44679000,0.00000000,0.00000000,-113.51394001, .streamdistance = 10000.0); //object(115)
	CreateDynamicObject(1243,1181.20385700,2601.21093800,-2.33327400,0.00000000,0.00000000,-113.51394001, .streamdistance = 10000.0); //object(116)
	CreateDynamicObject(1243,1186.89563000,2598.87670900,-2.48530500,0.00000000,0.00000000,-113.51394001, .streamdistance = 10000.0); //object(117)
	CreateDynamicObject(1243,1177.47448700,2592.86157200,-2.37796800,0.00000000,0.00000000,-113.51394001, .streamdistance = 10000.0); //object(118)
	CreateDynamicObject(1243,1183.77319300,2590.44824200,-2.37797000,0.00000000,0.00000000,-113.51394001, .streamdistance = 10000.0); //object(119)
	CreateDynamicObject(3264,889.10815400,2696.29809600,33.00676300,0.00000000,0.00000000,-101.25000758, .streamdistance = 10000.0); //object(122)
	CreateDynamicObject(3264,895.35376000,2682.75781300,29.56960100,0.00000000,0.00000000,-101.25000758, .streamdistance = 10000.0); //object(123)
	CreateDynamicObject(3578,988.77508500,2685.57055700,9.31063400,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(126)
	CreateDynamicObject(3578,1000.49902300,2680.89965800,9.28562600,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(127)
	CreateDynamicObject(7192,1173.36828600,2550.37915000,11.27717800,0.85943669,0.00000000,32.03114824, .streamdistance = 10000.0); //object(124)
	CreateDynamicObject(16668,975.65856900,2637.41748000,10.04352000,0.00000000,0.00000000,-17.34337516, .streamdistance = 10000.0); //object(132)
	CreateDynamicObject(5706,982.24090600,2649.87524400,6.08368100,0.00000000,0.00000000,67.74074282, .streamdistance = 10000.0); //object(133)
	CreateDynamicObject(3920,1125.19421400,2541.12207000,17.08633000,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(135)
	CreateDynamicObject(3920,1118.20581100,2543.83960000,17.07976900,0.00000000,0.00000000,-20.78112193, .streamdistance = 10000.0); //object(136)
	CreateDynamicObject(620,1146.39428700,2539.36914100,7.63747000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(137)
	CreateDynamicObject(620,1004.52948000,2724.67138700,8.15183300,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(138)
	CreateDynamicObject(620,1021.40741000,2719.55249000,7.88747000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(139)
	CreateDynamicObject(620,1198.49377400,2626.19775400,8.86362300,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(140)
	CreateDynamicObject(620,1056.37109400,2556.95703100,7.63747000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(141)
	CreateDynamicObject(620,962.86877400,2604.77026400,8.13312900,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(142)
	CreateDynamicObject(640,1123.35363800,2542.45800800,10.65461900,0.00000000,0.00000000,-292.49993915, .streamdistance = 10000.0); //object(143)
	CreateDynamicObject(640,1118.57946800,2544.42627000,10.65461900,0.00000000,0.00000000,67.49998596, .streamdistance = 10000.0); //object(144)
	CreateDynamicObject(640,1113.64575200,2546.46069300,10.65462200,0.00000000,0.00000000,67.49998596, .streamdistance = 10000.0); //object(145)
	CreateDynamicObject(1692,1089.86792000,2554.23266600,13.41013100,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(148)
	CreateDynamicObject(3851,1089.85437000,2556.04589800,10.70760700,0.00000000,0.00000000,68.35942265, .streamdistance = 10000.0); //object(149)
	CreateDynamicObject(3851,1087.80603000,2552.80615200,10.75759900,0.00000000,0.00000000,68.35942265, .streamdistance = 10000.0); //object(150)
	CreateDynamicObject(1692,1082.79980500,2557.03295900,13.35171800,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(151)
	CreateDynamicObject(3851,1076.63073700,2561.31323200,10.50759000,0.00000000,0.00000000,68.35942265, .streamdistance = 10000.0); //object(152)
	CreateDynamicObject(1692,1075.65112300,2559.88574200,13.33966200,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(153)
	CreateDynamicObject(3851,1077.67724600,2556.79589800,10.94532300,0.00000000,0.00000000,68.35942265, .streamdistance = 10000.0); //object(154)
	CreateDynamicObject(3851,1089.01123000,2554.44287100,12.58259400,0.00000000,-89.38141604,68.35942265, .streamdistance = 10000.0); //object(157)
	CreateDynamicObject(3851,1078.69665500,2558.40893600,12.50208300,0.00000000,-89.38141604,68.35942265, .streamdistance = 10000.0); //object(158)
	CreateDynamicObject(3851,1069.37280300,2562.12500000,12.51707100,0.00000000,-89.38141604,68.35942265, .streamdistance = 10000.0); //object(159)
	CreateDynamicObject(3851,1059.08227500,2566.18969700,12.50093400,0.00000000,-89.38141604,68.35942265, .streamdistance = 10000.0); //object(160)
	CreateDynamicObject(1692,1068.42272900,2562.74853500,13.34348600,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(161)
	CreateDynamicObject(1523,1084.68627900,2558.13208000,9.97007900,0.00000000,0.00000000,158.35940393, .streamdistance = 10000.0); //object(162)
	CreateDynamicObject(1523,1081.86999500,2559.18969700,9.97290600,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(163)
	CreateDynamicObject(3851,1069.72094700,2564.03540000,10.50760700,0.00000000,0.00000000,68.35942265, .streamdistance = 10000.0); //object(142)
	CreateDynamicObject(3851,1062.49914600,2566.91821300,10.48259200,0.00000000,0.00000000,68.35942265, .streamdistance = 10000.0); //object(143)
	CreateDynamicObject(3851,1053.85937500,2568.29541000,6.93258300,-90.24085273,91.10028943,70.07829604, .streamdistance = 10000.0); //object(144)
	CreateDynamicObject(1523,1054.50573700,2570.05102500,9.94507600,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(145)
	CreateDynamicObject(1523,1057.35253900,2568.96240200,9.94507600,0.00000000,0.00000000,158.35940393, .streamdistance = 10000.0); //object(146)
	CreateDynamicObject(3851,1067.22668500,2560.93261700,10.85760100,0.00000000,0.00000000,68.35942265, .streamdistance = 10000.0); //object(147)
	CreateDynamicObject(3851,1058.36706500,2564.33447300,10.60759700,0.00000000,0.00000000,68.35942265, .streamdistance = 10000.0); //object(148)
	CreateDynamicObject(1692,1061.38000500,2565.53393600,13.34363700,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(149)
	CreateDynamicObject(1692,1057.26428200,2567.17114300,13.35491800,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(150)
	CreateDynamicObject(3920,1075.96679700,2561.47705100,11.58900700,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(151)
	CreateDynamicObject(3920,1064.30236800,2566.13818400,11.62099300,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(152)
	CreateDynamicObject(2793,1056.08349600,2569.35351600,13.36640300,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(153)
	CreateDynamicObject(2792,1083.32995600,2558.64306600,13.41601800,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(155)
	CreateDynamicObject(1557,1094.09729000,2553.97680700,9.97519100,0.00000000,0.00000000,-112.49997660, .streamdistance = 10000.0); //object(156)
	CreateDynamicObject(1557,1092.94848600,2551.19580100,9.98929800,0.00000000,0.00000000,-292.49993915, .streamdistance = 10000.0); //object(157)
	CreateDynamicObject(2797,1105.66027800,2555.16503900,14.58280500,0.00000000,0.00000000,-21.64055863, .streamdistance = 10000.0); //object(159)
	CreateDynamicObject(3657,1087.41076700,2553.42260700,10.50080000,0.00000000,0.00000000,-200.78108449, .streamdistance = 10000.0); //object(160)
	CreateDynamicObject(3657,1077.73339800,2557.27197300,10.45079700,0.00000000,0.00000000,158.35940393, .streamdistance = 10000.0); //object(161)
	CreateDynamicObject(3657,1061.24511700,2563.76391600,10.45079700,0.00000000,0.00000000,158.35940393, .streamdistance = 10000.0); //object(162)
	CreateDynamicObject(3657,1069.26684600,2560.56176800,10.47579700,0.00000000,0.00000000,159.21884062, .streamdistance = 10000.0); //object(163)
	CreateDynamicObject(1343,1054.20788600,2566.66845700,10.68904700,0.00000000,0.00000000,68.08520505, .streamdistance = 10000.0); //object(164)
	CreateDynamicObject(1359,1066.84606900,2561.61962900,10.63114200,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(165)
	CreateDynamicObject(1359,1085.01074200,2554.50073200,10.68114500,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(166)
	CreateDynamicObject(8991,1005.24066200,2717.30444300,10.52100000,0.00000000,0.00000000,-22.49999532, .streamdistance = 10000.0); //object(168)
	CreateDynamicObject(8991,1017.68872100,2711.98266600,10.52100000,0.00000000,0.00000000,-23.35943201, .streamdistance = 10000.0); //object(169)
	//-------------PRICKLEPINE AIRPORT - HIGHFLYER ----------------- [FINISH]
	//-------------PALOMINO CREEK AIRPORT - BLEW ------------------- [START]
	CreateDynamicObject(3998,1926.18000000,-315.39000000,8.49000000,0.00000000,0.00000000,351.74000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1923.12000000,-336.51000000,8.49000000,0.00000000,0.00000000,351.74000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1920.03000000,-357.82000000,8.49000000,0.00000000,0.00000000,351.74000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1916.94000000,-378.91000000,8.49000000,0.00000000,0.00000000,351.74000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1913.85000000,-400.11000000,8.49000000,0.00000000,0.00000000,351.74000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1910.89000000,-421.47000000,12.11000000,-10.00000000,0.00000000,352.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1908.19000000,-440.50000000,12.07000000,0.00000000,0.00000000,352.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1883.31000000,-436.97000000,12.07000000,0.00000000,0.00000000,352.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1885.89000000,-459.07000000,12.07000000,0.00000000,0.00000000,352.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1911.23000000,-462.60000000,12.07000000,0.00000000,0.00000000,352.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1933.12000000,-444.03000000,12.07000000,0.00000000,0.00000000,352.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1936.49000000,-466.20000000,12.07000000,0.00000000,0.00000000,352.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1901.19000000,-463.31000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1876.02000000,-459.79000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1930.36000000,-489.00000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1905.03000000,-485.53000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1880.34000000,-482.08000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1855.17000000,-478.62000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1878.16000000,-503.46000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1903.27000000,-506.93000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1928.45000000,-510.41000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1953.76000000,-513.92000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(7696,1864.00000000,-504.81000000,30.55000000,0.00000000,0.00000000,82.05000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1926.97000000,-304.47000000,20.95000000,0.00000000,0.00000000,81.79000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1924.90000000,-320.46000000,20.95000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1922.88000000,-335.91000000,20.95000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1920.85000000,-351.98000000,20.95000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1918.67000000,-368.21000000,20.95000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1911.15000000,-425.62000000,24.55000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1913.51000000,-408.21000000,22.39000000,0.00000000,10.10000000,83.31000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1916.48000000,-384.46000000,20.95000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1909.85000000,-435.70000000,24.55000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1908.53000000,-445.90000000,24.55000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1909.68000000,-455.70000000,24.55000000,0.00000000,0.00000000,110.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1914.10000000,-464.90000000,24.55000000,0.00000000,0.00000000,120.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1918.49000000,-474.07000000,24.55000000,0.00000000,0.00000000,110.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1919.61000000,-483.89000000,24.55000000,0.00000000,0.00000000,82.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1906.09000000,-455.59000000,24.55000000,0.00000000,0.00000000,-110.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1901.71000000,-464.69000000,24.55000000,0.00000000,0.00000000,-120.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1892.06000000,-482.59000000,24.55000000,0.00000000,0.00000000,-110.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1896.45000000,-473.49000000,24.55000000,0.00000000,0.00000000,-120.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1888.46000000,-492.12000000,24.55000000,0.00000000,0.00000000,-110.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16101,1890.21000000,-419.38000000,24.72000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16368,1890.22000000,-419.31000000,35.53000000,0.00000000,0.00000000,358.14000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1939.09000000,-312.37000000,21.79000000,0.00000000,0.00000000,350.85000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1936.04000000,-333.51000000,21.79000000,0.00000000,0.00000000,350.85000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1932.93000000,-354.80000000,21.79000000,0.00000000,0.00000000,350.85000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1929.76000000,-376.49000000,21.79000000,0.00000000,0.00000000,350.85000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1926.77000000,-397.14000000,21.79000000,0.00000000,0.00000000,350.85000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1902.27000000,-393.56000000,21.79000000,0.00000000,0.00000000,172.23000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1905.23000000,-372.58000000,21.79000000,0.00000000,0.00000000,172.23000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1908.39000000,-350.73000000,21.79000000,0.00000000,0.00000000,172.23000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1911.42000000,-329.89000000,21.79000000,0.00000000,0.00000000,172.23000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1914.51000000,-308.62000000,21.79000000,0.00000000,0.00000000,172.23000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1941.31000000,-297.14000000,21.79000000,0.00000000,0.00000000,350.85000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,1916.71000000,-293.59000000,21.79000000,0.00000000,0.00000000,172.23000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1917.97000000,-373.58000000,21.73000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1920.14000000,-357.41000000,21.73000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1922.18000000,-341.28000000,21.73000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1924.18000000,-325.81000000,21.73000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1926.18000000,-309.83000000,21.73000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1911.76000000,-420.75000000,25.33000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1915.75000000,-389.86000000,21.73000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1910.50000000,-430.48000000,25.33000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1909.31000000,-439.85000000,25.33000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1907.82000000,-451.08000000,25.33000000,0.00000000,0.00000000,352.58000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1911.62000000,-460.77000000,25.33000000,0.00000000,0.00000000,27.09000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1916.82000000,-469.68000000,25.33000000,0.00000000,0.00000000,23.32000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1920.23000000,-479.09000000,25.33000000,0.00000000,0.00000000,352.94000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1898.92000000,-469.36000000,25.33000000,0.00000000,0.00000000,328.09000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1904.23000000,-460.49000000,25.33000000,0.00000000,0.00000000,329.82000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1893.82000000,-478.05000000,25.33000000,0.00000000,0.00000000,338.90000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1890.18000000,-487.56000000,25.33000000,0.00000000,0.00000000,338.90000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2792,1918.99000000,-490.56000000,30.57000000,0.00000000,0.00000000,352.07000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2793,1885.05000000,-509.25000000,30.52000000,0.00000000,0.00000000,351.59000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1885.82000000,-501.86000000,24.55000000,0.00000000,0.00000000,80.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,1936.41000000,-423.86000000,25.98000000,0.00000000,0.00000000,81.91000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,1885.62000000,-416.62000000,25.98000000,0.00000000,0.00000000,81.71000000, .streamdistance = 10000.0); //
	CreateDynamicObject(12990,2004.69000000,-245.95000000,1.08000000,356.86000000,0.00000000,353.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(12990,1979.42000000,-252.65000000,1.08000000,356.86000000,0.00000000,353.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(693,1892.25000000,-352.70000000,12.15000000,3.14000000,0.00000000,1.13000000, .streamdistance = 10000.0); //
	CreateDynamicObject(693,1934.03000000,-407.96000000,26.33000000,3.14000000,0.00000000,1.13000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1950.96000000,-470.67000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1926.43000000,-466.81000000,12.07000000,0.00000000,0.00000000,172.11000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4832,1912.61000000,-523.13000000,9.35000000,0.00000000,0.00000000,82.95000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1572,1908.83000000,-492.47000000,25.88000000,0.00000000,0.00000000,350.46000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1572,1910.25000000,-492.69000000,25.88000000,0.00000000,0.00000000,350.46000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1901.64000000,-488.38000000,25.80000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1924.81000000,-491.55000000,25.80000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1912.71000000,-489.98000000,25.80000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1900.18000000,-499.64000000,25.80000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1898.52000000,-511.38000000,25.80000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1886.86000000,-509.64000000,25.80000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1875.15000000,-508.03000000,25.80000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1885.31000000,-430.55000000,31.24000000,0.00000000,0.00000000,76.91000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1879.05000000,-447.18000000,31.24000000,0.00000000,0.00000000,76.91000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1870.54000000,-465.05000000,31.24000000,0.00000000,0.00000000,76.91000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1938.31000000,-475.22000000,31.24000000,0.00000000,0.00000000,76.91000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1938.97000000,-455.50000000,31.24000000,0.00000000,0.00000000,76.91000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1939.13000000,-437.89000000,31.24000000,0.00000000,0.00000000,76.91000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1918.78000000,-489.44000000,28.78000000,0.00000000,0.00000000,259.26000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1907.28000000,-487.87000000,28.78000000,0.00000000,0.00000000,259.26000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1930.25000000,-491.12000000,28.78000000,0.00000000,0.00000000,259.26000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1892.57000000,-509.28000000,28.78000000,0.00000000,0.00000000,259.26000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1881.06000000,-507.64000000,28.78000000,0.00000000,0.00000000,259.26000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1869.59000000,-506.02000000,28.78000000,0.00000000,0.00000000,259.26000000, .streamdistance = 10000.0); //
	//-------------PALOMINO CREEK AIRPORT - BLEW ------------------- [FINISH]
	//------------- K.A.C.C Regional ---------------------------------------------- [START]
	CreateDynamicObject(3998,2776.60449219,2835.70703125,-3.29999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (1)
	CreateDynamicObject(3998,2776.76464844,2796.15673828,-3.29999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (2)
	CreateDynamicObject(3998,2776.68237305,2758.01000977,-3.29999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (3)
	CreateDynamicObject(3998,2776.76416016,2777.38989258,-3.29999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (4)
	CreateDynamicObject(3998,2776.89941406,2740.59277344,-3.29999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (5)
	CreateDynamicObject(3998,2776.96582031,2724.27343750,-3.29999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (6)
	CreateDynamicObject(3998,2776.61938477,2815.57519531,-3.29999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (7)
	CreateDynamicObject(3578,2777.18945312,2734.09716797,9.15900040,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (1)
	CreateDynamicObject(3578,2777.21215820,2752.14599609,9.15900040,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (2)
	CreateDynamicObject(3578,2777.23217773,2770.17944336,9.15900040,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (3)
	CreateDynamicObject(3578,2777.21752930,2790.95117188,9.15900040,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (4)
	CreateDynamicObject(3578,2777.28979492,2810.07397461,9.15900040,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (5)
	CreateDynamicObject(3578,2777.56689453,2827.62866211,9.15900040,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (6)
	CreateDynamicObject(3578,2777.48535156,2846.11816406,9.15900040,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (7)
	CreateDynamicObject(3998,2777.12695312,2707.45385742,-3.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (8)
	CreateDynamicObject(3998,2777.24243164,2688.68847656,-3.31000018,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(court1_lan) (9)
	CreateDynamicObject(3578,2777.00097656,2714.06445312,9.14999962,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (8)
	CreateDynamicObject(3578,2776.29516602,2697.69799805,9.14999962,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (9)
	CreateDynamicObject(3578,2777.07592773,2716.85058594,9.15999985,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (10)
	CreateDynamicObject(5812,2827.57421875,2698.49511719,9.50000000,0.00000000,0.00000000,318.49914551, .streamdistance = 10000.0); //object(grasspatchlawn) (1)
	CreateDynamicObject(5812,2848.18847656,2721.78906250,9.48999977,0.00000000,0.00000000,318.49914551, .streamdistance = 10000.0); //object(grasspatchlawn) (3)
	CreateDynamicObject(984,2756.17016602,2665.02441406,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (1)
	CreateDynamicObject(984,2768.90625000,2665.01245117,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (2)
	CreateDynamicObject(984,2781.70727539,2665.02392578,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (3)
	CreateDynamicObject(984,2794.52050781,2665.03320312,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (4)
	CreateDynamicObject(984,2807.33813477,2665.02709961,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (5)
	CreateDynamicObject(984,2820.16284180,2665.05957031,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (6)
	CreateDynamicObject(984,2832.96752930,2665.13110352,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (7)
	CreateDynamicObject(984,2845.73925781,2665.16528320,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (8)
	CreateDynamicObject(984,2858.49584961,2665.15747070,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (9)
	CreateDynamicObject(984,2871.32128906,2665.16943359,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (10)
	CreateDynamicObject(984,2884.10229492,2665.17822266,10.45699215,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(fenceshit2) (11)
	CreateDynamicObject(979,2866.08154297,2654.81469727,10.51988888,0.00000000,0.00000000,147.99993896, .streamdistance = 10000.0); //object(sub_roadleft) (1)
	CreateDynamicObject(979,2871.44018555,2648.08471680,10.66208935,0.00000000,0.00000000,109.99682617, .streamdistance = 10000.0); //object(sub_roadleft) (2)
	CreateDynamicObject(979,2857.82836914,2657.31762695,10.51209545,0.00000000,0.00000000,353.99511719, .streamdistance = 10000.0); //object(sub_roadleft) (3)
	CreateDynamicObject(979,2873.02197266,2639.11767578,10.66053295,0.00000000,0.00000000,89.99047852, .streamdistance = 10000.0); //object(sub_roadleft) (4)
	CreateDynamicObject(16326,2797.51660156,2798.19506836,8.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(des_byoffice) (1)
	CreateDynamicObject(1728,2796.88354492,2804.38916016,11.42968750,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(mrk_seating3) (1)
	CreateDynamicObject(2008,2789.58911133,2804.00634766,11.46411037,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(officedesk1) (1)
	CreateDynamicObject(2174,2793.31274414,2801.33007812,11.42968750,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //object(med_office4_desk_2) (1)
	CreateDynamicObject(2174,2795.24462891,2801.33520508,11.42968750,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(med_office4_desk_2) (2)
	CreateDynamicObject(2174,2796.56250000,2801.37109375,11.42968750,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(med_office4_desk_2) (3)
	CreateDynamicObject(14604,2789.59423828,2801.36376953,12.44465542,0.00000000,0.00000000,310.00000000, .streamdistance = 10000.0); //object(tv_stand_bike) (1)
	CreateDynamicObject(8417,2798.62011719,2792.56152344,9.70852852,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bballcourt01_lvs) (1)
	CreateDynamicObject(3504,2793.51098633,2794.14160156,11.16267586,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_portaloo) (1)
	CreateDynamicObject(3504,2794.87475586,2794.15502930,11.16267586,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_portaloo) (2)
	CreateDynamicObject(3504,2796.14282227,2794.16674805,11.16267586,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_portaloo) (3)
	CreateDynamicObject(3504,2797.48242188,2794.17602539,11.16267586,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_portaloo) (4)
	CreateDynamicObject(3504,2798.80834961,2794.21801758,11.16267586,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_portaloo) (5)
	CreateDynamicObject(6959,2782.53808594,2787.24121094,9.89000034,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasnbball1) (1)
	CreateDynamicObject(6959,2782.61840820,2747.27734375,9.89000034,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasnbball1) (2)
	CreateDynamicObject(6959,2782.79638672,2717.24609375,0.88999999,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasnbball1) (3)
	CreateDynamicObject(6959,2782.74121094,2707.36181641,9.89000034,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasnbball1) (4)
	CreateDynamicObject(6959,2823.46093750,2702.57324219,9.73479843,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasnbball1) (5)
	CreateDynamicObject(6959,2821.17773438,2701.19238281,9.73479843,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasnbball1) (6)
	CreateDynamicObject(6959,2809.32421875,2703.39062500,9.89999962,0.00000000,0.00000000,319.99877930, .streamdistance = 10000.0); //object(vegasnbball1) (7)
	CreateDynamicObject(6959,2831.27661133,2735.39208984,9.84967995,0.00000000,0.00000000,319.99877930, .streamdistance = 10000.0); //object(vegasnbball1) (8)
	CreateDynamicObject(6959,2829.17529297,2726.69287109,9.84967995,0.00000000,0.00000000,320.00000000, .streamdistance = 10000.0); //object(vegasnbball1) (9)
	CreateDynamicObject(6959,2832.26562500,2736.03344727,9.89999962,0.00000000,0.00000000,320.00000000, .streamdistance = 10000.0); //object(vegasnbball1) (10)
	CreateDynamicObject(6959,2821.41674805,2762.98388672,9.84967995,0.00000000,0.00000000,359.99450684, .streamdistance = 10000.0); //object(vegasnbball1) (12)
	CreateDynamicObject(6959,2806.85156250,2753.12011719,9.89999962,0.00000000,0.00000000,327.99682617, .streamdistance = 10000.0); //object(vegasnbball1) (13)
	CreateDynamicObject(18234,2808.99218750,2777.37792969,9.82031250,0.00000000,0.00000000,55.99731445, .streamdistance = 10000.0); //object(cuntw_shed2_) (1)
	CreateDynamicObject(18234,2824.68383789,2766.79541016,9.82031250,0.00000000,0.00000000,55.99731445, .streamdistance = 10000.0); //object(cuntw_shed2_) (2)
	CreateDynamicObject(18234,2839.81372070,2756.58618164,9.82031250,0.00000000,0.00000000,55.99731445, .streamdistance = 10000.0); //object(cuntw_shed2_) (3)
	CreateDynamicObject(18234,2852.74682617,2746.44873047,9.82031250,0.00000000,0.00000000,47.99731445, .streamdistance = 10000.0); //object(cuntw_shed2_) (4)
	CreateDynamicObject(3526,2807.44726562,2679.89135742,9.96355724,0.00000000,0.00000000,228.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (1)
	CreateDynamicObject(3526,2812.61181641,2674.84326172,9.88873005,0.00000000,0.00000000,227.99926758, .streamdistance = 10000.0); //object(vegasairportlight) (2)
	CreateDynamicObject(3526,2867.65820312,2737.05786133,9.90815639,0.00000000,0.00000000,227.99926758, .streamdistance = 10000.0); //object(vegasairportlight) (3)
	CreateDynamicObject(3526,2862.44140625,2742.10961914,9.92117786,0.00000000,0.00000000,227.99926758, .streamdistance = 10000.0); //object(vegasairportlight) (4)
	CreateDynamicObject(13025,2885.61767578,2670.66699219,13.00229836,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(sw_fueldrum01) (1)
	CreateDynamicObject(13025,2879.61181641,2670.72509766,13.00229836,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(sw_fueldrum01) (2)
	CreateDynamicObject(13025,2873.98339844,2670.67626953,13.00229836,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(sw_fueldrum01) (3)
	CreateDynamicObject(13025,2868.23120117,2670.61425781,13.00229836,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(sw_fueldrum01) (4)
	CreateDynamicObject(13025,2862.34082031,2670.58789062,13.00229836,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(sw_fueldrum01) (5)
	CreateDynamicObject(16601,2804.70581055,2787.86499023,14.55938339,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(by_fuel07) (1)
	CreateDynamicObject(16601,2804.75317383,2791.32373047,14.55938339,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(by_fuel07) (2)
	CreateDynamicObject(934,2798.02905273,2803.12475586,11.18702984,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(generator_big) (1)
	CreateDynamicObject(1337,2793.80468750,2805.22363281,12.07891273,0.00000000,0.00000000,4.00000000, .streamdistance = 10000.0); //object(binnt07_la) (2)
	CreateDynamicObject(983,2803.19897461,2804.02807617,10.54230499,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(fenceshit3) (1)
	CreateDynamicObject(983,2803.20312500,2797.61328125,10.54230499,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(fenceshit3) (2)
	CreateDynamicObject(983,2803.16625977,2791.17602539,10.54230499,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(fenceshit3) (3)
	CreateDynamicObject(983,2803.16333008,2787.97192383,10.54230499,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(fenceshit3) (4)
	CreateDynamicObject(983,2799.97265625,2807.23925781,10.54230499,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(fenceshit3) (5)
	CreateDynamicObject(983,2793.59667969,2807.22167969,10.54230499,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(fenceshit3) (6)
	CreateDynamicObject(983,2792.66943359,2807.22631836,10.54230499,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(fenceshit3) (7)
	CreateDynamicObject(983,2793.23144531,2687.42822266,10.54230499,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(fenceshit3) (8)
	CreateDynamicObject(983,2794.08959961,2687.39257812,10.54230499,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(fenceshit3) (9)
	CreateDynamicObject(983,2799.73608398,2685.34472656,10.55230427,0.00000000,0.00000000,50.00000000, .streamdistance = 10000.0); //object(fenceshit3) (10)
	CreateDynamicObject(983,2804.65893555,2681.26513672,10.50386715,0.00000000,0.00000000,49.99877930, .streamdistance = 10000.0); //object(fenceshit3) (11)
	CreateDynamicObject(983,2865.81347656,2739.28125000,10.50386715,0.00000000,0.00000000,47.99377441, .streamdistance = 10000.0); //object(fenceshit3) (12)
	CreateDynamicObject(983,2864.71093750,2740.31274414,10.50386715,0.00000000,0.00000000,47.99377441, .streamdistance = 10000.0); //object(fenceshit3) (13)
	CreateDynamicObject(638,2799.40307617,2778.70239258,10.56578350,0.00000000,0.00000000,58.00000000, .streamdistance = 10000.0); //object(kb_planter_bush) (1)
	CreateDynamicObject(638,2801.64086914,2777.31835938,10.56578350,0.00000000,0.00000000,57.99682617, .streamdistance = 10000.0); //object(kb_planter_bush) (2)
	CreateDynamicObject(638,2803.24975586,2776.42651367,10.56578350,0.00000000,0.00000000,57.99682617, .streamdistance = 10000.0); //object(kb_planter_bush) (3)
	CreateDynamicObject(638,2808.90649414,2772.48364258,10.56578350,0.00000000,0.00000000,55.99682617, .streamdistance = 10000.0); //object(kb_planter_bush) (4)
	CreateDynamicObject(638,2810.95141602,2771.10888672,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (5)
	CreateDynamicObject(638,2813.12011719,2769.64184570,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (6)
	CreateDynamicObject(638,2815.15991211,2768.26806641,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (7)
	CreateDynamicObject(638,2817.17407227,2766.91137695,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (8)
	CreateDynamicObject(638,2825.03417969,2761.62060547,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (9)
	CreateDynamicObject(638,2827.11474609,2760.23950195,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (10)
	CreateDynamicObject(638,2829.06347656,2758.93017578,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (11)
	CreateDynamicObject(638,2830.95141602,2757.67529297,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (12)
	CreateDynamicObject(638,2839.98876953,2751.40234375,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (13)
	CreateDynamicObject(638,2841.97363281,2750.03784180,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (14)
	CreateDynamicObject(638,2843.69775391,2748.89355469,10.56578350,0.00000000,0.00000000,55.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (15)
	CreateDynamicObject(638,2845.62011719,2747.38427734,10.56578350,0.00000000,0.00000000,47.99182129, .streamdistance = 10000.0); //object(kb_planter_bush) (16)
	CreateDynamicObject(638,2852.14721680,2741.28613281,10.56578350,0.00000000,0.00000000,47.98828125, .streamdistance = 10000.0); //object(kb_planter_bush) (17)
	CreateDynamicObject(638,2853.91674805,2739.67749023,10.56578350,0.00000000,0.00000000,47.98828125, .streamdistance = 10000.0); //object(kb_planter_bush) (18)
	CreateDynamicObject(638,2855.55297852,2738.18408203,10.56578350,0.00000000,0.00000000,47.98828125, .streamdistance = 10000.0); //object(kb_planter_bush) (19)
	CreateDynamicObject(833,2890.64794922,2670.19970703,10.70792961,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(dead_tree_6) (1)
	CreateDynamicObject(703,2880.71533203,2685.96582031,9.82031059,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree7_big) (1)
	CreateDynamicObject(703,2889.85449219,2702.02343750,10.52157784,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree7_big) (4)
	CreateDynamicObject(703,2804.29272461,2822.64501953,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree7_big) (6)
	CreateDynamicObject(737,2832.23828125,2798.23803711,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(aw_streettree3) (1)
	CreateDynamicObject(737,2816.17089844,2797.69995117,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(aw_streettree3) (2)
	CreateDynamicObject(737,2806.40502930,2808.13452148,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(aw_streettree3) (3)
	CreateDynamicObject(770,2823.71508789,2785.91235352,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(pinebg_hi) (1)
	CreateDynamicObject(770,2837.94409180,2784.80053711,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(pinebg_hi) (2)
	CreateDynamicObject(770,2862.75781250,2770.90014648,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(pinebg_hi) (3)
	CreateDynamicObject(770,2868.84472656,2789.77734375,9.90471458,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(pinebg_hi) (4)
	CreateDynamicObject(770,2854.62963867,2794.55639648,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(pinebg_hi) (5)
	CreateDynamicObject(703,2823.01538086,2810.78466797,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree7_big) (7)
	CreateDynamicObject(703,2848.04711914,2776.12719727,9.82031250,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree7_big) (8)
	CreateDynamicObject(703,2843.80639648,2804.30517578,9.65671539,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree7_big) (9)
	CreateDynamicObject(1215,2789.86718750,2687.44921875,10.42307377,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (1)
	CreateDynamicObject(1215,2764.37915039,2687.61938477,10.42307377,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (2)
	CreateDynamicObject(1215,2776.48852539,2682.11083984,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (3)
	CreateDynamicObject(1215,2771.91552734,2680.05419922,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (4)
	CreateDynamicObject(1215,2779.92260742,2679.12866211,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (5)
	CreateDynamicObject(1215,2766.73388672,2677.11621094,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (6)
	CreateDynamicObject(1215,2784.16137695,2675.08398438,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (7)
	CreateDynamicObject(1215,2776.35571289,2675.50561523,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (8)
	CreateDynamicObject(1215,2771.64794922,2675.19165039,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (9)
	CreateDynamicObject(1215,2780.60644531,2674.22607422,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (10)
	CreateDynamicObject(1215,2776.51440430,2670.41650391,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (11)
	CreateDynamicObject(1215,2769.92944336,2669.29394531,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (12)
	CreateDynamicObject(1215,2781.81689453,2668.17895508,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (13)
	CreateDynamicObject(1215,2776.40795898,2666.53662109,10.38463593,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (14)
	CreateDynamicObject(1244,2802.92626953,2792.65795898,10.65825367,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(petrolpump) (1)
	CreateDynamicObject(1244,2802.87841797,2787.72827148,10.65825367,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(petrolpump) (2)
	CreateDynamicObject(1244,2802.82958984,2789.89746094,10.65825367,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(petrolpump) (3)
	CreateDynamicObject(3526,2776.31323242,2702.64501953,10.00172997,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (5)
	CreateDynamicObject(3526,2777.09814453,2721.79785156,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (6)
	CreateDynamicObject(3526,2777.17016602,2738.85375977,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (7)
	CreateDynamicObject(3526,2777.24511719,2756.98754883,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (8)
	CreateDynamicObject(3526,2777.24316406,2775.02124023,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (9)
	CreateDynamicObject(3526,2777.23559570,2795.66723633,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (10)
	CreateDynamicObject(3526,2777.32470703,2814.84155273,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (11)
	CreateDynamicObject(3526,2777.56030273,2832.51538086,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (12)
	CreateDynamicObject(3526,2777.55151367,2851.20996094,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (13)
	CreateDynamicObject(3526,2764.46020508,2702.54370117,10.00172997,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (14)
	CreateDynamicObject(3526,2764.43017578,2725.69165039,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (15)
	CreateDynamicObject(3526,2764.18261719,2739.17285156,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (16)
	CreateDynamicObject(3526,2763.87500000,2761.55346680,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (17)
	CreateDynamicObject(3526,2764.13696289,2776.28930664,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (18)
	CreateDynamicObject(3526,2764.02148438,2800.92041016,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (19)
	CreateDynamicObject(3526,2763.37377930,2818.22851562,9.88873005,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (20)
	CreateDynamicObject(3526,2764.04296875,2835.27099609,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (21)
	CreateDynamicObject(3526,2764.15112305,2851.94018555,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (22)
	CreateDynamicObject(3526,2789.14990234,2851.96777344,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (23)
	CreateDynamicObject(3526,2789.27441406,2832.77905273,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (24)
	CreateDynamicObject(3526,2789.18066406,2815.27636719,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (25)
	CreateDynamicObject(3526,2789.22949219,2795.51367188,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (26)
	CreateDynamicObject(3526,2789.07446289,2775.13964844,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (27)
	CreateDynamicObject(3526,2789.41162109,2759.01147461,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (28)
	CreateDynamicObject(3526,2789.36425781,2739.29248047,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (29)
	CreateDynamicObject(3526,2789.58398438,2721.32641602,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (30)
	CreateDynamicObject(3526,2789.60961914,2705.38989258,10.00172997,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (31)
	CreateDynamicObject(3526,2776.37695312,2692.62597656,10.00172997,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (32)
	CreateDynamicObject(3526,2789.79248047,2692.74511719,10.00172997,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (33)
	CreateDynamicObject(3526,2764.64404297,2692.43872070,10.00172997,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (34)
	CreateDynamicObject(3526,2763.44726562,2889.03051758,10.01173019,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (35)
	CreateDynamicObject(3526,2788.80810547,2890.06713867,10.00173092,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (36)
	CreateDynamicObject(3526,2865.42797852,2739.38671875,9.88873005,0.00000000,0.00000000,49.99877930, .streamdistance = 10000.0); //object(vegasairportlight) (45)
	CreateDynamicObject(3526,2810.11938477,2677.59936523,9.95590687,0.00000000,0.00000000,49.99877930, .streamdistance = 10000.0); //object(vegasairportlight) (46)
	CreateDynamicObject(3934,2834.63769531,2671.96337891,9.82031441,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(helipad01) (1)
	CreateDynamicObject(3934,2844.83740234,2671.96020508,9.82031250,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(helipad01) (2)
	CreateDynamicObject(3934,2854.43725586,2671.95751953,9.82031250,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(helipad01) (3)
	CreateDynamicObject(3934,2822.63696289,2671.96728516,9.82031441,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(helipad01) (4)
	CreateDynamicObject(3076,2889.34570312,2651.64453125,9.68356609,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(ad_roadmark1) (1)
	CreateDynamicObject(11489,2874.09643555,2648.76660156,9.82065487,0.00000000,0.00000000,290.00000000, .streamdistance = 10000.0); //object(dam_statues) (1)
	CreateDynamicObject(16304,2904.04345703,2646.27246094,14.15204811,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(des_gravelpile05) (1)
	CreateDynamicObject(1572,2798.37939453,2778.47436523,10.43938541,0.00000000,0.00000000,238.00000000, .streamdistance = 10000.0); //object(cj_air_trolly) (1)
	CreateDynamicObject(1572,2799.00537109,2778.09228516,10.43938541,0.00000000,0.00000000,237.99682617, .streamdistance = 10000.0); //object(cj_air_trolly) (2)
	CreateDynamicObject(1572,2799.70581055,2777.68139648,10.43938541,0.00000000,0.00000000,237.99682617, .streamdistance = 10000.0); //object(cj_air_trolly) (3)
	CreateDynamicObject(1572,2800.49487305,2777.22387695,10.43938541,0.00000000,0.00000000,237.99682617, .streamdistance = 10000.0); //object(cj_air_trolly) (4)
	CreateDynamicObject(1572,2801.25781250,2776.77172852,10.43938541,0.00000000,0.00000000,237.99682617, .streamdistance = 10000.0); //object(cj_air_trolly) (5)
	CreateDynamicObject(6959,2806.89257812,2728.80273438,9.89811707,0.00000000,0.00000000,327.99682617, .streamdistance = 10000.0); //object(vegasnbball1) (13)
	CreateDynamicObject(10231,2771.65258789,2522.78466797,12.17383862,0.00000000,0.00000000,224.00000000, .streamdistance = 10000.0); //object(freightboxes) (1)
	CreateDynamicObject(10810,2798.71411133,2835.73022461,14.81875324,0.00000000,0.00000000,290.00000000, .streamdistance = 10000.0); //object(ap_smallradar1_sfse) (1)
	CreateDynamicObject(3091,2749.85131836,2656.00561523,10.31868458,0.00000000,0.00000000,272.00000000, .streamdistance = 10000.0); //object(imy_track_barrier) (1)
	CreateDynamicObject(3091,2751.37695312,2654.29638672,10.32118893,0.00000000,0.00000000,359.99951172, .streamdistance = 10000.0); //object(imy_track_barrier) (2)
	CreateDynamicObject(3091,2754.69165039,2654.33154297,10.32113743,0.00000000,0.00000000,359.99450684, .streamdistance = 10000.0); //object(imy_track_barrier) (3)
	CreateDynamicObject(3091,2757.94531250,2654.30932617,10.32116985,0.00000000,0.00000000,359.99450684, .streamdistance = 10000.0); //object(imy_track_barrier) (4)
	CreateDynamicObject(3091,2761.23437500,2654.24975586,10.32125664,0.00000000,0.00000000,359.99450684, .streamdistance = 10000.0); //object(imy_track_barrier) (5)
	CreateDynamicObject(3091,2764.53637695,2654.25146484,10.32125473,0.00000000,0.00000000,359.99450684, .streamdistance = 10000.0); //object(imy_track_barrier) (6)
	CreateDynamicObject(3091,2767.82226562,2654.25073242,10.32125568,0.00000000,0.00000000,359.99450684, .streamdistance = 10000.0); //object(imy_track_barrier) (7)
	CreateDynamicObject(3091,2771.08740234,2654.21582031,10.32130718,0.00000000,0.00000000,359.99450684, .streamdistance = 10000.0); //object(imy_track_barrier) (8)
	CreateDynamicObject(3091,2772.57421875,2655.68750000,10.31914997,0.00000000,0.00000000,91.99401855, .streamdistance = 10000.0); //object(imy_track_barrier) (9)
	CreateDynamicObject(1375,2837.89331055,2658.51000977,11.51409817,0.00000000,0.00000000,88.00000000, .streamdistance = 10000.0); //object(tramstop_sf) (1)
	CreateDynamicObject(1375,2837.73388672,2658.04833984,11.36065865,0.00000000,0.00000000,269.99499512, .streamdistance = 10000.0); //object(tramstop_sf) (2)
	CreateDynamicObject(3567,2762.85595703,2658.24511719,10.70205879,0.00000000,0.00000000,280.00000000, .streamdistance = 10000.0); //object(lasnfltrail) (1)
	CreateDynamicObject(7090,2777.51367188,2656.56542969,12.55571938,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasflag1) (1)
	CreateDynamicObject(3998,2776.50292969,2875.36523438,-3.29999995,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(court1_lan) (1)
	CreateDynamicObject(3998,2771.53808594,2876.64160156,-3.30000019,0.00000000,0.00000000,91.99401855, .streamdistance = 10000.0); //object(court1_lan) (1)
	CreateDynamicObject(3998,2776.97998047,2869.27172852,-3.30999994,0.00000000,0.00000000,1.99401855, .streamdistance = 10000.0); //object(court1_lan) (1)
	CreateDynamicObject(1360,1114.45874023,-968.96820068,42.00680923,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(cj_bush_prop3) (1)
	CreateDynamicObject(1360,1119.52868652,-968.89904785,41.96507645,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(cj_bush_prop3) (2)
	CreateDynamicObject(1360,1124.68127441,-968.80572510,41.93574142,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(cj_bush_prop3) (3)
	CreateDynamicObject(1360,1130.40759277,-968.80718994,41.91997910,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(cj_bush_prop3) (4)
	CreateDynamicObject(1360,1135.52172852,-968.62359619,41.93287659,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(cj_bush_prop3) (5)
	CreateDynamicObject(1360,1141.26049805,-968.39929199,41.95584869,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(cj_bush_prop3) (6)
	CreateDynamicObject(1360,1146.27990723,-968.23992920,41.97701263,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(cj_bush_prop3) (7)
	CreateDynamicObject(2957,1081.51928711,-937.41650391,73.08645630,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (1)
	CreateDynamicObject(2957,1081.51928711,-940.71069336,74.46917725,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (2)
	CreateDynamicObject(2957,1081.51928711,-933.70367432,74.14257812,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (3)
	CreateDynamicObject(2957,1081.52038574,-937.71582031,70.77212524,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (4)
	CreateDynamicObject(2957,1081.57714844,-935.01196289,70.80033875,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (5)
	CreateDynamicObject(2957,1081.47680664,-936.72644043,76.34077454,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (6)
	CreateDynamicObject(2957,1081.51318359,-933.21368408,77.39689636,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (7)
	CreateDynamicObject(2957,1081.52038574,-937.16748047,68.35394287,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (8)
	CreateDynamicObject(2957,1081.50048828,-934.64941406,69.56664276,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (9)
	CreateDynamicObject(2957,1081.44262695,-940.40368652,75.89729309,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (10)
	CreateDynamicObject(2957,1081.51928711,-941.30206299,72.55783081,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (11)
	CreateDynamicObject(2957,1078.39440918,-922.39208984,45.42735291,0.00000000,0.00000000,358.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (12)
	CreateDynamicObject(2957,1083.94482422,-933.48913574,72.32958984,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (13)
	CreateDynamicObject(2957,1083.91088867,-939.29406738,74.74856567,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (14)
	CreateDynamicObject(2957,1083.91088867,-936.45532227,74.18109131,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (16)
	CreateDynamicObject(2957,1083.93493652,-932.82855225,75.58390808,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (17)
	CreateDynamicObject(2957,1083.97021484,-935.57177734,75.64234161,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (18)
	CreateDynamicObject(2957,1083.97021484,-940.10852051,75.51013184,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (19)
	CreateDynamicObject(2957,1083.91088867,-940.10131836,72.92266846,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (20)
	CreateDynamicObject(2957,1083.91088867,-936.65191650,72.98268127,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (21)
	CreateDynamicObject(2957,1148.47058105,-907.32647705,74.96110535,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (22)
	CreateDynamicObject(2957,1144.57250977,-907.32647705,76.48392487,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (23)
	CreateDynamicObject(2957,1149.35681152,-904.87530518,72.03179932,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (24)
	CreateDynamicObject(2957,1150.24975586,-907.40307617,75.65744019,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (25)
	CreateDynamicObject(2957,1146.71862793,-907.32647705,70.82925415,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (26)
	CreateDynamicObject(2957,1143.29602051,-907.32647705,71.06935120,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (27)
	CreateDynamicObject(2957,1145.81945801,-904.75714111,74.39794922,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (28)
	CreateDynamicObject(2957,1144.72436523,-907.35961914,74.32366943,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (29)
	CreateDynamicObject(2957,1142.12634277,-907.32647705,74.95368958,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (30)
	CreateDynamicObject(2957,1142.46032715,-907.40301514,72.20960999,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (31)
	CreateDynamicObject(2957,1145.26782227,-907.40325928,73.73031616,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (32)
	CreateDynamicObject(2957,1149.98327637,-907.30859375,71.02116394,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (33)
	CreateDynamicObject(2957,1148.11535645,-907.40319824,73.92181396,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (34)
	CreateDynamicObject(2957,1142.16479492,-907.40307617,75.81141663,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (35)
	CreateDynamicObject(2957,1147.56420898,-907.47973633,76.87406921,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (36)
	CreateDynamicObject(2957,1150.97363281,-907.38531494,72.40795898,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (37)
	CreateDynamicObject(2957,1142.82348633,-904.93475342,73.73922729,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (38)
	CreateDynamicObject(2957,1148.04846191,-904.93475342,72.23139954,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (39)
	CreateDynamicObject(2957,1149.77343750,-904.87561035,74.70910645,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (40)
	CreateDynamicObject(2957,1145.68420410,-904.93475342,74.52543640,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (41)
	CreateDynamicObject(2957,1142.45800781,-904.87542725,75.13230896,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (42)
	CreateDynamicObject(2957,1150.49206543,-904.93475342,72.03566742,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (43)
	CreateDynamicObject(2957,1143.10815430,-904.87548828,72.18888855,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (44)
	CreateDynamicObject(2957,1144.13977051,-904.81628418,72.33709717,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (45)
	CreateDynamicObject(2957,1146.47302246,-904.87548828,75.48571777,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (46)
	CreateDynamicObject(2957,1149.90722656,-904.81628418,75.51790619,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (47)
	CreateDynamicObject(2957,1080.95935059,-922.33801270,44.69337845,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (48)
	CreateDynamicObject(2957,1083.54418945,-922.33801270,44.26062012,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (49)
	CreateDynamicObject(2957,1079.14135742,-922.31555176,44.01041031,0.00000000,0.00000000,179.99450684, .streamdistance = 10000.0); //object(chinatgaragedoor) (50)
	CreateDynamicObject(2957,1081.44262695,-932.86505127,72.82095337,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (51)
	CreateDynamicObject(2957,1081.43652344,-932.86242676,76.07527161,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (52)
	CreateDynamicObject(2957,1084.19873047,-922.41467285,45.66757965,0.00000000,0.00000000,357.99499512, .streamdistance = 10000.0); //object(chinatgaragedoor) (53)
	CreateDynamicObject(2957,1073.41040039,-917.90411377,44.01041031,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (54)
	CreateDynamicObject(2957,1073.33374023,-915.90032959,44.01041031,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (55)
	CreateDynamicObject(2957,1073.33374023,-919.72979736,44.01041031,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (56)
	CreateDynamicObject(2957,1073.47985840,-916.32360840,45.84236908,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (57)
	CreateDynamicObject(2957,1073.25708008,-919.07183838,45.31483078,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(chinatgaragedoor) (58)
	CreateDynamicObject(3998,1114.02001953,-1006.79254150,15.69999981,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(court1_lan) (10)
	CreateDynamicObject(3998,1134.30908203,-1006.72131348,15.69999981,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(court1_lan) (11)
	CreateDynamicObject(3998,1148.44421387,-1005.70806885,15.69999981,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(court1_lan) (12)
	CreateDynamicObject(3526,1140.13537598,-1006.44445801,29.01173210,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (37)
	CreateDynamicObject(3526,1135.67297363,-1006.38983154,29.01173210,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (38)
	CreateDynamicObject(3526,1129.78173828,-1006.35717773,29.01173210,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (39)
	CreateDynamicObject(3526,1124.93408203,-1006.15692139,29.01173210,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (40)
	CreateDynamicObject(3526,1112.46545410,-1006.12799072,29.01172829,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (41)
	CreateDynamicObject(3526,1119.49121094,-1005.85180664,29.01173210,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (42)
	CreateDynamicObject(1215,1107.21875000,-1011.92883301,29.50763321,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (15)
	CreateDynamicObject(1215,1107.18176270,-1001.11822510,29.51082611,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (16)
	CreateDynamicObject(1215,1142.69189453,-1001.05468750,29.50763702,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (17)
	CreateDynamicObject(1215,1142.55480957,-1011.91821289,29.50763702,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (18)
	CreateDynamicObject(5812,2833.30664062,2693.07714844,9.50000000,0.00000000,0.00000000,318.49914551, .streamdistance = 10000.0); //object(grasspatchlawn) (1)
	CreateDynamicObject(3526,2815.81298828,2672.00439453,9.92688370,0.00000000,0.00000000,227.99926758, .streamdistance = 10000.0); //object(vegasairportlight) (2)
	CreateDynamicObject(3526,2818.67919922,2669.57861328,9.91937256,0.00000000,0.00000000,227.99928284, .streamdistance = 10000.0); //object(vegasairportlight) (2)
	CreateDynamicObject(3526,2867.64160156,2737.05737305,10.00412083,0.00000000,0.00000000,227.99928284, .streamdistance = 10000.0); //object(vegasairportlight) (2)
	CreateDynamicObject(3934,2822.69116211,2671.87304688,9.82031250,0.00000000,0.00000000,88.00000000, .streamdistance = 10000.0); //object(helipad01) (5)
	CreateDynamicObject(3934,2822.73022461,2672.02807617,9.82031441,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (6)
	CreateDynamicObject(3934,2822.65673828,2671.94750977,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (7)
	CreateDynamicObject(3934,2822.50854492,2671.78466797,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (8)
	CreateDynamicObject(3934,2822.70190430,2672.04150391,9.82031441,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (9)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (10)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (11)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (12)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (13)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (14)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (15)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (16)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (17)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (18)
	CreateDynamicObject(3934,2822.66210938,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (19)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (20)
	CreateDynamicObject(3934,2822.66210938,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (21)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (22)
	CreateDynamicObject(3934,2822.66210938,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (23)
	CreateDynamicObject(3934,2822.66210938,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (24)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (25)
	CreateDynamicObject(3934,2822.66210938,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (26)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (27)
	CreateDynamicObject(3934,2822.66259766,2671.88671875,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (28)
	CreateDynamicObject(3934,2822.63403320,2671.90014648,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (29)
	CreateDynamicObject(3934,2822.64013672,2671.83935547,9.82031250,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (30)
	CreateDynamicObject(3934,2822.64477539,2671.93701172,9.82031345,0.00000000,0.00000000,87.99499512, .streamdistance = 10000.0); //object(helipad01) (31)
	CreateDynamicObject(5812,2852.78955078,2715.35131836,9.50000000,0.00000000,0.00000000,318.49914551, .streamdistance = 10000.0); //object(grasspatchlawn) (1)
	CreateDynamicObject(983,2865.78735352,2739.25634766,10.50386715,0.00000000,0.00000000,47.99377441, .streamdistance = 10000.0); //object(fenceshit3) (12)
	CreateDynamicObject(2792,2804.26733398,2775.74047852,13.26547623,0.00000000,0.00000000,326.00000000, .streamdistance = 10000.0); //object(cj_air_d_1) (1)
	CreateDynamicObject(2793,2819.98828125,2765.13769531,13.26547623,0.00000000,0.00000000,326.00000000, .streamdistance = 10000.0); //object(cj_air_d_2) (1)
	CreateDynamicObject(2795,2835.38012695,2754.75170898,13.26547623,0.00000000,0.00000000,326.00000000, .streamdistance = 10000.0); //object(cj_air_d_4) (1)
	CreateDynamicObject(2797,2847.84155273,2745.48217773,13.58295155,0.00000000,0.00000000,318.00000000, .streamdistance = 10000.0); //object(cj_air_d_5) (1)
	CreateDynamicObject(2796,2797.49707031,2795.67871094,12.99513721,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cj_air_d_6) (1)
	CreateDynamicObject(3526,2872.51171875,2730.53222656,9.89704132,0.00000000,0.00000000,227.99926758, .streamdistance = 10000.0); //object(vegasairportlight) (2)
	CreateDynamicObject(3526,2869.26489258,2733.59521484,9.91200066,0.00000000,0.00000000,227.99926758, .streamdistance = 10000.0); //object(vegasairportlight) (2)
	CreateDynamicObject(1215,2807.48315430,2679.86523438,10.55078888,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (1)
	CreateDynamicObject(1215,2818.66967773,2669.60791016,10.50380707,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (1)
	CreateDynamicObject(1215,2812.64721680,2674.86962891,10.46531963,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (1)
	CreateDynamicObject(1215,2867.71972656,2736.98315430,10.59360313,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (1)
	CreateDynamicObject(1215,2862.44384766,2742.04125977,10.52348518,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (1)
	CreateDynamicObject(1215,2872.55908203,2730.58862305,10.46524048,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (1)
	CreateDynamicObject(3998,2756.54980469,2871.17285156,-3.30000019,0.00000000,0.00000000,91.98303223, .streamdistance = 10000.0); //object(court1_lan) (1)
	CreateDynamicObject(3998,2774.31347656,2871.57714844,-3.29999995,0.00000000,0.00000000,91.98852539, .streamdistance = 10000.0); //object(court1_lan) (1)
	CreateDynamicObject(983,2739.28808594,2883.22949219,10.62686729,0.00000000,0.00000000,271.99951172, .streamdistance = 10000.0); //object(fenceshit3) (25)
	CreateDynamicObject(983,2736.14404297,2879.91870117,10.62686729,0.00000000,0.00000000,182.00000000, .streamdistance = 10000.0); //object(fenceshit3) (26)
	CreateDynamicObject(3091,2777.79443359,2656.25341797,10.31832123,0.00000000,0.00000000,91.99401855, .streamdistance = 10000.0); //object(imy_track_barrier) (9)
	CreateDynamicObject(3091,2777.64013672,2656.51245117,12.07843399,0.00000000,0.00000000,91.99401855, .streamdistance = 10000.0); //object(imy_track_barrier) (9)
	CreateDynamicObject(3091,2774.44335938,2654.12133789,10.32144547,0.00000000,0.00000000,359.99401855, .streamdistance = 10000.0); //object(imy_track_barrier) (9)
	CreateDynamicObject(3091,2775.88745117,2654.37646484,10.37762833,0.00000000,0.00000000,359.98901367, .streamdistance = 10000.0); //object(imy_track_barrier) (9)
	CreateDynamicObject(983,2736.34179688,2873.55590820,10.62686729,0.00000000,0.00000000,181.99951172, .streamdistance = 10000.0); //object(fenceshit3) (26)
	CreateDynamicObject(983,2736.57446289,2867.17846680,10.62686729,0.00000000,0.00000000,181.99951172, .streamdistance = 10000.0); //object(fenceshit3) (26)
	CreateDynamicObject(983,2736.77099609,2860.77783203,10.62686729,0.00000000,0.00000000,181.99951172, .streamdistance = 10000.0); //object(fenceshit3) (26)
	CreateDynamicObject(983,2745.67626953,2883.47973633,10.62686729,0.00000000,0.00000000,271.99951172, .streamdistance = 10000.0); //object(fenceshit3) (25)
	CreateDynamicObject(983,2747.51196289,2883.52807617,10.62686729,0.00000000,0.00000000,271.99951172, .streamdistance = 10000.0); //object(fenceshit3) (25)
	CreateDynamicObject(703,2899.21557617,2724.03344727,12.96948624,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree7_big) (4)
	CreateDynamicObject(703,2898.61254883,2711.01782227,13.19389725,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree7_big) (4)
	//------------- K.A.C.C Regional by Nicholas ---------------------------------------------- [FINISH]
	//------------- BLEW'S AIRPORT - Stoneland International ---------------------------------- [START]
	CreateDynamicObject(8355, 2466.76001, 596.13000, 11.45000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8355, 2605.04004, 596.09998, 11.45000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2407.62012, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2427.60010, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2447.56006, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2467.55005, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2487.46997, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2507.44995, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2527.31006, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2547.20996, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2567.11011, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2587.02002, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2606.91992, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2626.77002, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2646.71997, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2666.67993, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2686.57007, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2706.36011, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2726.28003, 578.90002, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2735.43994, 586.09998, 2.49000,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2735.35010, 605.89001, 2.49000,   1800.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2683.12012, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2701.02002, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2718.86011, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2729.17993, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2683.12012, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2701.04004, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2718.96997, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2729.14990, 605.94000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2729.12988, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2710.29004, 613.34003, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2690.44995, 613.34003, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2670.41992, 613.34003, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2711.25000, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2693.56006, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2650.55005, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2630.59009, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2610.67993, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2590.59009, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2570.73999, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2550.83008, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2530.92993, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2511.08008, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2491.14990, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2471.27002, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2451.26001, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2431.48999, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2411.60010, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2407.53003, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2400.31006, 586.12000, 2.49000,   -90.00000, -90.00000, 0.00000);
	CreateDynamicObject(8569, 2531.20996, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2531.20996, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2531.20996, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 626.22998, 7.46000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2549.05005, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2566.86011, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2584.63989, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2602.53003, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2620.37988, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2638.16992, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2656.03003, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2691.84009, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2709.76001, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2727.67993, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2550.45996, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2568.18994, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2585.98999, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2603.89990, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2621.73999, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2639.64990, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2657.56006, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2675.44995, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2693.37012, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2711.18994, 645.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2729.08008, 645.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8034, 2730.25000, 707.45001, 14.88000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2548.98999, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(10763, 2542.47998, 650.53003, 33.85000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(8569, 2566.85010, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2584.72998, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2620.38989, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2638.16992, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2656.10010, 665.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2674.00000, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2691.89990, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2709.77002, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2727.68994, 665.47998, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.58008, 665.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2673.90991, 625.53003, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.56006, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.53003, 625.46997, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2710.38989, 684.33002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.37012, 684.38000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.37012, 684.37000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.43994, 738.14001, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.40991, 702.28003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2749.25000, 703.34998, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2750.39990, 738.13000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.39990, 756.03003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.42993, 756.04999, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.41992, 756.03003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.47998, 756.04999, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2708.62012, 713.65997, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2690.43994, 684.38000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.46997, 720.21002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.47998, 702.31000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.42993, 738.15002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.43994, 738.15002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.44995, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.43994, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.39990, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.45996, 702.26001, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2751.39990, 703.27002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(5440, 2626.85010, 696.83002, 6.34000,   0.45000, 0.00000, 272.16000);
	CreateDynamicObject(987, 2700.41992, 697.59998, 10.24000,   0.00000, 0.00000, 221.83000);
	CreateDynamicObject(987, 2687.55005, 684.65002, 9.85000,   0.00000, 0.00000, 233.92999);
	CreateDynamicObject(987, 2680.37012, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2668.51001, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2656.58008, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2644.59009, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2632.62988, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2620.66992, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2608.65991, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2596.73999, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2584.83008, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2572.89990, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2561.00000, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2549.05005, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2537.12988, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2525.03003, 675.21997, 10.24000,   0.00000, 0.00000, 257.87000);
	CreateDynamicObject(987, 2522.48999, 663.59998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 651.65002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 639.67999, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 628.28003, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2760.23999, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2748.27002, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2736.34009, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2724.39990, 764.70001, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2705.14990, 764.71002, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2712.45996, 764.71002, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(5440, 2692.13989, 817.75000, -2.44000,   10.00000, 0.00000, 180.16000);
	CreateDynamicObject(4691, 2726.36011, 733.25000, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2735.39990, 605.67999, 2.49000,   -90.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2602.56006, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1290, 2566.84009, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2590.64990, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2614.75000, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2632.66992, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2656.66992, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2680.59009, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2543.70996, 651.77002, 15.93000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2543.67993, 631.75000, 15.93000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(10764, 2428.27002, 596.15997, 8.20000,   0.00000, 0.00000, 135.08000);
	CreateDynamicObject(10764, 2647.65991, 596.14001, 8.20000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(1226, 2714.12988, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2716.25000, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2744.45996, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2746.71997, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2726.23999, 696.46997, 12.73000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2734.45996, 696.59003, 17.49000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2734.52002, 696.51001, 12.73000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2726.30005, 696.57001, 17.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2733.65991, 739.71002, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2733.63989, 753.01001, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2759.79004, 737.46002, 16.14000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2705.34009, 741.28003, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2705.31006, 750.28003, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3928, 2708.57007, 700.25000, 18.80000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3928, 2751.90991, 700.10999, 18.80000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, 2541.04004, 627.46997, 18.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16368, 2541.05005, 627.52002, 29.39000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, 2753.57007, 616.19000, 10.22000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16368, 2753.58008, 616.28003, 20.97000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1572, 2726.65991, 703.37000, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2728.04004, 703.28003, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2732.39990, 703.28998, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2733.60010, 703.34003, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1215, 2727.65991, 697.78998, 10.76000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2732.84009, 697.78998, 10.76000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2708.42993, 700.20001, 18.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2751.78003, 700.01001, 18.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2792, 2745.44995, 690.12000, 16.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2793, 2715.07007, 690.09998, 16.42000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2718.46997, 671.09998, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2716.36011, 661.53998, 9.48000,   0.00000, 0.00000, 244.52000);
	CreateDynamicObject(3578, 2714.20996, 651.90997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2714.23999, 641.77002, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2718.47998, 681.38000, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2743.14990, 681.40997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2743.12012, 671.21997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2740.87012, 661.59998, 9.48000,   0.00000, 0.00000, 244.52000);
	CreateDynamicObject(3578, 2734.53003, 654.22998, 9.48000,   0.00000, 0.00000, 214.61000);
	CreateDynamicObject(3578, 2725.52002, 650.03003, 9.48000,   0.00000, 0.00000, 195.28000);
	CreateDynamicObject(3578, 2717.40991, 644.91998, 9.48000,   0.00000, 0.00000, 229.86000);
	CreateDynamicObject(3578, 2709.25000, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2699.05005, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2688.97998, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2678.83008, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2668.65991, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2658.92993, 639.46002, 9.48000,   0.00000, 0.00000, 20.21000);
	CreateDynamicObject(3578, 2649.30005, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2638.93994, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2628.73999, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2608.46997, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2618.65991, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2598.15991, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2680.82007, 764.78998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 752.83002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 740.88000, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 729.03998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 717.06000, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2759.89990, 687.60999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2759.81006, 675.73999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 663.23999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 651.21002, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 639.15002, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 627.13000, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 615.63000, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2741.72998, 615.96002, 10.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2738.72998, 615.96002, 10.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2680.69995, 687.21002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(4639, 2681.96997, 701.06000, 11.95000,   0.00000, 0.00000, 91.84000);
	CreateDynamicObject(4639, 2694.53003, 763.57001, 11.83000,   0.00000, 0.00000, 0.57000);
	CreateDynamicObject(1332, 2711.30005, 724.85999, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1332, 2709.11011, 724.79999, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1332, 2706.93994, 724.77002, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16095, 2720.44995, 712.76001, 18.70000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(16095, 2745.97998, 712.79999, 18.70000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3787, 2722.95996, 693.66998, 10.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3787, 2722.96997, 692.38000, 10.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3787, 2722.95996, 692.83002, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1424, 2688.45996, 686.20001, 10.75000,   0.00000, 0.00000, 52.42000);
	CreateDynamicObject(1424, 2690.34009, 688.41998, 10.75000,   0.00000, 0.00000, 49.25000);
	CreateDynamicObject(8355, 2466.76001, 596.13000, 11.45000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8355, 2605.04004, 596.09998, 11.45000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2407.62012, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2427.60010, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2447.56006, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2467.55005, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2487.46997, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2507.44995, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2527.31006, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2547.20996, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2567.11011, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2587.02002, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2606.91992, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2626.77002, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2646.71997, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2666.67993, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2686.57007, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2706.36011, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2726.28003, 578.90002, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2735.43994, 586.09998, 2.49000,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2735.35010, 605.89001, 2.49000,   1800.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2683.12012, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2701.02002, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2718.86011, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2729.17993, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2683.12012, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2701.04004, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2718.96997, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2729.14990, 605.94000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2729.12988, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2710.29004, 613.34003, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2690.44995, 613.34003, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2670.41992, 613.34003, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2711.25000, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2693.56006, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2650.55005, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2630.59009, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2610.67993, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2590.59009, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2570.73999, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2550.83008, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2530.92993, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2511.08008, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2491.14990, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2471.27002, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2451.26001, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2431.48999, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2411.60010, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2407.53003, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2400.31006, 586.12000, 2.49000,   -90.00000, -90.00000, 0.00000);
	CreateDynamicObject(8569, 2531.20996, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2531.20996, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2531.20996, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 626.22998, 7.46000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2549.05005, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2566.86011, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2584.63989, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2602.53003, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2620.37988, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2638.16992, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2656.03003, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2691.84009, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2709.76001, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2727.67993, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2550.45996, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2568.18994, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2585.98999, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2603.89990, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2621.73999, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2639.64990, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2657.56006, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2675.44995, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2693.37012, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2711.18994, 645.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2729.08008, 645.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8034, 2730.25000, 707.45001, 14.88000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2548.98999, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(10763, 2542.47998, 650.53003, 33.85000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(8569, 2566.85010, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2584.72998, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2620.38989, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2638.16992, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2656.10010, 665.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2674.00000, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2691.89990, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2709.77002, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2727.68994, 665.47998, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.58008, 665.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2673.90991, 625.53003, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.56006, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.53003, 625.46997, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2710.38989, 684.33002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.37012, 684.38000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.37012, 684.37000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.43994, 738.14001, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.40991, 702.28003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2749.25000, 703.34998, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2750.39990, 738.13000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.39990, 756.03003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.42993, 756.04999, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.41992, 756.03003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.47998, 756.04999, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2708.62012, 713.65997, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2690.43994, 684.38000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.46997, 720.21002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.47998, 702.31000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.42993, 738.15002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.43994, 738.15002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.44995, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.43994, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.39990, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.45996, 702.26001, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2751.39990, 703.27002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(5440, 2626.85010, 696.83002, 6.34000,   0.45000, 0.00000, 272.16000);
	CreateDynamicObject(987, 2700.41992, 697.59998, 10.24000,   0.00000, 0.00000, 221.83000);
	CreateDynamicObject(987, 2687.55005, 684.65002, 9.85000,   0.00000, 0.00000, 233.92999);
	CreateDynamicObject(987, 2680.37012, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2668.51001, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2656.58008, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2644.59009, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2632.62988, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2620.66992, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2608.65991, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2596.73999, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2584.83008, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2572.89990, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2561.00000, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2549.05005, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2537.12988, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2525.03003, 675.21997, 10.24000,   0.00000, 0.00000, 257.87000);
	CreateDynamicObject(987, 2522.48999, 663.59998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 651.65002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 639.67999, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 628.28003, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2760.23999, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2748.27002, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2736.34009, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2724.39990, 764.70001, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2705.14990, 764.71002, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2712.45996, 764.71002, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(5440, 2692.13989, 817.75000, -2.44000,   10.00000, 0.00000, 180.16000);
	CreateDynamicObject(4691, 2726.36011, 733.25000, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2735.39990, 605.67999, 2.49000,   -90.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2602.56006, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1290, 2566.84009, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2590.64990, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2614.75000, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2632.66992, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2656.66992, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2680.59009, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2543.70996, 651.77002, 15.93000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2543.67993, 631.75000, 15.93000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(10764, 2428.27002, 596.15997, 8.20000,   0.00000, 0.00000, 135.08000);
	CreateDynamicObject(10764, 2647.65991, 596.14001, 8.20000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(1226, 2714.12988, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2716.25000, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2744.45996, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2746.71997, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2726.23999, 696.46997, 12.73000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2734.45996, 696.59003, 17.49000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2734.52002, 696.51001, 12.73000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2726.30005, 696.57001, 17.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2733.65991, 739.71002, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2733.63989, 753.01001, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2759.79004, 737.46002, 16.14000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2705.34009, 741.28003, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2705.31006, 750.28003, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3928, 2708.57007, 700.25000, 18.80000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3928, 2751.90991, 700.10999, 18.80000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, 2541.04004, 627.46997, 18.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16368, 2541.05005, 627.52002, 29.39000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, 2753.57007, 616.19000, 10.22000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16368, 2753.58008, 616.28003, 20.97000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1572, 2726.65991, 703.37000, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2728.04004, 703.28003, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2732.39990, 703.28998, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2733.60010, 703.34003, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1215, 2727.65991, 697.78998, 10.76000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2732.84009, 697.78998, 10.76000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2708.42993, 700.20001, 18.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2751.78003, 700.01001, 18.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2792, 2745.44995, 690.12000, 16.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2793, 2715.07007, 690.09998, 16.42000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2718.46997, 671.09998, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2716.36011, 661.53998, 9.48000,   0.00000, 0.00000, 244.52000);
	CreateDynamicObject(3578, 2714.20996, 651.90997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2714.23999, 641.77002, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2718.47998, 681.38000, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2743.14990, 681.40997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2743.12012, 671.21997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2740.87012, 661.59998, 9.48000,   0.00000, 0.00000, 244.52000);
	CreateDynamicObject(3578, 2734.53003, 654.22998, 9.48000,   0.00000, 0.00000, 214.61000);
	CreateDynamicObject(3578, 2725.52002, 650.03003, 9.48000,   0.00000, 0.00000, 195.28000);
	CreateDynamicObject(3578, 2717.40991, 644.91998, 9.48000,   0.00000, 0.00000, 229.86000);
	CreateDynamicObject(3578, 2709.25000, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2699.05005, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2688.97998, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2678.83008, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2668.65991, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2658.92993, 639.46002, 9.48000,   0.00000, 0.00000, 20.21000);
	CreateDynamicObject(3578, 2649.30005, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2638.93994, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2628.73999, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2608.46997, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2618.65991, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2598.15991, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2680.82007, 764.78998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 752.83002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 740.88000, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 729.03998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 717.06000, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2759.89990, 687.60999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2759.81006, 675.73999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 663.23999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 651.21002, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 639.15002, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 627.13000, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 615.63000, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2741.72998, 615.96002, 10.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2738.72998, 615.96002, 10.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2680.69995, 687.21002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(4639, 2681.96997, 701.06000, 11.95000,   0.00000, 0.00000, 91.84000);
	CreateDynamicObject(4639, 2694.53003, 763.57001, 11.83000,   0.00000, 0.00000, 0.57000);
	CreateDynamicObject(1332, 2711.30005, 724.85999, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1332, 2709.11011, 724.79999, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1332, 2706.93994, 724.77002, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16095, 2720.44995, 712.76001, 18.70000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(16095, 2745.97998, 712.79999, 18.70000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3787, 2722.95996, 693.66998, 10.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3787, 2722.96997, 692.38000, 10.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3787, 2722.95996, 692.83002, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1424, 2688.45996, 686.20001, 10.75000,   0.00000, 0.00000, 52.42000);
	CreateDynamicObject(1424, 2690.34009, 688.41998, 10.75000,   0.00000, 0.00000, 49.25000);
	CreateDynamicObject(8355, 2466.76001, 596.13000, 11.45000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8355, 2605.04004, 596.09998, 11.45000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2407.62012, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2427.60010, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2447.56006, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2467.55005, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2487.46997, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2507.44995, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2527.31006, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2547.20996, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2567.11011, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2587.02002, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2606.91992, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2626.77002, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2646.71997, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2666.67993, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2686.57007, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2706.36011, 578.90997, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2726.28003, 578.90002, 2.43000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2735.43994, 586.09998, 2.49000,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2735.35010, 605.89001, 2.49000,   1800.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2683.12012, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2701.02002, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2718.86011, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2729.17993, 586.12000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2683.12012, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2701.04004, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2718.96997, 606.09003, 8.68000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2729.14990, 605.94000, 8.68000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8569, 2729.12988, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2710.29004, 613.34003, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2690.44995, 613.34003, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2670.41992, 613.34003, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2711.25000, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2693.56006, 625.60999, 7.74000,   0.00000, 5.50000, 90.00000);
	CreateDynamicObject(8569, 2650.55005, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2630.59009, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2610.67993, 613.34998, 2.43000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2590.59009, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2570.73999, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2550.83008, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2530.92993, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2511.08008, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2491.14990, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2471.27002, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2451.26001, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2431.48999, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2411.60010, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2407.53003, 613.34998, 2.49000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(8569, 2400.31006, 586.12000, 2.49000,   -90.00000, -90.00000, 0.00000);
	CreateDynamicObject(8569, 2531.20996, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2531.20996, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2531.20996, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 626.22998, 7.46000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2549.05005, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2566.86011, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2584.63989, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2602.53003, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2620.37988, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2638.16992, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2656.03003, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2691.84009, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2709.76001, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2727.67993, 625.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2550.45996, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2568.18994, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2585.98999, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2603.89990, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2621.73999, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2639.64990, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2657.56006, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2675.44995, 645.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2693.37012, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2711.18994, 645.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2729.08008, 645.48999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8034, 2730.25000, 707.45001, 14.88000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2548.98999, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(10763, 2542.47998, 650.53003, 33.85000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(8569, 2566.85010, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2584.72998, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2620.38989, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2638.16992, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2656.10010, 665.44000, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2674.00000, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2691.89990, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2709.77002, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2727.68994, 665.47998, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.58008, 665.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2673.90991, 625.53003, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.56006, 645.46002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2745.53003, 625.46997, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2710.38989, 684.33002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.37012, 684.38000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.37012, 684.37000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.43994, 738.14001, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.40991, 702.28003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2749.25000, 703.34998, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2750.39990, 738.13000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.39990, 756.03003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.42993, 756.04999, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.41992, 756.03003, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.47998, 756.04999, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2708.62012, 713.65997, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2690.43994, 684.38000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.46997, 720.21002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2690.47998, 702.31000, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.42993, 738.15002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.43994, 738.15002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.44995, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2730.43994, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2750.39990, 720.40002, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2710.45996, 702.26001, 7.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8569, 2751.39990, 703.27002, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(5440, 2626.85010, 696.83002, 6.34000,   0.45000, 0.00000, 272.16000);
	CreateDynamicObject(987, 2700.41992, 697.59998, 10.24000,   0.00000, 0.00000, 221.83000);
	CreateDynamicObject(987, 2687.55005, 684.65002, 9.85000,   0.00000, 0.00000, 233.92999);
	CreateDynamicObject(987, 2680.37012, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2668.51001, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2656.58008, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2644.59009, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2632.62988, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2620.66992, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2608.65991, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2596.73999, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2584.83008, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2572.89990, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2561.00000, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2549.05005, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2537.12988, 675.10999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2525.03003, 675.21997, 10.24000,   0.00000, 0.00000, 257.87000);
	CreateDynamicObject(987, 2522.48999, 663.59998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 651.65002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 639.67999, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2522.48999, 628.28003, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2760.23999, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2748.27002, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2736.34009, 764.67999, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2724.39990, 764.70001, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2705.14990, 764.71002, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(987, 2712.45996, 764.71002, 10.24000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(5440, 2692.13989, 817.75000, -2.44000,   10.00000, 0.00000, 180.16000);
	CreateDynamicObject(4691, 2726.36011, 733.25000, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8569, 2735.39990, 605.67999, 2.49000,   -90.00000, 0.00000, -90.00000);
	CreateDynamicObject(8569, 2602.56006, 665.42999, 7.46000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1290, 2566.84009, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2590.64990, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2614.75000, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2632.66992, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2656.66992, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2680.59009, 673.72998, 15.93000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2543.70996, 651.77002, 15.93000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2543.67993, 631.75000, 15.93000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(10764, 2428.27002, 596.15997, 8.20000,   0.00000, 0.00000, 135.08000);
	CreateDynamicObject(10764, 2647.65991, 596.14001, 8.20000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(1226, 2714.12988, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2716.25000, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2744.45996, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2746.71997, 689.03003, 15.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2726.23999, 696.46997, 12.73000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2734.45996, 696.59003, 17.49000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2734.52002, 696.51001, 12.73000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2726.30005, 696.57001, 17.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2733.65991, 739.71002, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2733.63989, 753.01001, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2759.79004, 737.46002, 16.14000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1290, 2705.34009, 741.28003, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1290, 2705.31006, 750.28003, 16.14000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3928, 2708.57007, 700.25000, 18.80000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3928, 2751.90991, 700.10999, 18.80000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, 2541.04004, 627.46997, 18.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16368, 2541.05005, 627.52002, 29.39000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, 2753.57007, 616.19000, 10.22000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16368, 2753.58008, 616.28003, 20.97000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1572, 2726.65991, 703.37000, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2728.04004, 703.28003, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2732.39990, 703.28998, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1572, 2733.60010, 703.34003, 10.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1215, 2727.65991, 697.78998, 10.76000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2732.84009, 697.78998, 10.76000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2708.42993, 700.20001, 18.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2751.78003, 700.01001, 18.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2792, 2745.44995, 690.12000, 16.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2793, 2715.07007, 690.09998, 16.42000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2718.46997, 671.09998, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2716.36011, 661.53998, 9.48000,   0.00000, 0.00000, 244.52000);
	CreateDynamicObject(3578, 2714.20996, 651.90997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2714.23999, 641.77002, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2718.47998, 681.38000, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2743.14990, 681.40997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2743.12012, 671.21997, 9.48000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3578, 2740.87012, 661.59998, 9.48000,   0.00000, 0.00000, 244.52000);
	CreateDynamicObject(3578, 2734.53003, 654.22998, 9.48000,   0.00000, 0.00000, 214.61000);
	CreateDynamicObject(3578, 2725.52002, 650.03003, 9.48000,   0.00000, 0.00000, 195.28000);
	CreateDynamicObject(3578, 2717.40991, 644.91998, 9.48000,   0.00000, 0.00000, 229.86000);
	CreateDynamicObject(3578, 2709.25000, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2699.05005, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2688.97998, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2678.83008, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2668.65991, 641.21002, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2658.92993, 639.46002, 9.48000,   0.00000, 0.00000, 20.21000);
	CreateDynamicObject(3578, 2649.30005, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2638.93994, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2628.73999, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2608.46997, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2618.65991, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3578, 2598.15991, 637.76001, 9.48000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2680.82007, 764.78998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 752.83002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 740.88000, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 729.03998, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2680.82007, 717.06000, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(987, 2759.89990, 687.60999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2759.81006, 675.73999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 663.23999, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 651.21002, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 639.15002, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 627.13000, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2754.14990, 615.63000, 10.24000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(987, 2741.72998, 615.96002, 10.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2738.72998, 615.96002, 10.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(987, 2680.69995, 687.21002, 10.24000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(4639, 2681.96997, 701.06000, 11.95000,   0.00000, 0.00000, 91.84000);
	CreateDynamicObject(4639, 2694.53003, 763.57001, 11.83000,   0.00000, 0.00000, 0.57000);
	CreateDynamicObject(1332, 2711.30005, 724.85999, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1332, 2709.11011, 724.79999, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1332, 2706.93994, 724.77002, 11.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16095, 2720.44995, 712.76001, 18.70000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(16095, 2745.97998, 712.79999, 18.70000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3787, 2722.95996, 693.66998, 10.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3787, 2722.96997, 692.38000, 10.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3787, 2722.95996, 692.83002, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1424, 2688.45996, 686.20001, 10.75000,   0.00000, 0.00000, 52.42000);
	CreateDynamicObject(1424, 2690.34009, 688.41998, 10.75000,   0.00000, 0.00000, 49.25000);
	CreateDynamicObject(7979, 2410.14624, 596.30347, 14.49774,   0.00000, 0.00000, 90.02330);
	CreateDynamicObject(8253, 2561.29224, 660.72516, 13.66799,   0.00000, 0.00000, 269.59094);
	//---------------BLEW'S AIRPORT - Stoneland International ---------------- [FINISH]
	//---------------NODROZ'S AIRPORT - Stoneland International ---------------- [START]
	CreateDynamicObject(8947,1110.55000000,539.91000000,15.63000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1123.60000000,533.29000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1136.71000000,526.62000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1149.80000000,519.93000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1162.85000000,513.28000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1175.97000000,506.54000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1189.03000000,499.93000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1110.49000000,539.96000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1202.09000000,493.22000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1215.12000000,486.54000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1228.25000000,479.85000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1241.35000000,473.16000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4642,1109.65000000,544.69000000,17.68000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4642,1107.90000000,541.24000000,17.68000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4642,1106.00000000,537.74000000,17.68000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1124.22000000,562.05000000,19.21000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1134.04000000,557.05000000,19.25000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1143.85000000,552.07000000,19.26000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1155.25000000,546.44000000,19.22000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1165.06000000,541.48000000,19.23000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1174.85000000,536.50000000,19.21000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1184.67000000,531.50000000,19.21000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1194.49000000,526.52000000,19.21000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1204.31000000,521.51000000,19.15000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1214.11000000,516.53000000,19.14000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1223.90000000,511.59000000,19.13000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1233.72000000,506.60000000,19.15000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1243.54000000,501.59000000,19.15000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1253.37000000,496.60000000,19.15000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1263.16000000,491.61000000,19.12000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1273.01000000,486.62000000,19.16000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1282.83000000,481.63000000,19.12000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1292.65000000,476.67000000,19.12000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1302.44000000,471.72000000,19.10000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1312.26000000,466.71000000,19.13000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1322.07000000,461.70000000,19.31000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1102.99000000,530.17000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1112.15000000,525.49000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1121.32000000,520.79000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1130.46000000,516.11000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1139.60000000,511.44000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1148.77000000,506.75000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1157.91000000,502.08000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1167.08000000,497.40000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1176.22000000,492.72000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1185.37000000,488.05000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1194.50000000,483.38000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1203.58000000,478.75000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1212.71000000,474.08000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1221.83000000,469.41000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1230.96000000,464.75000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1114.00000000,551.76000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1123.17000000,547.07000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1132.32000000,542.39000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1141.48000000,537.72000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1150.58000000,533.06000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1159.72000000,528.41000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1168.87000000,523.73000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1178.01000000,519.05000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1187.13000000,514.40000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1196.25000000,509.73000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1205.39000000,505.06000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1214.53000000,500.39000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1223.65000000,495.73000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1232.70000000,491.09000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1241.84000000,486.43000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1250.99000000,481.74000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1127.75000000,530.98000000,18.97000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1163.24000000,512.92000000,18.97000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1198.41000000,494.96000000,18.97000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1198.40000000,494.98000000,18.97000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1232.38000000,477.50000000,18.97000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1352,1061.82000000,534.93000000,18.54000000,0.00000000,0.00000000,-50.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1352,1103.48000000,582.38000000,17.86000000,0.00000000,0.00000000,80.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1113.90000000,565.49000000,19.21000000,0.00000000,0.00000000,-10.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1103.01000000,566.00000000,19.21000000,0.00000000,0.00000000,5.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1092.54000000,563.20000000,19.21000000,0.00000000,0.00000000,25.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1083.30000000,557.33000000,19.21000000,0.00000000,0.00000000,40.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1075.20000000,549.90000000,19.21000000,0.00000000,0.00000000,45.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1067.91000000,541.66000000,19.21000000,0.00000000,0.00000000,52.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1061.12000000,533.00000000,19.21000000,0.00000000,0.00000000,52.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1054.90000000,523.93000000,19.21000000,0.00000000,0.00000000,59.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1056.96000000,516.73000000,19.21000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1060.24000000,514.96000000,20.34000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1065.16000000,512.41000000,21.55000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1073.24000000,508.23000000,22.66000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1073.24000000,508.23000000,21.55000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1070.08000000,509.93000000,20.57000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1267.42000000,459.82000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1254.45000000,466.46000000,16.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1260.13000000,477.07000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1269.28000000,472.39000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1274.90000000,469.50000000,18.59000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1238.11000000,461.09000000,18.61000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1331.94000000,456.74000000,19.32000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1341.75000000,451.75000000,19.30000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1351.57000000,446.76000000,19.31000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1353.97000000,439.34000000,19.13000000,0.00000000,0.00000000,63.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1348.96000000,429.53000000,19.13000000,0.00000000,0.00000000,63.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1343.95000000,419.72000000,19.13000000,0.00000000,0.00000000,63.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3282,1338.95000000,409.95000000,19.13000000,0.00000000,0.00000000,63.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1286.85000000,454.90000000,16.22000000,0.50000000,0.00000000,63.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1284.01000000,464.86000000,18.55000000,0.00000000,0.50000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1250.34000000,468.41000000,18.97000000,0.00000000,0.00000000,153.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1349.05000000,456.19000000,-3.05000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1327.32000000,467.23000000,-3.02000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1339.83000000,442.98000000,-3.03000000,0.00000000,0.00000000,-24.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1342.20000000,442.76000000,-3.06000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1318.22000000,452.56000000,-3.04000000,0.00000000,0.00000000,-24.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1305.51000000,478.34000000,-3.03000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8947,1282.63000000,446.65000000,16.22000000,0.50000000,0.00000000,63.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1291.72000000,451.12000000,-3.03000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1304.16000000,444.79000000,-3.05000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8399,1261.70000000,356.75000000,13.95000000,0.00000000,0.00000000,-23.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8399,1245.68000000,363.68000000,13.95000000,0.00000000,0.00000000,-23.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8399,1272.08000000,380.75000000,13.95000000,0.00000000,0.00000000,-23.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8399,1277.45000000,384.67000000,13.94000000,0.00000000,0.00000000,-50.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8399,1240.28000000,366.03000000,13.94000000,0.00000000,0.00000000,-23.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(11474,1335.28000000,392.23000000,27.01000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1288.54000000,382.18000000,18.73000000,0.00000000,0.00000000,40.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1287.13000000,380.95000000,18.73000000,0.00000000,0.00000000,40.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1274.99000000,364.67000000,18.73000000,0.00000000,0.00000000,-113.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1257.97000000,350.36000000,18.73000000,0.00000000,0.00000000,-23.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1239.28000000,358.47000000,18.73000000,0.00000000,0.00000000,-23.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1233.70000000,371.76000000,18.73000000,0.00000000,0.00000000,-113.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1235.93000000,376.87000000,18.73000000,0.00000000,0.00000000,-113.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1252.36000000,381.31000000,18.73000000,0.00000000,0.00000000,-23.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8673,1265.54000000,386.44000000,18.73000000,0.00000000,0.00000000,-113.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3626,1234.42000000,362.26000000,16.25000000,90.00000000,990.00000000,66.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3626,1242.69000000,358.67000000,16.25000000,90.00000000,990.00000000,66.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3626,1250.95000000,355.06000000,16.25000000,90.00000000,990.00000000,66.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3626,1259.23000000,351.44000000,16.25000000,90.00000000,990.00000000,66.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3626,1263.55000000,349.56000000,16.25000000,90.00000000,990.00000000,66.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1277.20000000,454.64000000,18.55000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1286.34000000,449.96000000,18.56000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1295.47000000,445.31000000,18.56000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1286.52000000,445.99000000,18.56000000,0.00000000,0.00000000,110.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1304.63000000,440.64000000,18.56000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1313.75000000,435.98000000,18.56000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1322.92000000,431.29000000,18.56000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1289.52000000,452.43000000,18.56000000,0.00000000,0.00000000,20.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1299.13000000,455.90000000,18.56000000,0.00000000,0.00000000,20.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1306.22000000,458.46000000,18.56000000,0.00000000,0.00000000,20.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1318.16000000,437.84000000,18.56000000,0.00000000,0.00000000,20.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1327.74000000,441.28000000,18.56000000,0.00000000,0.00000000,20.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1289.99000000,436.36000000,18.56000000,0.00000000,0.00000000,110.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1329.95000000,424.60000000,18.56000000,0.00000000,0.00000000,120.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1049.58000000,517.28000000,23.91000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1294.88000000,476.38000000,22.67000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1306.72000000,470.34000000,22.67000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1356.87000000,444.29000000,22.67000000,0.00000000,0.00000000,4.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1316.69000000,465.20000000,22.67000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1325.31000000,460.64000000,22.67000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1333.03000000,456.65000000,22.67000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1340.57000000,452.80000000,22.67000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1348.52000000,448.72000000,22.55000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1351.26000000,432.85000000,22.67000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1346.44000000,423.14000000,22.67000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1339.18000000,408.84000000,22.67000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1260.97000000,377.94000000,22.55000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1241.96000000,386.10000000,22.55000000,0.00000000,0.00000000,63.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1297,1231.70000000,365.65000000,22.55000000,0.00000000,0.00000000,163.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9245,1289.48000000,399.64000000,31.12000000,0.00000000,0.00000000,-113.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1302.26000000,396.61000000,-3.04000000,0.00000000,0.00000000,-113.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1293.84000000,411.05000000,20.96000000,0.00000000,0.00000000,-114.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1295.63000000,415.06000000,20.96000000,0.00000000,0.00000000,-114.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1297.41000000,419.10000000,20.96000000,0.00000000,0.00000000,-114.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1299.23000000,423.15000000,20.97000000,0.00000000,0.00000000,-114.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1296.85000000,409.82000000,20.96000000,0.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1295.35000000,410.48000000,22.65000000,90.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1298.63000000,413.81000000,20.96000000,0.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1300.43000000,417.84000000,20.96000000,0.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1302.17000000,421.75000000,20.98000000,0.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1297.11000000,414.47000000,22.65000000,90.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1298.88000000,418.43000000,22.65000000,90.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1300.69000000,422.41000000,22.64000000,90.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1523,1299.97000000,424.87000000,19.29000000,0.00000000,0.00000000,-23.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1523,1302.85000000,423.71000000,19.29000000,0.00000000,0.00000000,157.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1296.85000000,409.86000000,20.96000000,0.00000000,0.00000000,-114.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1298.63000000,413.84000000,20.96000000,0.00000000,0.00000000,-114.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1300.41000000,417.85000000,20.96000000,0.00000000,0.00000000,-114.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1302.14000000,421.76000000,20.92000000,0.00000000,0.00000000,-114.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1299.23000000,423.13000000,21.02000000,0.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1297.43000000,419.13000000,20.96000000,0.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1295.67000000,415.12000000,20.96000000,0.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1293.91000000,411.19000000,20.96000000,0.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1300.65000000,422.39000000,22.63000000,270.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1298.88000000,418.43000000,22.65000000,270.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1297.11000000,414.47000000,22.65000000,270.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,1295.35000000,410.48000000,22.65000000,270.00000000,0.00000000,66.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(7388,1303.19000000,423.36000000,22.71000000,180.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(7388,1299.60000000,425.34000000,22.69000000,180.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2792,1298.09000000,425.55000000,21.90000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2793,1282.35000000,397.42000000,22.81000000,0.00000000,0.00000000,-113.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1311.69000000,433.08000000,18.56000000,0.00000000,0.00000000,110.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1281.95000000,431.96000000,-3.01000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1297.67000000,423.96000000,-3.02000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1260.11000000,443.05000000,-3.01000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1266.14000000,454.88000000,-3.02000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1247.27000000,456.42000000,18.61000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1247.57000000,456.28000000,18.61000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1265.09000000,443.95000000,18.56000000,0.00000000,0.00000000,110.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1268.55000000,434.40000000,18.57000000,0.00000000,0.00000000,110.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1271.99000000,424.87000000,18.57000000,0.00000000,0.00000000,110.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1275.30000000,415.70000000,18.57000000,0.00000000,0.00000000,110.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1276.76000000,421.37000000,-3.01000000,0.00000000,0.00000000,40.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1292.17000000,414.20000000,-3.03000000,0.00000000,0.00000000,60.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1315.38000000,401.03000000,-1.46000000,10.00000000,0.00000000,60.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1098.69000000,532.44000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1107.64000000,527.85000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1116.71000000,523.18000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1125.91000000,518.48000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1135.10000000,513.83000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1144.18000000,509.13000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1153.24000000,504.53000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1162.47000000,499.81000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1171.65000000,495.10000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1180.76000000,490.45000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1189.97000000,485.77000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1198.97000000,481.14000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1208.04000000,476.53000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1217.26000000,471.85000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1226.37000000,467.18000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1233.44000000,463.55000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1242.67000000,458.74000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1252.15000000,453.96000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1109.63000000,553.95000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1118.57000000,549.40000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1127.69000000,544.72000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1136.78000000,540.11000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1146.01000000,535.38000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1154.98000000,530.80000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1173.36000000,521.39000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1164.27000000,526.06000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1182.53000000,516.67000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1191.65000000,512.07000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1200.82000000,507.36000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1209.90000000,502.69000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1219.06000000,498.03000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1228.04000000,493.41000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1237.39000000,488.67000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1246.47000000,484.02000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1255.45000000,479.42000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1264.65000000,474.72000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1279.48000000,467.19000000,19.38000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1095.33000000,547.29000000,19.19000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1089.48000000,550.20000000,19.21000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1084.35000000,552.77000000,19.21000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1062.29000000,564.10000000,19.22000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1057.07000000,566.82000000,19.23000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1061.69000000,576.23000000,18.35000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1052.77000000,558.38000000,19.24000000,0.00000000,0.00000000,-27.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4594,1297.18000000,405.25000000,-3.04000000,0.00000000,0.00000000,60.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1569,1293.03000000,408.97000000,19.30000000,0.00000000,0.00000000,-23.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1569,1295.72000000,407.83000000,19.30000000,0.00000000,0.00000000,157.00000000, .streamdistance = 10000.0); //
	//---------------NODROZ'S AIRPORT - Stoneland International ---------------- [FINISH]
	//---------------Andrew's Airport - Bayside ----------------------------------- [START]
	CreateDynamicObject(10767,-2260.20898438,2033.62500000,-10.67782116,0.00000000,0.00000000,45.00000000); //
	CreateDynamicObject(10766,-2260.05468750,2161.17285156,1.99409997,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(8240,-2198.73242188,2154.99023438,17.43020058,0.00000000,0.00000000,90.00000000); //
	CreateDynamicObject(9241,-2260.03222656,2215.27148438,5.79470015,0.00000000,0.00000000,90.00000000); //
	CreateDynamicObject(9241,-2260.03222656,2249.10473633,5.79470015,0.00000000,0.00000000,90.00000000); //
	CreateDynamicObject(8253,-2215.62915039,2089.81542969,7.80130005,0.00000000,0.00000000,180.00000000); //
	CreateDynamicObject(10767,-2260.20898438,1893.20410156,-10.67899990,0.00000000,0.00000000,45.00000000); //
	CreateDynamicObject(8136,-2269.24658203,1847.84423828,-0.95169997,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(8136,-2250.43066406,1847.84423828,-0.95169997,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(8136,-2183.88964844,2157.19140625,-0.79650003,0.00000000,0.00000000,179.99450684); //
	CreateDynamicObject(8136,-2218.50219727,2157.19213867,-0.79890001,0.00000000,0.00000000,180.00000000); //
	CreateDynamicObject(8136,-2303.22070312,2153.21972656,-0.75599998,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(8136,-2183.88964844,2078.28320312,-0.79650003,0.00000000,0.00000000,179.99450684); //
	CreateDynamicObject(8136,-2218.50219727,2078.28369141,-0.79890001,0.00000000,0.00000000,180.00000000); //
	CreateDynamicObject(8253,-2181.56640625,2089.21997070,7.80130005,0.00000000,0.00000000,270.00000000); //
	CreateDynamicObject(8136,-2218.50219727,1999.37536621,-0.79890001,0.00000000,0.00000000,180.00000000); //
	CreateDynamicObject(8136,-2183.88964844,1999.37500000,-0.79650003,0.00000000,0.00000000,179.99450684); //
	CreateDynamicObject(11293,-2176.92456055,2011.18823242,9.70629978,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(5299,-2176.23632812,2026.84436035,3.80749989,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(3287,-2191.64868164,2031.58178711,8.59449959,0.00000000,0.00000000,90.00000000); //
	CreateDynamicObject(18260,-2188.81542969,2025.35522461,5.44549990,0.00000000,0.00000000,180.00000000); //
	CreateDynamicObject(16326,-2181.30590820,1979.79174805,3.87590003,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(1498,-2184.06665039,1976.19775391,3.85719991,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(11631,-2182.19873047,1984.83557129,7.72090006,0.00000000,0.00000000,270.00000000); //
	CreateDynamicObject(1671,-2183.24487305,1984.25256348,6.91429996,0.00000000,0.00000000,102.00000000); //
	CreateDynamicObject(1999,-2185.06152344,1983.25537109,6.48530006,0.00000000,0.00000000,180.00000000); //
	CreateDynamicObject(1671,-2185.77514648,1984.34802246,6.91429996,0.00000000,0.00000000,352.00000000); //
	CreateDynamicObject(2267,-2183.79028320,1982.51074219,8.29020023,0.00000000,0.00000000,180.00000000); //
	CreateDynamicObject(2007,-2184.17382812,1986.67260742,6.46610022,0.00000000,0.00000000,0.00000000); //
	CreateDynamicObject(2606,-2189.49438477,1984.77197266,8.89309978,30.00000000,0.00000000,90.00000000); //
	//---------------Andrew's Airport - Bayside ----------------------------------- [FINISH]
	//---------------Blew's Airport - AIRLINE BASE @ LV. ----------------------- [START]
	CreateDynamicObject(9947,1322.92000000,786.61000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1322.95000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1301.47000000,786.61000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1301.50000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1280.03000000,786.59000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1258.51000000,786.59000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1237.07000000,786.59000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1215.58000000,786.59000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1194.05000000,786.59000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1172.59000000,786.59000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1279.95000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1258.45000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1237.03000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1215.60000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1194.12000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1172.59000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1151.24000000,786.59000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1151.24000000,769.75000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1310.45000000,742.35000000,-2.60000000,-1.29000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1310.47000000,721.05000000,-2.59000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1310.47000000,699.57000000,-2.59000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1310.46000000,677.99000000,-2.59000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1285.08000000,678.04000000,-2.59000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1285.07000000,721.07000000,-2.60000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1285.09000000,742.35000000,-2.60000000,-1.29000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1259.38000000,697.54000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1259.54000000,718.91000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1259.50000000,740.39000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1233.93000000,740.38000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1233.95000000,718.95000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1233.95000000,697.54000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1233.92000000,676.24000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1259.49000000,676.27000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1285.00000000,676.31000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1310.29000000,676.30000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1208.54000000,740.38000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1183.07000000,740.40000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1208.54000000,718.84000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1208.54000000,697.41000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1183.08000000,718.88000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1183.07000000,697.37000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1129.80000000,786.58000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1129.77000000,769.76000000,-6.37000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8034,1136.44000000,686.90000000,15.34000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1208.54000000,697.41000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1128.84000000,753.83000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,775.22000000,9.18000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1099.31000000,786.94000000,9.18000000,0.00000000,0.00000000,259.23000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,763.28000000,9.18000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,751.32000000,9.18000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,739.37000000,9.18000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,727.48000000,9.18000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,715.50000000,9.18000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,703.50000000,9.18000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,691.59000000,8.98000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,679.64000000,8.68000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1097.09000000,669.10000000,8.83000000,0.00000000,30.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1106.02000000,796.75000000,9.18000000,0.00000000,0.00000000,235.96000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1117.43000000,800.07000000,9.18000000,0.00000000,0.00000000,196.54000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1128.79000000,803.63000000,9.18000000,0.00000000,0.00000000,197.42000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1140.40000000,806.46000000,9.18000000,0.00000000,0.00000000,193.74000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1152.31000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1164.23000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1176.11000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1188.04000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1200.03000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1211.99000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1223.81000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1235.70000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1247.55000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1259.43000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1271.20000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1283.13000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1294.95000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1306.88000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1318.94000000,806.45000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1329.09000000,800.31000000,9.18000000,0.00000000,0.00000000,149.28000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1340.96000000,800.32000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1352.69000000,798.05000000,9.18000000,0.00000000,0.00000000,169.04000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1364.65000000,797.94000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1376.61000000,797.94000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1388.56000000,797.94000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1400.44000000,797.94000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1396.84000000,636.33000000,9.61000000,0.00000000,0.00000000,90.76000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1396.84000000,626.21000000,6.32000000,0.00000000,-15.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1396.84000000,614.73000000,3.06000000,0.00000000,-18.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(10832,1391.75000000,643.82000000,11.33000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(5170,1386.44000000,694.46000000,12.43000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(5170,1366.12000000,755.46000000,12.43000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(5170,1386.44000000,756.30000000,12.43000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(5170,1366.12000000,694.42000000,12.43000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4639,1358.36000000,779.93000000,11.52000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4639,1358.41000000,766.46000000,11.52000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4639,1358.29000000,706.47000000,11.52000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4639,1358.50000000,719.91000000,11.52000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,1343.58000000,705.93000000,-6.93000000,0.00000000,3.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1294,1339.11000000,717.07000000,14.27000000,356.86000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,788.21000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,776.16000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,764.25000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,752.30000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,740.48000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,728.52000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,716.64000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,687.21000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,675.29000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1331.68000000,663.44000000,9.18000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1336.61000000,652.59000000,9.18000000,0.00000000,0.00000000,114.32000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1344.58000000,643.72000000,9.18000000,0.00000000,0.00000000,131.90000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1356.03000000,640.19000000,9.18000000,0.00000000,0.00000000,163.25000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1367.99000000,640.21000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1379.93000000,640.20000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(987,1391.89000000,640.22000000,9.18000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1128.09000000,779.92000000,9.74000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1168.91000000,779.92000000,9.74000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1209.29000000,779.92000000,9.74000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1249.93000000,779.92000000,9.74000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4597,1289.88000000,779.92000000,9.74000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8038,1131.22000000,718.03000000,4.77000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1285.24000000,699.53000000,-2.60000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16364,1241.66000000,648.45000000,2.19000000,0.00000000,0.00000000,89.69000000, .streamdistance = 10000.0); //
	CreateDynamicObject(10764,1291.93000000,780.07000000,6.96000000,0.00000000,0.00000000,315.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(10764,1217.27000000,780.07000000,6.96000000,0.00000000,0.00000000,315.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(10764,1152.01000000,780.10000000,6.96000000,0.00000000,0.00000000,315.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4574,1132.23000000,686.44000000,4.06000000,0.00000000,0.00000000,5.71000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16368,1132.23000000,686.79000000,32.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(717,1144.10000000,695.00000000,10.79000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1147.17000000,682.86000000,17.16000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1147.23000000,691.17000000,17.16000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(11081,1122.73000000,727.33000000,17.04000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1169.84000000,740.08000000,16.24000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,125.84000000,740.91000000,16.24000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1169.84000000,656.54000000,16.24000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1322.44000000,676.84000000,16.24000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1322.45000000,739.85000000,16.24000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8615,1249.42000000,655.11000000,4.84000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(8615,1255.44000000,655.11000000,8.89000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16782,1146.63000000,686.80000000,18.83000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1242.11000000,630.59000000,5.21000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1241.90000000,616.00000000,5.21000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1238.99000000,648.75000000,7.19000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1226,1242.62000000,648.85000000,7.19000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1208.45000000,676.24000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1157.54000000,676.24000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1131.98000000,676.24000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1131.98000000,697.37000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1157.50000000,697.37000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1157.52000000,718.88000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1131.98000000,718.88000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1157.52000000,740.40000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1131.98000000,740.40000000,-2.60000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3928,1140.54000000,732.02000000,10.66000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,1183.07000000,676.24000000,-2.59000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(717,1144.09000000,679.21000000,10.79000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1138.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1148.84000000,754.08000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1458.84000000,754.08000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1158.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1168.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1178.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1188.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1208.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1218.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1228.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1238.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1248.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1258.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1229.84000000,656.54000000,16.24000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1292.84000000,656.54000000,16.24000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(736,1198.84000000,754.21000000,20.41000000,356.86000000,0.00000000,-0.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1290,1229.84000000,740.08000000,16.24000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,138.47000000,797.01000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1113.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1123.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1133.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1143.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1153.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1163.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1173.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1183.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1193.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1203.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1213.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1223.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1233.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1243.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1253.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1263.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1273.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1283.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1293.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1303.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1313.60000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1318.06000000,796.83000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1113.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1123.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1133.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1143.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1153.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1163.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1173.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1183.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1193.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1203.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1213.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1223.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1233.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1243.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1253.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1263.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1273.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1283.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1293.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1303.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1313.57000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1318.06000000,762.86000000,9.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1108.27000000,767.75000000,9.41000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1108.27000000,779.99000000,9.41000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1108.27000000,791.97000000,9.41000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4639,1318.44000000,780.11000000,8.47000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4639,1318.44000000,790.11000000,8.47000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(4639,1318.44000000,770.11000000,8.47000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1323.36000000,767.75000000,9.41000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1323.36000000,777.75000000,9.41000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1323.36000000,791.94000000,9.41000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,1323.36000000,784.03000000,9.41000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1108.31000000,779.95000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1108.31000000,789.95000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1108.31000000,769.95000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1108.31000000,779.95000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1108.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1118.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1128.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1138.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1148.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1158.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1168.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1178.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1188.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1198.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1208.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1218.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1228.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1238.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1248.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1258.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1268.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1108.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1118.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1128.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1138.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1148.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1158.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1168.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1178.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1188.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1198.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1208.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1218.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1228.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1238.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1248.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1258.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1268.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1278.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1288.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1298.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1308.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1318.34000000,796.78000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1278.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1288.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1298.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1308.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1318.28000000,762.89000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1323.32000000,780.04000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1323.32000000,790.04000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,1323.32000000,770.04000000,10.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2797,1146.23000000,689.70000000,18.83000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1146.91000000,682.80000000,11.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,1146.73000000,690.91000000,11.15000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3928,1144.33000000,7239.79000000,10.66000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3928,1160.54000000,732.02000000,10.66000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //
	//---------------Blew's Airport - AIRLINE BASE @ LV. ----------------------- [FINISH]
	//---------------Bulftrik's Airport - Angel Pine --------------------------- [start]
	CreateDynamicObject(1337,-1795.29199219,-2957.10644531,-40.61191177,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(10766,-1861.09960938,-2883.39941406,5.19999981,0.00000000,0.00000000,233.74511719, .streamdistance = 10000.0); //
	CreateDynamicObject(10766,-1805.00000000,-2924.50000000,5.80000019,0.00000000,0.00000000,53.74511719, .streamdistance = 10000.0); //
	CreateDynamicObject(9241,-1730.09997559,-2920.30004883,9.10000038,0.00000000,0.00000000,323.99230957, .streamdistance = 10000.0); //
	CreateDynamicObject(8136,-1818.00000000,-2997.50000000,2.79999995,0.00000000,0.00000000,144.23950195, .streamdistance = 10000.0); //
	CreateDynamicObject(9241,-1759.59997559,-2899.10009766,9.10000038,0.00000000,0.00000000,323.99230957, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1631.00000000,-3016.89941406,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(10766,-1737.29980469,-2974.00000000,5.80000019,0.00000000,0.00000000,233.73962402, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1664.29980469,-3062.39941406,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1721.69995117,-3008.10009766,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1700.09997559,-2978.69995117,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1709.80004883,-2991.80004883,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1712.69995117,-2995.60009766,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1779.69995117,-2978.30004883,8.19999981,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1811.30004883,-2955.69995117,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3599,-1818.80004883,-3000.39990234,13.39999962,0.00000000,0.00000000,141.99829102, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1805.40002441,-3003.50000000,8.30000019,0.00000000,0.00000000,50.49865723, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1802.59997559,-3000.19995117,8.30000019,0.00000000,0.00000000,48.74633789, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1807.69995117,-3001.80004883,8.30000019,0.00000000,0.00000000,231.99829102, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1804.90002441,-2998.39990234,8.30000019,0.00000000,0.00000000,229.49328613, .streamdistance = 10000.0); //
	CreateDynamicObject(1523,-1801.19995117,-2998.60009766,7.40000010,0.00000000,0.00000000,137.99923706, .streamdistance = 10000.0); //
	CreateDynamicObject(1523,-1803.50000000,-2996.80004883,7.40000010,0.00000000,0.00000000,322.24829102, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1809.90002441,-3004.89990234,8.30000019,0.00000000,0.00000000,233.24523926, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1808.30004883,-3006.80004883,8.30000019,0.00000000,0.00000000,47.24670410, .streamdistance = 10000.0); //
	CreateDynamicObject(5020,-1804.19995117,-2999.89990234,10.00000000,0.00000000,90.00000000,319.99328613, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1781.19995117,-2980.10009766,8.19999981,0.00000000,0.00000000,53.99780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1783.59997559,-2983.39990234,8.19999981,0.00000000,0.00000000,53.99780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1786.00000000,-2986.69995117,8.19999981,0.00000000,0.00000000,53.99780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1788.40002441,-2990.00000000,8.19999981,0.00000000,0.00000000,53.99780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1790.80004883,-2993.30004883,8.19999981,0.00000000,0.00000000,53.99780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1793.19995117,-2996.60009766,8.19999981,0.00000000,0.00000000,54.74780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1795.59997559,-3000.00000000,8.19999981,0.00000000,0.00000000,54.24780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1798.00000000,-3003.30004883,8.19999981,0.00000000,0.00000000,53.99780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1800.40002441,-3006.60009766,8.19999981,0.00000000,0.00000000,53.99780273, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1803.69995117,-3008.80004883,8.00000000,0.00000000,0.00000000,15.24353027, .streamdistance = 10000.0); //
	CreateDynamicObject(8136,-1818.00000000,-2997.50000000,0.00000000,0.00000000,0.00000000,144.23950195, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1812.69995117,-2957.60009766,8.19999981,0.00000000,0.00000000,53.98681641, .streamdistance = 10000.0); //
	CreateDynamicObject(638,-1809.80004883,-3002.60009766,8.19999981,0.00000000,0.00000000,231.24572754, .streamdistance = 10000.0); //
	CreateDynamicObject(638,-1811.40002441,-3001.30004883,8.19999981,0.00000000,0.00000000,231.24572754, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,-1801.00000000,-2998.80004883,8.00000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2946,-1817.50000000,-2991.30004883,7.50000000,0.00000000,0.00000000,51.99829102, .streamdistance = 10000.0); //
	CreateDynamicObject(2946,-1820.00000000,-2989.30004883,7.50000000,0.00000000,0.00000000,230.99304199, .streamdistance = 10000.0); //
	CreateDynamicObject(638,-1816.30004883,-2990.50000000,8.19999981,0.00000000,0.00000000,138.49365234, .streamdistance = 10000.0); //
	CreateDynamicObject(638,-1819.30004883,-2988.00000000,8.19999981,0.00000000,0.00000000,138.48815918, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,-1815.00000000,-2989.10009766,8.00000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,-1818.09997559,-2986.69995117,7.90000010,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1878.00000000,-2835.89990234,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1911.69921875,-2881.79980469,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(5020,-1806.00000000,-3002.00000000,10.00000000,0.00000000,90.00000000,319.99877930, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1816.39941406,-2995.19921875,8.30000019,0.00000000,0.00000000,51.99279785, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1813.69921875,-2991.79980469,8.30000019,0.00000000,0.00000000,50.99279785, .streamdistance = 10000.0); //
	CreateDynamicObject(1523,-1812.40002441,-2990.19995117,7.40000010,0.00000000,0.00000000,322.24548340, .streamdistance = 10000.0); //
	CreateDynamicObject(1523,-1810.00000000,-2992.00000000,7.40000010,0.00000000,0.00000000,140.24548340, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1811.29980469,-2993.69921875,8.30000019,0.00000000,0.00000000,52.99279785, .streamdistance = 10000.0); //
	CreateDynamicObject(1649,-1814.00000000,-2997.09960938,8.30000019,0.00000000,0.00000000,50.24279785, .streamdistance = 10000.0); //
	CreateDynamicObject(5020,-1813.09997559,-2993.50000000,10.00000000,0.00000000,90.00000000,320.99877930, .streamdistance = 10000.0); //
	CreateDynamicObject(5020,-1816.90002441,-2998.19995117,10.00000000,0.00000000,90.00000000,320.99853516, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,-1803.59997559,-2996.30004883,8.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,-1809.40002441,-2991.80004883,8.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1215,-1812.40002441,-2989.69995117,8.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(638,-1814.00000000,-2999.30004883,8.19999981,0.00000000,0.00000000,231.24572754, .streamdistance = 10000.0); //
	CreateDynamicObject(638,-1813.00000000,-3000.00000000,8.19999981,0.00000000,0.00000000,231.24572754, .streamdistance = 10000.0); //
	CreateDynamicObject(8136,-1743.80004883,-2913.30004883,2.70000005,0.00000000,0.00000000,55.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1842.30004883,-2919.80004883,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1820.59960938,-2890.09960938,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1720.80004883,-2949.80004883,8.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1784.59997559,-2903.39990234,8.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1765.00000000,-2875.39941406,8.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1700.39941406,-2920.50000000,8.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1776.69995117,-2902.00000000,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1762.50000000,-2881.80004883,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1756.69995117,-2916.50000000,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1742.19921875,-2896.59960938,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1747.19995117,-2923.19995117,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1712.80004883,-2917.80004883,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1733.00000000,-2903.09960938,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1727.19995117,-2937.60009766,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1815.09997559,-2960.89990234,8.19999981,0.00000000,0.00000000,53.98681641, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1817.50000000,-2964.19995117,8.19999981,0.00000000,0.00000000,53.98681641, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1819.90002441,-2967.50000000,8.19999981,0.00000000,0.00000000,53.98681641, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1822.30004883,-2970.80004883,8.19999981,0.00000000,0.00000000,53.98681641, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1824.69995117,-2974.10009766,8.19999981,0.00000000,0.00000000,53.98681641, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1827.09997559,-2977.50000000,8.19999981,0.00000000,0.00000000,55.98681641, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1829.40002441,-2980.89990234,8.19999981,0.00000000,0.00000000,55.98632812, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1831.80004883,-2984.30004883,8.19999981,0.00000000,0.00000000,53.48632812, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1831.59997559,-2987.60009766,8.00000000,0.00000000,0.00000000,129.48144531, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1829.00000000,-2990.80004883,8.00000000,0.00000000,0.00000000,129.47937012, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1900.59997559,-2867.69995117,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1885.09997559,-2846.00000000,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1656.30004883,-3051.19995117,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1639.59997559,-3028.60009766,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1648.59997559,-3040.30004883,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1669.80004883,-2988.80004883,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1700.59960938,-3035.39941406,8.30000019,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2792,-1807.19995117,-3003.00000000,11.30000019,0.00000000,0.00000000,325.25000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2793,-1815.30004883,-2996.60009766,11.30000019,0.00000000,0.00000000,325.25000000, .streamdistance = 10000.0); //
	CreateDynamicObject(970,-1807.69995117,-3009.00000000,8.00000000,0.00000000,0.00000000,349.24353027, .streamdistance = 10000.0); //
	CreateDynamicObject(7096,-1777.30004883,-2985.00000000,6.00000000,0.00000000,0.00000000,54.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(17068,-1769.50000000,-2997.39990234,0.69999999,0.00000000,0.00000000,52.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(17068,-1770.09997559,-2998.19995117,0.69999999,0.00000000,0.00000000,231.99829102, .streamdistance = 10000.0); //
	//---------------Bulftrik's Airport - Angel Pine --------------------------- [finish]
	//---------------Bulftrik's Airport - Blueberry ---------------------------- [START]
	CreateDynamicObject(3998,-2.79980469,-36.79980469,-10.00000000,0.00000000,0.00000000,249.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,5.90000010,-12.89999962,-10.00000000,0.00000000,0.00000000,249.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-11.50000000,-60.70000076,-10.00000000,0.00000000,0.00000000,249.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-20.19921875,-84.59960938,-10.00000000,0.00000000,0.00000000,249.99389648, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-28.89941406,-108.50000000,-10.00000000,0.00000000,0.00000000,249.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-8.80000019,-115.80000305,-10.00000000,0.00000000,0.00000000,249.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,10.69999981,-122.90000153,-10.00000000,0.00000000,0.00000000,249.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-1.00000000,-91.39941406,-10.00000000,0.00000000,0.00000000,249.99389648, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,19.20000076,-98.90000153,-10.00000000,0.00000000,0.00000000,250.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,14.50000000,-20.00000000,2.50000000,0.00000000,0.00000000,70.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,5.00000000,-45.79999924,2.50000000,0.00000000,0.00000000,69.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-4.09999990,-70.19999695,2.50000000,0.00000000,0.00000000,69.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-15.69999981,-103.19999695,2.50000000,0.00000000,0.00000000,69.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,9.39999962,-0.69999999,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,3.40000010,-79.40000153,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,29.39941406,-7.89941406,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-4.00000000,-37.50000000,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-16.59960938,-72.29980469,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,15.89999962,-44.90000153,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1231,9.60000038,-133.89999390,6.00000000,0.00000000,0.00000000,340.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1231,1.89999998,-130.89999390,6.00000000,0.00000000,0.00000000,339.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(1231,19.00000000,-87.00000000,6.00000000,0.00000000,0.00000000,339.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(1231,17.10000038,-136.80000305,6.00000000,0.00000000,0.00000000,339.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(11451,25.29999924,-113.69999695,3.20000005,0.00000000,0.00000000,342.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(996,12.80000019,-106.59999847,4.00000000,0.00000000,0.00000000,340.75000000, .streamdistance = 10000.0); //
	CreateDynamicObject(996,14.30000019,-102.80000305,4.00000000,0.00000000,0.00000000,341.99890137, .streamdistance = 10000.0); //
	CreateDynamicObject(996,11.39999962,-110.40000153,4.00000000,0.00000000,0.00000000,340.74645996, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-1.10000002,-88.50000000,2.50000000,0.00000000,0.00000000,133.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,7.00000000,-94.00000000,2.50000000,0.00000000,0.00000000,157.99475098, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-4.40000010,-103.19999695,2.50000000,0.00000000,0.00000000,133.99475098, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,2.29999995,-110.19999695,2.50000000,0.00000000,0.00000000,133.99475098, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,6.59999990,-114.69999695,2.50000000,0.00000000,0.00000000,133.99475098, .streamdistance = 10000.0); //
	CreateDynamicObject(2792,21.29999924,-106.30000305,6.90000010,0.00000000,0.00000000,72.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2793,19.39999962,-111.80000305,6.90000010,0.00000000,0.00000000,72.25000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1231,-5.39941406,-128.19921875,6.00000000,0.00000000,0.00000000,339.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(1231,8.79980469,-83.19921875,6.00000000,0.00000000,0.00000000,339.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(1231,27.60000038,-90.00000000,6.00000000,0.00000000,0.00000000,339.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(1231,37.90000153,-93.50000000,6.00000000,0.00000000,0.00000000,339.99938965, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-37.50000000,-132.29980469,-10.00000000,0.00000000,0.00000000,249.99389648, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-25.59960938,-129.19921875,2.50000000,0.00000000,0.00000000,69.99389648, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-22.79999924,-151.00000000,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-14.09960938,-127.00000000,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-33.79980469,-119.59960938,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-42.69921875,-143.79980469,3.79999995,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,-17.60000038,-108.40000153,3.29999995,0.00000000,9.25000000,68.24157715, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,-13.80000019,-98.09999847,3.29999995,0.00000000,8.50000000,68.24157715, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,-27.39999962,-134.30000305,3.29999995,0.00000000,9.24499512,68.23608398, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,16.39999962,-14.89999962,3.29999995,0.00000000,9.24499512,71.48608398, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,-23.69921875,-124.09960938,3.29999995,0.00000000,9.24499512,68.23608398, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,12.00000000,-96.09999847,3.29999995,0.00000000,9.24499512,336.23608398, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,-2.19921875,-65.09960938,3.29999995,0.00000000,9.24499512,68.23608398, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,3.19921875,-50.89941406,3.29999995,0.00000000,9.23950195,71.48254395, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,6.89941406,-40.59960938,3.29999995,0.00000000,9.23950195,71.48254395, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,12.69921875,-24.89941406,3.29999995,0.00000000,9.23950195,71.48254395, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,-4.89941406,-84.59960938,3.29999995,0.00000000,9.23950195,316.23596191, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,10.39999962,-118.59999847,3.29999995,0.00000000,9.23950195,310.23107910, .streamdistance = 10000.0); //
	CreateDynamicObject(3526,-8.10000038,-99.40000153,3.29999995,0.00000000,9.23400879,316.22644043, .streamdistance = 10000.0); //
	//---------------Bulftrik's Airport - Blueberry ---------------------------- [END]
	//---------------Bulftrik's Airport - Seed Pickup @ FARM in LS somewhere --- [START]
	CreateDynamicObject(17055,-1099.59000000,-1609.14000000,77.19000000,0.00000000,0.00000000,272.97000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1057.51000000,-1607.23000000,75.71000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-991.09000000,-1577.20000000,75.71000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1024.52000000,-1575.96000000,75.71000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1096.81000000,-1574.81000000,75.71000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1024.02000000,-1605.83000000,75.71000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-991.59000000,-1605.65000000,75.71000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1057.99000000,-1574.58000000,75.71000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3577,-1105.35000000,-1625.12000000,75.94000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1096.05000000,-1615.49000000,75.70000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1077.28000000,-1607.36000000,75.70000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(18257,-1104.31000000,-1620.51000000,75.38000000,0.00000000,0.00000000,31.32000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1096.22000000,-1626.76000000,75.70000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-1079.12000000,-1626.80000000,75.70000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	//---------------Bulftrik's Airport - Seed Pickup @ FARM in LS somewhere --- [END]
	//---------------Bulftrik's Airport - Seed pickup @ Countryside in LS ------ [START]
	CreateDynamicObject(17063,-263.27000000,-2151.62000000,27.23000000,0.00000000,0.00000000,100.25000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3577,-264.05000000,-2147.75000000,28.66000000,0.00000000,0.00000000,112.18000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16601,-260.16000000,-2168.70000000,32.50000000,0.00000000,0.00000000,11.18000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16601,-262.30000000,-2161.46000000,32.50000000,0.00000000,0.00000000,11.18000000, .streamdistance = 10000.0); //
	CreateDynamicObject(18257,-257.75000000,-2153.60000000,25.69000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(703,-230.18000000,-2210.65000000,28.08000000,356.86000000,0.00000000,3.14000000, .streamdistance = 10000.0); //
	CreateDynamicObject(703,-243.09000000,-2159.58000000,28.08000000,356.86000000,0.00000000,3.14000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1278,-247.70000000,-2226.31000000,27.63000000,0.00000000,0.00000000,264.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1278,-301.54000000,-2143.52000000,28.68000000,0.00000000,0.00000000,55.65000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1278,-254.58000000,-2176.39000000,27.63000000,0.00000000,0.00000000,288.22000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1278,-246.56000000,-2204.72000000,27.63000000,0.00000000,0.00000000,276.88000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1278,-268.80000000,-2143.00000000,27.63000000,0.00000000,0.00000000,318.24000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-271.88000000,-2161.03000000,27.52000000,0.00000000,0.00000000,1.55000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-282.95000000,-2163.24000000,27.41000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-263.47000000,-2189.10000000,27.82000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-268.00000000,-2174.67000000,27.82000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-258.62000000,-2205.40000000,27.82000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-268.84000000,-2210.18000000,27.51000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-275.04000000,-2192.25000000,27.60000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3666,-279.27000000,-2177.29000000,27.51000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3276,-296.67000000,-2159.07000000,28.32000000,3.14000000,0.00000000,291.97000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3276,-292.39000000,-2169.58000000,28.32000000,3.14000000,0.00000000,291.97000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3276,-288.01000000,-2180.10000000,28.32000000,3.14000000,0.00000000,293.54000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3276,-283.44000000,-2190.53000000,28.32000000,3.14000000,0.00000000,293.54000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3276,-278.65000000,-2200.80000000,28.32000000,3.14000000,0.00000000,297.12000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3276,-273.48000000,-2210.90000000,28.32000000,3.14000000,0.00000000,297.12000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3276,-263.01000000,-2231.47000000,28.32000000,3.14000000,0.00000000,296.24000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3276,-268.28000000,-2221.14000000,28.32000000,3.14000000,0.00000000,297.12000000, .streamdistance = 10000.0); //
	//---------------Bulftrik's Airport - Seed pickup @ Countryside in LS ------ [END]
	//---------------War ship - Gamer_Z's -------------------------------------- [START]
	CreateDynamicObject(10771,-2972.07055600,-2615.47973600,1.79999900,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(10771,-2953.95043900,-2609.37280200,1.79949900,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(10771,-2940.64013600,-2665.97753900,1.79799900,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(10771,-2936.06250000,-2603.27832000,1.79785000,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(10771,-2916.45043900,-2657.84082000,1.79680000,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(10771,-2916.70043900,-2695.84350500,1.79575000,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(10770,-2978.10791000,-2620.93652300,34.87153600,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(11237,-2978.25463800,-2621.21508700,34.83911800,0.00000000,0.00000000,-70.47375400,.streamdistance=10000.0); //
	CreateDynamicObject(10772,-2971.76586900,-2617.12255800,13.62500400,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(10772,-2935.61425700,-2604.80664000,13.59630200,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(1682,-2966.67382800,-2649.54296800,22.74607800,0.00000000,0.00000000,-120.32108300,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2951.36254800,-2714.92822200,13.67754400,0.00000000,0.00000000,232.04801900,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2940.51953100,-2722.53662100,13.63247800,0.00000000,0.00000000,257.83090200,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2931.73950100,-2731.54760700,13.65748000,0.00000000,0.00000000,200.24868700,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2919.92895500,-2765.67333900,13.65254400,0.00000000,0.00000000,257.83090200,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2909.06152300,-2772.94482400,13.65748000,0.00000000,0.00000000,257.83090200,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2896.08447200,-2794.75683500,13.65254400,0.00000000,0.00000000,257.83090200,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2880.70263600,-2801.26171800,13.65748000,0.00000000,0.00000000,291.34863200,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2872.56274400,-2787.71582000,13.65936500,0.00000000,0.00000000,337.75781200,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2876.73583900,-2761.83764600,13.65748000,0.00000000,0.00000000,337.75781200,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2872.45874000,-2749.61083900,13.65936500,0.00000000,0.00000000,337.75781200,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2884.06152300,-2715.43676700,13.65936500,0.00000000,0.00000000,19.87006100,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2899.13378900,-2710.50610300,13.65936500,0.00000000,0.00000000,-70.37073500,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2923.21435500,-2717.67041000,13.65748000,0.00000000,0.00000000,-70.37073500,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-3018.76660100,-2516.21508700,13.65748000,0.00000000,0.00000000,152.22354100,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2997.21191400,-2509.09619100,13.63436600,0.00000000,0.00000000,113.54866000,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2979.82592700,-2503.02661100,13.63436600,0.00000000,0.00000000,113.54866000,.streamdistance=10000.0); //
	CreateDynamicObject(3526,-2959.28100500,-2496.01391600,13.63436600,0.00000000,0.00000000,67.13907600,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2885.00537100,-2801.03100500,13.14950400,0.00000000,0.00000000,154.69877600,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2878.04736300,-2799.17797800,13.14950400,0.00000000,0.00000000,250.09658800,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2876.06054600,-2750.72412100,13.15139100,0.00000000,0.00000000,250.09658800,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2916.12402300,-2764.37084900,13.14457100,0.00000000,0.00000000,154.69877600,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2974.61914000,-2622.84399400,28.88344500,0.00000000,0.00000000,250.09658800,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2980.18920800,-2624.45385700,28.88619600,0.00000000,0.00000000,146.10435400,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2981.70776300,-2610.39184500,24.57191600,0.00000000,0.00000000,67.89543900,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2977.34082000,-2502.88720700,13.07639300,0.00000000,0.00000000,-30.08028400,.streamdistance=10000.0); //
	CreateDynamicObject(3267,-2999.59497000,-2510.44604400,13.02450800,0.00000000,0.00000000,53.28501800,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2996.64379800,-2524.88037100,11.46798400,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2999.71289000,-2515.26635700,11.46549800,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2974.01562500,-2506.54785100,11.46549800,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2971.23730400,-2516.23876900,11.46549800,0.00000000,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2944.12890600,-2543.79418900,7.80154000,0.00000000,85.08417500,18.04817000,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2955.15307600,-2510.56787100,1.87556000,0.00000000,89.38135500,-162.43376100,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2971.79003900,-2509.54077100,-4.35249700,0.00000000,0.85943500,-70.47375400,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-3001.60546800,-2519.66186500,-4.35964400,0.00000000,0.85943500,-72.19262600,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2968.09838800,-2528.36303700,1.95005900,0.00000000,89.38135500,-250.09654200,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2970.25415000,-2520.93090800,-4.49085900,0.00000000,0.85943500,-70.47375400,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2998.11083900,-2530.56396400,-4.52003900,0.00000000,0.85943500,-72.19262600,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2994.96704100,-2537.25634700,2.86475700,0.00000000,89.38135500,-250.09654200,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-3012.61157200,-2530.72045800,3.22850600,0.00000000,89.38135500,-339.47714200,.streamdistance=10000.0); //
	CreateDynamicObject(4022,-2973.34130800,-2645.25097600,7.31990000,88.52191900,0.00000000,-71.33319000,.streamdistance=10000.0); //
	CreateDynamicObject(11472,-2971.70092700,-2624.89404200,13.86437200,0.00000000,0.00000000,18.90760800,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2921.80468700,-2604.37304600,6.05446300,0.00000000,95.39741500,18.04817000,.streamdistance=10000.0); //
	CreateDynamicObject(4199,-2895.93432600,-2683.56787100,4.91426100,0.00000000,95.39741500,18.04817000,.streamdistance=10000.0); //
	CreateDynamicObject(3277,-2979.01513600,-2505.87475500,-0.21383500,264.70690900,0.00000000,19.76704400,.streamdistance=10000.0); //
	CreateDynamicObject(3277,-2979.47900300,-2504.60717700,3.24031400,220.87585400,3.43774600,23.20479000,.streamdistance=10000.0); //
	CreateDynamicObject(3277,-2996.88574200,-2512.17236300,0.41834300,264.70690900,0.00000000,19.76704400,.streamdistance=10000.0); //
	CreateDynamicObject(3277,-2997.36914000,-2510.67480400,3.41604400,220.87585400,3.43774600,23.20479000,.streamdistance=10000.0); //
	CreateDynamicObject(3455,-2984.77856400,-2521.22119100,9.83506000,179.62261900,0.85943500,18.90760800,.streamdistance=10000.0); //
	//---------------War ship - Gamer_Z's -------------------------------------- [END]
	//---------------LS Helipad near mayor house by Policajac ------------------ [START] // Verona Beach Helipad
    CreateDynamicObject(9241,986.50000000,-2155.60009766,13.60000038,0.00000000,0.00000000,356.00000000,.streamdistance = 10000.0); //object(copbits_sfn)(2)
	CreateDynamicObject(3881,995.70001221,-2178.80004883,13.89999962,0.00000000,0.00000000,356.25000000,.streamdistance = 10000.0); //object(airsecbooth_sfse)(1)
	CreateDynamicObject(3876,1002.20001221,-2141.30004883,-20.00000000,0.00000000,0.00000000,169.00000000,.streamdistance = 10000.0); //object(sf_roofmast)(3)
	CreateDynamicObject(3876,999.50000000,-2172.50000000,-20.00000000,0.00000000,0.00000000,189.00000000,.streamdistance = 10000.0); //object(sf_roofmast)(5)
	CreateDynamicObject(3666,976.59997559,-2143.89990234,15.10000038,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(1)
	CreateDynamicObject(3666,975.20001221,-2165.89990234,15.10000038,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(2)
	CreateDynamicObject(3666,998.79998779,-2144.80004883,15.10000038,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(3)
	CreateDynamicObject(3666,997.00000000,-2167.50000000,15.10000038,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(4)
	//---------------LS Helipad near mayor house by Policajac ------------------ [END] // Verona Beach Helipad
	//---------------Shady Creek Airport by TheVule ---------------------------- [START]
	CreateDynamicObject(5706,-1297.04296875,-2075.92871094,22.03451538,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(1)
	CreateDynamicObject(5706,-1297.07910156,-2054.14648438,22.06971741,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1297.01953125,-2096.10839844,22.00371361,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(3)
	CreateDynamicObject(5706,-1297.01757812,-2118.48144531,21.98171234,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(4)
	CreateDynamicObject(5706,-1297.01855469,-2140.16796875,21.95091057,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(5)
	CreateDynamicObject(5706,-1324.71203613,-2140.08374023,21.93330956,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(6)
	CreateDynamicObject(5706,-1324.45019531,-2162.57421875,21.89810753,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(7)
	CreateDynamicObject(5706,-1353.45703125,-2162.55859375,21.95091057,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(8)
	CreateDynamicObject(5706,-1297.01818848,-2162.41015625,21.92450905,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(9)
	CreateDynamicObject(5706,-1297.00683594,-2182.52539062,21.91570854,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(10)
	CreateDynamicObject(5706,-1297.07910156,-2054.14648438,16.26261139,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(11)
	CreateDynamicObject(5706,-1328.69335938,-2182.52343750,21.88490677,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(12)
	CreateDynamicObject(5706,-1353.42578125,-2182.51269531,21.92936516,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(13)
	CreateDynamicObject(6959,-1340.32519531,-2211.71777344,25.72966385,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasnbball1)(2)
	CreateDynamicObject(6959,-1349.45141602,-2211.74414062,25.66806030,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasnbball1)(3)
	CreateDynamicObject(5706,-1353.39221191,-2205.02758789,21.79250145,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(14)
	CreateDynamicObject(4639,-1311.80957031,-2043.37695312,24.19768333,0.00000000,0.00000000,90.06042480,.streamdistance = 10000.0); //object(paypark_lan02)(1)
	CreateDynamicObject(4639,-1308.94604492,-2043.35351562,24.21528435,359.99505615,0.00000000,90.06072998,.streamdistance = 10000.0); //object(paypark_lan02)(2)
	CreateDynamicObject(4639,-1306.14819336,-2043.32910156,24.22408485,359.99450684,0.00000000,90.05987549,.streamdistance = 10000.0); //object(paypark_lan02)(3)
	CreateDynamicObject(4639,-1303.44824219,-2043.30859375,24.21968460,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(8578,-1309.76464844,-2203.00878906,33.07015228,0.00000000,0.00000000,180.12634277,.streamdistance = 10000.0); //object(vgstrainstation3)(1)
	CreateDynamicObject(8578,-1324.92675781,-2203.04101562,33.07015228,0.00000000,0.00000000,180.12084961,.streamdistance = 10000.0); //object(vgstrainstation3)(2)
	CreateDynamicObject(8578,-1332.77819824,-2203.05297852,33.07015228,0.00000000,0.00000000,180.12634277,.streamdistance = 10000.0); //object(vgstrainstation3)(3)
	CreateDynamicObject(5706,-1296.99890137,-2204.74829102,21.89810753,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(10)
	CreateDynamicObject(5706,-1296.95373535,-2225.15747070,21.87170601,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(10)
	CreateDynamicObject(5706,-1281.20092773,-2225.18579102,21.87610626,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(10)
	CreateDynamicObject(5706,-1281.19384766,-2247.13476562,19.64488029,9.92245483,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(10)
	CreateDynamicObject(5706,-1264.37463379,-2254.72387695,18.30948257,9.92065430,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(10)
	CreateDynamicObject(5706,-1263.54296875,-2247.07788086,19.65382004,9.92065430,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(10)
	CreateDynamicObject(5706,-1270.88598633,-2225.16064453,21.87170601,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(10)
	CreateDynamicObject(4639,-1300.75976562,-2043.28662109,24.21968460,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(5)
	CreateDynamicObject(4639,-1295.67114258,-2043.28247070,24.21968460,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(6)
	CreateDynamicObject(4639,-1282.14172363,-2043.20520020,24.21968460,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(7)
	CreateDynamicObject(4639,-1284.82812500,-2043.20117188,24.21968460,359.98352051,0.00000000,90.04943848,.streamdistance = 10000.0); //object(paypark_lan02)(8)
	CreateDynamicObject(4639,-1287.50952148,-2043.18359375,24.21968460,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(9)
	CreateDynamicObject(4639,-1290.21264648,-2043.21850586,24.22848511,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(10)
	CreateDynamicObject(4639,-1292.99023438,-2043.27001953,24.21968460,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(11)
	CreateDynamicObject(4639,-1298.35156250,-2043.29394531,24.21968460,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(12)
	CreateDynamicObject(4597,-1297.04699707,-2063.81811523,25.46409225,0.00000000,0.00000000,269.93469238,.streamdistance = 10000.0); //object(crprkblok4_lan2)(1)
	CreateDynamicObject(4597,-1297.06933594,-2102.76074219,25.45969200,0.00000000,0.00000000,269.92858887,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(4597,-1297.12341309,-2142.57128906,25.39808846,0.00000000,0.00000000,269.92858887,.streamdistance = 10000.0); //object(crprkblok4_lan2)(3)
	CreateDynamicObject(6959,-1331.15405273,-2208.81494141,25.72966385,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasnbball1)(2)
	CreateDynamicObject(970,-1277.29357910,-2212.19824219,26.24807167,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(fencesmallb)(1)
	CreateDynamicObject(970,-1273.17602539,-2212.19433594,26.24807167,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(fencesmallb)(2)
	CreateDynamicObject(970,-1269.06188965,-2212.19238281,26.24807167,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(fencesmallb)(3)
	CreateDynamicObject(970,-1266.98254395,-2212.23901367,26.24807167,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(fencesmallb)(4)
	CreateDynamicObject(970,-1278.45007324,-2212.17944336,26.24807167,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(fencesmallb)(5)
	CreateDynamicObject(970,-1265.37597656,-2212.23364258,26.24807167,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(fencesmallb)(6)
	CreateDynamicObject(970,-1263.05895996,-2214.28588867,26.20406914,0.00000000,0.76327515,277.56738281,.streamdistance = 10000.0); //object(fencesmallb)(7)
	CreateDynamicObject(970,-1262.52844238,-2218.40917969,26.16446686,0.00000000,0.75805664,277.56408691,.streamdistance = 10000.0); //object(fencesmallb)(8)
	CreateDynamicObject(970,-1261.99414062,-2222.50415039,26.12046432,0.00000000,0.75805664,277.56408691,.streamdistance = 10000.0); //object(fencesmallb)(9)
	CreateDynamicObject(970,-1280.53100586,-2210.09814453,26.24807167,0.00000000,0.00000000,269.93466187,.streamdistance = 10000.0); //object(fencesmallb)(10)
	CreateDynamicObject(970,-1280.50964355,-2205.97753906,26.24807167,0.00000000,0.00000000,269.93408203,.streamdistance = 10000.0); //object(fencesmallb)(11)
	CreateDynamicObject(970,-1280.50781250,-2201.84179688,26.24807167,0.00000000,0.00000000,269.92858887,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1310.01586914,-2214.28222656,26.24807167,0.00000000,0.00000000,269.93408203,.streamdistance = 10000.0); //object(fencesmallb)(13)
	CreateDynamicObject(970,-1309.99780273,-2218.40747070,26.24807167,0.00000000,0.00000000,269.93408203,.streamdistance = 10000.0); //object(fencesmallb)(14)
	CreateDynamicObject(970,-1310.00085449,-2222.52709961,26.24807167,0.00000000,0.00000000,269.93408203,.streamdistance = 10000.0); //object(fencesmallb)(15)
	CreateDynamicObject(970,-1310.00561523,-2226.64404297,26.24807167,0.00000000,0.00000000,269.93408203,.streamdistance = 10000.0); //object(fencesmallb)(16)
	CreateDynamicObject(4597,-1280.85632324,-2059.42114258,25.45969200,0.00000000,0.00000000,270.05651855,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(4597,-1280.86267090,-2098.10668945,25.42008972,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(4597,-1280.85876465,-2136.21704102,25.37168694,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(4597,-1280.84130859,-2156.04345703,25.32176781,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(1420,-1329.02697754,-2193.88867188,29.31839371,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(dyn_aircon)(1)
	CreateDynamicObject(3675,-1370.19494629,-2153.54638672,27.04325104,0.00000000,3.81631470,272.22448730,.streamdistance = 10000.0); //object(laxrf_refinerypipe)(1)
	CreateDynamicObject(3643,-1365.86560059,-2153.61450195,29.86843300,0.00000000,0.00000000,269.93466187,.streamdistance = 10000.0); //object(la_chem_piping)(1)
	CreateDynamicObject(3287,-1361.26220703,-2152.04394531,27.36290169,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(cxrf_oiltank)(1)
	CreateDynamicObject(3287,-1361.26171875,-2152.04394531,29.37259865,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(cxrf_oiltank)(2)
	CreateDynamicObject(3287,-1358.01538086,-2152.02270508,27.36290169,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(cxrf_oiltank)(3)
	CreateDynamicObject(3287,-1358.01464844,-2152.02246094,29.25181961,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(cxrf_oiltank)(4)
	CreateDynamicObject(4597,-1313.25769043,-2059.60302734,25.45969200,0.00000000,0.00000000,270.12048340,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(4597,-1313.11608887,-2097.83764648,25.45969200,0.00000000,0.00000000,270.11535645,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(4597,-1312.99035645,-2135.47460938,25.36728668,0.00000000,0.00000000,270.11535645,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(4597,-1312.94055176,-2155.66235352,25.34088516,0.00000000,0.00000000,270.11535645,.streamdistance = 10000.0); //object(crprkblok4_lan2)(2)
	CreateDynamicObject(4639,-1311.51330566,-2171.93359375,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1308.79370117,-2171.93847656,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1306.26306152,-2171.94238281,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1303.48120117,-2171.98876953,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1301.16516113,-2171.98681641,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1298.54699707,-2172.01538086,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1295.91613770,-2172.07226562,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1293.43603516,-2172.09130859,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1290.89355469,-2172.08032227,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1287.95031738,-2172.05273438,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1284.91345215,-2172.03198242,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(4639,-1282.14599609,-2172.12011719,24.08327675,359.98901367,0.00000000,90.05493164,.streamdistance = 10000.0); //object(paypark_lan02)(4)
	CreateDynamicObject(970,-1369.99450684,-2206.34594727,26.17766762,0.00000000,0.00000000,269.92858887,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.99841309,-2202.21142578,26.17326736,0.00000000,0.00000000,269.92858887,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.96887207,-2198.09204102,26.16886711,0.00000000,0.00000000,269.73669434,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.93457031,-2193.96093750,26.16446686,0.00000000,0.00000000,269.73632812,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.89721680,-2189.81591797,26.14686584,0.00000000,0.00000000,270.05615234,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.89929199,-2185.69067383,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.91442871,-2181.56909180,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.90026855,-2177.45434570,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.93176270,-2173.33349609,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.92944336,-2169.21630859,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.92712402,-2165.09545898,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.92272949,-2160.98974609,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.92932129,-2156.87377930,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.92187500,-2152.74438477,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1369.88891602,-2151.59301758,26.14686584,0.00000000,0.00000000,270.05493164,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1367.83923340,-2149.53173828,26.14686584,0.00000000,0.00000000,179.84777832,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1363.72082520,-2149.52221680,26.14686584,0.00000000,0.00000000,179.84619141,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1359.60839844,-2149.52001953,26.14686584,0.00000000,0.00000000,179.84619141,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1355.50512695,-2149.53613281,26.17766762,0.00000000,0.76327515,179.84619141,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1351.38000488,-2149.55249023,26.23047066,0.00000000,0.75805664,179.84069824,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1347.22753906,-2149.50390625,26.27887344,0.00000000,359.99478149,179.84069824,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1343.34960938,-2149.52246094,26.27887344,0.00000000,359.99450684,179.84069824,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1339.30786133,-2148.98779297,26.27887344,0.00000000,359.99450684,194.91845703,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1335.64599609,-2147.15747070,26.10726357,0.00000000,355.40942383,217.74822998,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1332.39025879,-2144.67797852,25.77330017,0.00000000,355.40771484,217.74353027,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1329.59020996,-2142.51000977,25.49654007,0.00000000,355.40771484,217.74353027,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(2797,-1298.40673828,-2193.88574219,30.89038467,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(cj_air_d_5)(1)
	CreateDynamicObject(2795,-1313.86328125,-2193.85644531,30.62011337,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(cj_air_d_4)(1)
	CreateDynamicObject(2794,-1336.70983887,-2193.90478516,30.68502808,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(cj_air_d_3)(1)
	CreateDynamicObject(9697,-1306.18518066,-2264.78564453,25.71096802,0.00000000,0.00000000,90.00195312,.streamdistance = 10000.0); //object(carspaces3_sfw)(1)
	CreateDynamicObject(2793,-1352.12182617,-2193.93725586,30.62071609,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(cj_air_d_2)(1)
	CreateDynamicObject(3666,-1280.86743164,-2041.31384277,26.39508629,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(1)
	CreateDynamicObject(3666,-1297.01965332,-2041.25061035,26.39508629,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(2)
	CreateDynamicObject(3666,-1313.25415039,-2041.22534180,26.39508629,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(3)
	CreateDynamicObject(3666,-1304.99511719,-2041.17712402,26.39508629,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(4)
	CreateDynamicObject(3666,-1288.70800781,-2041.38195801,26.39508629,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(airuntest_las)(5)
	CreateDynamicObject(970,-1327.03503418,-2140.52270508,25.25892639,0.00000000,355.40771484,217.74353027,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(3526,-1280.86901855,-2098.35327148,25.89261627,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasairportlight)(1)
	CreateDynamicObject(3526,-1280.90380859,-2078.95214844,25.89261627,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasairportlight)(2)
	CreateDynamicObject(3526,-1280.90466309,-2059.38720703,25.89261627,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasairportlight)(3)
	CreateDynamicObject(3526,-1280.88415527,-2117.12695312,25.89261627,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasairportlight)(4)
	CreateDynamicObject(3526,-1280.93432617,-2136.23876953,25.89261627,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasairportlight)(5)
	CreateDynamicObject(3526,-1280.96130371,-2155.98706055,25.89261627,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(vegasairportlight)(6)
	CreateDynamicObject(3526,-1312.78161621,-2156.22778320,25.89261627,0.00000000,0.00000000,179.36730957,.streamdistance = 10000.0); //object(vegasairportlight)(7)
	CreateDynamicObject(3526,-1312.79553223,-2135.83154297,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(8)
	CreateDynamicObject(3526,-1312.92980957,-2116.70898438,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(9)
	CreateDynamicObject(3526,-1312.83068848,-2097.91796875,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(10)
	CreateDynamicObject(3526,-1313.07910156,-2078.61914062,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(11)
	CreateDynamicObject(3526,-1313.04199219,-2059.78125000,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(970,-1367.94311523,-2208.47680664,26.14686584,0.00000000,0.00000000,178.31530762,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(970,-1364.72888184,-2208.57031250,26.14686584,0.00000000,0.00000000,178.31359863,.streamdistance = 10000.0); //object(fencesmallb)(12)
	CreateDynamicObject(3578,-1317.76843262,-2171.99194336,24.98324585,0.00000000,0.00000000,0.76327515,.streamdistance = 10000.0); //object(dockbarr1_la)(1)
	CreateDynamicObject(3578,-1327.81140137,-2172.11352539,24.98324585,0.00000000,0.00000000,0.75805664,.streamdistance = 10000.0); //object(dockbarr1_la)(2)
	CreateDynamicObject(3578,-1337.91992188,-2172.23583984,24.99204636,0.00000000,0.00000000,0.75805664,.streamdistance = 10000.0); //object(dockbarr1_la)(3)
	CreateDynamicObject(3578,-1348.02954102,-2172.35839844,24.99204636,0.00000000,0.00000000,0.75805664,.streamdistance = 10000.0); //object(dockbarr1_la)(4)
	CreateDynamicObject(3578,-1358.23937988,-2172.47998047,24.99204636,0.00000000,0.00000000,0.75805664,.streamdistance = 10000.0); //object(dockbarr1_la)(5)
	CreateDynamicObject(3578,-1364.69982910,-2172.55786133,24.99204636,0.00000000,0.00000000,0.75805664,.streamdistance = 10000.0); //object(dockbarr1_la)(6)
	CreateDynamicObject(3578,-1352.69128418,-2177.54711914,24.99067688,0.00000000,0.00000000,91.34567261,.streamdistance = 10000.0); //object(dockbarr1_la)(7)
	CreateDynamicObject(3578,-1352.48754883,-2186.79370117,24.99067688,0.00000000,0.00000000,91.34033203,.streamdistance = 10000.0); //object(dockbarr1_la)(8)
	CreateDynamicObject(3578,-1329.49707031,-2177.05249023,24.97307587,0.00000000,0.00000000,91.34033203,.streamdistance = 10000.0); //object(dockbarr1_la)(9)
	CreateDynamicObject(3578,-1329.28076172,-2186.59082031,24.97307587,0.00000000,0.00000000,91.34033203,.streamdistance = 10000.0); //object(dockbarr1_la)(10)
	CreateDynamicObject(3578,-1345.99267578,-2167.37402344,24.99947739,0.00000000,0.00000000,91.34033203,.streamdistance = 10000.0); //object(dockbarr1_la)(11)
	CreateDynamicObject(3578,-1346.21923828,-2157.10229492,25.01707840,0.00000000,0.00000000,91.34033203,.streamdistance = 10000.0); //object(dockbarr1_la)(12)
	CreateDynamicObject(5706,-1323.19506836,-2057.54028320,22.05211639,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1345.64355469,-2057.53955078,22.07851791,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1368.12829590,-2057.53833008,22.10051918,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1390.80261230,-2057.53979492,22.12252045,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1323.19433594,-2057.54003906,16.29098511,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1323.19433594,-2057.54003906,10.26189423,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1345.64355469,-2057.53906250,16.31738663,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1345.64355469,-2057.53906250,10.28829575,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1345.64355469,-2057.53906250,4.92911482,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1368.12792969,-2057.53808594,16.74132729,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1368.12792969,-2057.53808594,10.57825661,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1368.12792969,-2057.53808594,6.02295065,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1390.80175781,-2057.53906250,16.89730835,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1390.80175781,-2057.53906250,10.60025787,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1390.80175781,-2057.53906250,5.24107599,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(5706,-1390.80175781,-2057.53906250,1.62363005,0.00000000,0.00000000,90.00000000,.streamdistance = 10000.0); //object(studiobld03_law)(2)
	CreateDynamicObject(4597,-1331.76245117,-2073.67749023,25.46257591,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(crprkblok4_lan2)(4)
	CreateDynamicObject(4597,-1373.52746582,-2073.62377930,25.48457718,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(crprkblok4_lan2)(5)
	CreateDynamicObject(4597,-1332.05041504,-2041.59045410,25.48457718,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(crprkblok4_lan2)(6)
	CreateDynamicObject(4597,-1374.90539551,-2041.67797852,25.54178047,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(crprkblok4_lan2)(7)
	CreateDynamicObject(4597,-1383.77172852,-2058.02563477,25.54178047,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(crprkblok4_lan2)(8)
	CreateDynamicObject(4597,-1335.57604980,-2057.99682617,25.54178047,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(crprkblok4_lan2)(9)
	CreateDynamicObject(3526,-1331.19421387,-2073.56884766,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1352.17700195,-2073.52636719,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1373.44445801,-2073.52514648,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1402.63916016,-2073.54614258,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1403.06445312,-2066.83544922,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1402.91943359,-2057.98876953,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1402.64868164,-2041.50817871,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1402.95666504,-2048.77197266,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1374.79992676,-2041.66259766,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1352.90478516,-2041.64746094,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(3526,-1331.80712891,-2041.58837891,25.89261627,0.00000000,0.00000000,179.36279297,.streamdistance = 10000.0); //object(vegasairportlight)(12)
	CreateDynamicObject(4639,-1400.80798340,-2042.17639160,24.28568840,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(paypark_lan02)(1)
	CreateDynamicObject(4639,-1400.80114746,-2045.19921875,24.28568840,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(paypark_lan02)(1)
	CreateDynamicObject(4639,-1400.70581055,-2055.93408203,24.28568840,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(paypark_lan02)(1)
	CreateDynamicObject(4639,-1400.52539062,-2059.86767578,24.28568840,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(paypark_lan02)(1)
	CreateDynamicObject(4639,-1400.42199707,-2072.44580078,24.28568840,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(paypark_lan02)(1)
	CreateDynamicObject(4639,-1400.39697266,-2069.65307617,24.28568840,0.00000000,0.00000000,0.00000000,.streamdistance = 10000.0); //object(paypark_lan02)(1)
	//---------------Shady Creek Airport by TheVule ---------------------------- [END]
	//---------------Gamer_Z's Map for Stardust Airways ------------------------ [START]
	CreateDynamicObject(4866,3260.00000000,-442.00000000,8.00000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(lasrnway1_las)(1)
	CreateDynamicObject(4867,3523.19995117,-497.10000610,8.00000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(lasrnway3_las)(1)
	CreateDynamicObject(4866,3671.10009766,-530.59997559,8.00000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //object(lasrnway1_las)(2)
	CreateDynamicObject(8171,3602.39990234,-428.50000000,8.00000000,0.00000000,0.00000000,322.00000000, .streamdistance = 10000.0); //object(vgssairportland06)(1)
	CreateDynamicObject(8171,3518.30004883,-536.29998779,8.00000000,0.00000000,0.00000000,141.99829102, .streamdistance = 10000.0); //object(vgssairportland06)(2)
	CreateDynamicObject(8171,3433.39990234,-645.09997559,8.00000000,0.00000000,0.00000000,141.99276733, .streamdistance = 10000.0); //object(vgssairportland06)(3)
	CreateDynamicObject(4866,3774.30004883,-279.39999390,8.00000000,0.00000000,0.00000000,232.24996948, .streamdistance = 10000.0); //object(lasrnway1_las)(3)
	CreateDynamicObject(4866,3261.30004883,-797.70001221,8.00000000,0.00000000,0.00000000,52.74450684, .streamdistance = 10000.0); //object(lasrnway1_las)(4)
	CreateDynamicObject(5002,3310.89990234,-543.29998779,7.99300003,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //object(lasrnway4_las)(1)
	CreateDynamicObject(5002,3361.89990234,-646.59997559,8.10000038,0.00000000,0.00000000,52.49267578, .streamdistance = 10000.0); //object(lasrnway4_las)(2)
	CreateDynamicObject(5002,3589.30004883,-354.79998779,7.99499989,0.00000000,0.00000000,52.49267578, .streamdistance = 10000.0); //object(lasrnway4_las)(3)
	CreateDynamicObject(5002,3717.50000000,-188.39999390,7.99499989,0.00000000,0.00000000,52.49267578, .streamdistance = 10000.0); //object(lasrnway4_las)(4)
	CreateDynamicObject(5002,3589.29980469,-354.79980469,7.99499989,0.00000000,0.00000000,52.49267578, .streamdistance = 10000.0); //object(lasrnway4_las)(5)
	CreateDynamicObject(5002,3719.00000000,-430.39999390,7.99499989,0.00000000,0.00000000,359.99267578, .streamdistance = 10000.0); //object(lasrnway4_las)(7)
	CreateDynamicObject(5002,3330.89990234,-869.20001221,7.90000010,0.00000000,0.00000000,232.49267578, .streamdistance = 10000.0); //object(lasrnway4_las)(6)
	CreateDynamicObject(5002,3460.19995117,-701.90002441,7.90000010,0.00000000,0.00000000,232.48718262, .streamdistance = 10000.0); //object(lasrnway4_las)(8)
	CreateDynamicObject(5002,3543.80004883,-598.59997559,7.90000010,0.00000000,0.00000000,232.48718262, .streamdistance = 10000.0); //object(lasrnway4_las)(9)
	CreateDynamicObject(8038,3781.19995117,-393.60000610,28.10000038,0.00000000,0.00000000,322.00000000, .streamdistance = 10000.0); //object(arprtermnl01_lvs)(1)
	CreateDynamicObject(10763,3558.80004883,-357.50000000,40.40000153,0.00000000,0.00000000,187.99996948, .streamdistance = 10000.0); //object(controltower_sfse)(1)
	CreateDynamicObject(10768,3785.80004883,-452.20001221,-5.69999981,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(1)
	CreateDynamicObject(10768,3764.19995117,-193.39999390,-5.80000019,0.00000000,0.00000000,110.00000000, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(2)
	CreateDynamicObject(10768,3640.10009766,-71.00000000,-5.80000019,0.00000000,0.00000000,141.99511719, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(3)
	CreateDynamicObject(10768,3484.80004883,-220.30000305,-5.80000019,0.00000000,0.00000000,177.99279785, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(6)
	CreateDynamicObject(10768,3168.19995117,-497.70001221,-5.80000019,0.00000000,0.00000000,177.98950195, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(7)
	CreateDynamicObject(10768,3130.69995117,-813.29998779,-5.69999981,0.00000000,0.00000000,269.98950195, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(8)
	CreateDynamicObject(10768,3478.50000000,-911.00000000,-5.80000019,0.00000000,0.00000000,340.73547363, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(9)
	CreateDynamicObject(10768,3645.89990234,-673.20001221,-5.80000019,0.00000000,0.00000000,340.73547363, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(10)
	CreateDynamicObject(10768,3326.10009766,-694.70001221,-5.80000019,0.00000000,0.00000000,264.98901367, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(11)
	CreateDynamicObject(10768,3474.60009766,-282.89999390,-5.80000019,0.00000000,0.00000000,177.98950195, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(12)
	CreateDynamicObject(7981,3579.69995117,-275.10000610,13.00000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(smallradar02_lvs)(1)
	CreateDynamicObject(7981,3555.80004883,-272.10000610,13.00000000,0.00000000,0.00000000,180.00000000, .streamdistance = 10000.0); //object(smallradar02_lvs)(2)
	CreateDynamicObject(7981,3568.80004883,-261.50000000,13.00000000,0.00000000,0.00000000,90.00000000, .streamdistance = 10000.0); //object(smallradar02_lvs)(3)
	CreateDynamicObject(7981,3565.89990234,-285.70001221,13.00000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(smallradar02_lvs)(4)
	CreateDynamicObject(4832,3630.10009766,-756.40002441,47.79999924,0.00000000,0.00000000,344.00000000, .streamdistance = 10000.0); //object(airtwer_las)(1)
	CreateDynamicObject(4828,3669.10009766,-598.50000000,21.50000000,0.00000000,0.00000000,92.00000000, .streamdistance = 10000.0); //object(lasairprt5)(1)
	CreateDynamicObject(4828,3754.19995117,-599.40002441,21.50000000,0.00000000,0.00000000,92.00000000, .streamdistance = 10000.0); //object(lasairprt5)(2)
	CreateDynamicObject(5006,3711.10009766,-549.59997559,13.80000019,0.00000000,0.00000000,90.75000000, .streamdistance = 10000.0); //object(airprtwlkto2_las)(1)
	CreateDynamicObject(10755,3162.10009766,-682.00000000,15.39999962,0.00000000,0.00000000,338.25000000, .streamdistance = 10000.0); //object(airport_02_sfse)(1)
	CreateDynamicObject(1682,3567.00000000,-289.60000610,24.50000000,0.00000000,0.00000000,342.00000000, .streamdistance = 10000.0); //object(ap_radar1_01)(1)
	CreateDynamicObject(1682,3553.30004883,-272.70001221,24.50000000,0.00000000,0.00000000,231.99998474, .streamdistance = 10000.0); //object(ap_radar1_01)(2)
	CreateDynamicObject(1682,3583.00000000,-274.60000610,24.50000000,0.00000000,0.00000000,34.00000000, .streamdistance = 10000.0); //object(ap_radar1_01)(3)
	CreateDynamicObject(1682,3569.19995117,-258.79998779,24.50000000,0.00000000,0.00000000,270.00000000, .streamdistance = 10000.0); //object(ap_radar1_01)(4)
	CreateDynamicObject(1682,3669.39990234,-548.90002441,25.29999924,0.00000000,0.00000000,34.00000000, .streamdistance = 10000.0); //object(ap_radar1_01)(5)
	CreateDynamicObject(1682,3753.19995117,-551.40002441,25.29999924,0.00000000,0.00000000,139.99722290, .streamdistance = 10000.0); //object(ap_radar1_01)(6)
	CreateDynamicObject(3489,3797.50000000,-84.90000153,14.50000000,0.00000000,0.00000000,323.25000000, .streamdistance = 10000.0); //object(hangar1_08_lvs)(1)
	CreateDynamicObject(3489,3758.10009766,-55.50000000,14.50000000,0.00000000,0.00000000,323.24523926, .streamdistance = 10000.0); //object(hangar1_08_lvs)(2)
	CreateDynamicObject(3489,3693.39990234,-63.90000153,14.39999962,0.00000000,0.00000000,53.24523926, .streamdistance = 10000.0); //object(hangar1_08_lvs)(3)
	CreateDynamicObject(3816,3654.69995117,-145.39999390,16.50000000,0.00000000,0.00000000,52.00000000, .streamdistance = 10000.0); //object(bighangar1_sfx)(1)
	CreateDynamicObject(3816,3612.19995117,-199.80000305,16.50000000,0.00000000,0.00000000,51.99829102, .streamdistance = 10000.0); //object(bighangar1_sfx)(2)
	CreateDynamicObject(5006,3792.89990234,-308.20001221,13.19999981,0.00000000,0.00000000,142.74707031, .streamdistance = 10000.0); //object(airprtwlkto2_las)(3)
	CreateDynamicObject(4832,3873.80004883,-296.79998779,47.00000000,0.00000000,0.00000000,54.00000000, .streamdistance = 10000.0); //object(airtwer_las)(2)
	CreateDynamicObject(3489,3886.89990234,-197.89999390,14.50000000,0.00000000,0.00000000,233.49522400, .streamdistance = 10000.0); //object(hangar1_08_lvs)(4)
	CreateDynamicObject(4990,3408.89990234,-831.59997559,13.30000019,0.00000000,0.00000000,232.99998474, .streamdistance = 10000.0); //object(airprtwlkto1_las)(1)
	CreateDynamicObject(10763,3387.80004883,-946.20001221,40.50000000,0.00000000,0.00000000,6.75000000, .streamdistance = 10000.0); //object(controltower_sfse)(2)
	CreateDynamicObject(3629,3448.80004883,-882.79998779,14.50000000,0.00000000,0.00000000,146.74993896, .streamdistance = 10000.0); //object(arhang_las)(1)
	CreateDynamicObject(3629,3475.89990234,-841.40002441,14.50000000,0.00000000,0.00000000,146.74987793, .streamdistance = 10000.0); //object(arhang_las)(2)
	CreateDynamicObject(3629,3512.30004883,-865.20001221,14.50000000,0.00000000,0.00000000,146.74987793, .streamdistance = 10000.0); //object(arhang_las)(3)
	CreateDynamicObject(3629,3484.50000000,-906.20001221,14.50000000,0.00000000,0.00000000,145.24987793, .streamdistance = 10000.0); //object(arhang_las)(4)
	CreateDynamicObject(3816,3023.80004883,-610.00000000,16.50000000,0.00000000,0.00000000,153.49829102, .streamdistance = 10000.0); //object(bighangar1_sfx)(3)
	CreateDynamicObject(3816,3093.00000000,-859.70001221,16.50000000,0.00000000,0.00000000,89.99597168, .streamdistance = 10000.0); //object(bighangar1_sfx)(4)
	CreateDynamicObject(10763,3417.10009766,-561.59997559,40.29999924,0.00000000,0.00000000,316.74560547, .streamdistance = 10000.0); //object(controltower_sfse)(3)
	CreateDynamicObject(3881,3119.89990234,-820.70001221,9.69999981,0.00000000,0.00000000,161.49987793, .streamdistance = 10000.0); //object(airsecbooth_sfse)(1)
	CreateDynamicObject(3881,3126.10009766,-802.29998779,9.69999981,0.00000000,0.00000000,161.49902344, .streamdistance = 10000.0); //object(airsecbooth_sfse)(2)
	CreateDynamicObject(4874,3143.19995117,-387.79998779,11.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(helipad1_las)(1)
	CreateDynamicObject(4874,3243.69995117,-386.10000610,11.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(helipad1_las)(2)
	CreateDynamicObject(4874,3344.00000000,-389.20001221,11.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(helipad1_las)(3)
	CreateDynamicObject(9241,3616.30004883,-88.09999847,9.39999962,0.00000000,0.00000000,321.25000000, .streamdistance = 10000.0); //object(copbits_sfn)(1)
	CreateDynamicObject(9241,3580.69995117,-133.69999695,9.39999962,0.00000000,0.00000000,321.24572754, .streamdistance = 10000.0); //object(copbits_sfn)(2)
	CreateDynamicObject(9241,3548.89990234,-173.10000610,9.39999962,0.00000000,0.00000000,321.24572754, .streamdistance = 10000.0); //object(copbits_sfn)(3)
	CreateDynamicObject(3620,3658.89990234,91.30000305,21.00000000,0.00000000,0.00000000,234.50001526, .streamdistance = 10000.0); //object(redockrane_las)(1)
	CreateDynamicObject(3620,3631.19995117,53.50000000,21.00000000,0.00000000,0.00000000,234.49768066, .streamdistance = 10000.0); //object(redockrane_las)(3)
	CreateDynamicObject(3753,3399.89990234,-111.40000153,3.70000005,0.00000000,0.00000000,88.00000000, .streamdistance = 10000.0); //object(dockwall_las2)(1)
	CreateDynamicObject(11009,3483.89990234,-71.19999695,12.60000038,0.00000000,0.00000000,291.99993896, .streamdistance = 10000.0); //object(dk_cargoshp70_sfs02)(1)
	CreateDynamicObject(11009,3488.10009766,-80.90000153,12.60000038,0.00000000,0.00000000,291.99462891, .streamdistance = 10000.0); //object(dk_cargoshp70_sfs02)(2)
	CreateDynamicObject(11009,3512.10009766,-82.69999695,12.39999962,0.00000000,0.00000000,291.99462891, .streamdistance = 10000.0); //object(dk_cargoshp70_sfs02)(3)
	CreateDynamicObject(9245,3659.19995117,72.90000153,19.70000076,0.00000000,0.00000000,52.00000000, .streamdistance = 10000.0); //object(cstguard_sfn01)(1)
	CreateDynamicObject(9245,3404.80004883,-114.80000305,19.70000076,0.00000000,0.00000000,87.99829102, .streamdistance = 10000.0); //object(cstguard_sfn01)(2)
	CreateDynamicObject(1378,3497.60009766,-26.89999962,30.00000000,0.00000000,0.00000000,14.00000000, .streamdistance = 10000.0); //object(containercrane_04)(1)
	CreateDynamicObject(5126,3571.69995117,-22.60000038,22.79999924,0.00000000,0.00000000,94.00000000, .streamdistance = 10000.0); //object(dockcranescale0)(1)
	CreateDynamicObject(8879,3548.80004883,-19.60000038,13.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsecnstrct08)(1)
	CreateDynamicObject(8879,3462.39990234,-37.40000153,13.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsecnstrct08)(2)
	CreateDynamicObject(9245,3404.19995117,-124.80000305,19.70000076,0.00000000,0.00000000,268.49511719, .streamdistance = 10000.0); //object(cstguard_sfn01)(3)
	CreateDynamicObject(3567,3057.10009766,-884.29998779,8.69999981,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(lasnfltrail)(1)
	CreateDynamicObject(3043,3061.10009766,-865.79998779,9.10000038,0.00000000,0.00000000,90.75000000, .streamdistance = 10000.0); //object(kmb_container_open)(1)
	CreateDynamicObject(3043,3061.10009766,-865.79998779,11.89999962,0.00000000,0.00000000,90.74707031, .streamdistance = 10000.0); //object(kmb_container_open)(2)
	CreateDynamicObject(12932,2989.80004883,-869.79998779,11.30000019,0.00000000,0.00000000,225.99996948, .streamdistance = 10000.0); //object(sw_trailer02)(1)
	CreateDynamicObject(3574,3031.69995117,-882.29998779,10.39999962,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(lasdkrtgrp2)(1)
	CreateDynamicObject(7186,3448.69995117,-160.00000000,13.60000038,0.00000000,0.00000000,308.00000000, .streamdistance = 10000.0); //object(plantbox15)(1)
	CreateDynamicObject(7186,3466.60009766,-184.19999695,13.60000038,0.00000000,0.00000000,307.99621582, .streamdistance = 10000.0); //object(plantbox15)(2)
	CreateDynamicObject(8372,3381.73242188,-304.01074219,-4.78609753,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airportneon)(1)
	CreateDynamicObject(966,3117.80004883,-817.50000000,7.90000010,0.00000000,0.00000000,253.25000000, .streamdistance = 10000.0); //object(bar_gatebar01)(1)
	CreateDynamicObject(966,3122.30004883,-804.40002441,7.90000010,0.00000000,0.00000000,68.49935913, .streamdistance = 10000.0); //object(bar_gatebar01)(2)
	CreateDynamicObject(968,3122.30004883,-804.40002441,8.69999981,0.00000000,0.00000000,64.75003052, .streamdistance = 10000.0); //object(barrierturn)(1)
	CreateDynamicObject(968,3117.80004883,-817.59997559,8.69999981,0.00000000,0.00000000,67.49792480, .streamdistance = 10000.0); //object(barrierturn)(2)
	CreateDynamicObject(981,3825.00000000,-141.60000610,8.00000000,0.00000000,0.00000000,142.24993896, .streamdistance = 10000.0); //object(helix_barrier)(1)
	CreateDynamicObject(981,3204.69995117,-944.59997559,8.00000000,0.00000000,0.00000000,324.00000000, .streamdistance = 10000.0); //object(helix_barrier)(2)
	CreateDynamicObject(981,3811.69995117,-485.50000000,8.00000000,0.00000000,0.00000000,90.25000000, .streamdistance = 10000.0); //object(helix_barrier)(3)
	CreateDynamicObject(981,3114.19995117,-485.60000610,8.00000000,0.00000000,0.00000000,269.50000000, .streamdistance = 10000.0); //object(helix_barrier)(4)
	CreateDynamicObject(6099,3374.39941406,-280.39941406,24.20000076,0.00000000,0.00000000,317.99926758, .streamdistance = 10000.0); //object(gaz3_law)(1)
	CreateDynamicObject(5296,2924.80004883,-678.29998779,13.50000000,0.00000000,0.00000000,118.00000000, .streamdistance = 10000.0); //object(laroads_26a_las01)(1)
	CreateDynamicObject(5296,2972.80004883,-768.59997559,13.50000000,0.00000000,0.00000000,297.99865723, .streamdistance = 10000.0); //object(laroads_26a_las01)(3)
	CreateDynamicObject(10768,3558.19995117,-794.79998779,-5.90000010,0.00000000,0.00000000,38.73547363, .streamdistance = 10000.0); //object(airprtgnd_06_sfse)(9)
	//---------------Gamer_Z's Map for Stardust Airways ------------------------ [END]
	//---------------Rinke Hendrik's Map @ LS Beach Airport -------------------- [START]
	CreateDynamicObject(5706, 6, -1801, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6, -1778.1999511719, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6, -1755.5999755859, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6.0999999046326, -1732.8000488281, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6.0999999046326, -1711, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6.0999999046326, -1688.5999755859, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6.0999999046326, -1667.8000488281, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6.0999999046326, -1645.0999755859, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6, -1623, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 38.799999237061, -1645.8000488281, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 38.799999237061, -1668.4000244141, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 38.799999237061, -1690.5, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 38.799999237061, -1711.1999511719, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 38.900001525879, -1730.1999511719, 0, 0, 0, 180, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 71.599998474121, -1711.4000244141, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 71.599998474121, -1689.0999755859, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 71.599998474121, -1666.5999755859, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 71.300003051758, -1645.8000488281, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 104.40000152588, -1711.5, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 104.69999694824, -1688.6999511719, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 104.69999694824, -1671.9000244141, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 71.699996948242, -1730.0999755859, 0, 0, 0, 179.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 103.30000305176, -1730.0999755859, 0, 0, 0, 179.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6.0999999046326, -1823.8000488281, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6.1999998092651, -1846.5999755859, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 6.1999998092651, -1865.5, 0, 0, 0, 180, .streamdistance = 10000.0);
	CreateDynamicObject(4597, 6.4000000953674, -1848.8000488281, 3.5, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4597, 6.4000000953674, -1807.1999511719, 3.5, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4597, 6.4000000953674, -1766.4000244141, 3.5, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4597, 6.4000000953674, -1724.8000488281, 3.5, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4597, 6.4000000953674, -1683.5, 3.5, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4597, 6.4000000953674, -1639.4000244141, 3.5, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4597, 6.3994140625, -1639.3994140625, 3.5, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4597, 6.3994140625, -1639.3994140625, 3.5, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, -4.8000001907349, -1872.0999755859, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, -0.80000001192093, -1872.0999755859, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 4.1999998092651, -1872.0999755859, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 8.1999998092651, -1872.0999755859, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 13.39999961853, -1872.0999755859, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 17.39999961853, -1872.0999755859, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 8, -1616.5, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 4.9000000953674, -1616.5, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, -0.60000002384186, -1616.5, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, -4.3000001907349, -1616.5, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 12.89999961853, -1616.5999755859, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 16.10000038147, -1616.5999755859, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(4638, 16.099609375, -1616.599609375, 2.2000000476837, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(13752, 46.599998474121, -1687, -23, 0, 10, 214, .streamdistance = 10000.0);
	CreateDynamicObject(8038, 82.699996948242, -1688.0999755859, 19.39999961853, 0, 0, 304, .streamdistance = 10000.0);
	CreateDynamicObject(8251, 81.900001525879, -1730.0999755859, 7.6999998092651, 0, 0, 180, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.199999809265, -1878.5, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 6.3000001907349, -1878.5, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.5, -1878.4000244141, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.39999961853, -1856.5999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.199999809265, -1856.4000244141, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10, -1833.6999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.39999961853, -1833.4000244141, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.39999961853, -1810.9000244141, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.300000190735, -1811, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.199999809265, -1788.1999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.299999237061, -1788.1999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.299999237061, -1765.8000488281, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.300000190735, -1765.5, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.300000190735, -1742.6999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.39999961853, -1743.0999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10, -1719.9000244141, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.10000038147, -1698.0999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.10000038147, -1675.6999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.10000038147, -1654.6999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.300000190735, -1633.0999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -10.300000190735, -1610, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 6.3000001907349, -1610.0999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.200000762939, -1610.1999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.299999237061, -1632.6999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 44.099998474121, -1632.9000244141, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 59.599998474121, -1633.0999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 76.800003051758, -1632.8000488281, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 76.7998046875, -1632.7998046875, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 34.799999237061, -1743.1999511719, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 68.099998474121, -1742.5999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1337, 112.2685546875, -1614.5390625, 5.8941116333008, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(3881, 49.400001525879, -1674.9000244141, 5.6999998092651, 0, 0, 123.99996948242, .streamdistance = 10000.0);
	CreateDynamicObject(16337, 35.799999237061, -1672.3000488281, 3.7999999523163, 0, 0, 178, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 53.299999237061, -1670.4000244141, 3.7999999523163, 0, 0, 302, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 55.599998474121, -1668.9000244141, 3.7999999523163, 0, 0, 301.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 57.900001525879, -1667.4000244141, 3.7999999523163, 0, 0, 301.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 60.200000762939, -1665.8000488281, 3.7999999523163, 0, 0, 301.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 62.599998474121, -1664.1999511719, 3.7999999523163, 0, 0, 301.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 61.5, -1664.9000244141, 6.1999998092651, 0, 0, 301.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 59.099998474121, -1666.5999755859, 6.3000001907349, 0, 0, 301.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 56.5, -1668.1999511719, 6.3000001907349, 0, 0, 301.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(2973, 54.099998474121, -1669.8000488281, 6.3000001907349, 0, 0, 301.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(966, 54.599998474121, -1690.5, 3.7999999523163, 0, 0, 304, .streamdistance = 10000.0);
	CreateDynamicObject(966, 46.900001525879, -1679.0999755859, 3.7999999523163, 0, 0, 123.99768066406, .streamdistance = 10000.0);
	CreateDynamicObject(966, 37.599998474121, -1674.0999755859, 3.7999999523163, 0, 0, 171.99719238281, .streamdistance = 10000.0);
	CreateDynamicObject(968, 46.950000762939, -1679.1999511719, 4.8000001907349, 0, 0, 304, .streamdistance = 10000.0);
	CreateDynamicObject(968, 54.5, -1690.5, 4.5999999046326, 0, 0, 303.99719238281, .streamdistance = 10000.0);
	CreateDynamicObject(968, 37.599998474121, -1674.0999755859, 4.5999999046326, 0, 0, 351.99719238281, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 30.89999961853, -1665.4000244141, 5.5, 0, 0, 264, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 26.799999237061, -1652.8000488281, 5.5, 0, 0, 229.99597167969, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 26.799999237061, -1640, 5.5, 0, 0, 229.99328613281, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 80.300003051758, -1647.6999511719, 11, 0, 0, 227.99597167969, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 81.599998474121, -1634, 11, 0, 0, 221.99377441406, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 92.300003051758, -1675.0999755859, 11, 0, 0, 249.98974609375, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 96.5, -1688.1999511719, 11, 0, 0, 245.98840332031, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 96.800003051758, -1701.5, 11, 0, 0, 215.98388671875, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 96.099998474121, -1715.0999755859, 11, 0, 0, 237.98022460938, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 99.199996948242, -1728.1999511719, 10.60000038147, 0, 7, 249.97485351563, .streamdistance = 10000.0);
	CreateDynamicObject(4100, 105.19999694824, -1740.8000488281, 9.3000001907349, 0, 8, 261.97485351563, .streamdistance = 10000.0);
	CreateDynamicObject(2935, 29.299999237061, -1637.1999511719, 5.3000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(2935, 37.299999237061, -1637.3000488281, 5.3000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(2935, 41.700000762939, -1637.4000244141, 5.3000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(2935, 29.200000762939, -1637.1999511719, 8.1999998092651, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(2935, 46, -1637.5, 5.3000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(2934, 33.5, -1637.1999511719, 5.3000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(2934, 37.299999237061, -1637.4000244141, 8.1999998092651, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(2934, 33.5, -1637.1999511719, 8.1999998092651, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(2934, 46, -1637.6999511719, 8.1999998092651, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(12930, 80.599998474121, -1638.3000488281, 4.6999998092651, 0, 0, 86, .streamdistance = 10000.0);
	CreateDynamicObject(12930, 80.5, -1640.8000488281, 4.6999998092651, 0, 0, 86, .streamdistance = 10000.0);
	CreateDynamicObject(16599, 71.599998474121, -1708.0999755859, 13.10000038147, 0, 0, 34, .streamdistance = 10000.0);
	CreateDynamicObject(16599, 76.199996948242, -1705.0999755859, 13.10000038147, 0, 0, 33.997192382813, .streamdistance = 10000.0);
	CreateDynamicObject(16599, 80.800003051758, -1702.0999755859, 13.10000038147, 0, 0, 33.997192382813, .streamdistance = 10000.0);
	CreateDynamicObject(16599, 80.7998046875, -1702.099609375, 13.10000038147, 0, 0, 33.997192382813, .streamdistance = 10000.0);
	CreateDynamicObject(17055, 71.699996948242, -1657.0999755859, 6.1999998092651, 0, 0, 42, .streamdistance = 10000.0);
	CreateDynamicObject(18283, 63.200000762939, -1637.4000244141, 3.7999999523163, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1694, 59.099998474121, -1711.5999755859, 47.5, 0, 0, 34, .streamdistance = 10000.0);
	CreateDynamicObject(1695, 77.699996948242, -1685.5, 8.8000001907349, 0, 0, 36, .streamdistance = 10000.0);
	CreateDynamicObject(1695, 73.900001525879, -1688.4000244141, 8.8000001907349, 0, 0, 35.996704101563, .streamdistance = 10000.0);
	CreateDynamicObject(1695, 69.800003051758, -1691.3000488281, 8.8000001907349, 0, 0, 35.996704101563, .streamdistance = 10000.0);
	CreateDynamicObject(1695, 74.400001525879, -1697.8000488281, 8.8000001907349, 0, 0, 35.996704101563, .streamdistance = 10000.0);
	CreateDynamicObject(1695, 78.599998474121, -1694.5999755859, 8.8000001907349, 0, 0, 35.996704101563, .streamdistance = 10000.0);
	CreateDynamicObject(1695, 82.5, -1691.9000244141, 8.8000001907349, 0, 0, 35.996704101563, .streamdistance = 10000.0);
	CreateDynamicObject(1695, 82.5, -1691.8994140625, 8.8000001907349, 0, 0, 35.996704101563, .streamdistance = 10000.0);
	CreateDynamicObject(1257, 119.5, -1640.9000244141, 10.5, 0, 0, 358, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 84, -1655.8000488281, 10.800000190735, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 85.099998474121, -1655.3000488281, 10.699999809265, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 86.099998474121, -1654.8000488281, 10.699999809265, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 87.400001525879, -1654.6999511719, 10.60000038147, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 90, -1655, 10.5, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 92.199996948242, -1655.5999755859, 10.39999961853, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 93.300003051758, -1656, 10.39999961853, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 94.5, -1656.4000244141, 10.300000190735, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 96.599998474121, -1656.6999511719, 10.199999809265, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 97.5, -1656.8000488281, 10.10000038147, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 98.699996948242, -1656.6999511719, 10, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 101.80000305176, -1656.3000488281, 9.8000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 91.5, -1666.1999511719, 10.5, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 92.400001525879, -1665.9000244141, 10.5, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 93.300003051758, -1665.6999511719, 10.39999961853, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 94.5, -1665.5999755859, 10.300000190735, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 95.900001525879, -1665.5999755859, 10.300000190735, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 98.599998474121, -1665.3000488281, 10.10000038147, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 99.900001525879, -1664.9000244141, 10, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 101.09999847412, -1664.5999755859, 9.8999996185303, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 105.59999847412, -1663.1999511719, 9.6000003814697, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 102.30000305176, -1664.1999511719, 9.8000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 97.199996948242, -1665.5, 10.199999809265, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 103.30000305176, -1663.9000244141, 9.8000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 104.5, -1663.5999755859, 9.6999998092651, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 88.800003051758, -1654.8000488281, 10.5, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 91.099998474121, -1655.3000488281, 10.5, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 95.599998474121, -1656.5999755859, 10.199999809265, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 99.699996948242, -1656.5999755859, 10, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 100.80000305176, -1656.4000244141, 9.8999996185303, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 104.69999694824, -1655.9000244141, 9.6999998092651, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 103.59999847412, -1656.0999755859, 9.8000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1319, 102.69999694824, -1656.1999511719, 9.8000001907349, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1676, 29.10000038147, -1656.9000244141, 5.4000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1676, 33.799999237061, -1656.9000244141, 5.4000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(997, 27.700000762939, -1655.3000488281, 3.7999999523163, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(997, 32.299999237061, -1655.1999511719, 3.7999999523163, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(997, 32.400001525879, -1658.6999511719, 3.7999999523163, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(997, 27.60000038147, -1658.8000488281, 3.7999999523163, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(997, 36.400001525879, -1655.4000244141, 3.7999999523163, 0, 0, 272, .streamdistance = 10000.0);
	CreateDynamicObject(5706, -26.60000038147, -1729.9000244141, 0, 0, 0, 180, .streamdistance = 10000.0);
	CreateDynamicObject(5706, -26.5, -1707.1999511719, 0, 0, 0, 179.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(5706, -26.5, -1684.5999755859, 0, 0, 0, 179.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(5706, -26.60000038147, -1667.5999755859, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.200000762939, -1675.5999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.39999961853, -1655.0999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.299999237061, -1697.5999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 22.10000038147, -1719.9000244141, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -42.799999237061, -1742.5999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -42.700000762939, -1720.3000488281, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -42.900001525879, -1697.8000488281, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -42.799999237061, -1675.3000488281, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, -42.900001525879, -1655, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(10764, 7.0999999046326, -1920.5999755859, 1, 0, 0, 226, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 27, -1729.3000488281, 3.0999999046326, 0, 0, 34, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 35.099998474121, -1723.5999755859, 3.0999999046326, 0, 0, 35.996215820313, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 27.799999237061, -1703.5, 3.0999999046326, 0, 0, 359.98999023438, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1738.0999755859, 3.0999999046326, 0, 0, 269.98815917969, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1728.5999755859, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1718.5999755859, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1710.0999755859, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1700.3000488281, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1690.8000488281, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1682.3000488281, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1673.0999755859, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1663.0999755859, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1653.6999511719, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1643.6999511719, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 22.700000762939, -1637.8000488281, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1659.6999511719, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1669.6999511719, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1680, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1689.8000488281, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1698.3000488281, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1708, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1718, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1727.0999755859, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1735, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -10.60000038147, -1737.5999755859, 3.0999999046326, 0, 0, 269.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -15.60000038147, -1731.9000244141, 3.0999999046326, 0, 0, 177.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -23.799999237061, -1731.6999511719, 3.0999999046326, 0, 0, 179.978515625, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -15.89999961853, -1708.9000244141, 3.0999999046326, 0, 0, 179.978515625, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -24.39999961853, -1708.9000244141, 3.0999999046326, 0, 0, 179.97802734375, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -14.199999809265, -1682.6999511719, 3.0999999046326, 0, 0, 315.98352050781, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -20.799999237061, -1676.3000488281, 3.0999999046326, 0, 0, 315.98327636719, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -24.89999961853, -1672.3000488281, 3.0999999046326, 0, 0, 315.98327636719, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -30.39999961853, -1667, 3.0999999046326, 0, 0, 315.98327636719, .streamdistance = 10000.0);
	CreateDynamicObject(3578, -30.3994140625, -1667, 3.0999999046326, 0, 0, 315.98327636719, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 67.800003051758, -1730.5, 3.0999999046326, 0, 0, 1.9962158203125, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 59.200000762939, -1730.8000488281, 3.0999999046326, 0, 0, 1.9940185546875, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 51.599998474121, -1731.0999755859, 3.0999999046326, 0, 0, 1.9940185546875, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 43, -1731.4000244141, 3.0999999046326, 0, 0, 1.9940185546875, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 33.799999237061, -1731.6999511719, 3.0999999046326, 0, 0, 1.9940185546875, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 27.799999237061, -1732, 3.0999999046326, 0, 0, 1.9940185546875, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 27.7998046875, -1732, 3.0999999046326, 0, 0, 1.9940185546875, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 42.900001525879, -1717.6999511719, 3.0999999046326, 0, 0, 37.9912109375, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 38, -1703.5, 3.0999999046326, 0, 0, 359.98901367188, .streamdistance = 10000.0);
	CreateDynamicObject(2795, 46.299999237061, -1704, 8.6999998092651, 0, 0, 240, .streamdistance = 10000.0);
	CreateDynamicObject(2793, 50.099998474121, -1712.5999755859, 8.6999998092651, 0, 0, 304, .streamdistance = 10000.0);
	CreateDynamicObject(18014, 51.900001525879, -1694.3000488281, 4.3000001907349, 0, 0, 306, .streamdistance = 10000.0);
	CreateDynamicObject(18014, 56.400001525879, -1716.8000488281, 4.3000001907349, 0, 0, 275.99670410156, .streamdistance = 10000.0);
	CreateDynamicObject(18014, 64.400001525879, -1717.3000488281, 4.3000001907349, 0, 0, 249.99304199219, .streamdistance = 10000.0);
	CreateDynamicObject(9241, 52.5, -1770.5, 5.1999998092651, 0, 0, 270, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 51.099998474121, -1752.6999511719, 0, 0, 0, 179.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 83.599998474121, -1752.5999755859, 0, 0, 0, 179.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 83.5, -1775, 0, 0, 0, 180, .streamdistance = 10000.0);
	CreateDynamicObject(5706, 51, -1775, 0, 0, 0, 179.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 34.599998474121, -1788, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 67, -1787.8000488281, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 99.599998474121, -1787.5999755859, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 99.599998474121, -1766, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 99.900001525879, -1743, 3.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 64.400001525879, -1758.4000244141, 6.5999999046326, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 64.5, -1783, 6.5999999046326, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 40.099998474121, -1783, 6.5999999046326, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 40.200000762939, -1758.5, 6.5999999046326, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 43, -1761.9000244141, 5.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 61.799999237061, -1761.6999511719, 5.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 61.799999237061, -1780, 5.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(1215, 43.099998474121, -1779.9000244141, 5.9000000953674, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(8572, 85.199996948242, -1789.5, 2.2999999523163, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 85.199996948242, -1802.0999755859, 0, 0, 0, 0, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 95.900001525879, -1792.6999511719, 0, 0, 0, 92, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 73.599998474121, -1793, 0, 0, 0, 89.99951171875, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 63.299999237061, -1803.1999511719, 0, 0, 0, 359.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 52.400001525879, -1792.9000244141, 0, 0, 0, 89.989013671875, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 41.200000762939, -1803.0999755859, 0, 0, 0, 179.98901367188, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 113.40000152588, -1800.1999511719, 0, 0, 0, 41.99951171875, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 127.5, -1816, 0, 0, 0, 41.995239257813, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 126.40000152588, -1830.5999755859, 0, 0, 0, 311.99523925781, .streamdistance = 10000.0);
	CreateDynamicObject(17068, 112.19999694824, -1829.8000488281, 0, 0, 0, 219.99523925781, .streamdistance = 10000.0);
	CreateDynamicObject(8572, 64.5, -1789.3000488281, 2.2999999523163, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(8572, 41.5, -1789.0999755859, 2.2999999523163, 0, 0, 90, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 98.599998474121, -1776.9000244141, 4.5999999046326, 0, 0, 270, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 92.599998474121, -1786.5999755859, 4.5999999046326, 0, 0, 180, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 75.099998474121, -1786.5999755859, 4.5999999046326, 0, 0, 179.99450683594, .streamdistance = 10000.0);
	CreateDynamicObject(3578, 98.900001525879, -1754.8000488281, 4.5999999046326, 0, 0, 270, .streamdistance = 10000.0);
	//---------------Rinke Hendrik's Map @ LS Beach Airport -------------------- [END]
	//---------------Indiana V4 ------------------------ By Blew --------------- [START]
	CreateDynamicObject(5,-698.97000000,1278.21000000,0.51000000,0.00000000,0.00000000,262.86000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-619.21000000,1318.76000000,9.07000000,0.00000000,0.00000000,351.02000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,-638.32000000,1254.78000000,11.95000000,0.00000000,0.00000000,171.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,-718.88000000,1293.35000000,11.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,-670.32000000,1298.25000000,11.95000000,0.00000000,0.00000000,261.08000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-691.81000000,1307.19000000,-5.76000000,-5.00000000,0.00000000,350.91000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-704.47000000,1321.20000000,-6.70000000,0.00000000,0.00000000,260.98000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-671.46000000,1315.99000000,-6.70000000,0.00000000,0.00000000,260.98000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-654.89000000,1313.28000000,-6.70000000,0.00000000,0.00000000,260.98000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-621.70000000,1308.02000000,-6.70000000,0.00000000,0.00000000,260.98000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-638.25000000,1310.63000000,-6.70000000,0.00000000,0.00000000,260.98000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-576.82000000,1311.65000000,-0.95000000,0.00000000,0.00000000,261.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-618.92000000,1329.34000000,-0.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-639.99000000,1332.68000000,-0.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-622.29000000,1307.86000000,-0.95000000,0.00000000,0.00000000,171.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-688.03000000,1318.60000000,-6.70000000,0.00000000,0.00000000,260.98000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-638.36000000,1310.37000000,-0.95000000,0.00000000,0.00000000,171.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16364,-634.20000000,1284.95000000,2.31000000,0.00000000,0.00000000,172.40000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3361,-627.31000000,1267.96000000,5.80000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16364,-637.05000000,1268.65000000,2.30000000,0.00000000,0.00000000,170.93000000, .streamdistance = 10000.0); //
	CreateDynamicObject(10764,-532.10000000,1305.17000000,1.93000000,0.00000000,0.00000000,306.67000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-661.11000000,1336.03000000,-0.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-682.25000000,1339.37000000,-0.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-697.13000000,1341.72000000,-0.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-657.87000000,1313.51000000,-0.95000000,0.00000000,0.00000000,171.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-678.92000000,1316.83000000,-0.95000000,0.00000000,0.00000000,171.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16021,-693.85000000,1260.54000000,10.74000000,0.00000000,0.00000000,260.95000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2793,-678.88000000,1261.16000000,13.04000000,0.00000000,0.00000000,351.33000000, .streamdistance = 10000.0); //
	CreateDynamicObject(2792,-691.37000000,1263.16000000,13.04000000,0.00000000,0.00000000,351.33000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-635.17000000,1321.32000000,9.07000000,0.00000000,0.00000000,351.02000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-652.04000000,1323.98000000,9.07000000,0.00000000,0.00000000,351.02000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-668.94000000,1326.69000000,9.07000000,0.00000000,0.00000000,351.02000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-686.37000000,1329.35000000,9.07000000,0.00000000,0.00000000,351.02000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-698.92000000,1290.38000000,-1.97000000,0.00000000,0.00000000,81.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-697.05000000,1289.78000000,-1.97000000,0.00000000,0.00000000,261.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-675.78000000,1286.39000000,-1.97000000,0.00000000,0.00000000,261.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-702.90000000,1265.29000000,-1.97000000,0.00000000,0.00000000,81.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-685.12000000,1240.48000000,-1.97000000,0.00000000,0.00000000,81.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-687.56000000,1274.44000000,-1.97000000,0.00000000,0.00000000,171.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-706.92000000,1240.10000000,-1.97000000,0.00000000,0.00000000,81.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-695.14000000,1326.81000000,9.07000000,0.00000000,0.00000000,40.05000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-701.86000000,1311.97000000,9.80000000,0.00000000,5.20000000,81.27000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-700.85000000,1292.47000000,10.51000000,0.00000000,0.00000000,300.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-684.22000000,1272.14000000,10.51000000,0.00000000,0.00000000,300.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-696.30000000,1273.67000000,10.51000000,0.00000000,0.00000000,300.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-698.51000000,1283.06000000,10.51000000,0.00000000,0.00000000,267.09000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-693.38000000,1287.19000000,10.51000000,0.00000000,0.00000000,350.80000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-687.67000000,1281.47000000,10.51000000,0.00000000,0.00000000,279.88000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-613.81000000,1317.90000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-629.84000000,1320.51000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-646.62000000,1323.13000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-663.53000000,1325.85000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-681.04000000,1328.51000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-699.03000000,1323.32000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-703.46000000,1297.07000000,11.26000000,0.00000000,0.00000000,19.45000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-681.66000000,1267.54000000,11.27000000,0.00000000,0.00000000,355.84000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-693.71000000,1269.06000000,11.28000000,0.00000000,0.00000000,355.84000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-691.33000000,1330.11000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(652,-629.51000000,1227.24000000,8.51000000,356.86000000,0.00000000,3.14000000, .streamdistance = 10000.0); //
	CreateDynamicObject(652,-721.61000000,1309.94000000,10.21000000,356.86000000,0.00000000,3.14000000, .streamdistance = 10000.0); //
	CreateDynamicObject(652,-684.70000000,1346.81000000,7.06000000,356.86000000,0.00000000,3.14000000, .streamdistance = 10000.0); //
	CreateDynamicObject(983,-717.69000000,1262.35000000,11.96000000,0.00000000,0.00000000,81.01000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-605.16000000,1305.41000000,-6.70000000,0.00000000,0.00000000,260.98000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9947,-588.64000000,1302.78000000,-6.70000000,0.00000000,0.00000000,260.98000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-602.77000000,1304.78000000,-0.95000000,0.00000000,0.00000000,171.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-589.20000000,1302.62000000,-0.95000000,0.00000000,0.00000000,171.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-599.41000000,1326.26000000,-0.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(16000,-585.84000000,1324.10000000,-0.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-601.75000000,1315.94000000,9.07000000,0.00000000,0.00000000,351.02000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-596.38000000,1315.11000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-578.95000000,1303.31000000,4.70000000,0.00000000,90.00000000,170.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-576.28000000,1320.17000000,4.70000000,0.00000000,90.00000000,170.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-577.54000000,1312.04000000,4.70000000,0.00000000,90.00000000,170.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-578.14000000,1307.72000000,4.99000000,0.00000000,90.00000000,170.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-576.77000000,1316.37000000,4.99000000,0.00000000,90.00000000,170.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-586.09000000,1313.44000000,9.07000000,0.00000000,0.00000000,351.02000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-580.72000000,1312.59000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-577.48000000,1309.70000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3385,-576.73000000,1314.30000000,9.84000000,0.00000000,0.00000000,351.52000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-679.76000000,1261.20000000,-1.97000000,0.00000000,0.00000000,261.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-683.77000000,1235.96000000,-1.97000000,0.00000000,0.00000000,261.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-654.57000000,1282.97000000,-1.97000000,0.00000000,0.00000000,261.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-634.45000000,1279.31000000,-9.46000000,0.00000000,0.00000000,261.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3998,-658.55000000,1257.79000000,-1.97000000,0.00000000,0.00000000,261.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3361,-632.33000000,1268.76000000,9.20000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(6295,-622.10000000,1259.82000000,-0.29000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1280,-615.75000000,1274.46000000,4.18000000,0.00000000,0.00000000,171.41000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1280,-626.95000000,1274.37000000,4.18000000,0.00000000,0.00000000,171.41000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,-645.01000000,1294.27000000,11.95000000,0.00000000,0.00000000,261.08000000, .streamdistance = 10000.0); //
	CreateDynamicObject(983,-686.15000000,1300.73000000,11.96000000,0.00000000,0.00000000,81.01000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,-721.65000000,1275.95000000,11.95000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(983,-720.48000000,1262.80000000,11.96000000,0.00000000,0.00000000,81.01000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,-652.97000000,1244.14000000,11.95000000,0.00000000,0.00000000,261.08000000, .streamdistance = 10000.0); //
	CreateDynamicObject(982,-678.13000000,1248.80000000,11.95000000,0.00000000,0.00000000,257.89000000, .streamdistance = 10000.0); //
	CreateDynamicObject(983,-632.88000000,1289.13000000,11.96000000,0.00000000,0.00000000,170.87000000, .streamdistance = 10000.0); //
	CreateDynamicObject(983,-633.87000000,1282.81000000,11.96000000,0.00000000,0.00000000,170.87000000, .streamdistance = 10000.0); //
	CreateDynamicObject(983,-634.89000000,1276.49000000,11.96000000,0.00000000,0.00000000,170.87000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3361,-632.02000000,1270.72000000,9.20000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3361,-626.98000000,1269.93000000,5.80000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(11431,-629.60000000,1275.31000000,5.40000000,356.86000000,0.00000000,350.70000000, .streamdistance = 10000.0); //
	CreateDynamicObject(9245,-639.69000000,1283.17000000,22.15000000,0.00000000,0.00000000,260.68000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-645.15000000,1259.47000000,10.51000000,0.00000000,0.00000000,300.50000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-660.07000000,1252.87000000,10.51000000,0.00000000,0.00000000,291.66000000, .streamdistance = 10000.0); //
	CreateDynamicObject(3578,-655.86000000,1285.34000000,10.51000000,0.00000000,0.00000000,351.00000000, .streamdistance = 10000.0); //
	CreateDynamicObject(652,-628.50000000,1288.87000000,0.76000000,356.86000000,0.00000000,3.14000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1358,-630.25000000,1286.05000000,4.95000000,0.00000000,0.00000000,174.77000000, .streamdistance = 10000.0); //
	CreateDynamicObject(1280,-615.08000000,1278.22000000,4.18000000,0.00000000,0.00000000,171.41000000, .streamdistance = 10000.0); //
	CreateDynamicObject(652,-726.67000000,1287.61000000,9.59000000,356.86000000,0.00000000,3.14000000, .streamdistance = 10000.0); //
	CreateDynamicObject(652,-630.34000000,1257.68000000,4.74000000,356.86000000,0.00000000,3.14000000, .streamdistance = 10000.0); //
	//---------------Indiana V4 ------------------------ By Blew --------------- [END]
	//---------------Cobra Airline's Base -------------------------------------- [START]
	CreateDynamicObject(4563,59.57812500,-1163.52441406,-162.32124329,0.00000000,0.00000000,165.99792480, .streamdistance = 10000.0); //object(laskyscrap1_lan) (1)
	CreateDynamicObject(4563,50.90332031,-1198.74023438,-162.32357788,0.00000000,0.00000000,165.99792480, .streamdistance = 10000.0); //object(laskyscrap1_lan) (2)
	CreateDynamicObject(4563,33.20618439,-1156.92114258,-162.32577515,0.00000000,0.00000000,165.99792480, .streamdistance = 10000.0); //object(laskyscrap1_lan) (3)
	CreateDynamicObject(4563,47.29189682,-1169.72448730,-162.31730652,0.00000000,0.00000000,345.99792480, .streamdistance = 10000.0); //object(laskyscrap1_lan) (4)
	CreateDynamicObject(4563,24.41699219,-1192.14648438,-162.33114624,0.00000000,0.00000000,165.99792480, .streamdistance = 10000.0); //object(laskyscrap1_lan) (5)
	CreateDynamicObject(4563,-2.31250000,-1236.03808594,-162.33663940,0.00000000,0.00000000,127.99621582, .streamdistance = 10000.0); //object(laskyscrap1_lan) (6)
	CreateDynamicObject(4563,40.89062500,-1228.10937500,-162.33340454,0.00000000,0.00000000,123.99172974, .streamdistance = 10000.0); //object(laskyscrap1_lan) (7)
	CreateDynamicObject(4563,9.40234375,-1251.01074219,-162.33706665,0.00000000,0.00000000,127.99624634, .streamdistance = 10000.0); //object(laskyscrap1_lan) (8)
	CreateDynamicObject(4563,-41.17723083,-1266.41015625,-162.34924316,0.00000000,0.00000000,127.99624634, .streamdistance = 10000.0); //object(laskyscrap1_lan) (9)
	CreateDynamicObject(4563,-35.32128906,-1272.65527344,-162.34226990,0.00000000,0.00000000,217.98522949, .streamdistance = 10000.0); //object(laskyscrap1_lan) (10)
	CreateDynamicObject(4563,36.82772064,-1141.43823242,-162.31053162,0.00000000,0.00000000,75.24792480, .streamdistance = 10000.0); //object(laskyscrap1_lan) (11)
	CreateDynamicObject(4563,53.32226562,-1145.87988281,-162.31109619,0.00000000,0.00000000,344.74548340, .streamdistance = 10000.0); //object(laskyscrap1_lan) (12)
	CreateDynamicObject(8168,-129.88067627,-1254.33789062,3.82555962,0.00000000,0.00000000,24.00000000, .streamdistance = 10000.0); //object(vgs_guardhouse01) (1)
	CreateDynamicObject(3115,-35.98535156,-1240.05078125,11.88004208,0.00000000,0.00000000,306.74926758, .streamdistance = 10000.0); //object(carrier_lift1_sfse) (1)
	CreateDynamicObject(3115,-19.09508514,-1227.46008301,11.88033199,0.00000000,0.00000000,306.74926758, .streamdistance = 10000.0); //object(carrier_lift1_sfse) (2)
	CreateDynamicObject(9819,-45.99781036,-1145.58337402,1.68160629,0.00000000,0.00000000,116.00000000, .streamdistance = 10000.0); //object(shpbridge_sfw02) (1)
	CreateDynamicObject(1676,-10.32295799,-1283.42529297,13.59612560,0.00000000,0.00000000,310.00000000, .streamdistance = 10000.0); //object(washgaspump) (1)
	CreateDynamicObject(1676,-12.96543312,-1280.25708008,13.59574413,0.00000000,0.00000000,309.99572754, .streamdistance = 10000.0); //object(washgaspump) (2)
	CreateDynamicObject(3287,9.38421726,-1266.75976562,16.76056099,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(cxrf_oiltank) (1)
	CreateDynamicObject(3287,3.48269367,-1259.77893066,16.75868416,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(cxrf_oiltank) (2)
	CreateDynamicObject(2932,14.23534107,-1265.60583496,13.47166443,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(kmb_container_blue) (1)
	CreateDynamicObject(2932,16.61035919,-1263.62976074,13.46932983,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(kmb_container_blue) (2)
	CreateDynamicObject(2932,18.99268723,-1261.66113281,13.47009277,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(kmb_container_blue) (3)
	CreateDynamicObject(2932,18.99611473,-1261.67297363,16.37542725,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(kmb_container_blue) (4)
	CreateDynamicObject(2932,15.44395447,-1264.65490723,16.37466431,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(kmb_container_blue) (5)
	CreateDynamicObject(2932,21.37747002,-1259.65087891,13.47085571,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(kmb_container_blue) (6)
	CreateDynamicObject(2932,23.74561691,-1257.68261719,13.47161865,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(kmb_container_blue) (7)
	CreateDynamicObject(2932,18.99806213,-1261.68518066,19.28076172,0.00000000,0.00000000,39.99572754, .streamdistance = 10000.0); //object(kmb_container_blue) (8)
	CreateDynamicObject(13489,-13.00015640,-1288.56005859,14.63066387,0.00000000,0.00000000,308.00000000, .streamdistance = 10000.0); //object(sw_fueldrum04) (1)
	CreateDynamicObject(1572,-54.94951248,-1254.73168945,12.57536602,0.00000000,0.00000000,336.00000000, .streamdistance = 10000.0); //object(cj_air_trolly) (1)
	CreateDynamicObject(1572,-58.38696671,-1253.71606445,12.57484722,0.00000000,0.00000000,283.49975586, .streamdistance = 10000.0); //object(cj_air_trolly) (2)
	CreateDynamicObject(1572,-56.95564270,-1256.15234375,12.57475567,0.00000000,0.00000000,17.99560547, .streamdistance = 10000.0); //object(cj_air_trolly) (3)
	CreateDynamicObject(1682,-50.91817093,-1276.53540039,33.21385574,0.00000000,0.00000000,346.00000000, .streamdistance = 10000.0); //object(ap_radar1_01) (1)
	CreateDynamicObject(3666,89.03353119,-1125.34716797,12.55051994,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (1)
	CreateDynamicObject(3666,84.14046478,-1143.56188965,12.55511284,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (2)
	CreateDynamicObject(3666,80.51242065,-1157.01879883,12.55851555,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (3)
	CreateDynamicObject(3666,76.75296021,-1171.83312988,12.56226921,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,72.77935028,-1187.11621094,12.55405998,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (5)
	CreateDynamicObject(3666,68.97222137,-1202.61560059,12.54969597,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (6)
	CreateDynamicObject(3666,61.35058594,-1232.96875000,12.53184319,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (7)
	CreateDynamicObject(3666,54.78604889,-1241.34777832,12.53993034,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (8)
	CreateDynamicObject(3666,44.29958344,-1248.10852051,12.55404472,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (9)
	CreateDynamicObject(3666,32.54690170,-1256.77868652,12.55405998,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (10)
	CreateDynamicObject(3666,22.77652740,-1264.94604492,12.53637505,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (11)
	CreateDynamicObject(3666,11.44994545,-1273.78881836,12.53637505,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (12)
	CreateDynamicObject(3666,0.04547691,-1282.59863281,12.53635979,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (13)
	CreateDynamicObject(3666,-8.91322708,-1289.74084473,12.52790642,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (14)
	CreateDynamicObject(3666,15.67773438,-1105.38476562,12.55097771,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (15)
	CreateDynamicObject(3666,11.81617737,-1119.56250000,12.55459404,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (16)
	CreateDynamicObject(3666,8.46386719,-1132.18261719,12.55778313,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (17)
	CreateDynamicObject(2773,-52.51175308,-1261.53637695,12.53433323,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(4832,-54.10644531,-1274.56835938,51.46417236,0.00000000,0.00000000,309.99072266, .streamdistance = 10000.0); //object(airtwer_las) (1)
	CreateDynamicObject(970,-123.98416901,-1255.98889160,2.64398885,0.00000000,0.00000000,10.25000000, .streamdistance = 10000.0); //object(fencesmallb) (2)
	CreateDynamicObject(970,-120.01966095,-1255.27673340,2.57821774,0.00000000,0.00000000,10.24475098, .streamdistance = 10000.0); //object(fencesmallb) (3)
	CreateDynamicObject(970,-116.06114197,-1254.33959961,2.54659867,0.00000000,0.00000000,16.24475098, .streamdistance = 10000.0); //object(fencesmallb) (4)
	CreateDynamicObject(970,-112.02478027,-1253.22619629,2.50931668,0.00000000,0.00000000,14.49328613, .streamdistance = 10000.0); //object(fencesmallb) (5)
	CreateDynamicObject(970,-108.09121704,-1252.21777344,2.47076201,0.00000000,0.00000000,14.24328613, .streamdistance = 10000.0); //object(fencesmallb) (6)
	CreateDynamicObject(970,-104.13261414,-1251.19641113,2.43064356,358.00122070,2.00122070,14.30810547, .streamdistance = 10000.0); //object(fencesmallb) (7)
	CreateDynamicObject(970,-100.27191925,-1249.85595703,2.13088393,358.01025391,6.00192261,24.44357300, .streamdistance = 10000.0); //object(fencesmallb) (8)
	CreateDynamicObject(970,-96.53749084,-1248.17651367,1.73228955,358.00598145,5.99853516,24.43908691, .streamdistance = 10000.0); //object(fencesmallb) (9)
	CreateDynamicObject(970,-92.80345154,-1246.49584961,1.31899238,358.00598145,5.99853516,24.43908691, .streamdistance = 10000.0); //object(fencesmallb) (10)
	CreateDynamicObject(970,-89.05566406,-1244.80200195,1.06133914,357.99511719,0.49520874,24.24691772, .streamdistance = 10000.0); //object(fencesmallb) (11)
	CreateDynamicObject(970,-85.46813202,-1242.82324219,1.23163390,358.00588989,353.99041748,33.51968384, .streamdistance = 10000.0); //object(fencesmallb) (12)
	CreateDynamicObject(970,-82.03968811,-1240.52172852,1.60152650,357.99859619,356.24053955,33.59490967, .streamdistance = 10000.0); //object(fencesmallb) (13)
	CreateDynamicObject(970,-78.61361694,-1238.25683594,1.88261366,357.99499512,356.23718262,33.59069824, .streamdistance = 10000.0); //object(fencesmallb) (14)
	CreateDynamicObject(970,-75.20117188,-1235.95800781,2.16474962,357.98950195,356.23168945,33.59069824, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-62.65041733,-1245.06323242,12.55618095,0.00000000,0.00000000,38.00000000, .streamdistance = 10000.0); //object(fencesmallb) (16)
	CreateDynamicObject(970,-65.85781860,-1247.57324219,12.55518913,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (17)
	CreateDynamicObject(970,-69.06990051,-1250.08764648,12.55418205,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (18)
	CreateDynamicObject(970,-72.29402161,-1252.60119629,12.55319023,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (19)
	CreateDynamicObject(970,-75.51863098,-1255.12365723,12.55218315,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (20)
	CreateDynamicObject(970,-78.75035095,-1257.64648438,12.55119133,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (21)
	CreateDynamicObject(970,-80.89780426,-1259.30920410,12.55050468,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (22)
	CreateDynamicObject(970,-59.51644897,-1242.63366699,12.55714226,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (23)
	CreateDynamicObject(970,-56.46993637,-1240.25048828,12.55808830,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (24)
	CreateDynamicObject(970,-53.27095032,-1237.74755859,12.55909538,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (25)
	CreateDynamicObject(970,-50.18878555,-1235.34130859,12.56005669,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (26)
	CreateDynamicObject(970,-46.99037170,-1232.85009766,12.56104851,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (27)
	CreateDynamicObject(970,-43.75355148,-1230.32543945,12.56204033,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (28)
	CreateDynamicObject(970,-40.48485947,-1227.86157227,12.56377983,0.00000000,0.00000000,35.99621582, .streamdistance = 10000.0); //object(fencesmallb) (29)
	CreateDynamicObject(970,-37.18943405,-1225.37280273,12.56478691,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (30)
	CreateDynamicObject(970,-34.01245499,-1222.89416504,12.56577873,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (31)
	CreateDynamicObject(970,-30.79408646,-1220.37683105,12.56677055,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (32)
	CreateDynamicObject(970,-27.56692123,-1217.85729980,12.56777763,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (33)
	CreateDynamicObject(970,-24.33496094,-1215.33496094,12.56876945,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-21.09563446,-1212.80249023,12.56977654,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (35)
	CreateDynamicObject(970,-17.87373543,-1210.28613281,12.57076836,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (36)
	CreateDynamicObject(970,-14.70224667,-1207.81713867,12.57177544,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (37)
	CreateDynamicObject(970,-11.48912525,-1205.31066895,12.57276726,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(fencesmallb) (38)
	CreateDynamicObject(970,27.01099396,-1261.10119629,12.56738091,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,23.77153587,-1263.64099121,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,20.53615189,-1266.17285156,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,17.57792282,-1268.48803711,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,14.41154671,-1270.96899414,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,11.24588203,-1273.44201660,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,8.02239418,-1275.97167969,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,4.81900692,-1278.47485352,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,1.64646149,-1280.94750977,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-1.56938362,-1283.46411133,12.57407951,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-4.80622101,-1285.99157715,12.56706047,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-7.99815369,-1288.47912598,12.56606865,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-11.24688148,-1291.03479004,12.56506157,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-14.45514488,-1293.55102539,12.56405449,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-17.69155693,-1296.09863281,12.56304741,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-20.88899612,-1298.60498047,12.56205559,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-24.08789062,-1301.11499023,12.56106377,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-27.25968933,-1303.58435059,12.56008720,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-30.47374916,-1306.10583496,12.55908012,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-33.72628021,-1308.65246582,12.55807304,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-36.96614075,-1311.18920898,12.55706596,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-39.09556580,-1312.86474609,12.55640984,0.00000000,0.00000000,37.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-41.98036957,-1312.54321289,12.55760002,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-44.49723434,-1309.29113770,12.55859184,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-47.04299164,-1306.02978516,12.55961418,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-49.56459808,-1302.80590820,12.56060600,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-52.09881210,-1299.55041504,12.56207085,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-54.63376236,-1296.29528809,12.56262016,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-57.15167236,-1293.07458496,12.56362724,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-59.67826843,-1289.84606934,12.56461906,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-62.21133041,-1286.60437012,12.56564140,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-64.74162292,-1283.36145020,12.56664848,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-67.27342224,-1280.12353516,12.56764030,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-69.81081390,-1276.87854004,12.56864738,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-72.33134460,-1273.63818359,12.55402946,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-74.86936951,-1270.39782715,12.55302238,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-77.41606140,-1267.13500977,12.55201530,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-79.95237732,-1263.88952637,12.55100822,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(970,-81.23858643,-1262.23852539,12.55048943,0.00000000,0.00000000,307.99072266, .streamdistance = 10000.0); //object(fencesmallb) (34)
	CreateDynamicObject(2773,-50.33370209,-1259.97265625,12.53433323,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-48.30451965,-1258.46069336,12.53433323,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-46.32127380,-1256.98803711,12.53433323,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-54.14963531,-1259.11840820,12.52145481,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-52.08806229,-1257.58557129,12.52208042,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-50.10998535,-1256.13696289,12.52267551,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-48.07420349,-1254.63269043,12.52328587,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-56.03369141,-1256.95300293,12.52140903,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-53.98130417,-1255.44079590,12.52203465,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-51.97151947,-1253.96911621,12.52264500,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,-49.87234497,-1252.44104004,12.52327061,0.00000000,0.00000000,305.99121094, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(1537,-54.44682312,-1261.08264160,12.01710510,0.00000000,0.00000000,129.00000000, .streamdistance = 10000.0); //object(gen_doorext16) (1)
	CreateDynamicObject(1537,-55.36017990,-1259.94287109,12.00063705,0.00000000,0.00000000,127.74597168, .streamdistance = 10000.0); //object(gen_doorext16) (2)
	CreateDynamicObject(1537,-56.28860474,-1258.76477051,12.00386047,0.00000000,0.00000000,127.99072266, .streamdistance = 10000.0); //object(gen_doorext16) (4)
	CreateDynamicObject(1537,-57.16191483,-1257.64135742,12.00411987,0.00000000,0.00000000,127.99072266, .streamdistance = 10000.0); //object(gen_doorext16) (5)
	CreateDynamicObject(1572,-59.47137451,-1251.92712402,12.57557964,0.00000000,0.00000000,143.49243164, .streamdistance = 10000.0); //object(cj_air_trolly) (2)
	CreateDynamicObject(3666,50.18603134,-1133.89465332,12.56091118,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,46.63854218,-1147.30834961,12.56252861,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,38.21984863,-1179.97644043,12.55575371,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,34.08914566,-1196.11364746,12.54479790,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,30.09406662,-1212.12390137,12.54076958,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,26.85715294,-1225.18139648,12.53289604,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(792,-50.24844742,-1239.28344727,12.25799179,0.00000000,0.00000000,36.50000000, .streamdistance = 10000.0); //object(aw_streettree1) (1)
	CreateDynamicObject(792,-46.86854172,-1243.99658203,12.25790024,0.00000000,0.00000000,36.49658203, .streamdistance = 10000.0); //object(aw_streettree1) (2)
	CreateDynamicObject(792,-43.50826645,-1248.74206543,12.28280830,0.00000000,0.00000000,36.49108887, .streamdistance = 10000.0); //object(aw_streettree1) (3)
	CreateDynamicObject(792,-39.86239243,-1253.63745117,12.25928879,0.00000000,0.00000000,36.49658203, .streamdistance = 10000.0); //object(aw_streettree1) (4)
	CreateDynamicObject(2001,-52.84260941,-1262.37500000,12.01710510,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(nu_plant_ofc) (1)
	CreateDynamicObject(2001,-57.05894852,-1257.22961426,12.00395203,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(nu_plant_ofc) (2)
	CreateDynamicObject(700,-135.12451172,-1266.56860352,2.30021477,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (1)
	CreateDynamicObject(700,-126.28555298,-1265.26806641,2.15898323,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (2)
	CreateDynamicObject(700,-117.20562744,-1263.08251953,1.91267586,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (3)
	CreateDynamicObject(700,-108.55140686,-1261.09680176,1.82525253,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (4)
	CreateDynamicObject(700,-99.10074615,-1258.56701660,1.58784676,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (5)
	CreateDynamicObject(700,-88.92256927,-1254.09057617,0.52598000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (6)
	CreateDynamicObject(700,-79.16497803,-1248.51428223,1.01303864,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (7)
	CreateDynamicObject(700,-70.11730194,-1242.45703125,2.22549057,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (8)
	CreateDynamicObject(700,-61.16532898,-1236.80224609,3.45860481,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (9)
	CreateDynamicObject(700,-53.28262329,-1231.52465820,4.51819801,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (10)
	CreateDynamicObject(700,-43.53027344,-1225.15625000,4.76466179,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (11)
	CreateDynamicObject(700,-35.77542496,-1219.46545410,4.73971176,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (12)
	CreateDynamicObject(700,-28.07168579,-1213.09118652,4.81685066,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (13)
	CreateDynamicObject(700,-20.66736984,-1204.19409180,5.53800964,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (14)
	CreateDynamicObject(700,-15.45346451,-1196.23046875,5.63595009,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(sm_veg_tree6) (15)
	CreateDynamicObject(3666,5.81138229,-1142.91210938,12.56049919,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (17)
	CreateDynamicObject(3666,3.35970688,-1152.61132812,12.56294060,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (17)
	CreateDynamicObject(3666,1.08219528,-1162.56213379,12.53973198,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (17)
	CreateDynamicObject(3666,-1.39223289,-1172.42126465,12.54075432,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (17)
	CreateDynamicObject(3666,-6.08565712,-1192.38073730,12.53573418,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (17)
	CreateDynamicObject(3666,-9.14871311,-1203.48693848,12.53568840,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (17)
	CreateDynamicObject(3666,28.08794403,-1108.38366699,12.55409050,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (15)
	CreateDynamicObject(3666,45.67164230,-1113.49902344,12.56153679,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (15)
	CreateDynamicObject(3666,58.39250565,-1116.83825684,12.56178093,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (15)
	CreateDynamicObject(3666,73.66163635,-1120.56799316,12.55448723,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (15)
	CreateDynamicObject(3666,-32.60506058,-1224.74096680,12.73130226,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,-17.86940765,-1213.82958984,12.73147392,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,-49.49148941,-1237.33581543,12.73101044,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,-34.79077148,-1226.29980469,12.73146439,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3934,-18.82840538,-1227.44665527,12.16625786,0.00000000,0.00000000,307.00000000, .streamdistance = 10000.0); //object(helipad01) (1)
	CreateDynamicObject(3934,-35.61017990,-1240.13549805,12.16912079,0.00000000,0.00000000,306.50000000, .streamdistance = 10000.0); //object(helipad01) (2)
	CreateDynamicObject(1359,-38.21911240,-1254.33776855,12.71566200,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cj_bin1) (1)
	CreateDynamicObject(1359,-49.60253906,-1251.20117188,12.70484352,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cj_bin1) (2)
	CreateDynamicObject(1359,-51.18108368,-1238.29748535,12.70649147,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cj_bin1) (3)
	CreateDynamicObject(951,-25.70864487,-1301.74328613,12.76045036,0.00000000,0.00000000,15.99609375, .streamdistance = 10000.0); //object(cj_view_tele2) (1)
	CreateDynamicObject(1346,-51.69314194,-1263.86914062,13.36811066,0.00000000,0.00000000,129.99572754, .streamdistance = 10000.0); //object(cj_phone_kiosk2) (2)
	CreateDynamicObject(1346,-50.81337357,-1264.89550781,13.36811066,0.00000000,0.00000000,129.99572754, .streamdistance = 10000.0); //object(cj_phone_kiosk2) (3)
	CreateDynamicObject(3666,-37.14571762,-1253.78002930,12.73086643,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,-22.50688362,-1242.86889648,12.68182278,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,-20.25548553,-1241.17590332,12.73113537,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3666,-5.67746830,-1230.20898438,12.68161011,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(1319,-129.46124268,-1264.75292969,2.65532470,0.00000000,0.00000000,64.00000000, .streamdistance = 10000.0); //object(ws_ref_bollard) (1)
	CreateDynamicObject(1319,-121.85286713,-1263.47607422,2.61468291,0.00000000,0.00000000,74.00000000, .streamdistance = 10000.0); //object(ws_ref_bollard) (2)
	CreateDynamicObject(1319,-112.03713989,-1261.65051270,2.42779136,0.00000000,0.00000000,82.00000000, .streamdistance = 10000.0); //object(ws_ref_bollard) (3)
	CreateDynamicObject(1319,-103.83361053,-1259.89978027,2.33398628,0.00000000,0.00000000,63.99536133, .streamdistance = 10000.0); //object(ws_ref_bollard) (4)
	CreateDynamicObject(1319,-94.28320312,-1256.21191406,1.61990738,0.00000000,0.00000000,63.99536133, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1337,-34.50878906,-1195.09082031,23.98481560,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(binnt07_la) (7)
	CreateDynamicObject(1364,-45.10056305,-1246.26904297,12.79170513,0.00000000,0.00000000,306.00000000, .streamdistance = 10000.0); //object(cj_bush_prop) (1)
	CreateDynamicObject(1364,-48.62691498,-1241.69689941,12.79204082,0.00000000,0.00000000,305.99670410, .streamdistance = 10000.0); //object(cj_bush_prop) (2)
	CreateDynamicObject(1364,-41.63537979,-1251.07885742,12.79197979,0.00000000,0.00000000,305.99670410, .streamdistance = 10000.0); //object(cj_bush_prop) (3)
	CreateDynamicObject(3511,27.83797073,-1257.88378906,12.02592468,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_nitree_b01) (1)
	CreateDynamicObject(3511,-7.82939148,-1286.53808594,12.01600647,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_nitree_b01) (3)
	CreateDynamicObject(3511,-18.25781250,-1290.34667969,12.01342773,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_nitree_b01) (4)
	CreateDynamicObject(3511,-31.71578598,-1285.74548340,12.01152039,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_nitree_b01) (5)
	CreateDynamicObject(3511,-46.95605469,-1266.82128906,12.01567078,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(vgsn_nitree_b01) (6)
	CreateDynamicObject(951,-27.89811134,-1303.42736816,12.75977898,0.00000000,0.00000000,31.99218750, .streamdistance = 10000.0); //object(cj_view_tele2) (2)
	CreateDynamicObject(2797,-55.44108200,-1259.97607422,15.07293606,0.00000000,0.00000000,308.00000000, .streamdistance = 10000.0); //object(cj_air_d_5) (1)
	CreateDynamicObject(3932,-32.44531250,-1292.13867188,13.77686787,0.00000000,0.00000000,218.24340820, .streamdistance = 10000.0); //object(hanger) (1)
	CreateDynamicObject(3932,-43.33886719,-1300.66699219,13.77326679,0.00000000,0.00000000,38.24340820, .streamdistance = 10000.0); //object(hanger) (2)
	CreateDynamicObject(3877,-47.33496094,-1299.29492188,29.17539978,0.00000000,0.00000000,309.99572754, .streamdistance = 10000.0); //object(sf_rooflite) (1)
	CreateDynamicObject(1825,-31.77526283,-1293.86511230,12.01029968,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(kb_table_chairs1) (1)
	CreateDynamicObject(1670,-31.99415016,-1293.81579590,12.90990448,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(propcollecttable) (1)
	CreateDynamicObject(1281,-28.03840256,-1295.64221191,12.81110954,0.00000000,0.00000000,38.00000000, .streamdistance = 10000.0); //object(parktable1) (1)
	CreateDynamicObject(1281,-31.04296875,-1298.17968750,12.81025505,0.00000000,0.00000000,347.99194336, .streamdistance = 10000.0); //object(parktable1) (2)
	CreateDynamicObject(1670,-30.44335938,-1298.32226562,12.84289360,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(propcollecttable) (2)
	CreateDynamicObject(1670,-28.23539543,-1295.88867188,12.84740353,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(propcollecttable) (3)
	CreateDynamicObject(16151,-38.96777344,-1294.70800781,12.01005554,0.00000000,0.00000000,127.49633789, .streamdistance = 10000.0); //object(ufo_bar) (1)
	CreateDynamicObject(7091,-36.51852798,-1282.55541992,23.79878807,0.00000000,0.00000000,38.75000000, .streamdistance = 10000.0); //object(vegasflag02) (1)
	CreateDynamicObject(1211,-8.99053955,-1284.88916016,12.40184689,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(fire_hydrant) (1)
	CreateDynamicObject(1211,-50.16963959,-1265.89428711,12.37791538,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(fire_hydrant) (2)
	CreateDynamicObject(1342,-41.86532211,-1305.56860352,13.04097176,0.00000000,0.00000000,306.00000000, .streamdistance = 10000.0); //object(noodlecart_prop) (1)
	CreateDynamicObject(1340,-42.16969299,-1309.53857422,13.13465118,0.00000000,0.00000000,34.75000000, .streamdistance = 10000.0); //object(chillidogcart) (1)
	CreateDynamicObject(1341,-39.52704239,-1303.38659668,13.01009369,0.00000000,0.00000000,307.99987793, .streamdistance = 10000.0); //object(icescart_prop) (1)
	CreateDynamicObject(3578,64.53952789,-1146.67224121,11.27146053,0.00000000,0.00000000,254.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (1)
	CreateDynamicObject(3578,60.20911026,-1161.80676270,11.27529812,0.00000000,0.00000000,254.24841309, .streamdistance = 10000.0); //object(dockbarr1_la) (2)
	CreateDynamicObject(3578,55.89404297,-1177.32641602,11.29210377,0.00000000,0.00000000,254.74841309, .streamdistance = 10000.0); //object(dockbarr1_la) (3)
	CreateDynamicObject(3578,51.62166595,-1193.65014648,11.31077099,0.00000000,0.00000000,255.99841309, .streamdistance = 10000.0); //object(dockbarr1_la) (4)
	CreateDynamicObject(3578,47.62313080,-1210.08081055,11.25930691,0.00000000,0.00000000,256.74536133, .streamdistance = 10000.0); //object(dockbarr1_la) (5)
	CreateDynamicObject(3578,43.87659454,-1226.08056641,11.25949001,0.00000000,0.00000000,257.24487305, .streamdistance = 10000.0); //object(dockbarr1_la) (6)
	CreateDynamicObject(3578,82.62702179,-1149.08447266,11.29588795,0.00000000,0.00000000,254.24560547, .streamdistance = 10000.0); //object(dockbarr1_la) (7)
	CreateDynamicObject(3578,78.67254639,-1164.10266113,11.29970264,0.00000000,0.00000000,255.74560547, .streamdistance = 10000.0); //object(dockbarr1_la) (8)
	CreateDynamicObject(3578,74.64041138,-1179.55810547,11.29152393,0.00000000,0.00000000,256.24230957, .streamdistance = 10000.0); //object(dockbarr1_la) (9)
	CreateDynamicObject(3578,70.88608551,-1194.59533691,11.29532337,0.00000000,0.00000000,256.23962402, .streamdistance = 10000.0); //object(dockbarr1_la) (10)
	CreateDynamicObject(3578,66.99952698,-1210.22119141,11.28903675,0.00000000,0.00000000,256.23962402, .streamdistance = 10000.0); //object(dockbarr1_la) (11)
	CreateDynamicObject(3578,63.35015106,-1225.02661133,11.26399136,0.00000000,0.00000000,256.23962402, .streamdistance = 10000.0); //object(dockbarr1_la) (12)
	CreateDynamicObject(3666,65.18435669,-1217.93920898,12.54969597,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (7)
	CreateDynamicObject(3578,48.78173828,-1139.53833008,11.27529812,0.00000000,0.00000000,255.74841309, .streamdistance = 10000.0); //object(dockbarr1_la) (13)
	CreateDynamicObject(3578,44.80174255,-1154.89318848,11.30189991,0.00000000,0.00000000,255.74523926, .streamdistance = 10000.0); //object(dockbarr1_la) (14)
	CreateDynamicObject(3578,40.52821350,-1171.66113281,11.26666164,0.00000000,0.00000000,255.74523926, .streamdistance = 10000.0); //object(dockbarr1_la) (15)
	CreateDynamicObject(3578,36.31935883,-1187.96191406,11.28624439,0.00000000,0.00000000,255.74523926, .streamdistance = 10000.0); //object(dockbarr1_la) (16)
	CreateDynamicObject(3578,32.21347046,-1204.22460938,11.25714016,0.00000000,0.00000000,255.74523926, .streamdistance = 10000.0); //object(dockbarr1_la) (17)
	CreateDynamicObject(3578,28.19037247,-1219.78625488,11.25540066,0.00000000,0.00000000,255.74523926, .streamdistance = 10000.0); //object(dockbarr1_la) (18)
	CreateDynamicObject(3666,42.51361847,-1163.39135742,12.55642509,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (4)
	CreateDynamicObject(3998,30.77148438,-1098.11132812,-1.23813057,0.00000000,0.00000000,164.00000000, .streamdistance = 10000.0); //object(court1_lan) (1)
	CreateDynamicObject(3998,45.12207031,-1102.22265625,-1.22679734,0.00000000,0.00000000,163.99841309, .streamdistance = 10000.0); //object(court1_lan) (2)
	CreateDynamicObject(3361,50.29492188,-1099.76953125,9.83586216,0.00000000,0.00000000,73.99841309, .streamdistance = 10000.0); //object(cxref_woodstair) (2)
	CreateDynamicObject(3361,51.92436981,-1094.03894043,5.96082497,0.00000000,0.00000000,73.99841309, .streamdistance = 10000.0); //object(cxref_woodstair) (3)
	CreateDynamicObject(3361,48.37047195,-1099.22668457,9.93581104,0.00000000,0.00000000,73.99841309, .streamdistance = 10000.0); //object(cxref_woodstair) (4)
	CreateDynamicObject(3361,50.00554657,-1093.49536133,5.96082878,0.00000000,0.00000000,73.99841309, .streamdistance = 10000.0); //object(cxref_woodstair) (5)
	CreateDynamicObject(3361,56.40820312,-1077.93945312,4.42051172,0.00000000,0.00000000,73.99291992, .streamdistance = 10000.0); //object(cxref_woodstair) (6)
	CreateDynamicObject(3361,58.06347656,-1072.18457031,0.42500007,0.00000000,0.00000000,73.99291992, .streamdistance = 10000.0); //object(cxref_woodstair) (7)
	CreateDynamicObject(11495,61.26356888,-1061.09216309,0.12500000,0.00000000,0.00000000,344.00000000, .streamdistance = 10000.0); //object(des_ranchjetty) (1)
	CreateDynamicObject(9245,31.20232964,-1084.77014160,18.32032013,0.00000000,0.00000000,74.00000000, .streamdistance = 10000.0); //object(cstguard_sfn01) (1)
	CreateDynamicObject(11495,47.68240738,-1065.57531738,0.15000001,0.00000000,0.00000000,253.99841309, .streamdistance = 10000.0); //object(des_ranchjetty) (3)
	CreateDynamicObject(5441,-57.07501221,-1170.24877930,-12.17315388,0.00000000,335.99487305,347.49755859, .streamdistance = 10000.0); //object(laeroad12) (1)
	CreateDynamicObject(970,-71.81505585,-1233.69738770,2.44454598,357.98950195,356.23168945,33.59069824, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-68.43691254,-1231.43334961,2.72385502,357.98950195,356.23168945,33.59069824, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-65.03707886,-1229.16198730,3.00458121,357.98950195,356.23168945,33.59069824, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-61.68278885,-1226.92431641,3.28137732,357.98950195,356.23168945,33.59069824, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-58.31864166,-1224.68017578,3.57033730,357.98950195,356.23168945,33.59069824, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-54.90880966,-1222.40979004,3.74759626,357.98541260,358.98339844,33.68734741, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-51.53640747,-1220.13867188,3.87380195,357.98608398,357.22717285,33.62252808, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-48.17132187,-1217.80456543,4.05084276,357.98400879,357.22595215,35.61816406, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-44.85051346,-1215.42687988,4.11599445,357.97668457,1.22842407,35.75897217, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-41.49266434,-1213.02172852,4.24797821,357.97454834,357.47259521,35.62228394, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-38.28271866,-1210.53820801,4.37002945,357.97155762,358.71844482,39.66192627, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-35.38291168,-1207.65966797,4.55466461,357.96990967,356.96350098,49.59857178, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-32.72190475,-1204.52282715,4.81648540,357.96752930,356.96228027,49.59777832, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-30.01090050,-1201.40698242,5.08251953,357.96752930,356.96228027,49.59777832, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-27.33490372,-1198.27832031,5.34558678,357.96752930,356.96228027,49.59777832, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-24.84147453,-1195.01721191,5.57484913,357.96472168,359.46386719,55.68658447, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-25.33442879,-1192.05297852,5.44010639,2.96047974,356.95458984,323.86181641, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-28.64608955,-1189.69165039,5.07145882,2.94564819,354.44799805,323.98931885, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-31.94729233,-1187.25683594,4.68825722,2.94433594,354.44641113,323.98681641, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-35.26485062,-1184.78759766,4.31366396,2.94433594,354.44641113,323.98681641, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-38.57452011,-1182.36523438,3.91343427,2.94433594,354.44641113,323.98681641, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-40.60526276,-1179.10424805,3.59771705,2.94433594,354.44641113,279.98681641, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-39.59627151,-1175.42749023,3.53330851,2.95053101,2.20117188,229.58740234, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-36.17774200,-1173.34130859,3.73412991,2.93740845,5.70187378,193.40679932, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-32.20481110,-1172.24426270,3.88051796,2.94784546,359.68847656,197.71075439, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-28.52160072,-1170.86315918,3.71079040,2.94433594,359.68688965,203.70996094, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-24.59222794,-1169.61755371,3.81186295,2.92431641,6.69604492,191.35070801, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(970,-21.07842636,-1168.89575195,4.47416115,2.92236328,6.69067383,191.34741211, .streamdistance = 10000.0); //object(fencesmallb) (15)
	CreateDynamicObject(1319,-83.52108765,-1251.15209961,0.95928860,0.00000000,0.00000000,63.99536133, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-74.61926270,-1245.23669434,2.15487361,0.00000000,0.00000000,63.99536133, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-65.85344696,-1239.29492188,3.33632016,0.00000000,0.00000000,63.99536133, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-56.92591858,-1233.84912109,4.56841612,0.00000000,0.00000000,63.99536133, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-49.25650406,-1228.42614746,5.26830769,0.00000000,0.00000000,83.99536133, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-40.09541702,-1222.18920898,5.27095985,0.00000000,0.00000000,103.99047852, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-32.05644226,-1216.28723145,5.24491310,0.00000000,0.00000000,103.98559570, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-24.84861183,-1208.79809570,5.67217970,0.00000000,0.00000000,111.98562622, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-18.80720520,-1200.69628906,6.27346706,0.00000000,0.00000000,111.98364258, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1319,-14.82644653,-1193.39343262,6.15051889,0.00000000,0.00000000,111.98364258, .streamdistance = 10000.0); //object(ws_ref_bollard) (5)
	CreateDynamicObject(1597,-41.63769531,-1263.62304688,14.67288494,0.00000000,0.00000000,303.99719238, .streamdistance = 10000.0); //object(cntrlrsac1) (1)
	CreateDynamicObject(1597,-29.54870987,-1255.45129395,14.66751385,0.00000000,0.00000000,303.99719238, .streamdistance = 10000.0); //object(cntrlrsac1) (2)
	CreateDynamicObject(1597,-26.77644157,-1281.91796875,14.67073345,0.00000000,0.00000000,307.99719238, .streamdistance = 10000.0); //object(cntrlrsac1) (3)
	CreateDynamicObject(1597,-15.79174232,-1273.57348633,14.67424297,0.00000000,0.00000000,307.99621582, .streamdistance = 10000.0); //object(cntrlrsac1) (4)
	CreateDynamicObject(1597,-14.67434216,-1268.01513672,14.68001080,0.00000000,0.00000000,215.99621582, .streamdistance = 10000.0); //object(cntrlrsac1) (5)
	CreateDynamicObject(1597,-16.91100311,-1264.86425781,14.67859173,0.00000000,0.00000000,215.24121094, .streamdistance = 10000.0); //object(cntrlrsac1) (6)
	CreateDynamicObject(3877,-52.23454666,-1293.06445312,29.17539978,0.00000000,0.00000000,309.99572754, .streamdistance = 10000.0); //object(sf_rooflite) (1)
	CreateDynamicObject(3877,-32.91999054,-1287.99194336,29.17539978,0.00000000,0.00000000,309.99572754, .streamdistance = 10000.0); //object(sf_rooflite) (1)
	CreateDynamicObject(3877,-37.76438904,-1281.68505859,29.17539978,0.00000000,0.00000000,309.99572754, .streamdistance = 10000.0); //object(sf_rooflite) (1)
	CreateDynamicObject(2890,56.41300583,-1097.96032715,6.51194763,0.00000000,0.00000000,344.00000000, .streamdistance = 10000.0); //object(kmb_skip) (1)
	CreateDynamicObject(1441,58.45191574,-1097.10388184,7.16359663,0.00000000,0.00000000,78.00000000, .streamdistance = 10000.0); //object(dyn_box_pile_4) (1)
	CreateDynamicObject(1338,58.60821915,-1098.99206543,7.22325754,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(binnt08_la) (1)
	CreateDynamicObject(1327,56.94538116,-1099.24414062,8.09126568,0.00000000,0.00000000,317.00000000, .streamdistance = 10000.0); //object(junk_tyre) (1)
	CreateDynamicObject(1265,56.21779251,-1095.45935059,8.23458099,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(blackbag2) (1)
	CreateDynamicObject(1265,56.08115768,-1096.39196777,8.37867737,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(blackbag2) (2)
	CreateDynamicObject(994,-12.32622910,-1278.42382812,12.01635742,0.00000000,0.00000000,310.00000000, .streamdistance = 10000.0); //object(lhouse_barrier2) (1)
	CreateDynamicObject(994,-14.79060459,-1280.22827148,12.03838253,0.00000000,0.00000000,309.99572754, .streamdistance = 10000.0); //object(lhouse_barrier2) (2)
	CreateDynamicObject(997,-14.89998341,-1280.20959473,12.01559448,0.00000000,0.00000000,38.75000000, .streamdistance = 10000.0); //object(lhouse_barrier3) (1)
	CreateDynamicObject(997,-10.61153412,-1285.30065918,12.01564026,0.00000000,0.00000000,38.74877930, .streamdistance = 10000.0); //object(lhouse_barrier3) (2)
	CreateDynamicObject(3472,-46.77177429,-1303.30957031,12.00839233,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(circuslampost03) (1)
	CreateDynamicObject(3472,-40.39632797,-1312.24243164,12.00595093,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(circuslampost03) (2)
	CreateDynamicObject(3472,-31.36683655,-1305.50891113,12.00862122,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(circuslampost03) (3)
	CreateDynamicObject(3472,-27.89513397,-1290.45568848,12.01155090,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(circuslampost03) (4)
	CreateDynamicObject(3524,-39.29122925,-1301.62280273,14.89313698,0.00000000,0.00000000,38.00000000, .streamdistance = 10000.0); //object(skullpillar01_lvs) (1)
	CreateDynamicObject(3524,-32.63203430,-1296.36694336,14.89507484,0.00000000,0.00000000,37.99621582, .streamdistance = 10000.0); //object(skullpillar01_lvs) (2)
	CreateDynamicObject(1985,-45.34022522,-1299.81604004,15.08766937,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(punchbagnu) (1)
	CreateDynamicObject(9833,-34.69042969,-1302.70898438,15.21093559,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(fountain_sfw) (1)
	CreateDynamicObject(3496,-17.36816597,-1293.28222656,12.01296997,0.00000000,0.00000000,130.00000000, .streamdistance = 10000.0); //object(vgsxrefbballnet) (1)
	CreateDynamicObject(2290,-33.45476913,-1290.10205078,11.98410988,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(swk_couch_1) (1)
	CreateDynamicObject(16780,-32.54649734,-1292.20642090,15.53787994,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(ufo_light03) (1)
	CreateDynamicObject(1815,-33.34474564,-1292.43688965,12.00909424,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(coffee_low_2) (1)
	CreateDynamicObject(1828,-32.41497803,-1292.34423828,12.01040649,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(man_sdr_rug) (1)
	CreateDynamicObject(2099,-29.90763474,-1290.96154785,12.01095581,0.00000000,0.00000000,303.99719238, .streamdistance = 10000.0); //object(med_hi_fi_1) (1)
	CreateDynamicObject(2229,-29.00830269,-1293.04455566,12.01091003,0.00000000,0.00000000,272.00000000, .streamdistance = 10000.0); //object(swank_speaker) (1)
	CreateDynamicObject(2229,-34.28803253,-1290.17749023,12.00910950,0.00000000,0.00000000,43.99951172, .streamdistance = 10000.0); //object(swank_speaker) (2)
	CreateDynamicObject(2232,-43.88942337,-1303.41809082,14.35619164,33.41485596,12.00723267,159.31958008, .streamdistance = 10000.0); //object(med_speaker_4) (2)
	CreateDynamicObject(2224,-33.14170837,-1292.17028809,12.00994873,0.00000000,0.00000000,100.75000000, .streamdistance = 10000.0); //object(cj_sphere_tv) (1)
	CreateDynamicObject(2630,-40.96682358,-1301.14208984,12.00862503,0.00000000,0.00000000,213.00000000, .streamdistance = 10000.0); //object(gym_bike) (1)
	CreateDynamicObject(2628,-43.11497498,-1298.35461426,12.00903320,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(gym_bench2) (1)
	CreateDynamicObject(2627,-43.66496658,-1302.16894531,12.03332138,0.00000000,0.00000000,341.00000000, .streamdistance = 10000.0); //object(gym_treadmill) (1)
	CreateDynamicObject(2632,-42.59067154,-1298.75170898,11.97995090,0.00000000,0.00000000,307.50000000, .streamdistance = 10000.0); //object(gym_mat02) (1)
	CreateDynamicObject(2632,-41.37715912,-1300.33850098,11.97995281,0.00000000,0.00000000,307.49633789, .streamdistance = 10000.0); //object(gym_mat02) (2)
	CreateDynamicObject(2632,-42.73457718,-1301.38891602,11.97964573,0.00000000,0.00000000,307.49633789, .streamdistance = 10000.0); //object(gym_mat02) (3)
	CreateDynamicObject(2632,-44.00949478,-1299.84997559,11.97964764,0.00000000,0.00000000,307.49633789, .streamdistance = 10000.0); //object(gym_mat02) (4)
	CreateDynamicObject(2632,-44.30134201,-1302.51562500,11.97964954,0.00000000,0.00000000,307.49633789, .streamdistance = 10000.0); //object(gym_mat02) (5)
	CreateDynamicObject(2632,-45.41847992,-1301.00598145,11.97964954,0.00000000,0.00000000,307.49633789, .streamdistance = 10000.0); //object(gym_mat02) (6)
	CreateDynamicObject(3065,-19.56785965,-1294.41918945,12.14756107,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bball_col) (1)
	CreateDynamicObject(3385,45.09612656,-1220.78625488,12.03141785,0.00000000,0.00000000,348.00000000, .streamdistance = 10000.0); //object(a51_light1_) (1)
	CreateDynamicObject(3385,48.88564682,-1204.80297852,12.02993774,0.00000000,0.00000000,347.99743652, .streamdistance = 10000.0); //object(a51_light1_) (2)
	CreateDynamicObject(3385,52.93354797,-1188.42468262,12.04206848,0.00000000,0.00000000,343.99743652, .streamdistance = 10000.0); //object(a51_light1_) (3)
	CreateDynamicObject(3385,57.36481094,-1172.10559082,12.03773499,0.00000000,0.00000000,343.99291992, .streamdistance = 10000.0); //object(a51_light1_) (4)
	CreateDynamicObject(3385,61.72342682,-1156.59338379,12.04595947,0.00000000,0.00000000,343.99291992, .streamdistance = 10000.0); //object(a51_light1_) (5)
	CreateDynamicObject(3385,66.05112457,-1141.44946289,12.04209900,0.00000000,0.00000000,343.99291992, .streamdistance = 10000.0); //object(a51_light1_) (6)
	CreateDynamicObject(1211,-52.37551880,-1262.90515137,12.37791538,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(fire_hydrant) (2)
	CreateDynamicObject(2926,54.35602188,-1101.18395996,6.51194763,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(dyno_box_a) (1)
	CreateDynamicObject(2908,54.75582886,-1101.04125977,6.63624287,0.00000000,0.00000000,36.00000000, .streamdistance = 10000.0); //object(kmb_deadhead) (1)
	CreateDynamicObject(2906,54.21972275,-1100.99145508,6.63283587,0.00000000,0.00000000,86.00000000, .streamdistance = 10000.0); //object(kmb_deadarm) (1)
	CreateDynamicObject(2907,54.28653717,-1101.29089355,6.71885824,0.00000000,0.00000000,95.50000000, .streamdistance = 10000.0); //object(kmb_deadtorso) (1)
	CreateDynamicObject(3092,55.44859695,-1081.06396484,0.22743385,0.00000000,0.00000000,346.25000000, .streamdistance = 10000.0); //object(dead_tied_cop) (1)
	CreateDynamicObject(955,-38.51184082,-1293.23071289,12.23418236,0.00000000,0.00000000,38.00000000, .streamdistance = 10000.0); //object(cj_ext_sprunk) (1)
	CreateDynamicObject(1670,-36.58716202,-1293.95886230,12.66547298,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(propcollecttable) (2)
	CreateDynamicObject(1269,-25.64618492,-1253.85583496,12.89223480,0.00000000,0.00000000,33.99719238, .streamdistance = 10000.0); //object(parkingmeter) (4)
	CreateDynamicObject(1269,-19.91050911,-1261.41491699,12.93908787,0.00000000,0.00000000,33.99719238, .streamdistance = 10000.0); //object(parkingmeter) (5)
	CreateDynamicObject(1617,-58.69014740,-1256.53491211,16.35062790,0.00000000,0.00000000,222.00000000, .streamdistance = 10000.0); //object(nt_aircon1_01) (1)
	CreateDynamicObject(1617,-62.22679520,-1252.41979980,16.30754662,0.00000000,0.00000000,221.99523926, .streamdistance = 10000.0); //object(nt_aircon1_01) (2)
	CreateDynamicObject(12986,41.54963684,-1093.91271973,8.03457832,0.00000000,0.00000000,74.00000000, .streamdistance = 10000.0); //object(sw_well1) (1)
	CreateDynamicObject(2062,63.07589340,-1069.22375488,0.00000000,0.00000000,295.99996948,0.00000000, .streamdistance = 10000.0); //object(cj_oildrum2) (1)
	CreateDynamicObject(930,38.01957321,-1096.34313965,6.98782301,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(o2_bottles) (1)
	CreateDynamicObject(2694,-54.77341843,-1254.45349121,12.36397076,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cj_shoe_box2) (1)
	CreateDynamicObject(3932,20.27908325,-1099.78710938,13.80309772,0.00000000,0.00000000,344.24340820, .streamdistance = 10000.0); //object(hanger) (1)
	CreateDynamicObject(11631,17.82268906,-1100.94689941,13.25108624,0.00000000,0.00000000,74.25000000, .streamdistance = 10000.0); //object(ranch_desk) (1)
	CreateDynamicObject(1714,18.56731606,-1101.09765625,12.00518227,0.00000000,0.00000000,216.00000000, .streamdistance = 10000.0); //object(kb_swivelchair1) (1)
	CreateDynamicObject(1703,18.43881989,-1098.31799316,12.00518227,0.00000000,0.00000000,26.00000000, .streamdistance = 10000.0); //object(kb_couch02) (1)
	CreateDynamicObject(3065,18.01449966,-1098.76708984,12.14020061,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bball_col) (2)
	CreateDynamicObject(2908,42.49131775,-1094.57788086,6.74017620,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(kmb_deadhead) (2)
	CreateDynamicObject(2907,41.15066147,-1094.08874512,6.82279158,0.00000000,0.00000000,350.00000000, .streamdistance = 10000.0); //object(kmb_deadtorso) (2)
	CreateDynamicObject(2906,41.88702011,-1094.92395020,6.71176910,0.00000000,0.00000000,284.50000000, .streamdistance = 10000.0); //object(kmb_deadarm) (2)
	CreateDynamicObject(2905,42.25375366,-1093.86718750,6.72920990,0.00000000,0.00000000,233.00000000, .streamdistance = 10000.0); //object(kmb_deadleg) (2)
	CreateDynamicObject(2906,42.38436890,-1094.76110840,6.76176929,0.00000000,0.00000000,58.00000000, .streamdistance = 10000.0); //object(kmb_deadarm) (3)
	CreateDynamicObject(2905,26.91296577,-1075.41162109,0.00000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(kmb_deadleg) (3)
	//---------------Cobra Airline's Base -------------------------------------- [END]
	//---------------Dead Mountain Airport -- By Rinke_Hendriks ---------------- [START]
	CreateDynamicObject(5726,-1372.40002441,2338.80004883,92.30000305,0.00000000,0.00000000,2.00000000, .streamdistance = 10000.0); //object(lawn_holbuild21) (1)
	CreateDynamicObject(5726,-1372.80004883,2350.89990234,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (2)
	CreateDynamicObject(5726,-1373.19921875,2363.19921875,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (3)
	CreateDynamicObject(5726,-1373.59997559,2375.60009766,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (4)
	CreateDynamicObject(5726,-1374.09997559,2388.69995117,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (5)
	CreateDynamicObject(5726,-1374.50000000,2400.50000000,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (6)
	CreateDynamicObject(5726,-1374.90002441,2413.80004883,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (7)
	CreateDynamicObject(5726,-1375.30004883,2426.00000000,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (8)
	CreateDynamicObject(5726,-1375.69995117,2439.00000000,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (9)
	CreateDynamicObject(5726,-1376.09997559,2452.00000000,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (10)
	CreateDynamicObject(5726,-1376.50000000,2465.00000000,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (11)
	CreateDynamicObject(5726,-1349.29980469,2426.59960938,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (12)
	CreateDynamicObject(5726,-1323.19921875,2427.50000000,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (13)
	CreateDynamicObject(5726,-1349.69921875,2439.29980469,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (14)
	CreateDynamicObject(5726,-1323.69921875,2440.19921875,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (15)
	CreateDynamicObject(5726,-1350.09960938,2451.69921875,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (16)
	CreateDynamicObject(5726,-1324.09960938,2452.50000000,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (17)
	CreateDynamicObject(5726,-1324.50000000,2459.50000000,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1349.89941406,2458.59960938,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (19)
	CreateDynamicObject(5726,-1349.50000000,2413.39941406,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(8507,-1383.50000000,2341.10009766,89.40000153,0.00000000,270.00000000,2.00000000, .streamdistance = 10000.0); //object(shop15_lvs) (1)
	CreateDynamicObject(8507,-1383.50000000,2341.10009766,74.90000153,0.00000000,270.00000000,1.99951172, .streamdistance = 10000.0); //object(shop15_lvs) (2)
	CreateDynamicObject(8507,-1383.50000000,2341.10009766,60.90000153,0.00000000,270.00000000,1.99951172, .streamdistance = 10000.0); //object(shop15_lvs) (3)
	CreateDynamicObject(8507,-1375.59997559,2333.69995117,89.40000153,0.00000000,270.00000000,91.99951172, .streamdistance = 10000.0); //object(shop15_lvs) (4)
	CreateDynamicObject(8507,-1375.59997559,2333.69995117,75.19999695,0.00000000,270.00000000,91.99401855, .streamdistance = 10000.0); //object(shop15_lvs) (5)
	CreateDynamicObject(8507,-1375.59997559,2333.69995117,61.90000153,0.00000000,270.00000000,91.99401855, .streamdistance = 10000.0); //object(shop15_lvs) (6)
	CreateDynamicObject(8507,-1368.80004883,2334.00000000,89.41000366,0.00000000,270.00000000,91.99401855, .streamdistance = 10000.0); //object(shop15_lvs) (7)
	CreateDynamicObject(8507,-1361.50000000,2341.89990234,89.40000153,0.00000000,270.00000000,181.99401855, .streamdistance = 10000.0); //object(shop15_lvs) (8)
	CreateDynamicObject(8507,-1362.09997559,2359.19995117,89.40000153,0.00000000,270.00000000,181.98852539, .streamdistance = 10000.0); //object(shop15_lvs) (9)
	CreateDynamicObject(8507,-1362.69995117,2377.89990234,89.40000153,0.00000000,270.00000000,181.98852539, .streamdistance = 10000.0); //object(shop15_lvs) (10)
	CreateDynamicObject(8507,-1363.40002441,2397.10009766,89.40000153,0.00000000,270.00000000,181.98852539, .streamdistance = 10000.0); //object(shop15_lvs) (11)
	CreateDynamicObject(8507,-1345.90002441,2408.60009766,89.40000153,0.00000000,270.00000000,91.98852539, .streamdistance = 10000.0); //object(shop15_lvs) (12)
	CreateDynamicObject(8507,-1360.00000000,2408.10009766,89.40000153,0.00000000,270.00000000,91.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (13)
	CreateDynamicObject(8507,-1319.59997559,2422.69995117,89.40000153,0.00000000,270.00000000,91.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (14)
	CreateDynamicObject(8507,-1332.50000000,2422.30004883,89.40000153,0.00000000,270.00000000,91.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (15)
	CreateDynamicObject(8507,-1312.19995117,2430.89990234,89.40000153,0.00000000,270.00000000,181.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (16)
	CreateDynamicObject(8507,-1312.90002441,2450.39990234,89.40000153,0.00000000,270.00000000,181.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (17)
	CreateDynamicObject(8507,-1313.19921875,2456.29980469,89.40000153,0.00000000,270.00000000,181.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1321.19995117,2463.60009766,89.40000153,0.00000000,270.00000000,271.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (19)
	CreateDynamicObject(8507,-1340.89941406,2462.89941406,89.40000153,0.00000000,270.00000000,271.97753906, .streamdistance = 10000.0); //object(shop15_lvs) (20)
	CreateDynamicObject(8507,-1357.40002441,2462.30004883,89.40000153,0.00000000,270.00000000,271.97753906, .streamdistance = 10000.0); //object(shop15_lvs) (21)
	CreateDynamicObject(8507,-1365.30004883,2461.80004883,89.40000153,0.00000000,270.00000000,181.97753906, .streamdistance = 10000.0); //object(shop15_lvs) (22)
	CreateDynamicObject(8507,-1373.30004883,2469.10009766,89.40000153,0.00000000,270.00000000,271.97204590, .streamdistance = 10000.0); //object(shop15_lvs) (23)
	CreateDynamicObject(8507,-1380.00000000,2468.89990234,89.40000153,0.00000000,270.00000000,271.96655273, .streamdistance = 10000.0); //object(shop15_lvs) (24)
	CreateDynamicObject(8507,-1380.00000000,2468.89990234,76.40000153,0.00000000,270.00000000,271.96655273, .streamdistance = 10000.0); //object(shop15_lvs) (25)
	CreateDynamicObject(8507,-1380.00000000,2468.89990234,62.70000076,0.00000000,270.00000000,271.96655273, .streamdistance = 10000.0); //object(shop15_lvs) (26)
	CreateDynamicObject(8507,-1387.50000000,2461.00000000,89.40000153,0.00000000,270.00000000,1.96655273, .streamdistance = 10000.0); //object(shop15_lvs) (27)
	CreateDynamicObject(8507,-1387.50000000,2461.00000000,74.69999695,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (28)
	CreateDynamicObject(8507,-1387.50000000,2461.00000000,63.20000076,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (29)
	CreateDynamicObject(8507,-1386.80004883,2441.80004883,89.40000153,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (30)
	CreateDynamicObject(8507,-1386.19995117,2423.30004883,89.40000153,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (31)
	CreateDynamicObject(8507,-1385.80004883,2406.89990234,89.40000153,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (32)
	CreateDynamicObject(8507,-1385.09997559,2388.10009766,89.40000153,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (33)
	CreateDynamicObject(8507,-1384.50000000,2369.50000000,89.40000153,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (34)
	CreateDynamicObject(8507,-1384.50000000,2369.50000000,76.69999695,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (35)
	CreateDynamicObject(8507,-1384.09997559,2358.39990234,89.40000153,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (36)
	CreateDynamicObject(8507,-1384.09997559,2358.39990234,75.40000153,0.00000000,270.00000000,1.96105957, .streamdistance = 10000.0); //object(shop15_lvs) (37)
	CreateDynamicObject(3578,-1361.90002441,2337.60009766,96.40000153,0.00000000,0.00000000,92.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (1)
	CreateDynamicObject(3578,-1362.09997559,2337.60009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (2)
	CreateDynamicObject(3578,-1362.30004883,2337.60009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (3)
	CreateDynamicObject(3578,-1362.80004883,2337.60009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (4)
	CreateDynamicObject(3578,-1363.30004883,2337.60009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (5)
	CreateDynamicObject(3578,-1383.00000000,2337.00000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (6)
	CreateDynamicObject(3578,-1382.80004883,2337.00000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (7)
	CreateDynamicObject(3578,-1382.50000000,2337.00000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (8)
	CreateDynamicObject(3578,-1382.00000000,2337.00000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (9)
	CreateDynamicObject(3578,-1381.50000000,2337.00000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (10)
	CreateDynamicObject(3578,-1379.00000000,2337.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (11)
	CreateDynamicObject(3578,-1378.50000000,2337.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (12)
	CreateDynamicObject(3578,-1378.00000000,2337.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (13)
	CreateDynamicObject(3578,-1365.50000000,2337.50000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (14)
	CreateDynamicObject(3578,-1366.00000000,2337.50000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (15)
	CreateDynamicObject(3578,-1366.50000000,2337.50000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (16)
	CreateDynamicObject(3578,-1369.19995117,2337.39990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (17)
	CreateDynamicObject(3578,-1369.40002441,2337.39990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (18)
	CreateDynamicObject(3578,-1369.59997559,2337.39990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (19)
	CreateDynamicObject(3578,-1370.09997559,2337.39990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (20)
	CreateDynamicObject(3578,-1370.59997559,2337.39990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (21)
	CreateDynamicObject(3578,-1371.09997559,2337.39990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (22)
	CreateDynamicObject(3578,-1373.09997559,2337.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (23)
	CreateDynamicObject(3578,-1373.30004883,2337.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (24)
	CreateDynamicObject(3578,-1373.80004883,2337.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (25)
	CreateDynamicObject(3578,-1374.30004883,2337.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (26)
	CreateDynamicObject(3578,-1374.50000000,2337.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (27)
	CreateDynamicObject(3578,-1375.00000000,2337.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (28)
	CreateDynamicObject(3578,-1372.59997559,2347.89990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (29)
	CreateDynamicObject(3578,-1373.09997559,2364.39990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (30)
	CreateDynamicObject(3578,-1373.69995117,2380.89990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (31)
	CreateDynamicObject(3578,-1374.30004883,2397.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (32)
	CreateDynamicObject(3578,-1374.90002441,2414.00000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (33)
	CreateDynamicObject(3578,-1375.50000000,2431.50000000,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (34)
	CreateDynamicObject(3578,-1376.19921875,2449.50000000,96.40000153,0.00000000,0.00000000,91.99401855, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1378.00000000,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (36)
	CreateDynamicObject(3578,-1378.50000000,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (37)
	CreateDynamicObject(3578,-1378.80004883,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (38)
	CreateDynamicObject(3578,-1379.30004883,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (39)
	CreateDynamicObject(3578,-1379.80004883,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (40)
	CreateDynamicObject(3578,-1380.00000000,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (41)
	CreateDynamicObject(3578,-1375.50000000,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (42)
	CreateDynamicObject(3578,-1375.30004883,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (43)
	CreateDynamicObject(3578,-1375.00000000,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (44)
	CreateDynamicObject(3578,-1374.50000000,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (45)
	CreateDynamicObject(3578,-1374.00000000,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (46)
	CreateDynamicObject(3578,-1373.80004883,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (47)
	CreateDynamicObject(3578,-1373.30004883,2464.69995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (48)
	CreateDynamicObject(3578,-1371.09997559,2464.89990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (49)
	CreateDynamicObject(3578,-1370.80004883,2464.89990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (50)
	CreateDynamicObject(3578,-1370.30004883,2464.89990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (51)
	CreateDynamicObject(3578,-1370.09997559,2464.89990234,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (52)
	CreateDynamicObject(3578,-1382.09997559,2464.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (53)
	CreateDynamicObject(3578,-1382.59997559,2464.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (54)
	CreateDynamicObject(3578,-1382.80004883,2464.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (55)
	CreateDynamicObject(3578,-1383.00000000,2464.30004883,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (56)
	CreateDynamicObject(3578,-1385.50000000,2464.19995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (57)
	CreateDynamicObject(3578,-1385.69995117,2464.19995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (58)
	CreateDynamicObject(3578,-1386.19995117,2464.19995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (59)
	CreateDynamicObject(3578,-1386.69995117,2464.19995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (60)
	CreateDynamicObject(3578,-1387.19995117,2464.19995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (61)
	CreateDynamicObject(3578,-1387.69995117,2464.19995117,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (62)
	CreateDynamicObject(3578,-1368.00000000,2465.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (63)
	CreateDynamicObject(3578,-1367.80004883,2465.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (64)
	CreateDynamicObject(3578,-1367.30004883,2465.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (65)
	CreateDynamicObject(3578,-1366.80004883,2465.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (66)
	CreateDynamicObject(3578,-1366.30004883,2465.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (67)
	CreateDynamicObject(3578,-1366.00000000,2465.10009766,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (68)
	CreateDynamicObject(3578,-1366.00000000,2465.09960938,96.40000153,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(dockbarr1_la) (69)
	CreateDynamicObject(11427,-1303.69995117,2441.50000000,104.30000305,0.00000000,0.00000000,3.99951172, .streamdistance = 10000.0); //object(des_adobech) (1)
	CreateDynamicObject(3385,-1372.40002441,2342.50000000,97.09999847,0.00000000,0.00000000,2.00000000, .streamdistance = 10000.0); //object(a51_light1_) (1)
	CreateDynamicObject(3385,-1372.80004883,2353.30004883,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (2)
	CreateDynamicObject(3385,-1372.90002441,2359.00000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (3)
	CreateDynamicObject(3385,-1373.19995117,2369.80004883,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (4)
	CreateDynamicObject(3385,-1373.50000000,2375.50000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (5)
	CreateDynamicObject(3385,-1373.90002441,2386.19995117,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (6)
	CreateDynamicObject(3385,-1374.09997559,2392.50000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (7)
	CreateDynamicObject(3385,-1374.50000000,2403.00000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (8)
	CreateDynamicObject(3385,-1374.69995117,2408.50000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (9)
	CreateDynamicObject(3385,-1375.09997559,2419.50000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (10)
	CreateDynamicObject(3385,-1375.30004883,2426.19995117,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (11)
	CreateDynamicObject(3385,-1375.69995117,2436.89990234,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (12)
	CreateDynamicObject(3385,-1376.00000000,2444.19995117,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (13)
	CreateDynamicObject(3385,-1376.40002441,2454.69995117,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (14)
	CreateDynamicObject(3385,-1389.59997559,2470.50000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (15)
	CreateDynamicObject(3385,-1363.80004883,2471.30004883,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (16)
	CreateDynamicObject(3385,-1376.80004883,2470.89990234,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (22)
	CreateDynamicObject(3385,-1370.30004883,2471.10009766,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (17)
	CreateDynamicObject(3385,-1383.30004883,2470.69995117,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (18)
	CreateDynamicObject(3385,-1362.90002441,2449.69995117,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (19)
	CreateDynamicObject(3385,-1388.90002441,2448.60009766,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (20)
	CreateDynamicObject(3385,-1388.40002441,2431.10009766,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (21)
	CreateDynamicObject(3385,-1362.50000000,2431.69995117,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (23)
	CreateDynamicObject(3385,-1361.80004883,2414.00000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (24)
	CreateDynamicObject(3385,-1387.80004883,2412.89990234,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (25)
	CreateDynamicObject(3385,-1387.40002441,2397.39990234,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (26)
	CreateDynamicObject(3385,-1361.40002441,2398.10009766,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (27)
	CreateDynamicObject(3385,-1360.90002441,2381.60009766,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (28)
	CreateDynamicObject(3385,-1386.59997559,2380.89990234,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (29)
	CreateDynamicObject(3385,-1386.00000000,2363.80004883,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (30)
	CreateDynamicObject(3385,-1360.40002441,2364.50000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (31)
	CreateDynamicObject(3385,-1359.90002441,2348.69995117,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (32)
	CreateDynamicObject(3385,-1385.69995117,2348.39990234,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (33)
	CreateDynamicObject(3385,-1385.09997559,2331.50000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (34)
	CreateDynamicObject(3385,-1372.09997559,2332.10009766,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (35)
	CreateDynamicObject(3385,-1359.30004883,2332.50000000,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (36)
	CreateDynamicObject(3385,-1365.80004883,2332.10009766,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (37)
	CreateDynamicObject(3385,-1378.30004883,2331.80004883,97.09999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(a51_light1_) (38)
	CreateDynamicObject(5726,-1326.80004883,2472.19995117,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1350.40002441,2471.69995117,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1350.89941406,2484.69921875,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1327.30004883,2485.50000000,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1342.90002441,2497.69995117,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1343.30004883,2510.60009766,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1343.69995117,2522.69995117,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1344.09997559,2534.80004883,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1357.00000000,2525.60009766,85.90000153,0.00000000,0.00000000,243.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1362.00000000,2503.60009766,85.90000153,0.00000000,0.00000000,269.99536133, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1365.19995117,2477.19995117,85.90000153,0.00000000,0.00000000,255.99450684, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(8507,-1316.19921875,2482.19921875,83.09999847,0.00000000,270.00000000,181.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1315.80004883,2471.19995117,83.09999847,0.00000000,270.00000000,181.98303223, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1324.19921875,2489.59960938,83.09999847,0.00000000,270.00000000,271.97753906, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1331.90002441,2500.19995117,83.09999847,0.00000000,270.00000000,181.97753906, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1332.59997559,2518.30004883,83.09999847,0.00000000,270.00000000,181.97204590, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1333.00000000,2531.39990234,83.09999847,0.00000000,270.00000000,181.97204590, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1340.90002441,2538.89990234,83.09999847,0.00000000,270.00000000,271.97204590, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1347.50000000,2538.60009766,83.09999847,0.00000000,270.00000000,271.96655273, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1359.90002441,2530.80004883,83.09999847,0.00000000,270.00000000,333.96655273, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1362.80004883,2524.89990234,83.09999847,0.00000000,270.00000000,333.96240234, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1366.90002441,2507.10009766,83.09999847,0.00000000,270.00000000,359.96240234, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1366.90002441,2500.60009766,83.09999847,0.00000000,270.00000000,359.96154785, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1369.09997559,2482.30004883,83.09999847,0.00000000,270.00000000,345.96154785, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1369.50000000,2479.10009766,83.09999847,0.00000000,270.00000000,343.95947266, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(3113,-1305.00000000,2477.68994141,88.26000214,0.00000000,300.00000000,1.99951172, .streamdistance = 10000.0); //object(carrier_door_sfse) (1)
	CreateDynamicObject(5726,-1324.80004883,2472.30004883,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(5726,-1325.19995117,2482.80004883,85.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (18)
	CreateDynamicObject(4100,-1329.59960938,2498.79980469,91.80000305,0.00000000,0.00000000,51.97082520, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1330.19995117,2512.50000000,91.80000305,0.00000000,0.00000000,51.97082520, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1330.69995117,2526.00000000,91.80000305,0.00000000,0.00000000,51.97082520, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1331.00000000,2534.80004883,91.80000305,0.00000000,0.00000000,51.97082520, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1337.80004883,2541.19995117,91.80000305,0.00000000,0.00000000,321.97082520, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1350.30004883,2540.69995117,91.80000305,0.00000000,0.00000000,321.96533203, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1360.30004883,2534.50000000,91.80000305,0.00000000,0.00000000,23.96533203, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1365.80004883,2523.19995117,91.80000305,0.00000000,0.00000000,23.96118164, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1369.09997559,2510.19995117,91.80000305,0.00000000,0.00000000,49.96118164, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1369.09997559,2496.69995117,91.80000305,0.00000000,0.00000000,49.96032715, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1370.79980469,2483.59960938,91.80000305,0.00000000,0.00000000,35.95825195, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1374.09997559,2470.30004883,91.80000305,0.00000000,0.00000000,35.95825195, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(7033,-1321.50000000,2479.09960938,95.09999847,0.00000000,0.00000000,91.99951172, .streamdistance = 10000.0); //object(vgnhsegate02) (1)
	CreateDynamicObject(944,-1360.80004883,2465.89990234,91.59999847,0.00000000,0.00000000,2.00000000, .streamdistance = 10000.0); //object(packing_carates04) (1)
	CreateDynamicObject(944,-1360.80004883,2467.69995117,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (2)
	CreateDynamicObject(944,-1361.09997559,2469.69995117,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (3)
	CreateDynamicObject(944,-1360.90002441,2472.00000000,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (4)
	CreateDynamicObject(944,-1357.19995117,2466.00000000,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (5)
	CreateDynamicObject(944,-1357.50000000,2468.00000000,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (6)
	CreateDynamicObject(944,-1357.30004883,2469.80004883,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (7)
	CreateDynamicObject(944,-1357.30004883,2471.80004883,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (8)
	CreateDynamicObject(944,-1357.30004883,2471.80004883,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (9)
	CreateDynamicObject(944,-1357.30004883,2469.80004883,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (10)
	CreateDynamicObject(944,-1357.40002441,2468.00000000,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (11)
	CreateDynamicObject(944,-1357.09997559,2466.00000000,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (12)
	CreateDynamicObject(944,-1360.90002441,2465.89990234,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (13)
	CreateDynamicObject(944,-1360.90002441,2467.60009766,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (14)
	CreateDynamicObject(944,-1361.19995117,2469.69995117,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (15)
	CreateDynamicObject(944,-1361.00000000,2472.10009766,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (16)
	CreateDynamicObject(944,-1353.80004883,2466.50000000,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (17)
	CreateDynamicObject(944,-1353.90002441,2468.30004883,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (18)
	CreateDynamicObject(944,-1353.89941406,2468.29980469,91.59999847,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (19)
	CreateDynamicObject(944,-1353.80004883,2466.39990234,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (20)
	CreateDynamicObject(944,-1353.80004883,2468.39990234,93.00000000,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(packing_carates04) (21)
	CreateDynamicObject(11546,-1335.19921875,2498.00000000,90.90000153,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(desn_fuelpay) (1)
	CreateDynamicObject(3287,-1333.50000000,2520.39990234,95.50000000,0.00000000,0.00000000,274.00000000, .streamdistance = 10000.0); //object(cxrf_oiltank) (1)
	CreateDynamicObject(3287,-1333.19995117,2514.89990234,95.50000000,0.00000000,0.00000000,273.99902344, .streamdistance = 10000.0); //object(cxrf_oiltank) (2)
	CreateDynamicObject(3287,-1333.19921875,2514.89941406,95.50000000,0.00000000,0.00000000,273.99902344, .streamdistance = 10000.0); //object(cxrf_oiltank) (3)
	CreateDynamicObject(3287,-1332.80004883,2509.39990234,95.50000000,0.00000000,0.00000000,273.99902344, .streamdistance = 10000.0); //object(cxrf_oiltank) (4)
	CreateDynamicObject(16317,-1349.09997559,2530.69995117,90.69999695,0.00000000,0.00000000,336.00000000, .streamdistance = 10000.0); //object(des_quarstmound_03) (1)
	CreateDynamicObject(18609,-1338.50000000,2533.39990234,91.90000153,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cs_logs06) (1)
	CreateDynamicObject(18609,-1335.59997559,2533.50000000,91.90000153,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cs_logs06) (2)
	CreateDynamicObject(18609,-1332.80004883,2533.39990234,91.90000153,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cs_logs06) (3)
	CreateDynamicObject(18609,-1333.40002441,2526.30004883,91.90000153,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cs_logs06) (4)
	CreateDynamicObject(18609,-1335.90002441,2526.50000000,91.90000153,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cs_logs06) (5)
	CreateDynamicObject(18609,-1337.40002441,2533.39990234,90.90000153,0.00000000,180.00000000,352.00000000, .streamdistance = 10000.0); //object(cs_logs06) (6)
	CreateDynamicObject(18609,-1334.19995117,2533.10009766,90.90000153,0.00000000,179.99450684,351.99645996, .streamdistance = 10000.0); //object(cs_logs06) (7)
	CreateDynamicObject(18609,-1334.69995117,2526.60009766,90.90000153,0.00000000,179.99450684,351.99645996, .streamdistance = 10000.0); //object(cs_logs06) (8)
	CreateDynamicObject(18609,-1334.69921875,2526.59960938,90.90000153,0.00000000,179.99450684,351.99645996, .streamdistance = 10000.0); //object(cs_logs06) (9)
	CreateDynamicObject(18609,-1334.09997559,2526.69995117,92.90000153,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cs_logs06) (10)
	CreateDynamicObject(18609,-1334.69995117,2533.50000000,92.90000153,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(cs_logs06) (11)
	CreateDynamicObject(2934,-1365.90002441,2503.69995117,92.19999695,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(kmb_container_red) (1)
	CreateDynamicObject(2934,-1362.59997559,2503.69995117,92.19999695,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(kmb_container_red) (2)
	CreateDynamicObject(2934,-1365.90002441,2511.19995117,92.19999695,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(kmb_container_red) (3)
	CreateDynamicObject(2934,-1362.59997559,2511.19995117,92.19999695,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(kmb_container_red) (4)
	CreateDynamicObject(2934,-1365.90002441,2511.10009766,94.90000153,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(kmb_container_red) (5)
	CreateDynamicObject(1290,-1310.90002441,2479.60009766,96.40000153,0.00000000,0.00000000,271.99951172, .streamdistance = 10000.0); //object(lamppost2) (1)
	CreateDynamicObject(1290,-1331.69995117,2478.69995117,96.59999847,0.00000000,0.00000000,271.99951172, .streamdistance = 10000.0); //object(lamppost2) (1)
	CreateDynamicObject(1290,-1341.69921875,2497.69921875,96.59999847,0.00000000,0.00000000,271.99951172, .streamdistance = 10000.0); //object(lamppost2) (1)
	CreateDynamicObject(1290,-1363.40002441,2521.60009766,96.59999847,0.00000000,0.00000000,239.99951172, .streamdistance = 10000.0); //object(lamppost2) (1)
	CreateDynamicObject(5726,-1323.19995117,2420.69995117,92.30000305,0.00000000,0.00000000,1.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1324.59997559,2415.10009766,92.30000305,0.00000000,0.00000000,23.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1343.80004883,2402.80004883,92.30000305,0.00000000,0.00000000,41.99414062, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1358.80004883,2383.00000000,92.30000305,0.00000000,0.00000000,65.98974609, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1363.19995117,2372.39990234,92.30000305,0.00000000,0.00000000,69.98937988, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1356.50000000,2403.10009766,92.30000305,0.00000000,0.00000000,93.98974609, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1304.09997559,2425.60009766,92.30000305,0.00000000,0.00000000,29.99414062, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1296.19995117,2439.19995117,92.30000305,0.00000000,0.00000000,89.99267578, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1304.19995117,2458.39990234,92.30000305,0.00000000,0.00000000,187.98901367, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1303.30004883,2455.10009766,92.30000305,0.00000000,0.00000000,191.98852539, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1308.90002441,2440.10009766,92.30000305,0.00000000,0.00000000,89.98901367, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(5726,-1305.50000000,2459.19995117,92.30000305,0.00000000,0.00000000,183.98706055, .streamdistance = 10000.0); //object(lawn_holbuild21) (20)
	CreateDynamicObject(3113,-1296.40002441,2478.00000000,86.00000000,0.00000000,299.99816895,1.99951172, .streamdistance = 10000.0); //object(carrier_door_sfse) (1)
	CreateDynamicObject(11426,-1303.50000000,2433.00000000,97.09999847,0.00000000,0.00000000,353.98437500, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1305.19995117,2426.50000000,97.09999847,0.00000000,0.00000000,157.97949219, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1309.09997559,2420.80004883,97.09999847,0.00000000,0.00000000,315.97790527, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1305.09997559,2450.00000000,97.09999847,0.00000000,0.00000000,21.97778320, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1308.69995117,2455.39990234,97.09999847,0.00000000,0.00000000,43.97265625, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1313.69995117,2458.80004883,97.09999847,0.00000000,0.00000000,251.96728516, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1320.50000000,2460.39990234,97.09999847,0.00000000,0.00000000,81.96594238, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1327.19995117,2460.69995117,97.09999847,0.00000000,0.00000000,91.96350098, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1334.69995117,2460.39990234,97.09999847,0.00000000,0.00000000,91.96057129, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(11426,-1341.59997559,2460.00000000,97.09999847,0.00000000,0.00000000,273.95556641, .streamdistance = 10000.0); //object(des_adobe03) (6)
	CreateDynamicObject(3578,-1358.00000000,2421.10009766,96.40000153,0.00000000,0.00000000,35.99401855, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1350.30004883,2426.69995117,96.40000153,0.00000000,0.00000000,35.99121094, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1348.40002441,2429.80004883,96.40000153,0.00000000,0.00000000,51.99121094, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1343.40002441,2438.00000000,96.40000153,0.00000000,0.00000000,65.98730469, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1340.80004883,2447.39990234,96.40000153,0.00000000,0.00000000,83.98388672, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1341.80004883,2431.69995117,96.40000153,0.00000000,0.00000000,25.97949219, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1333.69995117,2433.60009766,96.40000153,0.00000000,0.00000000,3.97717285, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1324.09997559,2433.10009766,96.40000153,0.00000000,0.00000000,349.97705078, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1314.80004883,2430.39990234,96.40000153,0.00000000,0.00000000,337.97497559, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1334.09997559,2436.60009766,96.40000153,0.00000000,0.00000000,39.97241211, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1327.50000000,2442.10009766,96.40000153,0.00000000,0.00000000,39.96826172, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3578,-1320.69995117,2448.69995117,96.40000153,0.00000000,0.00000000,47.96826172, .streamdistance = 10000.0); //object(dockbarr1_la) (35)
	CreateDynamicObject(3526,-1361.69995117,2418.39990234,96.90000153,0.00000000,0.00000000,36.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (1)
	CreateDynamicObject(3526,-1351.09997559,2426.30004883,96.90000153,0.00000000,0.00000000,35.99670410, .streamdistance = 10000.0); //object(vegasairportlight) (4)
	CreateDynamicObject(3526,-1337.90002441,2433.39990234,96.90000153,0.00000000,0.00000000,13.99670410, .streamdistance = 10000.0); //object(vegasairportlight) (6)
	CreateDynamicObject(3526,-1309.90002441,2428.50000000,96.69999695,0.00000000,0.00000000,337.99658203, .streamdistance = 10000.0); //object(vegasairportlight) (7)
	CreateDynamicObject(3526,-1316.80004883,2452.60009766,96.69999695,0.00000000,0.00000000,51.99438477, .streamdistance = 10000.0); //object(vegasairportlight) (8)
	CreateDynamicObject(3526,-1340.19995117,2452.69995117,96.90000153,0.00000000,0.00000000,83.99279785, .streamdistance = 10000.0); //object(vegasairportlight) (9)
	CreateDynamicObject(8507,-1304.80004883,2486.60009766,80.69999695,345.50000000,270.00000000,271.97753906, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1292.19995117,2457.30004883,89.40000153,0.00000000,270.00000000,189.97753906, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1301.50000000,2464.39990234,89.40000153,0.00000000,270.00000000,273.97558594, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1291.69995117,2438.60009766,89.40000153,0.00000000,270.00000000,173.97155762, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1291.09997559,2435.89990234,89.40000153,0.00000000,270.00000000,179.96850586, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1298.50000000,2423.10009766,89.40000153,0.00000000,270.00000000,119.96704102, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1304.19995117,2419.69995117,89.40000153,0.00000000,270.00000000,119.96520996, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1321.30004883,2411.10009766,89.40000153,0.00000000,270.00000000,113.96520996, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1323.90002441,2409.89990234,89.40000153,0.00000000,270.00000000,113.96118164, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1340.19995117,2399.39990234,89.40000153,0.00000000,270.00000000,131.96118164, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1344.59997559,2395.60009766,89.40000153,0.00000000,270.00000000,133.95678711, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1353.59997559,2382.10009766,89.40000153,0.00000000,270.00000000,155.95629883, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(8507,-1360.00000000,2366.19995117,89.40000153,0.00000000,270.00000000,159.95092773, .streamdistance = 10000.0); //object(shop15_lvs) (18)
	CreateDynamicObject(4100,-1299.19995117,2466.69995117,98.59999847,0.00000000,0.00000000,143.97082520, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1290.80004883,2460.80004883,98.59999847,0.00000000,0.00000000,61.97033691, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1289.30004883,2447.30004883,98.59999847,0.00000000,0.00000000,51.96838379, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1289.19995117,2433.50000000,98.59999847,0.00000000,0.00000000,49.96533203, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1295.00000000,2423.00000000,98.59999847,0.00000000,0.00000000,349.96032715, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1306.80004883,2416.19995117,98.59999847,0.00000000,0.00000000,349.95849609, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1319.00000000,2410.00000000,98.59999847,0.00000000,0.00000000,343.95849609, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1325.59997559,2407.10009766,98.59999847,0.00000000,0.00000000,343.95446777, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1337.00000000,2399.80004883,98.59999847,0.00000000,0.00000000,1.95446777, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(5726,-1357.30004883,2475.89990234,88.59999847,0.00000000,17.00000000,91.99951172, .streamdistance = 10000.0); //object(lawn_holbuild21) (3)
	CreateDynamicObject(8507,-1352.19995117,2470.60009766,86.90000153,17.00000000,270.00000000,181.97753906, .streamdistance = 10000.0); //object(shop15_lvs) (20)
	CreateDynamicObject(8507,-1352.59997559,2484.39990234,82.69999695,16.99584961,270.00000000,181.97204590, .streamdistance = 10000.0); //object(shop15_lvs) (20)
	CreateDynamicObject(8507,-1361.30004883,2476.50000000,85.40000153,343.00415039,270.00000000,1.97204590, .streamdistance = 10000.0); //object(shop15_lvs) (20)
	CreateDynamicObject(4100,-1312.09997559,2466.00000000,98.59999847,0.00000000,0.00000000,321.95446777, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1325.69995117,2465.30004883,98.59999847,0.00000000,0.00000000,323.95434570, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,-1338.90002441,2462.39990234,98.59999847,0.00000000,0.00000000,341.95385742, .streamdistance = 10000.0); //object(meshfence1_lan) (7)
	CreateDynamicObject(2792,-1340.40002441,2457.69995117,99.90000153,0.00000000,0.00000000,4.00000000, .streamdistance = 10000.0); //object(cj_air_d_1) (1)
	CreateDynamicObject(2793,-1313.59997559,2456.19995117,99.69999695,0.00000000,0.00000000,342.00000000, .streamdistance = 10000.0); //object(cj_air_d_2) (2)
	CreateDynamicObject(2794,-1307.59997559,2427.00000000,100.00000000,0.00000000,0.00000000,68.00000000, .streamdistance = 10000.0); //object(cj_air_d_3) (1)
	CreateDynamicObject(2773,-1307.19995117,2442.89990234,97.59999847,0.00000000,0.00000000,266.00000000, .streamdistance = 10000.0); //object(cj_airprt_bar) (1)
	CreateDynamicObject(2773,-1309.30004883,2443.80004883,97.59999847,0.00000000,0.00000000,231.99548340, .streamdistance = 10000.0); //object(cj_airprt_bar) (2)
	CreateDynamicObject(2773,-1306.80004883,2439.60009766,97.59999847,0.00000000,0.00000000,285.99279785, .streamdistance = 10000.0); //object(cj_airprt_bar) (3)
	CreateDynamicObject(2773,-1308.80004883,2438.10009766,97.59999847,0.00000000,0.00000000,321.99060059, .streamdistance = 10000.0); //object(cj_airprt_bar) (4)
	CreateDynamicObject(3666,-1304.80004883,2445.19995117,107.30000305,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (1)
	CreateDynamicObject(3666,-1304.30004883,2437.69995117,107.30000305,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(airuntest_las) (2)
	//---------------Dead Mountain Airport -- By Rinke_Hendriks ---------------- [END]
	//---------------Mulholland Airport ----- By Rinke_Hendriks ---------------- [START]
	CreateDynamicObject(5706,1595.40002441,-658.90002441,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (4)
	CreateDynamicObject(5706,1595.39941406,-658.89941406,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (5)
	CreateDynamicObject(5706,1596.90002441,-680.09997559,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (6)
	CreateDynamicObject(5706,1598.40002441,-701.50000000,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (7)
	CreateDynamicObject(5706,1599.90002441,-722.70001221,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (9)
	CreateDynamicObject(5706,1594.00000000,-637.90002441,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (8)
	CreateDynamicObject(5706,1592.59997559,-618.00000000,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (10)
	CreateDynamicObject(5706,1591.19995117,-598.70001221,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (11)
	CreateDynamicObject(5706,1601.19995117,-741.90002441,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (12)
	CreateDynamicObject(5706,1589.59997559,-577.29998779,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (13)
	CreateDynamicObject(6300,1605.69995117,-682.79998779,38.09999847,270.00000000,90.00000000,4.00000000, .streamdistance = 10000.0); //object(pier04_law2) (1)
	CreateDynamicObject(5706,1602.59997559,-760.90002441,73.09999847,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (14)
	CreateDynamicObject(6300,1610.00000000,-743.20001221,38.09999847,270.00000000,90.00000000,3.99902344, .streamdistance = 10000.0); //object(pier04_law2) (2)
	CreateDynamicObject(6300,1589.09997559,-767.20001221,38.09999847,270.00000000,90.00000000,273.99902344, .streamdistance = 10000.0); //object(pier04_law2) (3)
	CreateDynamicObject(6300,1601.59997559,-624.50000000,38.09999847,270.00000000,90.00000000,3.99902344, .streamdistance = 10000.0); //object(pier04_law2) (5)
	CreateDynamicObject(6300,1599.50000000,-593.70001221,38.09999847,270.00000000,90.00000000,3.99902344, .streamdistance = 10000.0); //object(pier04_law2) (6)
	CreateDynamicObject(6300,1575.50000000,-572.79998779,38.09999847,270.00000000,90.00000000,93.99902344, .streamdistance = 10000.0); //object(pier04_law2) (7)
	CreateDynamicObject(5706,1557.40002441,-579.40002441,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (15)
	CreateDynamicObject(5706,1559.00000000,-601.59997559,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (16)
	CreateDynamicObject(5706,1559.80004883,-618.09997559,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (17)
	CreateDynamicObject(5706,1561.50000000,-639.70001221,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (18)
	CreateDynamicObject(5706,1562.30004883,-658.79998779,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (19)
	CreateDynamicObject(5706,1564.19995117,-680.70001221,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (20)
	CreateDynamicObject(5706,1565.80004883,-703.09997559,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (21)
	CreateDynamicObject(5706,1567.00000000,-725.00000000,73.09999847,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (22)
	CreateDynamicObject(5706,1568.90002441,-747.40002441,73.09999847,0.00000000,0.00000000,4.00000000, .streamdistance = 10000.0); //object(studiobld03_law) (23)
	CreateDynamicObject(5706,1570.50000000,-763.09997559,73.09999847,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (24)
	CreateDynamicObject(5706,1541.00000000,-765.20001221,73.09999847,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (25)
	CreateDynamicObject(5706,1536.30004883,-743.09997559,73.09999847,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (26)
	CreateDynamicObject(5706,1538.00000000,-726.40002441,73.09999847,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (27)
	CreateDynamicObject(5706,1538.00000000,-726.39941406,73.09999847,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(studiobld03_law) (28)
	CreateDynamicObject(6300,1528.90002441,-771.50000000,38.09999847,270.00000000,90.00000000,273.99353027, .streamdistance = 10000.0); //object(pier04_law2) (8)
	CreateDynamicObject(8509,1549.30004883,-715.09997559,81.00000000,0.00000000,0.00000000,240.00000000, .streamdistance = 10000.0); //object(shop09_lvs) (1)
	CreateDynamicObject(8507,1556.80004883,-687.50000000,77.40000153,0.00000000,90.00000000,60.00000000, .streamdistance = 10000.0); //object(shop15_lvs) (1)
	CreateDynamicObject(8507,1554.00000000,-692.40002441,82.69999695,0.00000000,0.00000000,59.99682617, .streamdistance = 10000.0); //object(shop15_lvs) (3)
	CreateDynamicObject(8507,1546.90002441,-705.29998779,82.69999695,0.00000000,0.00000000,59.99633789, .streamdistance = 10000.0); //object(shop15_lvs) (4)
	CreateDynamicObject(8507,1539.30004883,-718.20001221,82.69999695,0.00000000,0.00000000,59.99633789, .streamdistance = 10000.0); //object(shop15_lvs) (5)
	CreateDynamicObject(8507,1532.09997559,-731.09997559,82.69999695,0.00000000,0.00000000,59.99633789, .streamdistance = 10000.0); //object(shop15_lvs) (6)
	CreateDynamicObject(8507,1519.50000000,-715.29998779,82.69999695,0.00000000,0.00000000,59.99633789, .streamdistance = 10000.0); //object(shop15_lvs) (7)
	CreateDynamicObject(8507,1526.19995117,-706.00000000,82.69999695,0.00000000,0.00000000,59.99633789, .streamdistance = 10000.0); //object(shop15_lvs) (8)
	CreateDynamicObject(8507,1529.19995117,-735.59997559,77.40000153,0.00000000,270.00000000,59.99633789, .streamdistance = 10000.0); //object(shop15_lvs) (9)
	CreateDynamicObject(3242,1541.09997559,-760.70001221,80.90000153,0.00000000,0.00000000,135.00000000, .streamdistance = 10000.0); //object(conhoos1) (1)
	CreateDynamicObject(3242,1537.59997559,-764.20001221,80.90000153,0.00000000,0.00000000,135.00000000, .streamdistance = 10000.0); //object(conhoos1) (2)
	CreateDynamicObject(3626,1542.80004883,-764.59997559,76.59999847,90.00000000,0.00000000,45.00000000, .streamdistance = 10000.0); //object(dckwrkhut) (1)
	CreateDynamicObject(3626,1542.69995117,-760.29998779,76.59999847,90.00000000,0.00000000,135.00000000, .streamdistance = 10000.0); //object(dckwrkhut) (2)
	CreateDynamicObject(3626,1541.30004883,-758.90002441,76.59999847,90.00000000,0.00000000,135.00000000, .streamdistance = 10000.0); //object(dckwrkhut) (3)
	CreateDynamicObject(3626,1536.90002441,-758.90002441,76.59999847,90.00000000,0.00000000,225.00000000, .streamdistance = 10000.0); //object(dckwrkhut) (5)
	CreateDynamicObject(7096,1542.69995117,-752.29998779,77.30000305,0.00000000,0.00000000,314.00000000, .streamdistance = 10000.0); //object(vrockstairs) (1)
	CreateDynamicObject(4597,1574.59997559,-583.29998779,76.50000000,0.00000000,0.00000000,94.00000000, .streamdistance = 10000.0); //object(crprkblok4_lan2) (1)
	CreateDynamicObject(4597,1575.59997559,-597.50000000,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (2)
	CreateDynamicObject(4597,1578.00000000,-632.20001221,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (3)
	CreateDynamicObject(4597,1579.09997559,-647.70001221,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (4)
	CreateDynamicObject(4597,1581.59997559,-683.20001221,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (5)
	CreateDynamicObject(4597,1582.69995117,-698.70001221,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (6)
	CreateDynamicObject(4597,1585.09997559,-733.09997559,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (7)
	CreateDynamicObject(4597,1586.09997559,-747.70001221,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (8)
	CreateDynamicObject(4597,1586.80004883,-757.29998779,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (9)
	CreateDynamicObject(4597,1618.59997559,-754.90002441,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (10)
	CreateDynamicObject(4597,1617.50000000,-739.40002441,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (13)
	CreateDynamicObject(4597,1615.09997559,-705.09997559,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (11)
	CreateDynamicObject(4597,1614.00000000,-689.40002441,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (12)
	CreateDynamicObject(4597,1611.59997559,-655.29998779,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (14)
	CreateDynamicObject(4597,1610.59997559,-641.09997559,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (15)
	CreateDynamicObject(4597,1608.09997559,-605.59997559,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (16)
	CreateDynamicObject(4597,1607.00000000,-590.09997559,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (17)
	CreateDynamicObject(4597,1606.40002441,-581.20001221,76.50000000,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(crprkblok4_lan2) (18)
	CreateDynamicObject(4639,1592.90002441,-565.90002441,75.30000305,0.00000000,0.00000000,94.00000000, .streamdistance = 10000.0); //object(paypark_lan02) (1)
	CreateDynamicObject(4639,1593.09997559,-568.59997559,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (2)
	CreateDynamicObject(4639,1593.30004883,-571.59997559,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (3)
	CreateDynamicObject(4639,1586.59997559,-572.00000000,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (4)
	CreateDynamicObject(4639,1586.40002441,-569.29998779,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (5)
	CreateDynamicObject(4639,1586.19995117,-566.29998779,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (6)
	CreateDynamicObject(4639,1578.00000000,-566.90002441,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (7)
	CreateDynamicObject(4639,1578.09997559,-568.40002441,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (8)
	CreateDynamicObject(4639,1582.30004883,-570.59997559,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (9)
	CreateDynamicObject(4639,1582.19995117,-569.40002441,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (10)
	CreateDynamicObject(4639,1582.00000000,-566.70001221,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (11)
	CreateDynamicObject(4639,1596.90002441,-565.70001221,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (12)
	CreateDynamicObject(4639,1597.09997559,-568.20001221,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (13)
	CreateDynamicObject(4639,1597.19995117,-569.79998779,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (14)
	CreateDynamicObject(4639,1600.69995117,-565.40002441,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (15)
	CreateDynamicObject(4639,1600.80004883,-566.59997559,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (16)
	CreateDynamicObject(4639,1589.50000000,-566.09997559,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (18)
	CreateDynamicObject(4639,1589.59997559,-567.50000000,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (19)
	CreateDynamicObject(4639,1590.00000000,-573.50000000,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (20)
	CreateDynamicObject(4639,1589.80004883,-570.59997559,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (22)
	CreateDynamicObject(3578,1590.59997559,-581.40002441,76.19999695,0.00000000,0.00000000,94.00000000, .streamdistance = 10000.0); //object(dockbarr1_la) (19)
	CreateDynamicObject(3578,1591.69995117,-597.59997559,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (20)
	CreateDynamicObject(3578,1592.90002441,-614.09997559,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (21)
	CreateDynamicObject(3578,1594.09997559,-630.79998779,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (22)
	CreateDynamicObject(3578,1595.30004883,-647.50000000,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (23)
	CreateDynamicObject(3578,1596.50000000,-665.00000000,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (24)
	CreateDynamicObject(3578,1598.00000000,-684.50000000,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (25)
	CreateDynamicObject(3578,1599.50000000,-704.70001221,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (26)
	CreateDynamicObject(3578,1600.80004883,-724.90002441,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (27)
	CreateDynamicObject(3578,1602.19995117,-744.29998779,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (28)
	CreateDynamicObject(4639,1601.00000000,-772.09997559,75.30000305,0.00000000,0.00000000,94.00000000, .streamdistance = 10000.0); //object(paypark_lan02) (23)
	CreateDynamicObject(4639,1606.30004883,-771.70001221,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (24)
	CreateDynamicObject(3578,1603.19995117,-761.79998779,76.19999695,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (72)
	CreateDynamicObject(4639,1610.19995117,-771.40002441,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (28)
	CreateDynamicObject(4639,1597.00000000,-772.40002441,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (29)
	CreateDynamicObject(4639,1595.30004883,-772.50000000,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (30)
	CreateDynamicObject(4639,1611.90002441,-771.29998779,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (31)
	CreateDynamicObject(4639,1591.30004883,-772.70001221,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (32)
	CreateDynamicObject(4639,1616.50000000,-770.90002441,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (33)
	CreateDynamicObject(4639,1606.09997559,-769.00000000,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (34)
	CreateDynamicObject(4639,1600.80004883,-769.50000000,75.30000305,0.00000000,0.00000000,93.99902344, .streamdistance = 10000.0); //object(paypark_lan02) (35)
	CreateDynamicObject(10763,1520.69995117,-723.50000000,92.90000153,0.00000000,0.00000000,224.00000000, .streamdistance = 10000.0); //object(controltower_sfse) (1)
	CreateDynamicObject(984,1550.19995117,-570.40002441,77.59999847,0.00000000,0.00000000,60.00000000, .streamdistance = 10000.0); //object(fenceshit2) (1)
	CreateDynamicObject(984,1562.80004883,-583.90002441,77.59999847,0.00000000,0.00000000,3.99633789, .streamdistance = 10000.0); //object(fenceshit2) (2)
	CreateDynamicObject(984,1563.59997559,-596.70001221,77.59999847,0.00000000,0.00000000,3.99353027, .streamdistance = 10000.0); //object(fenceshit2) (3)
	CreateDynamicObject(984,1563.59960938,-596.69921875,77.59999847,0.00000000,0.00000000,3.99353027, .streamdistance = 10000.0); //object(fenceshit2) (4)
	CreateDynamicObject(984,1564.50000000,-609.29998779,77.59999847,0.00000000,0.00000000,3.99353027, .streamdistance = 10000.0); //object(fenceshit2) (5)
	CreateDynamicObject(984,1566.40002441,-622.00000000,77.59999847,0.00000000,0.00000000,11.99353027, .streamdistance = 10000.0); //object(fenceshit2) (6)
	CreateDynamicObject(984,1569.00000000,-634.40002441,77.59999847,0.00000000,0.00000000,11.99157715, .streamdistance = 10000.0); //object(fenceshit2) (7)
	CreateDynamicObject(984,1571.69995117,-646.59997559,77.59999847,0.00000000,0.00000000,13.99157715, .streamdistance = 10000.0); //object(fenceshit2) (8)
	CreateDynamicObject(984,1574.30004883,-656.29998779,77.59999847,0.00000000,0.00000000,15.99108887, .streamdistance = 10000.0); //object(fenceshit2) (9)
	CreateDynamicObject(984,1573.59997559,-668.40002441,77.59999847,0.00000000,0.00000000,337.99060059, .streamdistance = 10000.0); //object(fenceshit2) (10)
	CreateDynamicObject(984,1568.80004883,-680.29998779,77.59999847,0.00000000,0.00000000,337.98889160, .streamdistance = 10000.0); //object(fenceshit2) (11)
	CreateDynamicObject(984,1564.00000000,-692.09997559,77.59999847,0.00000000,0.00000000,337.98889160, .streamdistance = 10000.0); //object(fenceshit2) (12)
	CreateDynamicObject(984,1534.30004883,-747.79998779,77.59999847,0.00000000,0.00000000,333.98889160, .streamdistance = 10000.0); //object(fenceshit2) (13)
	CreateDynamicObject(984,1529.59997559,-759.40002441,77.59999847,0.00000000,0.00000000,343.98437500, .streamdistance = 10000.0); //object(fenceshit2) (14)
	CreateDynamicObject(984,1543.00000000,-767.09997559,77.59999847,0.00000000,0.00000000,11.98437500, .streamdistance = 10000.0); //object(fenceshit2) (15)
	CreateDynamicObject(983,1542.09997559,-775.70001221,77.59999847,0.00000000,0.00000000,316.00000000, .streamdistance = 10000.0); //object(fenceshit3) (4)
	CreateDynamicObject(983,1559.50000000,-576.09997559,77.59999847,0.00000000,0.00000000,57.99975586, .streamdistance = 10000.0); //object(fenceshit3) (5)
	CreateDynamicObject(983,1556.80004883,-574.40002441,77.59999847,0.00000000,0.00000000,57.99682617, .streamdistance = 10000.0); //object(fenceshit3) (6)
	CreateDynamicObject(2792,1545.30004883,-741.29998779,80.40000153,0.00000000,0.00000000,60.00000000, .streamdistance = 10000.0); //object(cj_air_d_1) (1)
	CreateDynamicObject(2793,1560.19995117,-715.50000000,80.40000153,0.00000000,0.00000000,60.00000000, .streamdistance = 10000.0); //object(cj_air_d_2) (1)
	CreateDynamicObject(3578,1579.09997559,-721.20001221,76.19999695,0.00000000,0.00000000,1.99902344, .streamdistance = 10000.0); //object(dockbarr1_la) (73)
	CreateDynamicObject(3578,1569.30004883,-719.90002441,76.19999695,0.00000000,0.00000000,341.99401855, .streamdistance = 10000.0); //object(dockbarr1_la) (74)
	CreateDynamicObject(3578,1581.09997559,-748.20001221,76.19999695,0.00000000,0.00000000,3.99340820, .streamdistance = 10000.0); //object(dockbarr1_la) (75)
	CreateDynamicObject(3578,1571.30004883,-748.40002441,76.19999695,0.00000000,0.00000000,357.98803711, .streamdistance = 10000.0); //object(dockbarr1_la) (76)
	CreateDynamicObject(3578,1561.59997559,-746.50000000,76.19999695,0.00000000,0.00000000,339.98400879, .streamdistance = 10000.0); //object(dockbarr1_la) (77)
	CreateDynamicObject(3578,1554.09997559,-743.70001221,76.19999695,0.00000000,0.00000000,339.98291016, .streamdistance = 10000.0); //object(dockbarr1_la) (78)
	CreateDynamicObject(1572,1545.40002441,-759.40002441,77.50000000,0.00000000,0.00000000,46.00000000, .streamdistance = 10000.0); //object(cj_air_trolly) (1)
	CreateDynamicObject(1572,1545.90002441,-759.90002441,77.50000000,0.00000000,0.00000000,45.99975586, .streamdistance = 10000.0); //object(cj_air_trolly) (2)
	CreateDynamicObject(1572,1546.40002441,-760.29998779,77.50000000,0.00000000,0.00000000,45.99975586, .streamdistance = 10000.0); //object(cj_air_trolly) (3)
	CreateDynamicObject(1572,1547.00000000,-760.79998779,77.50000000,0.00000000,0.00000000,45.99975586, .streamdistance = 10000.0); //object(cj_air_trolly) (4)
	CreateDynamicObject(1572,1545.00000000,-759.00000000,77.50000000,0.00000000,0.00000000,45.99975586, .streamdistance = 10000.0); //object(cj_air_trolly) (5)
	CreateDynamicObject(1572,1544.59997559,-758.59997559,77.50000000,0.00000000,0.00000000,45.99975586, .streamdistance = 10000.0); //object(cj_air_trolly) (6)
	CreateDynamicObject(1572,1544.19995117,-758.20001221,77.50000000,0.00000000,0.00000000,45.99975586, .streamdistance = 10000.0); //object(cj_air_trolly) (7)
	CreateDynamicObject(996,1544.19995117,-756.09997559,77.69999695,0.00000000,0.00000000,314.00000000, .streamdistance = 10000.0); //object(lhouse_barrier1) (1)
	CreateDynamicObject(3526,1549.69995117,-742.09997559,76.80000305,0.00000000,0.00000000,160.00000000, .streamdistance = 10000.0); //object(vegasairportlight) (1)
	CreateDynamicObject(3526,1564.59997559,-718.40002441,76.59999847,0.00000000,0.00000000,163.99938965, .streamdistance = 10000.0); //object(vegasairportlight) (2)
	CreateDynamicObject(3385,1619.69995117,-772.50000000,76.90000153,0.00000000,0.00000000,4.00000000, .streamdistance = 10000.0); //object(a51_light1_) (1)
	CreateDynamicObject(3385,1618.00000000,-750.29998779,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (2)
	CreateDynamicObject(3385,1616.40002441,-727.79998779,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (3)
	CreateDynamicObject(3385,1615.40002441,-708.59997559,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (4)
	CreateDynamicObject(3385,1613.59997559,-687.20001221,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (5)
	CreateDynamicObject(3385,1612.09997559,-666.20001221,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (6)
	CreateDynamicObject(3385,1610.59997559,-645.20001221,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (7)
	CreateDynamicObject(3385,1609.09997559,-623.70001221,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (8)
	CreateDynamicObject(3385,1607.80004883,-604.00000000,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (9)
	CreateDynamicObject(3385,1606.40002441,-584.00000000,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (10)
	CreateDynamicObject(3385,1605.00000000,-563.50000000,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (11)
	CreateDynamicObject(3385,1604.30004883,-563.59997559,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (12)
	CreateDynamicObject(3385,1573.59997559,-565.59997559,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (13)
	CreateDynamicObject(3385,1574.59997559,-565.50000000,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (14)
	CreateDynamicObject(3385,1574.90002441,-586.20001221,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (15)
	CreateDynamicObject(3385,1576.30004883,-605.50000000,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (16)
	CreateDynamicObject(3385,1577.59997559,-625.79998779,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (17)
	CreateDynamicObject(3385,1579.30004883,-647.29998779,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (18)
	CreateDynamicObject(3385,1580.90002441,-668.29998779,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (19)
	CreateDynamicObject(3385,1582.30004883,-689.29998779,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (20)
	CreateDynamicObject(3385,1583.90002441,-710.29998779,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (21)
	CreateDynamicObject(3385,1585.30004883,-730.09997559,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (22)
	CreateDynamicObject(3385,1586.69995117,-752.70001221,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (23)
	CreateDynamicObject(3385,1588.19995117,-774.70001221,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (24)
	CreateDynamicObject(3385,1588.90002441,-774.59997559,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (25)
	CreateDynamicObject(3385,1618.90002441,-772.50000000,76.90000153,0.00000000,0.00000000,3.99902344, .streamdistance = 10000.0); //object(a51_light1_) (26)
	CreateDynamicObject(1215,1603.50000000,-766.90002441,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (1)
	CreateDynamicObject(1215,1602.80004883,-756.90002441,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (2)
	CreateDynamicObject(1215,1602.50000000,-749.20001221,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (3)
	CreateDynamicObject(1215,1601.80004883,-739.20001221,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (4)
	CreateDynamicObject(1215,1601.09997559,-729.90002441,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (5)
	CreateDynamicObject(1215,1600.40002441,-720.00000000,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (6)
	CreateDynamicObject(1215,1599.80004883,-709.59997559,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (7)
	CreateDynamicObject(1215,1599.09997559,-700.09997559,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (8)
	CreateDynamicObject(1215,1598.40002441,-689.40002441,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (9)
	CreateDynamicObject(1215,1597.80004883,-679.90002441,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (10)
	CreateDynamicObject(1215,1596.90002441,-669.90002441,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (11)
	CreateDynamicObject(1215,1596.30004883,-660.70001221,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (12)
	CreateDynamicObject(1215,1595.59997559,-652.50000000,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (13)
	CreateDynamicObject(1215,1594.80004883,-643.00000000,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (14)
	CreateDynamicObject(1215,1594.50000000,-635.79998779,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (15)
	CreateDynamicObject(1215,1593.90002441,-625.79998779,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (16)
	CreateDynamicObject(1215,1593.19995117,-619.09997559,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (17)
	CreateDynamicObject(1215,1592.50000000,-609.40002441,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (18)
	CreateDynamicObject(1215,1592.00000000,-602.70001221,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (19)
	CreateDynamicObject(1215,1591.30004883,-592.70001221,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (20)
	CreateDynamicObject(1215,1590.80004883,-586.00000000,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (21)
	CreateDynamicObject(1215,1590.09997559,-576.29998779,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (22)
	CreateDynamicObject(1215,1590.09960938,-576.29980469,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (23)
	CreateDynamicObject(1215,1593.90002441,-573.29998779,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (24)
	CreateDynamicObject(1215,1597.80004883,-571.29998779,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (25)
	CreateDynamicObject(1215,1601.59997559,-568.00000000,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (26)
	CreateDynamicObject(1215,1590.00000000,-575.09997559,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (27)
	CreateDynamicObject(1215,1587.30004883,-573.50000000,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (28)
	CreateDynamicObject(1215,1581.69995117,-572.00000000,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (29)
	CreateDynamicObject(1215,1577.59997559,-569.90002441,76.50000000,0.00000000,0.00000000,0.00000000, .streamdistance = 10000.0); //object(bollardlight) (30)
	CreateDynamicObject(3287,1558.40002441,-569.40002441,80.19999695,0.00000000,0.00000000,92.00000000, .streamdistance = 10000.0); //object(cxrf_oiltank) (1)
	CreateDynamicObject(3287,1569.90002441,-685.09997559,80.19999695,0.00000000,0.00000000,159.99951172, .streamdistance = 10000.0); //object(cxrf_oiltank) (2)
	CreateDynamicObject(3287,1562.59997559,-774.00000000,80.19999695,0.00000000,0.00000000,183.99938965, .streamdistance = 10000.0); //object(cxrf_oiltank) (3)
	CreateDynamicObject(3287,1558.59997559,-774.20001221,80.19999695,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(cxrf_oiltank) (4)
	CreateDynamicObject(3287,1554.40002441,-774.59997559,80.19999695,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(cxrf_oiltank) (5)
	CreateDynamicObject(3287,1549.90002441,-774.79998779,80.19999695,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(cxrf_oiltank) (6)
	CreateDynamicObject(3287,1549.89941406,-774.79980469,80.19999695,0.00000000,0.00000000,183.99902344, .streamdistance = 10000.0); //object(cxrf_oiltank) (7)
	//---------------Mulholland Airport ----- By Rinke_Hendriks ---------------- [END]
}
