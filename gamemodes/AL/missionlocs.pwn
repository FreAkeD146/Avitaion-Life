enum TLocation
{
	LocationName[50], // The name of the location
	Float:LocX, // The X-position of the location
	Float:LocY, // The Y-position of the location
	Float:LocZ // The Z-position of the location
}

//-------- AT.400 + Andromada Compatible ---------------------------------------
new ALocations[][TLocation] =
{
	// LocationName, LocationX, LocationY, LocationZ
	{"LSA Gate A", 1738.3202,-2425.8325,14.4741}, // Location 1
	{"LSA Gate B", 1641.5100,-2423.1333,14.4730},
	{"LSA Gate C", 1562.1697,-2428.0403,14.4765},
	{"LVA Gate A", 1561.0095,1397.6116,11.7708},
	{"LVA Gate B", 1574.6689,1539.6458,11.7481},
	{"SFA Gate B", -1382.1825,-225.9442,15.0717},
	{"SFA Gate C", -1323.3275,-255.5832,15.0703},
	{"Stoneland Int. Gate C", 2717.9512,681.2523,11.2553},
	{"Stoneland Int. Gate D", 2742.9993,679.6970,11.2612}
};
//-------- Dodo + Shamal Compatible --------------------------------------------
new DSLocations[][TLocation] =
{
	// LocationName, LocationX, LocationY, LocationZ
	{"LSA Gate A", 1738.3202,-2425.8325,14.4741}, // Location 1
	{"LSA Gate B", 1641.5100,-2423.1333,14.4730},
	{"LSA Gate C", 1562.1697,-2428.0403,14.4765},
	{"LVA Gate A", 1561.0095,1397.6116,11.7708},
	{"LVA Gate B", 1574.6689,1539.6458,11.7481},
	{"SFA Gate B", -1382.1825,-225.9442,15.0717},
	{"SFA Gate C", -1323.3275,-255.5832,15.0703},
	{"Stoneland Int. Gate C", 2717.9512,681.2523,11.2553},
	{"Stoneland Int. Gate D", 2742.9993,679.6970,11.2612},
	{"Prickle Pine Airport Gate A", 1109.0206,2563.8406,10.9826},
	{"Bayside Airport Gate C", -2454.9817,2540.1506,24.7591},
	{"Palomino Creek Airport Gate C", 1919.4451,-483.7521,26.3312},
	{"Palomino Creek Airport Gate D", 1885.7271,-502.4863,26.3312},
	{"K.A.C.C Regional Gate C", 2799.7319,2767.1943,10.8687},
	{"K.A.C.C Regional Gate D", 2815.5737,2757.7551,10.8687},
	{"K.A.C.C Regional Gate F", 2831.6379,2749.2725,10.8687},
	{"Montgomery Airport Gate D", 1277.0098,410.7339,20.3572},
	{"Montgomery Airport Gate C", 1292.0890,431.3974,20.3372},
	{"Angel Pine Airport Gate C", -1798.5845,-2992.4514,8.4916},
	{"Angel Pine Airport Gate D", -1808.1495,-2987.5530,8.4916},
	{"Blueberry Airport Gate C", 11.0526,-95.6858,4.2813},
	{"Blueberry Airport Gate D", 9.1205,-118.0340,4.2433},
	{"Shady Creek Airport Gate D", -1352.9548,-2176.4211,27.6743},
	{"Shady Creek Airport Gate E", -1336.2051,-2182.0254,26.7054},
	{"Shady Creek Airport Gate F", -1313.5453,-2185.2051,26.7054},
	{"Santa Maria Airport Gate D", 43.1413,-1717.3152,4.8812},
	{"Santa Maria Airport Gate F", 38.5412,-1703.2230,4.8205},
	{"Indiana Airport Gate C", -694.9243,1272.1669,12.2733},
	{"Indiana Airport Gate D", -681.6368,1270.1713,12.2733}
};
//-------- Nevada Compatible ---------------------------------------------------
new NLocations[][TLocation] =
{
	// LocationName, LocationX, LocationY, LocationZ
	{"Los Santos Countryside", -112.3393,-1360.7817,360.2108},
	{"San Fierro Field", -2327.2917,197.1902,305.3922},
	{"Whetstone", -2335.9360,-2410.7107,234.1891},
	{"LSA Gate A", 1738.3202,-2425.8325,14.4741}, // Location 1
	{"LSA Gate B", 1641.5100,-2423.1333,14.4730},
	{"LSA Gate C", 1562.1697,-2428.0403,14.4765},
	{"LVA Gate A", 1561.0095,1397.6116,11.7708},
	{"LVA Gate B", 1574.6689,1539.6458,11.7481},
	{"SFA Gate B", -1382.1825,-225.9442,15.0717},
	{"SFA Gate C", -1323.3275,-255.5832,15.0703},
	{"Stoneland Int. Gate C", 2717.9512,681.2523,11.2553},
	{"Stoneland Int. Gate D", 2742.9993,679.6970,11.2612}
};
//---------------Trucker Compatible---------------------------------------------
new TruckLocation[][TLocation] = ////// for Flatbed :P
{
	// LocationName, LocationX, LocationY, LocationZ
	{"WillowField WareHouse", 2041.6854,-2102.3838,13.5469},
	{"Marina Fish Supplies", 397.5375,-1786.5430,5.7422},
	{"Robois Food Mart", 1314.4550,-913.2592,38.1446},
	{"Courtz and Schutz", 2127.7539,-1130.9492,25.5361},
	{"Pershing Sqaure Warehouse", 1498.1677,-1584.7599,13.5469},
	{"Vinewood Warehouse", 882.8248,-1241.9021,15.9749},
	{"Market Warehouse", 1111.1167,-1328.5460,13.2790},
	{"Marina Fish Supplies", 397.5375,-1786.5430,5.7422},
	{"Market Factory", 1154.6548,-1207.5854,19.1523},
	{"Linden Station", 2791.2339,1291.9994,10.7500},
	{"Strip Casino", 2084.1108,1460.5892,10.8203},
	{"RedSands Casino", 1655.4215,2266.0376,10.8203},
	{"Redsands Hotel", 1982.4698,2427.8955,10.8203},
	{"VRock Hotel", 2600.7568,2254.9343,10.8133},
	{"LV Sex Shop", 2093.6184,2079.8833,10.8203},
    {"LVA Main Entrance", 1716.1649,1474.5548,10.8203}, // Location 1
	{"The Vintage", 2055.7185,1912.1226,12.1675},
	{"Motel", 2111.5232,2180.0879,10.8203},
	{"Las Venturas Hospital", 1611.1631,1847.1638,10.8203},
	{"4 Dragons Casino", 2079.1841,1060.1249,10.8203},
	{"Burger King", 1891.7174,2077.0259,10.8203},
    {"Nude Shop", 1948.3529,-2119.3779,13.5449},
	{"Super Saver", 1829.1929,-1844.5256,13.5781},
	{"Los Santos Pizza Stack", 2090.5327,-1806.4088,13.5469},
	{"Ganton Clukin Bell", 2423.7927,-1511.4689,23.9922},
	{"East Los Santos Bar", 2364.2007,-1334.6503,24.0078},
	{"San Fierro Driving School", -2070.2134,-76.9065,35.3203},
	{"Burger Shot", -2327.7761,-183.9470,35.3203},
	{"San Fierro Hotel", -2724.3123,-314.2257,7.1867},
	{"Esplanade North", -1951.1077,1327.4839,7.1888},
	{"WangCars", -1998.8578,252.6071,30.3579},
	{"Santa Marina Beach", 397.5375,-1786.5430,5.7422},
	{"Robois Food Mart", 1314.4550,-913.2592,38.1446},
	{"Courtz and Schutz", 2127.7539,-1130.9492,25.5361}

};
//------- Helicopter Compatible ------------------------------------------------
new HELILocations[][TLocation] =
{
	// LocationName, LocationX, LocationY, LocationZ
	{"Los Santos Airport HP-A", 1765.7803,-2285.3062,26.9636},
	{"San Fierro Airport HP-A", -1222.9742,-11.2715,14.3233},
	{"San Fierro Airport HP-B", -1184.3068,23.9801,14.3240},
	{"Bayside Marina HP-A", -2227.2913,2325.4553,7.7224},
	{"Verdeant Meadows HP-A", 365.3646,2537.9160,16.8347},
	{"Emerald Isle HP-A", 2094.2500,2415.3455,74.7552},
	{"K.A.C.C Regional HP-A", 2822.6416,2671.1785,10.9994},
	{"K.A.C.C Regional HP-B", 2835.0061,2671.4453,10.8909},
	{"K.A.C.C Regional HP-C", 2845.1877,2670.8596,10.8894},
	{"K.A.C.C Regional HP-D", 2854.4290,2670.8481,10.8920},
	{"Angel Pine Airport HP-A", -1759.2014,-2898.6067,10.9281},
	{"Angel Pine Airport HP-B", -1730.4406,-2920.7380,10.9281},
	{"Verdeant Bluffs HP-A", 986.7355,-2155.8159,15.4281},
	{"Santa Maria Beach HP-A", 52.1325,-1770.9048,7.0281}
};
//----- Skimmer/Boats Compatible -----------------------------------------------
new BOATLocations[][TLocation] =
{
	{"Bayside Seaport A", -2203.7356,2421.7729,2.5803},
	{"Bayside Seaport B", -2231.7341,2449.0798,2.5744},
	{"Bayside Seaport C", -2250.8843,2429.4451,2.5731},
	{"Bayside Seaport D", -2225.6475,2404.8301,2.5785},
	{"Palisades Seaport A", -2954.1018,497.7353,2.6167},
	{"Palisades Seaport B", -2984.8962,499.0645,2.6183},
	{"Red County Seaport A", 1627.7302,567.9797,1.9596},
	{"Red County Seaport B", 2294.3337,513.1888,2.0050},
	{"Red County Seaport C", 2355.4585,513.1550,1.7950},
	{"Esplande North Seaport A", -1717.2863,1437.0093,1.8961},
	{"Esplande North Seaport B", -1507.2793,1302.3727,1.5326},
	{"Esplande North Seaport C", -1567.7971,1261.4723,2.0222},
	{"Palomino Creek Seaport B", 1973.0605,-248.6441,1.9003},
	{"Palomino Creek Seaport C", 1998.0090,-242.0531,1.9926},
	{"Palomino Creek Seaport A", 2104.1963,-92.8493,1.4733},
	{"Playa del Seville Seaport A", 2950.1167,-2051.3328,1.4801},
	{"Los Santos Seaport A", 2708.5076,-2309.0400,2.2150},
	{"Los Santos Seaport B", 2519.1272,-2269.1116,1.8145},
	{"Los Santos Seaport C", 2309.7991,-2412.6677,1.8298},
	{"Los Santos Seaport D", 2353.7417,-2522.3364,1.7421},
	{"Los Santos Seaport E", 2449.6047,-2718.7253,2.0806},
	{"Fallen Tree Seaport A", -333.0670,-467.9439,1.6440},
	{"Angel Pine Airport Seaport A", -1759.5175,-3006.3638,1.8954},
	{"Santa Maria Seaport A", 116.5295,-1821.3625,-0.6251},
	{"Santa Maria Seaport B", 95.9396,-1804.0206,-0.5448},
	{"Santa Maria Seaport C", 73.8296,-1804.1655,-0.4247},
	{"Santa Maria Seaport D", 52.5124,-1804.2556,-0.2099},
	{"Indiana Seaport A", -608.7407,1277.1222,-1.1850}
};
//----- Cropduster Compatible [STAGE 1 - PICK UP SEEDS] ------------------------
new CD1Locations[][TLocation] =
{
	{"Flint County Seed Depot", -1094.9493,-1621.2086,76.3672},
	{"Flint County Seed Depot", -270.5169,-2151.5566,28.7311}
};
//----- Cropduster Compatible [STAGE 2 - DROP OFF SEEDS @ RACE CHECKPOINTS.] ---
new CD2Locations[][TLocation] =
{
	{"Los Santos Farmland", -267.6216,-1518.1316,20.2993},
	{"Los Santos Farmland", -264.3980,-1376.5297,24.5172},
	{"Los Santos Farmland", -409.3886,-1328.5957,40.8713},
	{"Los Santos Farmland", -520.2924,-1339.5139,35.1951},
	{"Blueberry Farmland", -136.0905,127.7290,12.6521},
	{"Blueberry Farmland", -176.6971,46.5675,10.8071},
	{"Blueberry Farmland", -234.7424,-33.6160,16.6925},
	{"Red County Farmland", 1927.1514,203.4721,38.8304},
	{"Red County Farmland", 1974.3995,195.8955,34.9598},
	{"Red County Farmland", 1990.7018,215.9787,32.3300},
	{"Red County Farmland", 1945.2769,230.0906,32.9333}
};
//----- Beagle Compatible [STAGE 2 - DROP OFF CARGO] ---------------------------
new CARGOLocations[][TLocation] =
{
	{"Los Santos Beach", 289.4194,-1832.4514,44.3939},
	{"Las Venturas Station", 2799.5442,1149.1533,43.9896},
	{"Las Venturas Desert", 2.0027,2452.5654,39.5609},
	{"San Fierro Zombotech", -1953.3134,664.2141,244.1103},
	{"San Fierro Beach", -2894.3640,-99.0863,40.9341},
	{"Angel Pine Gas Station", -1555.9890,-2769.9434,103.7273}
};
//----- Hydra Compatible -------------------------------------------------------
new HYDRALocations[][TLocation] =
{
	{"Area 51 Military Base", 309.3832,2038.3633,18.3638},
	{"San Fierro Carrier", -1314.3152,494.5123,18.9576},
	{"Verdeant Meadows", 385.3608,2540.9385,17.4236},
	{"Ocean Docks Military Base", 2741.4343,-2466.0979,14.5982},
	{"Whetstone Carrier", -2956.0918,-2680.8987,15.3136}
};
//--------------------------END OF ENUM'S FOR MISSIONS--------------------------
//Stuff
