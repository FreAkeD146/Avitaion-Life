//Aviation Life - An Aviation Roleplay gamemode for SAMP
//Created in 2018
//Created by FreAkeD

#include <a_samp>
#include <a_mysql>
#include <streamer>
#include <sscanf2>
#include <utils>


//Script Includes-------------------
#include "server/ConnectMYSQL.pwn"
#include "server/missionloc.pwn"
#include "server/basic.pwn"
#include "server/textdraws.pwn"
#include "server/Objects.pwn"
//----------------------------------

stock SetPlayerPosOb(playerid, Float:x, Float:y, Float:z){
	Streamer_UpdateEx(playerid,x,y,z);
	return SetTimerEx("SetPlayerPosPublic",0,0,"ifff",playerid,x,y,z);
}
forward SetPlayerPosPublic(playerid,Float:x,Float:y,Float:z);
public SetPlayerPosPublic(playerid,Float:x,Float:y,Float:z)
{
	SetPlayerPos(playerid,x,y,z);
	return 1;
}
#define SetPlayerPos SetPlayerPosOb

main()
{
	print("\n----------------------------------");
	print(" Aviation Life | By FreAkeD");
	print("----------------------------------\n");
}

AntiDeAMX()
{
    new a[][] =
    {
        "Unarmed (Fist)",
        "Brass K"
    };
    #pragma unused a
}

#define HOSTNAME "Aviation Life"

//Global Server Variables ------------------------------------------------------
new ServerMOTD[256];
new ServerMOTDSetBy[MAX_PLAYER_NAME];
new ServerMaxPlayers = 0;
new ServerMaxPlayersDate[64];
new ServerMaxPlayersTime[64];
new ServerTickets = 0;
new sTrackPlayers = 0; //On LoadStuff() set's to 1.
//---- Flight Streak -----
new ServerMaxFlightStreak,
	ServerMaxFlightStreakWinner[MAX_PLAYER_NAME],
	ServerMaxFlightStreakDate[64],
	ServerMaxFlightStreakTime[64];
//---- Flight Streak -----
//End of Global Server Variables -----------------------------------------------

#define MAX_AIRLINES 10
#define MAX_HOUSES 9999
#define aselect 1000
#define showit 1001
#define showit2 1002
#define astats 1003
#define adonation1 1004
#define amembers1 1005
#define afleet1 1006
#define abank1 1007
#define abank2 1008
#define abank3 1009
#define abank4 1010
#define asettings1 1011
#define asettings2 1012
#define asettings3 1013
#define asettings4 1014
#define asettings5 1015
#define afleet5 1016
#define buyfleet1 1017
#define editmember1 1018
#define afleet2 1019
#define buyfleet2 1023
#define motd1 1025
#define motd2 1020
#define motd3 1021
#define rankperm1 1022
#define rankperm2 1024
#define myhouses 1030
#define housemenu 1031
#define housesell1 1032
#define housesell2 1033
#define myvehicles1 1034
#define myvehicles2 1035
#define myvehicles3 1036
#define myvehicles4 1037
#define marketplace1 1038
#define marketplace2 1039
#define vipmenu1 1040
#define vipmenu2 1041
#define vipmenu3 1042
#define vipmenu4 1043
#define radio1 1044
//--- Player Settings [/preferences]-----------------------------------------------
#define settings1 1045
#define settings2 1046
#define settings3 1047
#define settings4 1049 // 1050/1051 is used by VIP Sounds below.
#define settings5 1052 // VIP Sounds
#define settings6 1053 // Global Sounds
#define settings7 1054 // Start from 1056 (Connection Messages)
#define settings8 1057 // AutoWork
//--- Player Settings [/preferences]-----------------------------------------------
#define vipsounds1 1048
#define namerequests1 1050
#define namerequests2 1051
#define coupon1 1055
#define coupon2 1056 //1057 is TAKEN

//COLOURS AND SHIZZLE.
#define COLOR_AIRLINECHAT 0x83B834FF
#define COLOR_IRC 0xBEB541FF
#define COLOR_ORANGE 0xFF80000FF
//new User Colours
#define TEAM_SPAWNING 0xC0C0C0FF
#define TEAM_MILITARY 0xAA3333AA
#define TEAM_CPILOT 0x33AA33AA
#define TEAM_CTRUCK 0x33CCFFAA
#define COLOR_VIP 0x00EEADDF
#define COLOR_SKIN 0xFFA953FF
#define COLOR_AFK 0xC0C0C0FF
//End of User Colours
static gTeam[MAX_PLAYERS];
//Teams
//#define TEAM_MILITARY 0xF27900FF
//Textdraw crap - money
forward TextDrawDestroyTimer2(TextDrawID);
new Text:gTextStyle2[128];
new Text:Clockzz;
new Text:AdTextdraw;
new textcountP;
//cars
new CreatedCars[MAX_VEHICLES] = {INVALID_VEHICLE_ID, ...};
new gDestroyVehicle[MAX_VEHICLES];
//..
new AdvertisementStatus = 0; //0 = available | 1 = busy.
//
new LastPMER[MAX_PLAYERS];
new BuyingFleetPrice[MAX_PLAYERS];
new BuyingFleet[MAX_PLAYERS];
new NewSkin[MAX_PLAYERS];
new OldSkin[MAX_PLAYERS];
new EditingMember[MAX_PLAYER_NAME][MAX_PLAYERS];
new EditingMemberRank[MAX_PLAYERS];
new EditingVehicle[MAX_PLAYERS];
new EditingVehicleModel[MAX_PLAYERS];
new FuelWarned[MAX_PLAYERS];
//Prevent fuckup
new GettingBanned[MAX_PLAYERS];

new POTD_Winner = 0;
new POTD_WinnerName[MAX_PLAYER_NAME];
new POTD_MaximumEarnt = 0;
new POTD_FinalAmount = 0;
new POTD_FinalAmount2 = 0; //To store last winner's cash

new AOTD_Winner = 50; //Default
new AOTD_WinnerName[128];
new AOTD_MaximumEarnt = 0;
new AOTD_FinalAmount = 0;
new AOTD_FinalAmount2 = 0; // To store last winner's cash.
new AOTD_Earnt[MAX_AIRLINES] = 0;

new ClaimingCouponName[64][MAX_PLAYERS];
new ClaimingCoupon[MAX_PLAYERS];
new ClaimingCouponReward[MAX_PLAYERS];

new SessionFlights[MAX_PLAYERS];
new SessionEarnt[MAX_PLAYERS];

new SessionStatus[MAX_PLAYERS];
new RconAttempts[MAX_PLAYERS];
new LookingAtStats[MAX_PLAYERS];
new SkinConfirmation[MAX_PLAYERS];
new VIPSoundWarning[MAX_PLAYERS];
new ActiveAdminSpy[MAX_PLAYERS];
new PreviewingSkin[MAX_PLAYERS];
new PreviewingSkinOld[MAX_PLAYERS];
new PreviewingSkinTime[MAX_PLAYERS];

new NameChangeRequest[MAX_PLAYERS];

new ListeningToRadio[MAX_PLAYERS];

new VIPWarning[MAX_PLAYERS];

new IsLocatingVehicle[MAX_PLAYERS];

new InHouse[MAX_PLAYERS];
new EditingHouse[MAX_PLAYERS];

new PurelySpawned[MAX_PLAYERS];

new EditingPermissions[MAX_PLAYERS];
new AirlineOffer[MAX_PLAYERS];

new Num1[MAX_PLAYERS];
new Num2[MAX_PLAYERS];

new JustRegistered[MAX_PLAYERS];

new DistanceFlown1[MAX_PLAYERS];
new DistanceFlown2[MAX_PLAYERS];

new IsTracingHouse[MAX_PLAYERS];

new Text3D:AirlineText[MAX_VEHICLES];
//Etc
new gHour = 0;
new gMinutes = 0;
new PlayerLogged[MAX_PLAYERS];
new PlayerSpawned[MAX_PLAYERS];
new LookingAtAirline[MAX_PLAYERS];
new shifthour;
new ghour = 0;
new gminute = 0;
new gsecond = 0;
new realtime = 1;
new timeshift = -1;
new randomtimer;
new onlinetimer;
new SelectedSpawn[MAX_PLAYERS];
new VehicleDeletionWarning[MAX_PLAYERS];
new tempinterior[MAX_PLAYERS];
new vfuel[MAX_VEHICLES];
new Float:tempX[MAX_PLAYERS];
new Float:tempY[MAX_PLAYERS];
new Float:tempZ[MAX_PLAYERS];
new Float:tempA[MAX_PLAYERS];
new SpectatedID[MAX_PLAYERS];
new WasSpectating[MAX_PLAYERS];
new SpectateType[MAX_PLAYERS];
new Hours[MAX_PLAYERS];
new Minutes[MAX_PLAYERS];
new MissionVehicle[MAX_PLAYERS];
new FirstAPName[MAX_PLAYERS][50];
new FinalAPName[MAX_PLAYERS][50];
new WantsRecording[MAX_PLAYERS];
new TimeTakenHrs[MAX_PLAYERS];
new TimeTakenMins[MAX_PLAYERS];
new TypeFlight[MAX_PLAYERS];
new ServerRestarting = 0;
//0 - None
//1 - Andro
//2 - AT400
//3 - Shamal
//4 - Dodo
//5 - Nevada
//6 - Maverick
//7 - News Maverick
//8 - Police Maverick
//9 - Leviathan
//10 - Seasparrow
//11 - Sparrow
//12 - Cargobob
//13 - Raindance
//14 - Hunter
//15 - Skimmer
//16 - Cropduster
//17 - Beagle
//18 - Hydra
new ChosenClass[MAX_PLAYERS];
new MissionStage[MAX_PLAYERS];
//0 - None
//1 - Heading to pickup
//2 - Picked up, heading to drop off
new WorkPay[MAX_PLAYERS];
new Float:Pos1[MAX_PLAYERS];//Make sure random location isn't close to start.
new Float:Pos2[MAX_PLAYERS];//Make sure random location isn't close to start.
new Float:Pos3[MAX_PLAYERS];//Make sure random location isn't close to start.
new Float:Pos12[MAX_PLAYERS];//Make sure random location isn't close to start.
new Float:Pos22[MAX_PLAYERS];//Make sure random location isn't close to start.
new Float:Pos32[MAX_PLAYERS];//Make sure random location isn't close to start.
new StartedMission[MAX_PLAYERS];

new EditingRank[MAX_PLAYERS];

new CanAdvertiseAgain[MAX_PLAYERS];
new VIPName[MAX_PLAYERS];

//AFK
new AFKPLAYER[MAX_PLAYERS];
new AFKREASON[MAX_PLAYERS][128];

//Forwards
forward PlaySound(soundid);
forward UpdateSkin(playerid);
forward RegisterAccount(playerid, password[]);
forward PlayerLogin(playerid,password[]);
forward DisplayDialogForPlayer(playerid, dialogid);
forward SaveAccount(playerid);
forward SaveHouse(houseid);
forward SaveVehicle(vehicleid);
forward ReloadHouse(houseid);
forward ReloadVehicle(vehicleid);
forward FixHour(hour);
forward YourOnline(playerid);
forward YourOffline(playerid);
forward SyncTime();
forward ShowVIPMenu(playerid);
forward UpdateTextdraw();
forward ShowAds();
forward HideAds();
forward AntiCheat();
forward UpdateIRC();
forward UpdateClock(); //ANTI CHEAT IN THIS
forward StartMission(playerid);
forward CheckBanned(playerid);
forward IsAtGasStation(playerid);
forward RandomTimer();
forward timer_update();
forward ChangeWeather();
forward RandomMsg();
forward ShowAirlines(playerid);
forward ResetMissionData(playerid);
forward ResetPlayerData(playerid);
forward AdvertisementUpdate(playerid);
forward ShowHouses(playerid);
forward ShowVehicles(playerid);
forward ShowMarketplace(playerid);
forward ShowSettings(playerid);
forward OnlineTimer();
forward LoadStuff();
forward SaveStuff();
forward CheckIPS(playerid);
forward LoadAirline(airlineid);
forward SaveAirline(airlineid);
forward GetEndLocation(playerid);
forward FinishMission(playerid);
forward RevertSkin(playerid);
forward UpdatePlayerColour(playerid);
forward ShowRole(playerid);
forward UpdateScore(playerid);
forward ABroadCast(color,const string[],level);
forward SendAdminMessage(color, string[]);
forward SendHiddenMessage(string[]);
forward SendVIPMessage(color, string[]);
forward SendAirlineMessage(color, string[], airlineid);
forward KillCar(vehicleid);
forward ShowAirlineStats(playerid);
forward ShowDonations(playerid);
forward ShowMembers(playerid);
forward ShowNCs(playerid);
forward ShowRadio(playerid);
forward ShowVIPSounds(playerid);
forward ShowFleet(playerid);
forward ShowBank(playerid);
forward ShowPlayerSettings(playerid);
forward GiveAirlineBonus(playerid);
forward RespawnPlayer(playerid);
forward PutIntoHouse(playerid, houseid);
forward UpdateMap();
forward SaveComponent(vehicleid,componentid);
//Special Defines
//SPECTATE
#define ADMIN_SPEC_TYPE_NONE 0
#define ADMIN_SPEC_TYPE_PLAYER 1
#define ADMIN_SPEC_TYPE_VEHICLE 2
//STRING COLOURS
#define MSGWHITE FFFFFF
#define MSGBLUE 1B8AE4
#define COLOR_RADIO 0x5F5F5FFF

enum MapSystem_E
{
	PlayerObject[MAX_PLAYERS],
	Text3D:PlayerLabel[MAX_PLAYERS],
	Color[MAX_PLAYERS],
	Lampy[8],
	Datas[2],
	Mury[6],
	bool:IsPlane[611],//some serious fast checking if a model is a plane
	bool:IsHelios[611],//is a helicopter
	bool:IsAircraft[611],//is a plane of helicopter
	IsInHelios[MAX_PLAYERS]
}

new MapSystem[MapSystem_E];
//Panel
//Other
native sscanf(const data[], const format[], {Float,_}:...);
stock Float:GetDistanceBetweenPoints(Float:X, Float:Y, Float:Z, Float:PointX, Float:PointY, Float:PointZ) return floatsqroot(floatadd(floatadd(floatpower(floatsub(X, PointX), 2.0), floatpower(floatsub(Y, PointY), 2.0)), floatpower(floatsub(Z, PointZ), 2.0)));
enum RMessages
{
	Message[156],
}
new Messages[][RMessages] =
{
	{"Pro-Tip: Use /commands or /cmds for seeing server commands."},
	{"Pro-Tip: Found a Bug, Report the Bug on forums!"},
	{"Pro-Tip: Check out our forums for the latest/upcoming updates! /forums"},
	{"Pro-Tip: Do Not Hack, Chappie is Always watching you.!"},
	{"Pro-Tip: Found a Hacker? Report it now with /report or go to our forums to report"},
	{"Pro-Tip: This Server has a strict policy, If you hack you will not get Un-Banned!"}
};

public KillCar(vehicleid)
{
	DestroyVehicle(vehicleid);                      // destroy vehicle
	gDestroyVehicle[vehicleid] = 0;
	return 1;
}
stock IsMissionVehicle(carid)
{
    new MissionVeh[] = { 592, 577, 511, 512, 593,
		  			 520, 553, 476, 519, 460,
					 513, 548, 425, 417, 487,
					 488, 497, 563, 447, 469,
					 514, 515
	};
    for(new i = 0; i < sizeof(MissionVeh); i++)
    {
        if(GetVehicleModel(carid) == MissionVeh[i]) return 1;
    }
    return 0;

}


stock GetPlayerArea(playerid)
{
	new str[130];
	format(str,sizeof(str),"%s",Zones[GetPlayerZone(playerid)][zone_name]);
	return str;
}
stock IsIp(const string[])
{
	new count = 0;
	new pos[50];
	new length = strlen(string);
	for(new n=0; n<length; n++)
	{
		if(string[n] == '.')
		{
		    if(count < 50)
		    {
		    	pos[count] = n;
			}
			count++;
		}
	}
	if(count >= 3)
	{
	    new res[50];
		for(new n=0; n<count; n++)
		{
			if(n != (count - 1) && n != count)
			{
				if((pos[n+1] - pos[n]) > 4 || (pos[n+1] - pos[n]) == 1)
				{
					res[n] = 0;
				}
				else
				{
				    res[n] = 1;
				}
			}
		}
		new result = 0;
		for(new n=0; n<count; n++)
		{
		    if(res[n] == 1) result++;
		}
		if(result >= 2)
		{
		    return 1;
		}
	}
	return 0;
}
stock IsBadString(string[])
{
 new len = strlen(string);
 for(new i = 0; i < len; ++i)
 {
     switch(string[i])
     {
         case '~','%','/','\'','\\': return 1;
  }
 }
 return 0;
}
stock GetPlayerZone(playerid)
{
	new Float:x,Float:y,Float:z;
	GetPlayerPos(playerid,x,y,z);
	for(new i=0;i<sizeof(Zones);i++)
	{
		if(x > Zones[i][zone_minx] && y > Zones[i][zone_miny] && z > Zones[i][zone_minz] && x < Zones[i][zone_maxx] && y < Zones[i][zone_maxy] && z < Zones[i][zone_maxz])
		return i;
	}
	return false;
}
stock GetZone(x, y, z)
{
	for(new i=0;i<sizeof(Zones);i++)
	{
		if(x > Zones[i][zone_minx] && y > Zones[i][zone_miny] && z > Zones[i][zone_minz] && x < Zones[i][zone_maxx] && y < Zones[i][zone_maxy] && z < Zones[i][zone_maxz])
		return i;
	}
	return false;
}
public TextDrawDestroyTimer2(TextDrawID)
{
	TextDrawDestroy(gTextStyle2[TextDrawID]);
	return 1;
}
public LoadStuff()
{
	new query[26];
	format(query,sizeof(query),"SELECT * FROM statistics");
	mysql_query(query);
	mysql_store_result();
	new line[1024];
	mysql_fetch_row(line);
	sscanf(line, "p<|>s[256]s[30]ds[64]s[64]dds[30]s[64]s[64]",
	ServerMOTD, ServerMOTDSetBy, ServerMaxPlayers, ServerMaxPlayersDate, ServerMaxPlayersTime, ServerTickets, ServerMaxFlightStreak, ServerMaxFlightStreakWinner, ServerMaxFlightStreakDate, ServerMaxFlightStreakTime);
	mysql_free_result();
	sTrackPlayers=1;
}
public SaveStuff()
{
	mysql_real_escape_string(ServerMOTD,ServerMOTD);
	mysql_real_escape_string(ServerMOTDSetBy, ServerMOTDSetBy);
	mysql_real_escape_string(ServerMaxFlightStreakWinner,ServerMaxFlightStreakWinner);
	new query[1024];
	format(query,sizeof(query),"UPDATE statistics SET motd='%s',motdsetby='%s',maxplayers='%d',maxplayersdate='%s',maxplayerstime='%s',tickets='%d',maxflightstreak='%d',maxflightstreakwinner='%s',maxflightstreakdate='%s',maxflightstreaktime='%s'",
	ServerMOTD,
	ServerMOTDSetBy,
	ServerMaxPlayers,
	ServerMaxPlayersDate,
	ServerMaxPlayersTime,
	ServerTickets,
	ServerMaxFlightStreak,
	ServerMaxFlightStreakWinner,
	ServerMaxFlightStreakDate,
	ServerMaxFlightStreakTime);
	mysql_reconnect();
	mysql_query(query);
}
public YourOnline(playerid)
{
	new EscName[MAX_PLAYER_NAME];
	mysql_real_escape_string(PlayerName(playerid),EscName);
	new query[100];
	format(query,sizeof(query),"UPDATE users SET online='1' WHERE username='%s'", EscName);
	mysql_reconnect();
	mysql_query(query);
}
public UpdatePlayerColour(playerid)
{
	if(VIPName[playerid] == 1)
	{
	    SetPlayerColor(playerid, COLOR_VIP);
	}
	if(PlayerSpawned[playerid] == 0 && VIPName[playerid] == 0)
	{
		SetPlayerColor(playerid, TEAM_SPAWNING); //Logging in, not spawned.
	}
	else if(gTeam[playerid] == TEAM_CPILOT && VIPName[playerid] == 0)
	{
	    SetPlayerColor(playerid, TEAM_CPILOT);
	}
	else if(gTeam[playerid] == TEAM_CTRUCK && VIPName[playerid] == 0)
	{
	    SetPlayerColor(playerid, TEAM_CTRUCK);
	}
	else if(gTeam[playerid] == TEAM_MILITARY && VIPName[playerid] == 0)
	{
	    SetPlayerColor(playerid, TEAM_MILITARY);
	}
}
public YourOffline(playerid)
{
	new EscName[MAX_PLAYER_NAME];
	mysql_real_escape_string(PlayerName(playerid),EscName);
	new query[100];
	format(query,sizeof(query),"UPDATE users SET online='0' WHERE username='%s'", EscName);
	mysql_reconnect();
	mysql_query(query);
}
new VehicleFriendlyNames[212][] = {
	{"Landstalker"},{"Bravura"},{"Buffalo"},{"Linerunner"},{"Perrenial"},{"Sentinel"},
	{"Dumper"},{"Firetruck"},{"Trashmaster"},{"Stretch"},{"Manana"},{"Infernus"},{"Voodoo"},
	{"Pony"},{"Mule"},{"Cheetah"},{"Ambulance"},{"Leviathan"},{"Moonbeam"},{"Esperanto"},{"Taxi"},
	{"Washington"},{"Bobcat"},{"Mr. Whoopee"},{"BF. Injection"},{"Hunter"},{"Premier"},{"Enforcer"},
	{"Securicar"},{"Banshee"},{"Predator"},{"Bus"},{"Rhino"},{"Barracks"},{"Hotknife"},{"Article Trailer"},
	{"Previon"},{"Coach"},{"Cabbie"},{"Stallion"},{"Rumpo"},{"RC Bandit"},{"Romero"},{"Packer"},{"Monster"},
	{"Admiral"},{"Squalo"},{"Seasparrow"},{"Pizzaboy"},{"Tram"},{"Article Trailer 2"},{"Turismo"},{"Speeder"},
	{"Reefer"},{"Tropic"},{"Flatbed"},{"Yankee"},{"Caddy"},{"Solair"},{"Berkley's RC Van"},{"Skimmer"},
	{"PCJ-600"},{"Faggio"},{"Freeway"},{"RC Baron"},{"RC Raider"},{"Glendale"},{"Oceanic"},{"Sanchez"},
	{"Sparrow"},{"Patriot"},{"Quad"},{"Coastguard"},{"Dinghy"},{"Hermes"},{"Sabre"},{"Rustler"},{"ZR-350"},
	{"Walton"},{"Regina"},{"Comet"},{"BMX"},{"Burrito"},{"Camper"},{"Marquis"},{"Baggage"},{"Dozer"},
	{"Maverick"},{"News Chopper"},{"Rancher"},{"FBI Rancher"},{"Virgo"},{"Greenwood"},{"Jetmax"},{"Hotring"},
	{"Sandking"},{"Blista Compact"},{"Police Maverick"},{"Boxville"},{"Benson"},{"Mesa"},{"RC Goblin"},
	{"Hotring Racer A"},{"Hotring Racer B"},{"Bloodring Banger"},{"Rancher"},{"Super GT"},{"Elegant"},
	{"Journey"},{"Bike"},{"Mountain Bike"},{"Beagle"},{"Cropduster"},{"Stunt"},{"Tanker"},{"Roadtrain"},
	{"Nebula"},{"Majestic"},{"Buccaneer"},{"Shamal"},{"Hydra"},{"FCR-900"},{"NRG-500"},{"HPV1000"},
	{"Cement Truck"},{"Tow Truck"},{"Fortune"},{"Cadrona"},{"FBI Truck"},{"Willard"},{"Forklift"},
	{"Tractor"},{"Combine"},{"Feltzer"},{"Remington"},{"Slamvan"},{"Blade"},{"Freight"},{"Streak"},
	{"Vortex"},{"Vincent"},{"Bullet"},{"Clover"},{"Sadler"},{"Firetruck LA"},{"Hustler"},{"Intruder"},
	{"Primo"},{"Cargobob"},{"Tampa"},{"Sunrise"},{"Merit"},{"Utility"},{"Nevada"},{"Yosemite"},{"Windsor"},
	{"Monster A"},{"Monster B"},{"Uranus"},{"Jester"},{"Sultan"},{"Stratum"},{"Elegy"},{"Raindance"},
	{"RC Tiger"},{"Flash"},{"Tahoma"},{"Savanna"},{"Bandito"},{"Freight Flat"},{"Streak Carriage"},
	{"Kart"},{"Mower"},{"Dunerider"},{"Sweeper"},{"Broadway"},{"Tornado"},{"AT-400"},{"DFT-30"},{"Huntley"},
	{"Stafford"},{"BF-400"},{"Newsvan"},{"Tug"},{"Article Trailer 3"},{"Emperor"},{"Wayfarer"},{"Euros"},{"Mobile Hotdog"},
	{"Club"},{"Freight Carriage"},{"Trailer 3"},{"Andromada"},{"Dodo"},{"RC Cam"},{"Launch"},{"Police Car (LSPD)"},
	{"Police Car (SFPD)"},{"Police Car (LVPD)"},{"Police Ranger"},{"Picador"},{"S.W.A.T Van"},{"Alpha"},
	{"Phoenix"},{"Glendale"},{"Sadler"},{"Luggage Trailer A"},{"Luggage Trailer B"},{"Stair Trailer"},
	{"Boxville"},{"Farm Plow"},{"Utility Trailer"}
};
//Enums
enum pInfo
{
	Username[128],
	Password[128],
	AdminLevel,
	IP[128],
    LastLogin[128],
    Banned,
    Money,
	AT400F,
	STUNTF,
	HELIF,
	CARGOF,
	MILITARYF,
	SHAMALF,
	DODOF,
	SKIMMERF,
	Muted,
	HoursPlayed,
	MinsPlayed,
	Warning1,
	Reason1[128],
	Warning2,
	Reason2[128],
	Warning3,
	Reason3[128],
	TotalJobs,
	TotalScore,
	ANDROF,
	BEAGLEF,
	CROPDUSTERF,
	HYDRAF,
	NEVADAF,
	RUSTLERF,
	CARGOBOBF,
	HUNTERF,
	LEVIATHANF,
	MAVERICKF,
	NMAVERICKF,
	TRUCKERF,
	RAINDANCEF,
	SEASPARROWF,
	SPARROWF,
	Online,
	EarntFromWorking,
	FlightsCompleted,
	RegisterDate[128],
	Callsign[64],
	CallsignSet,
	Email[256],
	MemberID,
	Airline,
	AirlineRank,
	EarntForAirline,
	House1,
	House2,
	FlownDistance,
	AirlineFlights,
	Vip,
	VIPColour[32],
	Tickets,
	sSpawn,
	sSkin,
	sPM,
	sVIPSounds,
	OwnedSkin,
	sGlobalSounds,
	sConnectionMessages,
	sAutoWork,
};
new PInfo[MAX_PLAYERS][pInfo];
enum aInfo
{
	aName[128],
	aOwner[128],
	aFlights,
	aPayrate,
	aBalance,
	aID,
	aRank1[128],
	aRank2[128],
	aRank3[128],
	aRank4[128],
	aRank5[128],
	aRank6[128],
	aTotalEarnt,
	aTotalPaid,
	aFleetSlots,
	aFleetTotal,
	aUniform,
	Float:aPos1,
	Float:aPos2,
	Float:aPos3,
	Float:aPos4,
	aMotd[200],
	aMotdSetBy[MAX_PLAYER_NAME],
	pInvMembers,
	pRmvMembers,
	pPrmMembers,
	pPrkFleet,
	pClrFleet,
	pBnkPerm,
	pRspFleet,
	aDistance,
	aMapIcon,
};
new AInfo[MAX_AIRLINES][aInfo];
enum vaInfo
{
	Model,
    Float:PosX,
    Float:PosY,
    Float:PosZ,
    Float:PosA,
    ID,
    Color1,
    Color2,
    AID,
};
new aVInfo[MAX_VEHICLES][vaInfo];
enum vInfo
{
	Model,
    Float:PosX,
    Float:PosY,
    Float:PosZ,
    Float:PosA,
    ID,
    Color1,
    Color2,
};
new VInfo[MAX_VEHICLES][vInfo];
enum vpInfo
{
	vpModel,
	vpOwnedBy[24],
    Float:vpPosX,
    Float:vpPosY,
    Float:vpPosZ,
    Float:vpPosA,
    vpID,
    vpColor1,
    vpColor2,
    Text3D:vpVehicleText,
	vpForSale,
	vpDefaultPrice,
	vpPrice,
	vpLocked,
	vpVehicleSpawned,
	mod1,
	mod2,
	mod3,
	mod4,
	mod5,
	mod6,
	mod7,
	mod8,
	mod9,
	mod10,
	mod11,
	mod12,
	mod13,
	mod14,
	mod15,
	mod16,
	mod17,
};
new PVInfo[MAX_VEHICLES][vpInfo];
enum hInfo
{
	hHouseID,
	hOwnedBy[24],
	hLocation[128],
	hPrice,
	hInterior,
	Float:hiX,
	Float:hiY,
	Float:hiZ,
	Float:heX,
	Float:heY,
	Float:heZ,
	Text3D:hHouseText,
	hPickupID,
	hSlots,
	hForSale,
	hLocked,
	hDefaultPrice,
	hMapIcon,
};
new HInfo[MAX_HOUSES][hInfo];
enum mInfo
{
	MapIcon,
	Float:MapX,
	Float:MapY,
	Float:MapZ,
	MapID,
};
new MapIconData[200][mInfo];
//Stocks
stock PlayerName(playerid)
{
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
    return name;
}
public ResetMissionData(playerid)
{
	DisablePlayerCheckpoint(playerid);
	DisablePlayerRaceCheckpoint(playerid);
	TextDrawHideForPlayer(playerid, destloc[playerid]);
	TextDrawHideForPlayer(playerid, desthead[playerid]);
	TextDrawHideForPlayer(playerid, destbox[playerid]);
 	StartedMission[playerid] = 0;
  	WorkPay[playerid] = 0;
   	TypeFlight[playerid] = 0;
	MissionVehicle[playerid] = 0;
	MissionStage[playerid] = 0;
	TimeTakenMins[playerid] = 0;
	TimeTakenHrs[playerid] = 0;
	WantsRecording[playerid] = 0;
}
public ResetPlayerData(playerid)
{
	FuelWarned[playerid] = 0;
	PInfo[playerid][sConnectionMessages] = 0;
	ClaimingCouponReward[playerid] = 0;
	ClaimingCoupon[playerid] = 0;
	SessionFlights[playerid] = 0;
	SessionEarnt[playerid] = 0;
	SessionStatus[playerid] = 0;
	RconAttempts[playerid] = 0;
	LookingAtStats[playerid] = 0;
	PInfo[playerid][sGlobalSounds] = 0;
	PreviewingSkinTime[playerid] = 0;
	PreviewingSkin[playerid] = 0;
	PreviewingSkinOld[playerid] = 0;
	SkinConfirmation[playerid] = 0;
	PInfo[playerid][OwnedSkin] = 0;
	VIPSoundWarning[playerid] = 0;
	PInfo[playerid][sPM] = 0;
	PInfo[playerid][sVIPSounds] = 0;
	ActiveAdminSpy[playerid] = 0;
	NameChangeRequest[playerid] = 0;
	PInfo[playerid][sSkin] = 0;
	PInfo[playerid][sSpawn] = 0;
	TDLoaded[playerid] = 0;
	PInfo[playerid][Tickets] = 0;
	ListeningToRadio[playerid] = 0;
	VIPName[playerid] = 0;
	VIPWarning[playerid] = 0;
	PInfo[playerid][Vip] = 0;
	DistanceFlown1[playerid] = 0;
	DistanceFlown2[playerid] = 0;
	PInfo[playerid][FlownDistance] = 0;
	PInfo[playerid][AirlineFlights] = 0;
	CanAdvertiseAgain[playerid] = 1;
	IsLocatingVehicle[playerid] = 0;
	JustRegistered[playerid] = 0;
	IsTracingHouse[playerid] = 0;
	EditingHouse[playerid] = 0;
	PInfo[playerid][House1] = 0;
	PInfo[playerid][House2] = 0;
	InHouse[playerid] = 0;
	ChosenClass[playerid] = 0;
	PurelySpawned[playerid] = 0;
	GettingBanned[playerid] = 0;
	LastPMER[playerid] = INVALID_PLAYER_ID;
	OldSkin[playerid] = 0; NewSkin[playerid] = 0;
	AirlineOffer[playerid] = 0;
	AFKPLAYER[playerid] = 0;
	PlayerLogged[playerid] = 0; PlayerSpawned[playerid] = 0; WasSpectating[playerid] = 0; Hours[playerid] = 0; Minutes[playerid] = 0; Pos1[playerid] = 0; Pos2[playerid] = 0; Pos3[playerid] = 0; VehicleDeletionWarning[playerid] = 0; SelectedSpawn[playerid] = 0;
	PInfo[playerid][AdminLevel] = 0;
	PInfo[playerid][Banned] = 0;
	PInfo[playerid][Money] = 0;
	PInfo[playerid][AT400F] = 0;
	PInfo[playerid][STUNTF] = 0;
	PInfo[playerid][HELIF] = 0;
	PInfo[playerid][CARGOF] = 0;
	PInfo[playerid][MILITARYF] = 0;
	PInfo[playerid][SHAMALF] = 0;
	PInfo[playerid][DODOF] = 0;
	PInfo[playerid][SKIMMERF] = 0;
	PInfo[playerid][HoursPlayed] = 0;
	PInfo[playerid][MinsPlayed] = 0;
	PInfo[playerid][Warning1] = 0;
	PInfo[playerid][Warning2] = 0;
	PInfo[playerid][Warning3] = 0;
	PInfo[playerid][TotalJobs] = 0;
	PInfo[playerid][TotalScore] = 0;
	PInfo[playerid][ANDROF] = 0;
	PInfo[playerid][BEAGLEF] = 0;
	PInfo[playerid][CROPDUSTERF] = 0;
	PInfo[playerid][HYDRAF] = 0;
	PInfo[playerid][NEVADAF] = 0;
	PInfo[playerid][RUSTLERF] = 0;
	PInfo[playerid][CARGOBOBF] = 0;
	PInfo[playerid][HUNTERF] = 0;
	PInfo[playerid][LEVIATHANF] = 0;
	PInfo[playerid][MAVERICKF] = 0;
	PInfo[playerid][NMAVERICKF] = 0;
	PInfo[playerid][TRUCKERF] = 0;
	PInfo[playerid][RAINDANCEF] = 0;
	PInfo[playerid][SEASPARROWF] = 0;
	PInfo[playerid][SPARROWF] = 0;
	PInfo[playerid][Online] = 0;
	PInfo[playerid][EarntFromWorking] = 0;
	PInfo[playerid][FlightsCompleted] = 0;
	PInfo[playerid][CallsignSet] = 0;
	PInfo[playerid][Airline] = 0;
	PInfo[playerid][AirlineRank] = 0;
	PInfo[playerid][EarntForAirline] = 0;
	PInfo[playerid][Muted] = 0;
}
stock InitMapSystem()
{
	MapSystem[Datas][0] = CreateObject(16662, 1932.2740,-2409.6987,1200.6908, 0.0, 0.0, -27.0);
	MapSystem[Mury][0] = CreateObject(3983, 1930.715088, -2417.489990, 1201.556519, 0.0000, 0.0000, 0.0000);
	MapSystem[Mury][1] = CreateObject(3983, 1938.750122, -2419.424561, 1201.557129, 0.0000, 268.0403, 0.0000);
	MapSystem[Mury][2] = CreateObject(3983, 1922.684082, -2417.233643, 1201.763428, 0.0000, 96.1526, 9.4538);
	MapSystem[Mury][3] = CreateObject(3983, 1932.634888, -2426.096436, 1201.592285, 0.0000, 96.1526, 98.8352);
	MapSystem[Mury][4] = CreateObject(3983, 1934.155273, -2406.747803, 1201.625122, 0.0000, 254.1853, 98.8352);
	MapSystem[Mury][5] = CreateObject(3983, 1938.325562, -2415.805176, 1216.350342, 359.1406, 179.4143, 95.3974);
	MapSystem[Lampy][0] = CreateObject(1232, 1934.736694, -2413.839844, 1202.169678, 0.0000, 0.0000, 0.0000);
	MapSystem[Lampy][1] = CreateObject(1232, 1935.306519, -2421.486816, 1202.169678, 0.0000, 0.0000, 0.0000);
	MapSystem[Lampy][2] = CreateObject(1232, 1928.441406, -2421.002441, 1202.218506, 0.0000, 0.0000, 0.0000);
	MapSystem[Lampy][3] = CreateObject(1232, 1927.940186, -2413.950928, 1202.244629, 0.0000, 0.0000, 0.0000);
	MapSystem[Lampy][4] = CreateObject(1232, 1922.012695, -2430.574951, 1202.355225, 0.0000, 53.2850, 55.8633);
	MapSystem[Lampy][5] = CreateObject(1232, 1942.271362, -2427.741211, 1201.987061, 0.0000, 53.2850, 138.3693);
	MapSystem[Lampy][6] = CreateObject(1232, 1941.111938, -2403.214844, 1201.988281, 0.0000, 53.2850, 237.2046);
	MapSystem[Lampy][7] = CreateObject(1232, 1918.437500, -2406.737793, 1201.562622, 0.0000, 53.2850, 321.4290);
	MapSystem[Datas][1] = SetTimer("UpdateMap", 1751, true);
	for(new g=0;g<MAX_PLAYERS;g++)
	{
		if(IsPlayerConnected(g))
			OnPlayerConnect(g);
	}
	for(new i = 0; i < 611; ++i)
	{
		MapSystem[IsPlane][i] = MapSystem[IsHelios][i] = false;
	}
    MapSystem[IsPlane][460] =
	MapSystem[IsPlane][464] =
	MapSystem[IsPlane][511] =
	MapSystem[IsPlane][512] =
	MapSystem[IsPlane][513] =
	MapSystem[IsPlane][519] =
	MapSystem[IsPlane][520] =
	MapSystem[IsPlane][553] =
	MapSystem[IsPlane][577] =
	MapSystem[IsPlane][592] =
	MapSystem[IsPlane][593] =
	MapSystem[IsHelios][417] =
	MapSystem[IsHelios][425] =
	MapSystem[IsHelios][447] =
	MapSystem[IsHelios][465] =
	MapSystem[IsHelios][469] =
	MapSystem[IsHelios][476] =
	MapSystem[IsHelios][487] =
	MapSystem[IsHelios][488] =
	MapSystem[IsHelios][497] =
	MapSystem[IsHelios][501] =
	MapSystem[IsHelios][548] =
	MapSystem[IsHelios][563] =
    MapSystem[IsAircraft][460] =
	MapSystem[IsAircraft][464] =
	MapSystem[IsAircraft][511] =
	MapSystem[IsAircraft][512] =
	MapSystem[IsAircraft][513] =
	MapSystem[IsAircraft][519] =
	MapSystem[IsAircraft][520] =
	MapSystem[IsAircraft][553] =
	MapSystem[IsAircraft][577] =
	MapSystem[IsAircraft][592] =
	MapSystem[IsAircraft][593] =
	MapSystem[IsAircraft][417] =
	MapSystem[IsAircraft][425] =
	MapSystem[IsAircraft][447] =
	MapSystem[IsAircraft][465] =
	MapSystem[IsAircraft][469] =
	MapSystem[IsAircraft][476] =
	MapSystem[IsAircraft][487] =
	MapSystem[IsAircraft][488] =
	MapSystem[IsAircraft][497] =
	MapSystem[IsAircraft][501] =
	MapSystem[IsAircraft][548] =
	MapSystem[IsAircraft][563] =
	true;
	return 1;
}

stock ExitMapSystem()
{
	KillTimer(MapSystem[Datas][1]);
	DestroyObject(MapSystem[Datas][0]);
	DestroyObject(MapSystem[Lampy][0]);
	DestroyObject(MapSystem[Lampy][1]);
	DestroyObject(MapSystem[Lampy][2]);
	DestroyObject(MapSystem[Lampy][3]);
	DestroyObject(MapSystem[Lampy][4]);
	DestroyObject(MapSystem[Lampy][5]);
	DestroyObject(MapSystem[Lampy][6]);
	DestroyObject(MapSystem[Lampy][7]);
	DestroyObject(MapSystem[Mury][0]);
	DestroyObject(MapSystem[Mury][1]);
	DestroyObject(MapSystem[Mury][2]);
	DestroyObject(MapSystem[Mury][3]);
	DestroyObject(MapSystem[Mury][4]);
	DestroyObject(MapSystem[Mury][5]);
	for(new g=0;g<MAX_PLAYERS;g++)if(MapSystem[PlayerObject][g]){DestroyObject(MapSystem[PlayerObject][g]);Delete3DTextLabel(MapSystem[PlayerLabel][g]);}
}

stock MapSystemAddPlayer(playerid)
{
	MapSystem[PlayerObject][playerid] = (-1);
    MapSystem[PlayerLabel][playerid] = Text3D:(-1);
    MapSystem[IsInHelios][playerid] = 0;
    return 1;
}

stock MapSystemRemovePlayer(playerid)
{
	if(MapSystem[PlayerObject][playerid] != (-1))
	{
		DestroyObject(MapSystem[PlayerObject][playerid]);
		Delete3DTextLabel(MapSystem[PlayerLabel][playerid]);
		MapSystem[PlayerObject][playerid] = (-1);
	}
	return 1;
}

stock AddPlayerToMap(playerid,newstate,oldstate)
{
	if(oldstate == PLAYER_STATE_DRIVER && MapSystem[PlayerObject][playerid] != (-1))
	{
		DestroyObject(MapSystem[PlayerObject][playerid]);
		Delete3DTextLabel(MapSystem[PlayerLabel][playerid]);
		MapSystem[PlayerObject][playerid] = (-1);
		MapSystem[IsInHelios][playerid] = 0;
	}
	if(newstate == PLAYER_STATE_DRIVER)
	{
	    new modelid = GetVehicleModel(GetPlayerVehicleID(playerid));
	    if(MapSystem[IsAircraft][modelid] == true)
	    {
	        if(MapSystem[IsHelios][modelid] == true)MapSystem[IsInHelios][playerid] = 1;
	        MapSystem[Color][playerid] = GetPlayerColor(playerid);
			MapSystem[PlayerObject][playerid] = CreateObject(1935, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0);
			MapSystem[PlayerLabel][playerid] = Create3DTextLabel(".",-1,0.0,0.0,0.0,1.0,0,0);
	    }
	}
	return 1;
}
stock AddRadio(playerid, name[], station[])
{
	new query[650];
	format(query,sizeof(query),"INSERT INTO `radio` (Name, URL) VALUES ('%s', '%s')",name,station);
	mysql_reconnect();
	mysql_query(query);
	format(query,sizeof(query),"You have added {FF4500}%s(%s){FFFFFF} to the radio database.",name,station);
	SendClientMessage(playerid, COLOR_DARKGREEN, query);
	return 1;
}
stock BanUser(banid, reason[], admin[])
{
    PlaySound(0);
	new query[256];
	new string[256];
	new date,month,year;
	getdate(date,month,year);
	new hour,minute,second;
	gettime(hour,minute,second);
	format(string, sizeof(string), "{FF4500}%s{FFFFFF} has banned {FF4500}%s (%d){FFFFFF}. Reason:{FF4500} %s",admin,PlayerName(banid),banid,reason);
	SendClientMessageToAll(COLOR_ERROR, string);
	PInfo[banid][Banned] = 1;
	GettingBanned[banid] = 1;
	new plrIP[25];
	new username[MAX_PLAYER_NAME];
	GetPlayerName(banid, username, 24);
	mysql_real_escape_string(username,username);
	mysql_real_escape_string(reason,reason);
	mysql_real_escape_string(admin,admin);
	GetPlayerIp(banid, plrIP, sizeof(plrIP));
	format(query,sizeof(query),"INSERT INTO `bans` (Username, Reason, Administrator, IP, Date, Time) VALUES ('%s','%s','%s','%s','%d/%d/%d','%d:%d:%d')",PlayerName(banid),reason,admin,plrIP,year,month,date,hour,minute,second);
	mysql_reconnect();
	mysql_query(query);
	SendClientMessage(banid, COLOR_ERROR, "If you believe It is Unfair - then please post a Ban Appeal on the forums.");
	Kick(banid);
	return 1;
}
stock AddVehicle(playerid, price)
{
	new vehicleid = GetPlayerVehicleID(playerid);
	new Float:X, Float:Y, Float:Z, Float:A;
	GetVehiclePos(vehicleid, X, Y, Z);
	GetVehicleZAngle(vehicleid, A);
	new model = GetVehicleModel(vehicleid);
	new query[450];
	format(query,sizeof(query),"INSERT INTO pvehicles (OwnedBy,VehicleForSale,VehicleDefaultPrice,VehiclePrice,VehicleX,VehicleY,VehicleZ,VehicleA,VehicleModel,VehicleColor1,VehicleColor2) VALUES ('AL','1','%d','%d','%f','%f','%f','%f','%d', '1', '1')", price, price, X,Y,Z,A,model);
	mysql_reconnect();
	mysql_query(query);
	SendClientMessage(playerid, COLOR_WHITE, "Created vehicle in this position!");
	return 1;
}
stock AddHouse(playerid, price, interior, slots)
{
	new Float:X, Float:Y, Float:Z, Float:IntX, Float:IntY, Float:IntZ, IntID;
	GetPlayerPos(playerid, X, Y, Z);
	new houseLocation[50];
	new string[64];
	format(string,sizeof(string),"%s",GetPlayerArea(playerid));
	mysql_real_escape_string(string,string);
	strmid(houseLocation, string, 0, strlen(string), 128);
	new query[400];
	if(price < 250000) { SendClientMessage(playerid, COLOR_ERROR, "Minimum house price: $250,000"); return 1; }
	if(slots > 100) { SendClientMessage(playerid, COLOR_ERROR, "Maximum house slots: 100"); return 1; }
	if(interior == 1) // rubbish interior
	{
	    IntID = 5;
	    IntX = 2233.6438;
	    IntY = -1115.2596;
	    IntZ = 1050.8828;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 2) // meh shit.
	{
	    IntID = 10;
	    IntX = 2259.3855;
	    IntY = -1135.9241;
	    IntZ = 1050.6403;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 3) // meh shit.
	{
	    IntID = 2;
	    IntX = 226.7864;
	    IntY = 1239.9783;
	    IntZ = 1082.1406;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 4) // meh shit.
	{
	    IntID = 15;
	    IntX = 295.0522;
	    IntY = 1472.2555;
	    IntZ = 1080.2578;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 5) // meh shit.
	{
	    IntID = 5;
	    IntX = 226.2965;
	    IntY = 1114.2430;
	    IntZ = 1080.9929;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 6) // meh shit.
	{
	    IntID = 9;
	    IntX = 83.0425;
	    IntY = 1322.2850;
	    IntZ = 1083.8662;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 7) // meh shit.
	{
	    IntID = 5;
	    IntX = 140.2526;
	    IntY = 1365.9304;
	    IntZ = 1083.8594;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 8) // meh shit.
	{
	    IntID = 6;
	    IntX = 234.0677;
	    IntY = 1063.7198;
	    IntZ = 1084.2123;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 9) // meh shit.
	{
	    if(price < 10000000) { SendClientMessage(playerid, COLOR_ERROR, "Price must be $10m or over for this interior!"); return 1; }
	    IntID = 3;
	    IntX = -2636.7124;
	    IntY = 1402.9630;
	    IntZ = 906.4609;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	else if(interior == 10) // meh shit.
	{
	    if(price < 25000000) { SendClientMessage(playerid, COLOR_ERROR, "Price must be $25m or over for this interior!"); return 1; }
	    IntID = 5;
	    IntX = 1298.8842;
	    IntY = -797.0106;
	    IntZ = 1084.0078;
		format(query,sizeof(query),"INSERT INTO `houses` (OwnedBy, Location, Interior, iX, iY, iZ, eX, eY, eZ, DefaultPrice, Slots) VALUES ('None', '%s', '%d', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",houseLocation,IntID,IntX,IntY,IntZ,X,Y,Z,price,slots);
	}
	SendClientMessage(playerid, COLOR_WHITE, "Created house! /reloadhouses to spawn it.");
	mysql_reconnect();
	mysql_query(query);
	return 1;
}
stock UCPChat1(playerid, message[])
{
	new date,month,year;
	getdate(date,month,year);
	new hour,minute,second;
	gettime(hour,minute,second);
	new username[MAX_PLAYER_NAME];
	GetPlayerName(playerid, username, 24);
	mysql_real_escape_string(username,username);
	mysql_real_escape_string(message,message);
	new query[400];
	format(query,sizeof(query),"INSERT INTO `ucpchat1` (Sender, Message, Type, Time, Date) VALUES ('%s', '%s', 'SERVER', '%d:%d:%d', '%d/%d/%d')",username,message,hour,minute,second,year,month,date);
	mysql_query(query);
}
stock PayLog(playername[], amount, type[], receiver[], from[])
{
	mysql_real_escape_string(playername,playername);
	mysql_real_escape_string(receiver,receiver);
	new date,month,year;
	getdate(date,month,year);
	new hour,minute,second;
	gettime(hour,minute,second);
	new plrIP[50];
	new query[600];
	mysql_reconnect();
	format(query,sizeof(query),"SELECT ip FROM users WHERE username='%s'", playername);
	mysql_query(query);
 	mysql_store_result();
 	if(mysql_num_rows() > 0)
 	{
	  	mysql_retrieve_row();
	   	mysql_get_field("ip", plrIP);
    } else { format(plrIP,sizeof(plrIP),"N/A"); }
	format(query,sizeof(query),"INSERT INTO `paylog` (Username, Amount, Type, Receiver, IP, Time, Date, Fromwho) VALUES ('%s', '%d', '%s', '%s', '%s', '%d:%d:%d', '%d/%d/%d', '%s')",playername,amount,type,receiver,plrIP,hour,minute,second,year,month,date,from);
	mysql_query(query);
	mysql_free_result();
	return 1;
}
stock AdminLog(playerid, command[], detail[], receiver[])
{
	new date,month,year;
	getdate(date,month,year);
	new hour,minute,second;
	gettime(hour,minute,second);
	new query[400];
	new username[MAX_PLAYER_NAME];
	GetPlayerName(playerid, username, 24);
	mysql_real_escape_string(username,username);
	mysql_real_escape_string(command,command);
	mysql_real_escape_string(receiver,receiver);
	new plrIP[32];
	GetPlayerIp(playerid, plrIP, sizeof(plrIP));
	format(query,sizeof(query), "INSERT INTO `adminlog` (Administrator, Command, Detail, Date, Time, IP, Receiver) VALUES ('%s', '%s', '%s', '%d/%d/%d', '%d:%d:%d', '%s', '%s')", PlayerName(playerid),command,detail,year,month,date,hour,minute,second,plrIP,receiver);
	mysql_reconnect();
	mysql_query(query);
	return 1;
}
stock TicketLog(Administrator[], Receiver[], Reason[])
{
	new date,month,year;
	getdate(date,month,year);
	new hour,minute,second;
	gettime(hour,minute,second);
	new query[600];
	mysql_real_escape_string(Administrator, Administrator);
	mysql_real_escape_string(Receiver, Receiver);
	mysql_real_escape_string(Reason, Reason);
	format(query,sizeof(query),"INSERT INTO `tickets` (Administrator, Receiver, Reason, Time, Date) VALUES ('%s', '%s', '%s', '%d:%d:%d', '%d/%d/%d')", Administrator, Receiver, Reason, hour,minute,second,year,month,date);
	mysql_reconnect();
	mysql_query(query);
	return 1;
}
stock GetVehicleFriendlyName(vehicleid)
{
	new GVFNstring[56];
	format(GVFNstring, sizeof(GVFNstring), VehicleFriendlyNames[GetVehicleModel(vehicleid)-400]);
	return GVFNstring;
}
stock AddVehicleToFile(Float:VX, Float:VY, Float:VZ, Float:VA, dModel, VC1, VC2)
{
	new Query[400];
	format(Query, sizeof(Query), "INSERT INTO `vehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleColor1, VehicleColor2) VALUES(%d, %f, %f, %f, %f, %d, %d)",
	dModel, VX, VY, VZ, VA, VC1, VC2);

	mysql_query(Query);
	mysql_free_result();
	return 1;
}
stock AddVehiclesFromSQL()
{
	new Str[128], dModel, Float:VX, Float:VY, Float:VZ, Float:VA, vTotal, VC1, VC2, VID;
	mysql_reconnect();
    mysql_query("SELECT * FROM `vehicles`");
    mysql_store_result();
    vTotal = mysql_num_rows();
    new carid1 = 0;
    if(vTotal > 0)
    {
        while(mysql_fetch_row(Str))
        {
            carid1=carid1+1;
            sscanf(Str, "p<|>iffffddd", dModel, VX, VY, VZ, VA, VID, VC1, VC2);
			new carid = CreateVehicle(dModel, VX, VY, VZ, VA, VC1, VC2, (30 * 60));
			VInfo[carid][ID] = VID;
            VInfo[carid][Model] = dModel; VInfo[carid][PosX] = VX; VInfo[carid][PosY] = VY; VInfo[carid][PosZ] = VZ; VInfo[carid][PosA] = VA; VInfo[carid][Color1] = VC1; VInfo[carid][Color2] = VC2;
        }
    }
    mysql_free_result();
    printf("** %i\t<->\tVehicles loaded from\t<->\tMySQL\t\t   **", vTotal);
    return 1;
}
stock AddPlayerVehicles()
{
	new Str[750], vTotal, vehID, vehModel, Float:vehX, Float:vehY, Float:vehZ, Float:vehA, vehC1, vehC2, vehOwnedBy[24], ForSale, DefaultPrice, Price, Locked;
	new carmod[17];
	mysql_reconnect();
	mysql_query("SELECT * FROM `pvehicles`");
	mysql_store_result();
	vTotal = mysql_num_rows();
	new carid = 0;
	if(vTotal > 0)
	{
	    while(mysql_fetch_row(Str))
	    {
	        sscanf(Str, "p<|>dds[24]ffffddddddddddddddddddddddd",
			vehID,vehModel,vehOwnedBy,vehX,vehY,vehZ,vehA,vehC1,vehC2,ForSale,DefaultPrice,Price,Locked,carmod[0],carmod[1],carmod[2],carmod[3],carmod[4],carmod[5],carmod[6],carmod[7],carmod[8],carmod[9],carmod[10],carmod[11],carmod[12],carmod[13],carmod[14],carmod[15],carmod[16]);
   			carid=vehID;
	        new carid2 = CreateVehicle(vehModel, vehX, vehY, vehZ, vehA, vehC1, vehC2, (30 * 60));
			PVInfo[carid][vpID] = vehID;
			PVInfo[carid][vpPosX] = vehX;
			PVInfo[carid][vpPosY] = vehY;
			PVInfo[carid][vpPosZ] = vehZ;
			PVInfo[carid][vpPosA] = vehA;
			PVInfo[carid][vpColor1] = vehC1;
			PVInfo[carid][vpColor2] = vehC2;
			PVInfo[carid][vpModel] = vehModel;
			PVInfo[carid][vpForSale] = ForSale;
			PVInfo[carid][vpDefaultPrice] = DefaultPrice;
			PVInfo[carid][vpPrice] = Price;
			PVInfo[carid][vpLocked] = Locked;
			PVInfo[carid2][mod1] = carmod[0];
			PVInfo[carid2][mod2] = carmod[1];
			PVInfo[carid2][mod3] = carmod[2];
			PVInfo[carid2][mod4] = carmod[3];
			PVInfo[carid2][mod5] = carmod[4];
			PVInfo[carid2][mod6] = carmod[5];
			PVInfo[carid2][mod7] = carmod[6];
			PVInfo[carid2][mod8] = carmod[7];
			PVInfo[carid2][mod9] = carmod[8];
			PVInfo[carid2][mod10] = carmod[9];
			PVInfo[carid2][mod11] = carmod[10];
			PVInfo[carid2][mod12] = carmod[11];
			PVInfo[carid2][mod13] = carmod[12];
			PVInfo[carid2][mod14] = carmod[13];
			PVInfo[carid2][mod15] = carmod[14];
			PVInfo[carid2][mod16] = carmod[15];
			PVInfo[carid2][mod17] = carmod[16];
			PVInfo[carid][vpVehicleSpawned] = carid2;
	        if(ForSale == 1)
	        {
				format(Str, sizeof(Str), "%s for sale!\nPrice: $%d (Seller: %s)\n/marketplace to purchase!", GetVehicleFriendlyName(carid2),Price, vehOwnedBy);
				PVInfo[carid][vpVehicleText] = Create3DTextLabel(Str, 0xFF8400FF, vehX, vehY, vehZ, 50.0, 0, 1);
	        }
	        else
	        {
	            format(Str, sizeof(Str), "%s\nOwner: %s", GetVehicleFriendlyName(carid2),vehOwnedBy);
	            PVInfo[carid][vpVehicleText] = Create3DTextLabel(Str, 0xFF8400FF, vehX, vehY, vehZ, 50.0, 0, 1);
	        }
	        Attach3DTextLabelToVehicle(PVInfo[carid][vpVehicleText], carid2, 0.0, 0.0, 0.0);
	        new string[64];
  			format(string,sizeof(string),"%s",vehOwnedBy);
			strmid(PVInfo[carid][vpOwnedBy], string, 0, strlen(string), 128);
			new engine,lights,alarm,doors,bonnet,boot,objective;
			GetVehicleParamsEx(carid2,engine,lights,alarm,doors,bonnet,boot,objective);
			if(Locked == 1) { SetVehicleParamsEx(carid2,engine,lights,alarm,1,bonnet,boot,objective); }
			else if(Locked == 0) { SetVehicleParamsEx(carid2,engine,lights,alarm,0,bonnet,boot,objective); }
	    }
	}
	mysql_free_result();
}
stock GetClosestATfouthundred(playerid,Float:MaxDist)
{
 new Float:pos[3];
 for(new x = 0; x < MAX_VEHICLES; ++x)
 {
  if(GetVehicleModel(x) != 577)continue;
  GetVehiclePos(x,pos[0],pos[1],pos[2]);
  if(IsPlayerInRangeOfPoint(playerid,MaxDist,pos[0],pos[1],pos[2]))
  {
   return x;
  }
 }
 return -1;
}
stock AddMapIcons()
{
	new Str[300];
	mysql_reconnect();
	mysql_query("SELECT * FROM mapicons");
	mysql_store_result();
	new mTotal = mysql_num_rows();
	new xx=0;
	if(mTotal > 0) // 1 + Map Icons
	{
	    while(mysql_fetch_row(Str))
	    {
	        xx=xx+1;
	        new MID,Float:mX,Float:mY,Float:mZ,sqlMID;
	        sscanf(Str, "p<|>dfffd", MID, mX, mY, mZ, sqlMID);
	        MapIconData[xx][MapIcon] = CreateDynamicMapIcon(mX, mY, mZ, MID, 0);
	        MapIconData[xx][MapX] = mX;
	        MapIconData[xx][MapY] = mY;
	        MapIconData[xx][MapZ] = mZ;
			MapIconData[xx][MapID] = sqlMID;
	    }
	}
	mysql_free_result();
}
stock AddHousesFromSQL()
{
	new Str[300], string[128];
	mysql_reconnect();
	mysql_query("SELECT * FROM houses");
	mysql_store_result();
	new hTotal = mysql_num_rows(); //hTotal amount of houses in mysql database
	if(hTotal > 0) //1+ house.
	{
	    while(mysql_fetch_row(Str))
	    {
		    new HID,Float:eX,Float:eY,Float:eZ,Float:iX,Float:iY,Float:iZ,OwnedBy[24],Location[128],Price,Interior,Slots,ForSale,Locked,DefaultPrice;
	     	sscanf(Str, "p<|>ds[24]s[128]dddffffffddd", HID,OwnedBy,Location,DefaultPrice,Price,Interior,iX,iY,iZ,eX,eY,eZ,Slots,ForSale,Locked);
			if(!strcmp(OwnedBy, "None"))
			{
			    HInfo[HID][hMapIcon] = CreateDynamicMapIcon(eX, eY, eZ, 31, 0);
			    HInfo[HID][hPickupID] = CreatePickup(1273, 23, eX, eY, eZ, 0);
				format(string,sizeof(string),"Price: $%d\nSlots: %d\nPress ~k~~VEHICLE_ENTER_EXIT~ to enter the house", DefaultPrice, Slots);
				HInfo[HID][hHouseText] = Create3DTextLabel(string, 0xFFFF00FF, eX, eY, eZ, 50.0, 0, 1);
			}
			else if(ForSale == 1)
			{
				HInfo[HID][hMapIcon] = CreateDynamicMapIcon(eX, eY, eZ, 31, 0);
				HInfo[HID][hPickupID] = CreatePickup(1273, 23, eX, eY, eZ, 0);
				format(string,sizeof(string),"House Owner: %s\nPrice: $%d\nSlots: %d\nPress ~k~~VEHICLE_ENTER_EXIT~ to enter the house", OwnedBy, Price, Slots);
				HInfo[HID][hHouseText] = Create3DTextLabel(string, 0xFFFF00FF, eX, eY, eZ, 50.0, 0, 1);
			}
			else
			{
				HInfo[HID][hMapIcon] = CreateDynamicMapIcon(eX, eY, eZ, 32, 0);
				HInfo[HID][hPickupID] = CreatePickup(1272, 23, eX, eY, eZ, 0);
				format(string,sizeof(string),"House Owner: %s\nSlots: %d", OwnedBy, Slots);
				HInfo[HID][hHouseText] = Create3DTextLabel(string, 0xFFFF00FF, eX, eY, eZ, 50.0, 0, 1);
			}
			format(string,sizeof(string),"%s",OwnedBy);
			strmid(HInfo[HID][hOwnedBy], string, 0, strlen(string), 128);
			format(string,sizeof(string),"%s",Location);
			strmid(HInfo[HID][hLocation], string, 0, strlen(string), 128); //PASSWORD
			HInfo[HID][hPrice] = Price;
			HInfo[HID][hInterior] = Interior;
			HInfo[HID][hiX] = iX;
			HInfo[HID][hiY] = iY;
			HInfo[HID][hiZ] = iZ;
			HInfo[HID][heX] = eX;
			HInfo[HID][heY] = eY;
			HInfo[HID][heZ] = eZ;
			HInfo[HID][hSlots] = Slots;
			HInfo[HID][hForSale] = ForSale;
			HInfo[HID][hLocked] = Locked;
			HInfo[HID][hDefaultPrice] = DefaultPrice;
			HInfo[HID][hHouseID] = HID;
	    }
	}
	mysql_free_result();
}
stock ModVehicle(vehicleid)
{
    new tuned2 = 0;
	if(PVInfo[vehicleid][mod1] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod1]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod2] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod2]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod3] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod3]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod4] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod4]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod5] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod5]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod6] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod6]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod7] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod7]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod8] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod8]);
		tuned2 = 1;
 	}
	if(PVInfo[vehicleid][mod9] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod9]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod10] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod10]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod11] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod11]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod12] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod12]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod13] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod13]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod14] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod14]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod15] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod15]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod16] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod16]);
		tuned2 = 1;
	}
	if(PVInfo[vehicleid][mod17] != 0) {
		AddVehicleComponent(vehicleid,PVInfo[vehicleid][mod17]);
		tuned2 = 1;
	}
	if(tuned2 == 1) {
	}
}
/*stock AddAirlineVehicle(Float:VX, Float:VY, Float:VZ, Float:VA, dModel, VC1, VC2)
{
	new Query[400];
	format(Query, sizeof(Query), "INSERT INTO `vehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleColor1, VehicleColor2) VALUES(%d, %f, %f, %f, %f, %d, %d)",
	dModel, VX, VY, VZ, VA, VC1, VC2);
	mysql_reconnect();
	mysql_query(Query);
	mysql_free_result();
	return 1;
}*/
stock AddAirlineVehiclesSTART()
{
	new Str[128], dModel, Float:VX, Float:VY, Float:VZ, Float:VA, vTotal, VC1, VC2, VID, AID2;
	mysql_reconnect();
    mysql_query("SELECT * FROM `avehicles`");
    mysql_store_result();
    vTotal = mysql_num_rows();
    new carid1 = 0;
    new string[156];
    if(vTotal > 0)
    {
        while(mysql_fetch_row(Str))
        {
        	carid1=carid1+1;
            sscanf(Str, "p<|>iffffdddd", dModel, VX, VY, VZ, VA, VID, VC1, VC2, AID2);
			new carid = CreateVehicle(dModel, VX, VY, VZ, VA, VC1, VC2, (30 * 60));
			format(string,sizeof(string),"%s\nOwner: %s", GetVehicleFriendlyName(carid), AInfo[AID2][aName]);
   			AirlineText[carid] = Create3DTextLabel(string, 0xFC9D04FF, 0.0, 0.0, 0.0, 50.0, 0, 1);
   			Attach3DTextLabelToVehicle(AirlineText[carid], carid, 0.0, 0.0, 0.0);
			aVInfo[carid][ID] = VID; aVInfo[carid][AID] = AID2;
            aVInfo[carid][Model] = dModel; aVInfo[carid][PosX] = VX; aVInfo[carid][PosY] = VY; aVInfo[carid][PosZ] = VZ; aVInfo[carid][PosA] = VA; aVInfo[carid][Color1] = VC1; aVInfo[carid][Color2] = VC2;
            AInfo[AID2][aFleetTotal] = AInfo[AID2][aFleetTotal]+1;
        }
    }
    mysql_free_result();
    printf("** %i\t<->\tAirline Vehicles loaded from\t<->\tMySQL\t\t   **", vTotal);
    return 1;
}
stock GetDriverID(vehicleid)
{
    for(new i=0; i<MAX_PLAYERS; i++)
    {
        if(GetPlayerVehicleID(i) == vehicleid && GetPlayerState(i) == 2) return i;
    }
    return -1;
}
stock AddAirlineVehicles()
{
	new Str[128], dModel, Float:VX, Float:VY, Float:VZ, Float:VA, vTotal, VC1, VC2, VID, AID2;
	mysql_reconnect();
    mysql_query("SELECT * FROM `avehicles`");
    mysql_store_result();
    vTotal = mysql_num_rows();
    new carid1 = 0;
    new string[156];
    if(vTotal > 0)
    {
        while(mysql_fetch_row(Str))
        {
        	carid1=carid1+1;
            sscanf(Str, "p<|>iffffdddd", dModel, VX, VY, VZ, VA, VID, VC1, VC2, AID2);
			new carid = CreateVehicle(dModel, VX, VY, VZ, VA, VC1, VC2, (30 * 60));
			format(string,sizeof(string),"%s\nOwner: %s", GetVehicleFriendlyName(carid), AInfo[AID2][aName]);
   			AirlineText[carid] = Create3DTextLabel(string, 0xFC9D04FF, 0.0, 0.0, 0.0, 50.0, 0, 1);
   			Attach3DTextLabelToVehicle(AirlineText[carid], carid, 0.0, 0.0, 0.0);
			aVInfo[carid][ID] = VID; aVInfo[carid][AID] = AID2;
            aVInfo[carid][Model] = dModel; aVInfo[carid][PosX] = VX; aVInfo[carid][PosY] = VY; aVInfo[carid][PosZ] = VZ; aVInfo[carid][PosA] = VA; aVInfo[carid][Color1] = VC1; aVInfo[carid][Color2] = VC2;
        }
    }
    mysql_free_result();
    printf("** %i\t<->\tAirline Vehicles loaded from\t<->\tMySQL\t\t   **", vTotal);
    return 1;
}
stock AddAirlineVehicle(vehicleid)
{
	new Str[128], dModel, Float:VX, Float:VY, Float:VZ, Float:VA, vTotal, VC1, VC2, VID, AID2;
	mysql_reconnect();
	new query[150];
	format(query,sizeof(query),"SELECT * FROM `avehicles` WHERE `VehicleID` = '%d'", vehicleid);
    mysql_query(query);
    mysql_store_result();
    vTotal = mysql_num_rows();
    new carid1 = 0;
    new string[156];
    if(vTotal > 0)
    {
        while(mysql_fetch_row(Str))
        {
        	carid1=carid1+1;
            sscanf(Str, "p<|>iffffdddd", dModel, VX, VY, VZ, VA, VID, VC1, VC2, AID2);
			new carid = CreateVehicle(dModel, VX, VY, VZ, VA, VC1, VC2, (30 * 60));
			format(string,sizeof(string),"%s\nOwner: %s", GetVehicleFriendlyName(carid), AInfo[AID2][aName]);
   			AirlineText[carid] = Create3DTextLabel(string, 0xFC9D04FF, 0.0, 0.0, 0.0, 50.0, 0, 1);
   			Attach3DTextLabelToVehicle(AirlineText[carid], carid, 0.0, 0.0, 0.0);
			aVInfo[carid][ID] = VID; aVInfo[carid][AID] = AID2;
            aVInfo[carid][Model] = dModel; aVInfo[carid][PosX] = VX; aVInfo[carid][PosY] = VY; aVInfo[carid][PosZ] = VZ; aVInfo[carid][PosA] = VA; aVInfo[carid][Color1] = VC1; aVInfo[carid][Color2] = VC2;
        }
    }
    mysql_free_result();
    printf("** %i\t<->\tAirline Vehicle loaded from\t<->\tMySQL\t\t   **", vTotal);
    return 1;
}
stock IsVehicleOccupied(vehicleid)
{
for(new i=0;i<MAX_PLAYERS;i++)
{
if(IsPlayerInVehicle(i,vehicleid)) return 1;
}
return 0;
}
stock strvalEx( str[ ] )
{
    if( strlen( str ) >= 50 ) return -1;
    return strval( str );
}
strtok(const string[], &index)
{
	new length = strlen(string);
	while ((index < length) && (string[index] <= ' '))
	{
		index++;
	}

	new offset = index;
	new result[20];
	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}
	result[index - offset] = EOS;
	return result;
}
stock IsValidVehicleID(vehicleid)
{
   if(GetVehicleModel(vehicleid)) return 1;
   return 0;
}
stock SetPlayerFlightCheckpoint(playerid, Float:x, Float:y, Float:z, Float:cpsize)
{
	SetPlayerCheckpoint(playerid, x, y, z, cpsize);
	#pragma unused cpsize
	return 1;
}
stock randomEx(min, max)
{
    new rand = random(max-min)+min;
    return rand;
}
public UpdateScore(playerid)
{
	SetPlayerScore(playerid, PInfo[playerid][TotalScore]);
}
public ShowAirlineStats(playerid)
{
	if(LookingAtAirline[playerid] == 0 || LookingAtAirline[playerid] > MAX_AIRLINES) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
	new text[450], title[64];
	format(title,sizeof(title),"{FF4500}Airline Statistics & Information");
	format(text,sizeof(text),"{FF4500}[Main]\n{FFFFFF}Airline Name: {FF4500}%s\n{FFFFFF}Airline Owner: {FF4500}%s\n{FFFFFF}Airline Balance: {FF4500}$%d\n{FFFFFF}Total flights: {FF4500}%d\n{FFFFFF}Payrate: {FF4500}%d percent\n{FFFFFF}Money earnt: {FF4500}$%d\n{FFFFFF}Wages paid: {FF4500}$%d\n{FFFFFF}Total distance: {FF4500}%d miles",
	AInfo[LookingAtAirline[playerid]][aName],AInfo[LookingAtAirline[playerid]][aOwner],AInfo[LookingAtAirline[playerid]][aBalance],AInfo[LookingAtAirline[playerid]][aFlights],AInfo[LookingAtAirline[playerid]][aPayrate],AInfo[LookingAtAirline[playerid]][aTotalEarnt],AInfo[LookingAtAirline[playerid]][aTotalPaid],AInfo[LookingAtAirline[playerid]][aDistance]);
	ShowPlayerDialog(playerid, astats, DIALOG_STYLE_MSGBOX, title, text, "Done", "Back");
	return 1;
}
public ShowVIPSounds(playerid)
{
		new	query[400],title[64];
		format(title,sizeof(title),"{FF4500}VIP Sounds");
		format(query, sizeof(query), "SELECT NULL FROM vipsounds", LookingAtAirline[playerid]);
		mysql_query(query);
		mysql_store_result();
		new tRows = mysql_num_rows();
		if(mysql_num_rows() > 0) {
	 		mysql_free_result();
			Num1[playerid] = 0;
			Num2[playerid] = 11;
   			mysql_free_result();
      		format(query, sizeof(query), "SELECT `Name`, `ID`, `Hits` FROM `vipsounds` ORDER BY `Hits` DESC LIMIT %d, %d", Num1[playerid],Num2[playerid]);
        	mysql_query(query);
        	mysql_store_result();
	        new
         		szMessageString[1500], // 32 * 15 = 480, 1 extra character for \n
         		sName[128],
         		sHits,
         		sID;
        	while(mysql_fetch_row(query))
	        {
         		sscanf(query, "p<|>s[128]dd", sName, sID, sHits);
           		//format(szMessageString, sizeof(szMessageString), "\n");
				format(szMessageString, sizeof(szMessageString), "%s[ID:%d] %s \t\t(%d Hits)\n", szMessageString, sID, sName, sHits);
			}
			if(tRows > 11) { format(szMessageString,sizeof(szMessageString), "%sNext Page", szMessageString); }
			ShowPlayerDialog(playerid, vipsounds1, DIALOG_STYLE_LIST, title, szMessageString, "Select", "Close");
			mysql_free_result();
			return 1;
        }
        else
        {
            SendClientMessage(playerid, COLOR_ERROR, "There are no VIP sounds added yet! Ask an Administrator to add them.");
            return 1;
        }
}
public ShowRadio(playerid)
{
		new	query[400],title[64];
		format(title,sizeof(title),"{FF4500}Radio Stations");
		format(query, sizeof(query), "SELECT NULL FROM radio", LookingAtAirline[playerid]);
		mysql_query(query);
		mysql_store_result();
		new tRows = mysql_num_rows();
		if(mysql_num_rows() > 0) {
	 		mysql_free_result();
			Num1[playerid] = 0;
			Num2[playerid] = 11;
   			mysql_free_result();
      		format(query, sizeof(query), "SELECT `Name`, `ID`, `Hits` FROM `radio` ORDER BY `Hits` DESC LIMIT %d, %d", Num1[playerid],Num2[playerid]);
        	mysql_query(query);
        	mysql_store_result();
	        new
         		szMessageString[1500], // 32 * 15 = 480, 1 extra character for \n
         		sName[128],
         		sHits,
         		sID;
        	while(mysql_fetch_row(query))
	        {
         		sscanf(query, "p<|>s[128]dd", sName, sID, sHits);
           		//format(szMessageString, sizeof(szMessageString), "\n");
				format(szMessageString, sizeof(szMessageString), "%s[ID:%d] %s \t\t(%d Hits)\n", szMessageString, sID, sName, sHits);
			}
			if(tRows > 11) { format(szMessageString,sizeof(szMessageString), "%sNext Page", szMessageString); }
			ShowPlayerDialog(playerid, radio1, DIALOG_STYLE_LIST, title, szMessageString, "Select", "Close");
			mysql_free_result();
			return 1;
        }
        else
        {
            mysql_free_result();
            SendClientMessage(playerid, COLOR_ERROR, "There are no radio stations added yet! Ask an Administrator to add them.");
            return 1;
        }
}
public ShowNCs(playerid)
{
		new	query[200],title[64];
		format(title,sizeof(title),"{FF4500}Namechange Requests");
		format(query, sizeof(query), "SELECT NULL FROM namechanges");
		mysql_query(query);
		mysql_store_result();
		new tRows = mysql_num_rows();
		if(mysql_num_rows() > 0) {
	 		mysql_free_result();
			Num1[playerid] = 0;
			Num2[playerid] = 12;
   			mysql_free_result();
      		format(query, sizeof(query), "SELECT `cUsername`, `wUsername`, `ncID` FROM `namechanges` WHERE `Processed`=0 ORDER BY `ncID` DESC LIMIT %d, %d", Num1[playerid], Num2[playerid]);
        	mysql_query(query);
        	mysql_store_result();
	        new
         		szMessageString[850], // 32 * 15 = 480, 1 extra character for \n
				ncID,
				wUsername[MAX_PLAYER_NAME],
				cUsername[MAX_PLAYER_NAME];
        	while(mysql_fetch_row(query))
	        {
         		sscanf(query, "p<|>s[128]s[128]d", cUsername, wUsername, ncID);
           		//format(szMessageString, sizeof(szMessageString), "\n");
				format(szMessageString, sizeof(szMessageString), "%s%d | %s (Wants: %s)\n", szMessageString, ncID, cUsername, wUsername);
			}
			if(tRows >= 12) { format(szMessageString,sizeof(szMessageString), "%sNext Page", szMessageString); }
			ShowPlayerDialog(playerid, namerequests1, DIALOG_STYLE_LIST, title, szMessageString, "Select", "Back");
			mysql_free_result();
			return 1;
        }
        else
        {
            mysql_free_result();
            SendClientMessage(playerid, COLOR_ERROR, "There are no active namechange requests!");
            return 1;
        }
}
public ShowMembers(playerid)
{
	    if(LookingAtAirline[playerid] == 0 || LookingAtAirline[playerid] > MAX_AIRLINES) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
		new	query[200],title[64];
		format(title,sizeof(title),"{FF4500}Airline Member List");
		format(query, sizeof(query), "SELECT NULL FROM users WHERE airline = '%d'", LookingAtAirline[playerid]);
		mysql_query(query);
		mysql_store_result();
		new tRows = mysql_num_rows();
		if(mysql_num_rows() > 0) {
	 		mysql_free_result();
			Num1[playerid] = 0;
			Num2[playerid] = 12;
   			mysql_free_result();
      		format(query, sizeof(query), "SELECT `airlinerank`, `username`, `earntforairline`, `airlineflights` FROM `users` WHERE `airline`='%d' ORDER BY `airlinerank` DESC LIMIT %d, %d", LookingAtAirline[playerid], Num1[playerid], Num2[playerid]);
        	mysql_query(query);
        	mysql_store_result();
	        new
         		szMessageString[850], // 32 * 15 = 480, 1 extra character for \n
           		iAirlineRank,
	            iEarnAmount,
	            iMissionTotal,
	            szUsername[MAX_PLAYER_NAME];
        	while(mysql_fetch_row(query))
	        {
         		sscanf(query, "p<|>ds[24]dd", iAirlineRank, szUsername, iEarnAmount, iMissionTotal);
           		//format(szMessageString, sizeof(szMessageString), "\n");
	            switch(iAirlineRank) {
				case 1: {
    				format(szMessageString, sizeof(szMessageString), "%s{FCF804}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissionTotal);
				}
				case 2: {
    				format(szMessageString, sizeof(szMessageString), "%s{04FC3E}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissionTotal);
				}
				case 3: {
    				format(szMessageString, sizeof(szMessageString), "%s{04EFFC}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissionTotal);
				}
				case 4: {
    				format(szMessageString, sizeof(szMessageString), "%s{0404FC}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissionTotal);
				}
				case 5: {
    				format(szMessageString, sizeof(szMessageString), "%s{FC04F3}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissionTotal);
				}
				case 6: {
   					format(szMessageString, sizeof(szMessageString), "%s{FC0404}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissionTotal);
				}
			}
  		}
			if(tRows >= 12) { format(szMessageString,sizeof(szMessageString), "%sNext Page", szMessageString); }
			ShowPlayerDialog(playerid, amembers1, DIALOG_STYLE_LIST, title, szMessageString, "Select", "Back");
			mysql_free_result();
			return 1;
        }
        else
        {
            mysql_free_result();
            SendClientMessage(playerid, COLOR_ERROR, "There are no Members in this Airline!");
            ShowAirlines(playerid);
            return 1;
        }
}
public ShowVIPMenu(playerid)
{
	new query[500];
	if(VIPWarning[playerid] == 0) { format(query,sizeof(query),"Aviaition Life Thanks You,, %s.", PlayerName(playerid)); SendClientMessage(playerid, COLOR_VIP, query); VIPWarning[playerid] = 1; }
 	format(query,sizeof(query),"{84538A}VIP Username Colour\n{FFFFFF}Change weather\n{84538A}Change skin\n{FFFFFF}Chat settings\n{84538A}Heal yourself\n{FFFFFF}VIP Sounds\n{84538A}Respawn Vehicles");
  	ShowPlayerDialog(playerid, vipmenu1, DIALOG_STYLE_LIST, "{84538A}VIP Menu", query, "Select", "Cancel");
  	return 1;
}
public ShowFleet(playerid)
{
	if(LookingAtAirline[playerid] == 0 || LookingAtAirline[playerid] > MAX_AIRLINES) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
	new query[128],results[250],title[64];
	format(title,sizeof(title),"{FF4500}Airline Fleet List (%d/%d)", AInfo[LookingAtAirline[playerid]][aFleetTotal],AInfo[LookingAtAirline[playerid]][aFleetSlots]);
	format(query,sizeof(query),"SELECT `VehicleModel`,`VehicleID` FROM `avehicles` WHERE `Airline`='%d'", LookingAtAirline[playerid]);
	mysql_query(query);
	mysql_store_result();
	new tRows = mysql_num_rows();
	Num1[playerid] = 0;
	Num2[playerid] = 12;
	new vModel, vID;
	while(mysql_fetch_row(query))
	{
	    sscanf(query, "p<|>dd", vModel, vID);
	    format(results,sizeof(results),"%s%d | %d | %s\n", results, vID,vModel,VehicleFriendlyNames[vModel-400]);
	}
	if(tRows >= 12) { format(results,sizeof(results), "%sNext Page", results); }
	ShowPlayerDialog(playerid, afleet1, DIALOG_STYLE_LIST,title,results,"Select", "Back");
	mysql_free_result();
	return 1;
}
public ShowVehicles(playerid)
{
	new query[512],results[400],title[64];
	format(title,sizeof(title),"{FF4500}My Vehicles");
	Num1[playerid] = 0;
	Num2[playerid] = 12;
	format(query,sizeof(query),"SELECT VehicleID, VehicleModel FROM `pvehicles` WHERE `OwnedBy`='%s' ORDER BY `VehicleID` DESC LIMIT %d, %d", PlayerName(playerid), Num1[playerid], Num2[playerid]);
	mysql_query(query);
	mysql_store_result();
	new tRows = mysql_num_rows();
	if(tRows == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not own any vehicles!"); return 1; }
	new vID, vModel;
	while(mysql_fetch_row(query))
	{
	    sscanf(query, "p<|>dd", vID, vModel);
	    format(results,sizeof(results),"%s%d | %s\n", results,vID,VehicleFriendlyNames[vModel-400]);
	}
	if(tRows >= 12) { format(results,sizeof(results), "%sNext Page", results); }
	ShowPlayerDialog(playerid, myvehicles1, DIALOG_STYLE_LIST,title,results,"Select", "Back");
	mysql_free_result();
	return 1;
}
public ShowPlayerSettings(playerid)
{
	new dialog[500], title[64], line1[64], line2[64], line3[64], line4[64], line5[64], line6[64], line7[64];	format(title,sizeof(title),"{FF4500}Account Settings");
	switch(PInfo[playerid][sSpawn])	{ case 0: { format(line1,sizeof(line1),"Default"); } case 1: { format(line1,sizeof(line1),"House Slot 1"); } case 2: { format(line1,sizeof(line1),"House Slot 2"); } case 3: { format(line1,sizeof(line1),"Airline Spawn"); }	}
	switch(PInfo[playerid][sSkin]) { case 0: { format(line2,sizeof(line2),"Default"); } case 1: { format(line2,sizeof(line2),"Airline Uniform"); } case 2: { format(line2,sizeof(line2),"Admin Skin"); } case 3: { format(line2,sizeof(line2),"Owned Skin"); } }
	switch(PInfo[playerid][sPM]) { case 0: { format(line3,sizeof(line3),"Enabled"); } case 1: { format(line3,sizeof(line3),"Disabled"); } }
	switch(PInfo[playerid][sVIPSounds]) { case 0: { format(line4,sizeof(line4),"Enabled"); } case 1: { format(line4,sizeof(line4),"Disabled"); } case 2: { format(line4,sizeof(line4),"Disable when radio active"); } }
	switch(PInfo[playerid][sGlobalSounds]) { case 0: { format(line5,sizeof(line5),"Enabled"); } case 1: { format(line5,sizeof(line5),"Disabled"); } case 2: { format(line5,sizeof(line5),"Disable when radio active"); } }
	switch(PInfo[playerid][sConnectionMessages]) { case 0: { format(line6,sizeof(line6),"Enabled"); } case 1: { format(line6,sizeof(line6),"Disabled"); } }
	switch(PInfo[playerid][sAutoWork]) { case 0: { format(line7,sizeof(line7),"Disabled"); } case 1: { format(line7,sizeof(line7),"Enabled"); } }
	format(dialog,sizeof(dialog),"Spawn:\t\t\t [%s]\nSkin:\t\t\t [%s]\nPrivate Messages:\t [%s]\nVIP Sounds:\t\t [%s]\nGlobal Sounds:\t\t [%s]\nConnection Messages:\t [%s]\nAutowork:\t\t [%s]",line1,line2,line3,line4,line5,line6,line7);
	ShowPlayerDialog(playerid, settings1, DIALOG_STYLE_LIST, title, dialog, "Edit", "Close");
	return 1;
}
public ShowMarketplace(playerid)
{
	new query[250],results[500],title[64];
	format(title,sizeof(title),"{FF4500}Vehicle Marketplace");
	Num1[playerid] = 0;
	Num2[playerid] = 10;
	format(query,sizeof(query),"SELECT VehicleID,VehicleModel,VehiclePrice,OwnedBy FROM `pvehicles` WHERE `VehicleForSale`= 1 ORDER BY `VehiclePrice` DESC LIMIT %d, %d", Num1[playerid],Num2[playerid]);
	mysql_query(query);
	mysql_store_result();
	new tRows = mysql_num_rows();
	if(tRows == 0) { SendClientMessage(playerid, COLOR_ERROR, "No vehicles are currently for sale!"); return 1; }
	new vID, vModel, vOwnedBy[24], vPrice;
	while(mysql_fetch_row(query))
	{
	    sscanf(query, "p<|>ddds[24]", vID, vModel, vPrice, vOwnedBy);
	    format(results,sizeof(results),"%s%d | %s($%d) | Seller: %s\n", results,vID,VehicleFriendlyNames[vModel-400],vPrice,vOwnedBy);
	}
	if(tRows >= 10) { format(results,sizeof(results), "%sNext Page", results); }
	ShowPlayerDialog(playerid, marketplace1, DIALOG_STYLE_LIST,title,results,"Select", "Close");
	mysql_free_result();
	return 1;
}
public ShowSettings(playerid)
{
    if(LookingAtAirline[playerid] == 0 || LookingAtAirline[playerid] > MAX_AIRLINES) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
    if(PInfo[playerid][Airline] == LookingAtAirline[playerid] && PInfo[playerid][AirlineRank] == 6)
    {
		new asettings[1024];
		new l = LookingAtAirline[playerid];
		format(asettings, sizeof(asettings), "{FFFFFF}Airline Name: {FF4500}%s\n{FFFFFF}Rank1: {FF4500}%s\n{FFFFFF}Rank2: {FF4500}%s\n{FFFFFF}Rank3: {FF4500}%s\n{FFFFFF}Rank4: {FF4500}%s\n{FFFFFF}Rank5: {FF4500}%s\n{FFFFFF}Rank6: {FF4500}%s\n{FFFFFF}Airline Uniform: {FF4500}%d\n{FFFFFF}Airline Payrate: {FF4500}%d percent\n{FFFFFF}Fleet slots: {FF4500}%d\n{FFFFFF}Total fleet: {FF4500}%d\n{FFFFFF}Airline AMOTD\n{FFFFFF}Rank Permissions",
		AInfo[l][aName],
		AInfo[l][aRank1],
		AInfo[l][aRank2],
		AInfo[l][aRank3],
		AInfo[l][aRank4],
		AInfo[l][aRank5],
		AInfo[l][aRank6],
		AInfo[l][aUniform],
		AInfo[l][aPayrate],
		AInfo[l][aFleetSlots],
		AInfo[l][aFleetTotal]);
    	ShowPlayerDialog(playerid, asettings1, DIALOG_STYLE_LIST, "Select a setting to edit..", asettings, "Edit", "Back");
    	return 1;
	}
	else
	{
	    SendClientMessage(playerid, COLOR_ERROR, "You are not the owner of this airline.");
		DisplayDialogForPlayer(playerid, showit2);
		return 1;
	}
}
public ShowBank(playerid)
{
	if(LookingAtAirline[playerid] == 0 || LookingAtAirline[playerid] > MAX_AIRLINES) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
	ShowPlayerDialog(playerid, abank1, DIALOG_STYLE_LIST, "Select an action..", "{FF4500}View Balance\n{FFFFFF}Withdraw\n{FF4500}Deposit", "Select", "Back");
	return 1;
}
public ShowDonations(playerid)
{
	if(LookingAtAirline[playerid] == 0 || LookingAtAirline[playerid] > MAX_AIRLINES) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
	new text[450], title[156];
	format(title,sizeof(title),"{FF4500}Send a donation to %s!", AInfo[LookingAtAirline[playerid]][aName]);
	format(text,sizeof(text),"No donations can be refunded, so please donate sensibly.");
	ShowPlayerDialog(playerid, adonation1, DIALOG_STYLE_INPUT, title, text, "Send", "Back");
	return 1;
}
public GiveAirlineBonus(playerid)
{
	new AL = PInfo[playerid][Airline];
	new RandomBonus = randomEx(2500,5000); //User gets a random bonus, e.g $2300
	new RBShared = RandomBonus/100; //Random bonus is divided by 100, equalling $23 per 1% (Depending on the payrate of the airline)
	new RBBonus = RBShared*AInfo[AL][aPayrate]; //The $23 is multiplied by the payrate. (92 payrate: $2116). Profit: ($184 !)
	new Earnt = RandomBonus-RBBonus; //The $2300-$2116 = $184 profit
	AInfo[AL][aTotalPaid] = AInfo[AL][aTotalPaid]+RBBonus;
	AInfo[AL][aTotalEarnt] = AInfo[AL][aTotalEarnt]+RBBonus+Earnt; //Add's the total earnt, Pay + the proffit.
	PInfo[playerid][EarntForAirline] = PInfo[playerid][EarntForAirline]+Earnt; //Add's the proffit made by the player.
	PInfo[playerid][AirlineFlights]++;
	WorkPay[playerid] = WorkPay[playerid]+RBBonus;
	AInfo[AL][aBalance]=AInfo[AL][aBalance]+Earnt;
	AInfo[AL][aFlights]++;
	AOTD_Earnt[PInfo[playerid][Airline]] = AOTD_Earnt[PInfo[playerid][Airline]]+Earnt;
	new TDistance;
	TDistance = DistanceFlown1[playerid]+DistanceFlown2[playerid];
	TDistance = TDistance/1000;
	AInfo[AL][aDistance]=AInfo[AL][aDistance]+TDistance;
	SaveAirline(AL);
}
public PutIntoHouse(playerid, houseid)
{
	if(PInfo[playerid][House1] == HInfo[houseid][hHouseID]) { new msg[64]; format(msg,sizeof(msg),"Welcome home, %s.", PlayerName(playerid)); SendClientMessage(playerid, COLOR_GREENISHGOLD, msg); }
	if(PInfo[playerid][House2] == HInfo[houseid][hHouseID]) { new msg[64]; format(msg,sizeof(msg),"Welcome home, %s.", PlayerName(playerid)); SendClientMessage(playerid, COLOR_GREENISHGOLD, msg); }
	InHouse[playerid] = houseid;
	SetPlayerInterior(playerid, HInfo[houseid][hInterior]);
	SetPlayerPos(playerid, HInfo[houseid][hiX],HInfo[houseid][hiY],HInfo[houseid][hiZ]);
	SetPlayerVirtualWorld(playerid, houseid);
	SendClientMessage(playerid, COLOR_HOUSE, "Press ~k~~VEHICLE_ENTER_EXIT~ to leave the house.");
	return 1;
}
public UpdateSkin(playerid)
{
	switch(PInfo[playerid][sSkin])
	{
	    case 0: // Default
	    {
	    	if(gTeam[playerid] == TEAM_MILITARY)
	    	{
				SetPlayerSkin(playerid, 287);
	    	}
	    	else if(gTeam[playerid] == TEAM_CTRUCK)
	    	{
	    	    SetPlayerSkin(playerid, 29);
	    	}
	    	else if(gTeam[playerid] == TEAM_CPILOT)
	    	{
	    	    SetPlayerSkin(playerid, 61);
	    	}
	    }
	    case 1: // Airline Uniform
	    {
	        if(PInfo[playerid][Airline] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline! Please update your settings [/preferences].");
	            SetPlayerSkin(playerid, 61);
	            return 1;
	        }
	        SetPlayerSkin(playerid, AInfo[PInfo[playerid][Airline]][aUniform]);
	    }
	    case 2: // Admin Skin
	    {
	        if(PInfo[playerid][AdminLevel] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not an Administrator! Please update your settings [/preferences].");
	            SetPlayerSkin(playerid, 61);
	            return 1;
	        }
	        SetPlayerSkin(playerid, 3);
	    }
	    case 3: // Owned Skin
	    {
	        if(PInfo[playerid][OwnedSkin] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You do not own a skin! Please update your settings [/preferences].");
	            SetPlayerSkin(playerid, 61);
	            return 1;
	        }
	        SetPlayerSkin(playerid, PInfo[playerid][OwnedSkin]);
	    }
	}
	return 1;
}
public UpdateMap()
{
	new
		Float:X,
		Float:Y,
		Float:Z,
		Float:DirX,
		Float:DirY,
		Float:DirZ;

	for(new g=0;g<MAX_PLAYERS;g++)
	{
		if(MapSystem[PlayerObject][g] != (-1))
		{
			GetPlayerPos(g, X, Y, Z);
			DirX =  1931.741821;
			DirY = -2417.566528;
		    DirZ = 1200.608764;
			DirX += floatmul(floatdiv(X, 3000.0), 1.7302245);
	    	DirY += floatmul(floatdiv(Y, 3000.0), 1.7515870);
	    	DirZ += floatmul(Z, 0.0003084741948);
			SetObjectPos(MapSystem[PlayerObject][g], DirX, DirY, DirZ);
			Delete3DTextLabel(MapSystem[PlayerLabel][g]);
			MapSystem[PlayerLabel][g] = Create3DTextLabel(sprintf("%s(%d) [ALT: %.1f]",PInfo[g][Callsign],g,Z),MapSystem[Color][g],DirX, DirY, DirZ,50.0,0,0);
		}
	}
	return 1;
}
public PlaySound(soundid)
{
	new url[300];
	switch(soundid)
	{
	    case 0: //Banned Player (Another one bites the dust)
	    {
	        format(url,sizeof(url),"http://the-lof.com/sounds/global/playerbanned.mp3");
	    }
	    case 1: //Muted Player (SHUT UP FOO - MR T)
	    {
	        format(url,sizeof(url),"http://the-lof.com/sounds/global/shutupfoo.mp3");
	    }
	}
    for(new i = 0; i <MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
		    if(PInfo[i][sGlobalSounds] == 0)
		    {
				PlayAudioStreamForPlayer(i, url);
			}
			if(PInfo[i][sGlobalSounds] == 2)
			{
			    if(ListeningToRadio[i] != 1)
			    {//He has 'Ignore while radio active on', so it only plays if he isnt listening to radio.
			        PlayAudioStreamForPlayer(i, url);
			    }
			}
		}
	}
	return 1;
}
public RespawnPlayer(playerid)
{
	if(ChosenClass[playerid] == 1) //Pilot
	{
			switch(PInfo[playerid][sSpawn])
			{
			    case 0: //Default
			    {
			        if(gTeam[playerid] == TEAM_CPILOT)
			        {
			        	ShowPlayerDialog(playerid,5030,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location", "{FF4500}Los Santos\n{FFFFFF}San Fierro\n{FF4500}Las Venturas", "Spawn", "Cancel");
			        }
			        else if(gTeam[playerid] == TEAM_CTRUCK)
					{
	    				ShowPlayerDialog(playerid,10000,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location", "{FF4500}Los Santos\n{FFFFFF}San Fierro\n{FF4500}Las Venturas", "Spawn", "Cancel");
					}
					else if(gTeam[playerid] == TEAM_MILITARY)
					{
	    				ShowPlayerDialog(playerid,5555,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location.", "{FF4500}Area 51\n{FFFFFF}San Fierro Carrier", "Spawn", "Cancel");
					}
			        UpdateSkin(playerid);
			        SetCameraBehindPlayer(playerid);
			        return 1;
			    }
			    case 1: //House 1
			    {
			        if(PInfo[playerid][House1] > 0)
			        {
				        new HID = PInfo[playerid][House1];
				        PurelySpawned[playerid] = 1;
				        PlayerSpawned[playerid] = 1;
				        SetPlayerHealth(playerid, 100);
				        SetPlayerInterior(playerid, HInfo[HID][hInterior]);
				        SetPlayerVirtualWorld(playerid, HID);
				        SetPlayerPos(playerid, HInfo[HID][hiX],HInfo[HID][hiY],HInfo[HID][hiZ]);
						UpdateSkin(playerid);
						UpdatePlayerColour(playerid);
				        InHouse[playerid] = HID;
				        SetCameraBehindPlayer(playerid);
				        return 1;
			        }
			        else
			        {
			            SendClientMessage(playerid, COLOR_ERROR, "You do not own a house in this slot! Please update your settings [/preferences].");
			            DisplayDialogForPlayer(playerid, 3);
			            return 1;
			        }
				}
			    case 2: //House 2
			    {
			        if(PInfo[playerid][House2] > 0)
			        {
				        new HID = PInfo[playerid][House2];
				        PurelySpawned[playerid] = 1;
				        PlayerSpawned[playerid] = 1;
				        SetPlayerHealth(playerid, 100);
				        SetPlayerInterior(playerid, HInfo[HID][hInterior]);
				        SetPlayerVirtualWorld(playerid, HID);
				        SetPlayerPos(playerid, HInfo[HID][hiX],HInfo[HID][hiY],HInfo[HID][hiZ]);
						UpdatePlayerColour(playerid);
				        InHouse[playerid] = HID;
				        UpdateSkin(playerid);
				        SetCameraBehindPlayer(playerid);
				        return 1;
			        }
			        else
			        {
			            SendClientMessage(playerid, COLOR_ERROR, "You do not own a house in this slot! Please update your settings [/preferences].");
			            DisplayDialogForPlayer(playerid, 3);
			            return 1;
			        }
			    }
			    case 3: // Airline
			    {
			        if(PInfo[playerid][Airline] > 0)
			        {
		    		    PurelySpawned[playerid] = 1;
					    PlayerSpawned[playerid] = 1;
					    SetPlayerHealth(playerid, 100);
					    SetPlayerInterior(playerid, 0);
					    SetPlayerVirtualWorld(playerid, 0);
					    SetPlayerPos(playerid, AInfo[PInfo[playerid][Airline]][aPos1], AInfo[PInfo[playerid][Airline]][aPos2], AInfo[PInfo[playerid][Airline]][aPos3]);
					    SetPlayerFacingAngle(playerid, AInfo[PInfo[playerid][Airline]][aPos4]);
					    UpdatePlayerColour(playerid);
					    UpdateSkin(playerid);
					    SetCameraBehindPlayer(playerid);
					    return 1;
			        }
			        else
			        {
			            SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline! Please update your settings [/preferences].");
			            DisplayDialogForPlayer(playerid, 3);
			            return 1;
			        }
			    }
			}
	}return 1;
}
public SaveComponent(vehicleid,componentid)
{
    new playerid = GetDriverID(vehicleid);
	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
				for(new s=0; s<20; s++) {
     				if(componentid == spoiler[s][0]) {
       					PVInfo[vehicleid][mod1] = componentid;
   	        		}
				}
				for(new s=0; s<3; s++) {
     				if(componentid == nitro[s][0]) {
       					PVInfo[vehicleid][mod2] = componentid;
   	        		}
				}
				for(new s=0; s<23; s++) {
     				if(componentid == fbumper[s][0]) {
       					PVInfo[vehicleid][mod3] = componentid;
   	        		}
				}
				for(new s=0; s<22; s++) {
     				if(componentid == rbumper[s][0]) {
       					PVInfo[vehicleid][mod4] = componentid;
   	        		}
				}
				for(new s=0; s<28; s++) {
     				if(componentid == exhaust[s][0]) {
       					PVInfo[vehicleid][mod5] = componentid;
   	        		}
				}
				for(new s=0; s<2; s++) {
     				if(componentid == bventr[s][0]) {
       					PVInfo[vehicleid][mod6] = componentid;
   	        		}
				}
				for(new s=0; s<2; s++) {
     				if(componentid == bventl[s][0]) {
       					PVInfo[vehicleid][mod7] = componentid;
   	        		}
				}
				for(new s=0; s<4; s++) {
     				if(componentid == bscoop[s][0]) {
       					PVInfo[vehicleid][mod8] = componentid;
   	        		}
				}
				for(new s=0; s<17; s++) {
     				if(componentid == rscoop[s][0]) {
       					PVInfo[vehicleid][mod9] = componentid;
   	        		}
				}
				for(new s=0; s<21; s++) {
     				if(componentid == lskirt[s][0]) {
       					PVInfo[vehicleid][mod10] = componentid;
   	        		}
				}
				for(new s=0; s<21; s++) {
     				if(componentid == rskirt[s][0]) {
       					PVInfo[vehicleid][mod11] = componentid;
   	        		}
				}
				for(new s=0; s<1; s++) {
     				if(componentid == hydraulics[s][0]) {
       					PVInfo[vehicleid][mod12] = componentid;
   	        		}
				}
				for(new s=0; s<1; s++) {
     				if(componentid == base[s][0]) {
       					PVInfo[vehicleid][mod13] = componentid;
   	        		}
				}
				for(new s=0; s<4; s++) {
     				if(componentid == rbbars[s][0]) {
       					PVInfo[vehicleid][mod14] = componentid;
   	        		}
				}
				for(new s=0; s<2; s++) {
     				if(componentid == fbbars[s][0]) {
       					PVInfo[vehicleid][mod15] = componentid;
   	        		}
				}
				for(new s=0; s<17; s++) {
     				if(componentid == wheels[s][0]) {
       					PVInfo[vehicleid][mod16] = componentid;
   	        		}
				}
				for(new s=0; s<2; s++) {
     				if(componentid == clights[s][0]) {
       					PVInfo[vehicleid][mod17] = componentid;
   	        		}
					return 1;
			}
	}
	return 0;
}
public StartMission(playerid)
{
 	if(TypeFlight[playerid] == 1) // Andromada
 	{
		new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(ALocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,ALocations[i][LocX],ALocations[i][LocY],ALocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
	    new string2[65], message[128];
	    SetPlayerRaceCheckpoint(playerid, 2, ALocations[index][LocX], ALocations[index][LocY], ALocations[index][LocZ], 0,0,0, 10.0);
	    format(string2, sizeof(string2), "%s", ALocations[index][LocationName]); //PASSWORD
	    strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
	    //FirstAPName[playerid] = ALocations[index][LocationName];
	    //FirstAPName[playerid] = AndroDName;
	    format(message,sizeof(message), "Head to {FF4500}%s {FFFFFF}and pick up the Cargo.", ALocations[index][LocationName]);
	    SendClientMessage(playerid, COLOR_WHITE, message);
	    TypeFlight[playerid] = 1;
	    MissionStage[playerid] = 1;
	    WantsRecording[playerid] = 1;
	    Pos1[playerid] = ALocations[index][LocX];
	    Pos2[playerid] = ALocations[index][LocY];
	    Pos3[playerid] = ALocations[index][LocZ];
    }
	else if(TypeFlight[playerid] == 2) // AT-400
	{
		new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(ALocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,ALocations[i][LocX],ALocations[i][LocY],ALocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
	    new string2[65], message[128];
	    SetPlayerRaceCheckpoint(playerid, 2, ALocations[index][LocX], ALocations[index][LocY], ALocations[index][LocZ], 0,0,0, 10.0);
	    format(string2, sizeof(string2), "%s", ALocations[index][LocationName]); //PASSWORD
	    strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
	    //FirstAPName[playerid] = ALocations[index][LocationName];
	    //FirstAPName[playerid] = AndroDName;
	    format(message,sizeof(message), "Head to {FF4500}%s {FFFFFF}and pick up the Passengers.", ALocations[index][LocationName]);
	    SendClientMessage(playerid, COLOR_WHITE, message);
	    TypeFlight[playerid] = 1;
	    MissionStage[playerid] = 1;
	    WantsRecording[playerid] = 1;
	    Pos1[playerid] = ALocations[index][LocX];
	    Pos2[playerid] = ALocations[index][LocY];
	    Pos3[playerid] = ALocations[index][LocZ];
    }
	else if(TypeFlight[playerid] == 3) // Shamal
	{
		new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(DSLocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,DSLocations[i][LocX],DSLocations[i][LocY],DSLocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
    	StartedMission[playerid] = 1;
		new string2[65], message[128];
	 	SetPlayerRaceCheckpoint(playerid, 2, DSLocations[index][LocX],DSLocations[index][LocY],DSLocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", DSLocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passengers.", DSLocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = DSLocations[index][LocX];
		Pos2[playerid] = DSLocations[index][LocY];
		Pos3[playerid] = DSLocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 4) // dodo
 	{
 	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(DSLocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,DSLocations[i][LocX],DSLocations[i][LocY],DSLocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2, DSLocations[index][LocX],DSLocations[index][LocY],DSLocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", DSLocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passenger.", DSLocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = DSLocations[index][LocX];
		Pos2[playerid] = DSLocations[index][LocY];
		Pos3[playerid] = DSLocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 5) // Nevada
	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(ALocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,ALocations[i][LocX],ALocations[i][LocY],ALocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
	    new string2[65], message[128];
	    SetPlayerRaceCheckpoint(playerid, 2, ALocations[index][LocX], ALocations[index][LocY], ALocations[index][LocZ], 0,0,0, 10.0);
	    format(string2, sizeof(string2), "%s", ALocations[index][LocationName]); //PASSWORD
	    strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the skydivers.", ALocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = ALocations[index][LocX];
		Pos2[playerid] = ALocations[index][LocY];
		Pos3[playerid] = ALocations[index][LocZ];
	}
 	else if(TypeFlight[playerid] == 6) // Maverick
	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HELILocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HELILocations[i][LocX],HELILocations[i][LocY],HELILocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HELILocations[index][LocX],HELILocations[index][LocY],HELILocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HELILocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passengers.", HELILocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HELILocations[index][LocX];
		Pos2[playerid] = HELILocations[index][LocY];
		Pos3[playerid] = HELILocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 7) // News Maverick
 	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HELILocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HELILocations[i][LocX],HELILocations[i][LocY],HELILocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HELILocations[index][LocX],HELILocations[index][LocY],HELILocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HELILocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passengers.", HELILocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HELILocations[index][LocX];
		Pos2[playerid] = HELILocations[index][LocY];
		Pos3[playerid] = HELILocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 8) // Trucker
    {
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(TruckLocation);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,TruckLocation[i][LocX],TruckLocation[i][LocY],TruckLocation[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
	    new string2[65], message[128];
	    SetPlayerRaceCheckpoint(playerid, 2, TruckLocation[index][LocX],TruckLocation[index][LocY],TruckLocation[index][LocZ],0,0,0, 8.0);
	    format(string2, sizeof(string2), "%s", TruckLocation[index][LocationName]); //PASSWORD
	    strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
	    //FirstAPName[playerid] = ALocations[index][LocationName];
	    //FirstAPName[playerid] = AndroDName;
	    format(message,sizeof(message), "Head to {FF4500}%s {FFFFFF}and pick up the Goods.", TruckLocation[index][LocationName]);
	    SendClientMessage(playerid, COLOR_WHITE, message);
	    MissionStage[playerid] = 1;
	    WantsRecording[playerid] = 1;
	    Pos1[playerid] = TruckLocation[index][LocX];
	    Pos2[playerid] = TruckLocation[index][LocY];
	    Pos3[playerid] = TruckLocation[index][LocZ];
    }
	else if(TypeFlight[playerid] == 9) // Leviathan
	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HELILocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HELILocations[i][LocX],HELILocations[i][LocY],HELILocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HELILocations[index][LocX],HELILocations[index][LocY],HELILocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HELILocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passenger.", HELILocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HELILocations[index][LocX];
		Pos2[playerid] = HELILocations[index][LocY];
		Pos3[playerid] = HELILocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 10) // Seasparrow
	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HELILocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HELILocations[i][LocX],HELILocations[i][LocY],HELILocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HELILocations[index][LocX],HELILocations[index][LocY],HELILocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HELILocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passenger.", HELILocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HELILocations[index][LocX];
		Pos2[playerid] = HELILocations[index][LocY];
		Pos3[playerid] = HELILocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 11) // Sparrow
	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HELILocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HELILocations[i][LocX],HELILocations[i][LocY],HELILocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HELILocations[index][LocX],HELILocations[index][LocY],HELILocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HELILocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passenger.", HELILocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HELILocations[index][LocX];
		Pos2[playerid] = HELILocations[index][LocY];
		Pos3[playerid] = HELILocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 12) // cargobob
	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HELILocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HELILocations[i][LocX],HELILocations[i][LocY],HELILocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HELILocations[index][LocX],HELILocations[index][LocY],HELILocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HELILocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the cargo.", HELILocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HELILocations[index][LocX];
		Pos2[playerid] = HELILocations[index][LocY];
		Pos3[playerid] = HELILocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 13) // raindance
	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HELILocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HELILocations[i][LocX],HELILocations[i][LocY],HELILocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HELILocations[index][LocX],HELILocations[index][LocY],HELILocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HELILocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passenger.", HELILocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HELILocations[index][LocX];
		Pos2[playerid] = HELILocations[index][LocY];
		Pos3[playerid] = HELILocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 14) // hunter
 	{
	    new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HELILocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HELILocations[i][LocX],HELILocations[i][LocY],HELILocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HELILocations[index][LocX],HELILocations[index][LocY],HELILocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HELILocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the ammunition.", HELILocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HELILocations[index][LocX];
		Pos2[playerid] = HELILocations[index][LocY];
		Pos3[playerid] = HELILocations[index][LocZ];
	}
 	else if(TypeFlight[playerid] == 15) // skimmer
	{
     	new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(BOATLocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,BOATLocations[i][LocX],BOATLocations[i][LocY],BOATLocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2, BOATLocations[index][LocX],BOATLocations[index][LocY],BOATLocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", BOATLocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the passenger.", BOATLocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = BOATLocations[index][LocX];
		Pos2[playerid] = BOATLocations[index][LocY];
		Pos3[playerid] = BOATLocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 16) // Cropduster
	{
     	new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(CD1Locations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,CD1Locations[i][LocX],CD1Locations[i][LocY],CD1Locations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2, CD1Locations[index][LocX],CD1Locations[index][LocY],CD1Locations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", CD1Locations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the seeds.", CD1Locations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = CD1Locations[index][LocX];
		Pos2[playerid] = CD1Locations[index][LocY];
		Pos3[playerid] = CD1Locations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 17) // Beagle
	{
     	new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(DSLocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,DSLocations[i][LocX],DSLocations[i][LocY],DSLocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2, DSLocations[index][LocX],DSLocations[index][LocY],DSLocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", DSLocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the skydivers.", DSLocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = DSLocations[index][LocX];
		Pos2[playerid] = DSLocations[index][LocY];
		Pos3[playerid] = DSLocations[index][LocZ];
	}
	else if(TypeFlight[playerid] == 18) // Hydra
	{
		new Float:dist,Float:maxdist = 99999.9,index;
	    for(new i,j=sizeof(HYDRALocations);i<j;i++)
	    {
	        dist = GetPlayerDistanceFromPoint(playerid,HYDRALocations[i][LocX],HYDRALocations[i][LocY],HYDRALocations[i][LocZ]);
	        if(dist < maxdist)
	        {
	            maxdist = dist;
	            index = i;
	        }
	    }
	    StartedMission[playerid] = 1;
		new string2[65], message[128];
		SetPlayerRaceCheckpoint(playerid, 2,  HYDRALocations[index][LocX],HYDRALocations[index][LocY],HYDRALocations[index][LocZ], 0,0,0, 10.0);
		format(string2, sizeof(string2), "%s", HYDRALocations[index][LocationName]); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		strmid(FirstAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
		//FirstAPName[playerid] = ALocations[rand][LocationName];
		//FirstAPName[playerid] = AndroDName;
		format(message,sizeof(message), "{FFFFFF}Head to {FF4500}%s {FFFFFF}and pick up the warheads.", HYDRALocations[index][LocationName]);
		SendClientMessage(playerid, COLOR_DARKRED, message);
		MissionStage[playerid] = 1;
		WantsRecording[playerid] = 1;
		Pos1[playerid] = HYDRALocations[index][LocX];
		Pos2[playerid] = HYDRALocations[index][LocY];
		Pos3[playerid] = HYDRALocations[index][LocZ];
	}
	new Float:DistanceCheck;
	new Float:P1, Float:P2, Float:P3;
	GetPlayerPos(playerid, P1, P2, P3);
	DistanceCheck = GetDistanceBetweenPoints(P1, P2, P3,Pos1[playerid],Pos2[playerid],Pos3[playerid]);
	DistanceFlown1[playerid] = floatround(DistanceCheck, floatround_round);
	return 1;
}
public LoadAirline(airlineid)
{
	new query[650];
	format(query, sizeof(query), "SELECT * FROM `airlines` WHERE `ID` = '%d'", airlineid);
	mysql_query(query);
	mysql_store_result();
	if(mysql_num_rows() > 0)
	{ // airline exists
		new line[1250];
		if(mysql_fetch_row(line)) //Fetches the line
  		{
  		    new string2[200];
    		new data[10][128]; //The data strings
      		new data2[17]; //The data variables
      		new Float:data3[4]; //The data floats
      		sscanf(line, "p<|>s[128]s[128]dddds[128]s[128]s[128]s[128]s[128]s[128]dddddffffs[128]s[128]dddddddd", data[0], data[1], data2[0], data2[1], data2[2], data2[3], data[2], data[3], data[4], data[5], data[6], data[7], data2[4], data2[5], data2[6], data2[7], data2[8], data3[0],data3[1],data3[2],data3[3],data[8],data[9],data2[9],data2[10],data2[11],data2[12],data2[13],data2[14],data2[15],data2[16]);
			format(string2, sizeof(string2), "%s", data[0]);
			strmid(AInfo[airlineid][aName], string2, 0, strlen(string2), 128);
			format(string2, sizeof(string2), "%s", data[1]);
			strmid(AInfo[airlineid][aOwner], string2, 0, strlen(string2), 128);
			AInfo[airlineid][aFlights] = data2[0];
			AInfo[airlineid][aPayrate] = data2[1];
			AInfo[airlineid][aBalance] = data2[2];
			AInfo[airlineid][aID] = data2[3];
			format(string2, sizeof(string2), "%s", data[2]);
			strmid(AInfo[airlineid][aRank1], string2, 0, strlen(string2), 128);
			format(string2, sizeof(string2), "%s", data[3]);
			strmid(AInfo[airlineid][aRank2], string2, 0, strlen(string2), 128);
			format(string2, sizeof(string2), "%s", data[4]);
			strmid(AInfo[airlineid][aRank3], string2, 0, strlen(string2), 128);
			format(string2, sizeof(string2), "%s", data[5]);
			strmid(AInfo[airlineid][aRank4], string2, 0, strlen(string2), 128);
			format(string2, sizeof(string2), "%s", data[6]);
			strmid(AInfo[airlineid][aRank5], string2, 0, strlen(string2), 128);
			format(string2, sizeof(string2), "%s", data[7]);
			strmid(AInfo[airlineid][aRank6], string2, 0, strlen(string2), 128);
			AInfo[airlineid][aTotalEarnt] = data2[4];
			AInfo[airlineid][aTotalPaid] = data2[5];
			AInfo[airlineid][aFleetSlots] = data2[6];
			//AInfo[airlineid][aFleetTotal] = data2[7]; - We don't need to load it, as it's created upon the airline vehicle spawn.
			AInfo[airlineid][aUniform] = data2[8];
			AInfo[airlineid][aPos1] = data3[0];
			AInfo[airlineid][aPos2] = data3[1];
			AInfo[airlineid][aPos3] = data3[2];
			AInfo[airlineid][aPos4] = data3[3];
			format(string2, sizeof(string2), "%s", data[8]);
			strmid(AInfo[airlineid][aMotd], string2, 0, strlen(string2), 200);
			format(string2, sizeof(string2), "%s", data[9]);
			strmid(AInfo[airlineid][aMotdSetBy], string2, 0, strlen(string2), 128);
			AInfo[airlineid][pInvMembers] = data2[9];
			AInfo[airlineid][pRmvMembers] = data2[10];
			AInfo[airlineid][pPrmMembers] = data2[11];
			AInfo[airlineid][pPrkFleet] = data2[12];
			AInfo[airlineid][pClrFleet] = data2[13];
			AInfo[airlineid][pBnkPerm] = data2[14];
			AInfo[airlineid][pRspFleet] = data2[15];
			AInfo[airlineid][aDistance] = data2[16];
			if(AInfo[airlineid][aMapIcon] == 0) { AInfo[airlineid][aMapIcon] = CreateDynamicMapIcon(data3[0], data3[1], data3[2], 5, 0); }
            mysql_free_result();
        }
		mysql_free_result();
		//Admin loaded the airline ID: airlineid
	}
	else
	{
	    mysql_free_result();
		print("Failed to load airline.");
	}
}
public SaveAirline(airlineid)
{
	mysql_real_escape_string(AInfo[airlineid][aName], AInfo[airlineid][aName]);
	mysql_real_escape_string(AInfo[airlineid][aOwner], AInfo[airlineid][aOwner]);
	mysql_real_escape_string(AInfo[airlineid][aRank1], AInfo[airlineid][aRank1]);
	mysql_real_escape_string(AInfo[airlineid][aRank2], AInfo[airlineid][aRank2]);
	mysql_real_escape_string(AInfo[airlineid][aRank3], AInfo[airlineid][aRank3]);
	mysql_real_escape_string(AInfo[airlineid][aRank4], AInfo[airlineid][aRank4]);
	mysql_real_escape_string(AInfo[airlineid][aRank5], AInfo[airlineid][aRank5]);
	mysql_real_escape_string(AInfo[airlineid][aRank6], AInfo[airlineid][aRank6]);
	mysql_real_escape_string(AInfo[airlineid][aMotd], AInfo[airlineid][aMotd]);
	mysql_real_escape_string(AInfo[airlineid][aMotdSetBy], AInfo[airlineid][aMotdSetBy]);
	new query[1250];
	format(query, sizeof(query), "UPDATE airlines SET Name='%s',Owner='%s',Flights='%d',Payrate='%d',Balance='%d',Rank1='%s',Rank2='%s',Rank3='%s',Rank4='%s',Rank5='%s',Rank6='%s',totalearnt='%d',totalpaid='%d',fleetslots='%d',fleettotal='%d',uniform='%d',pos1='%f',pos2='%f',pos3='%f',pos4='%f',motd='%s',motdsetby='%s',invmembers='%d',rmvmembers='%d',prmmembers='%d',prkfleet='%d',clrfleet='%d',bnkperm='%d',rspfleet='%d',distance='%d' WHERE ID = '%d'",
	AInfo[airlineid][aName],
	AInfo[airlineid][aOwner],
	AInfo[airlineid][aFlights],
	AInfo[airlineid][aPayrate],
	AInfo[airlineid][aBalance],
	AInfo[airlineid][aRank1],
	AInfo[airlineid][aRank2],
	AInfo[airlineid][aRank3],
	AInfo[airlineid][aRank4],
	AInfo[airlineid][aRank5],
	AInfo[airlineid][aRank6],
	AInfo[airlineid][aTotalEarnt],
	AInfo[airlineid][aTotalPaid],
	AInfo[airlineid][aFleetSlots],
	AInfo[airlineid][aFleetTotal],
	AInfo[airlineid][aUniform],
	AInfo[airlineid][aPos1],
	AInfo[airlineid][aPos2],
	AInfo[airlineid][aPos3],
	AInfo[airlineid][aPos4],
	AInfo[airlineid][aMotd],
	AInfo[airlineid][aMotdSetBy],
	AInfo[airlineid][pInvMembers],
	AInfo[airlineid][pRmvMembers],
	AInfo[airlineid][pPrmMembers],
	AInfo[airlineid][pPrkFleet],
	AInfo[airlineid][pClrFleet],
	AInfo[airlineid][pBnkPerm],
	AInfo[airlineid][pRspFleet],
	AInfo[airlineid][aDistance],
	airlineid);
	mysql_reconnect();
	mysql_query(query);
}
public ABroadCast(color,const string[],level)
{
	//foreach(Player, i)
    for(new i; i<MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			if(PInfo[i][AdminLevel] >= level)
			{
				SendClientMessage(i, color, string);
//				printf("%s", string);
			}
		}
	}
	return 1;
}
public SendAdminMessage(color, string[])
{
	//foreach(Player, i)
    for(new i; i<MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
		    if(PInfo[i][AdminLevel] >= 1)
		    {
				SendClientMessage(i, color, string);
			}
		}
	}
}
public SendHiddenMessage(string[])
{
	for(new i; i<MAX_PLAYERS; i++)
	{
	    if(IsPlayerConnected(i))
	    {
	        if(ActiveAdminSpy[i] == 1) //He is wanting to spy on airline chat.
	        {
	            SendClientMessage(i, 0x008040FF, string);
	        }
	    }
	}
}
public SendVIPMessage(color, string[])
{
	//foreach(Player, i)
    for(new i; i<MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
		    if(PInfo[i][Vip] >= 1)
		    {
				SendClientMessage(i, color, string);
			}
		}
	}
}
public SendAirlineMessage(color, string[], airlineid)
{
	//foreach(Player, i)
    for(new i; i<MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
		    switch(airlineid)
		    {
				case 1:
				{
    				if(PInfo[i][Airline] == 1)
				    {
						SendClientMessage(i, color, string);
					}
				}
				case 2:
				{
    				if(PInfo[i][Airline] == 2)
				    {
						SendClientMessage(i, color, string);
					}
				}
				case 3:
				{
    				if(PInfo[i][Airline] == 3)
				    {
						SendClientMessage(i, color, string);
					}
				}
				case 4:
				{
    				if(PInfo[i][Airline] == 4)
				    {
						SendClientMessage(i, color, string);
					}
				}
				case 5:
				{
    				if(PInfo[i][Airline] == 5)
				    {
						SendClientMessage(i, color, string);
					}
				}
			}
		}
	}
}
public IsAtGasStation(playerid)
{
    if(IsPlayerConnected(playerid))
	{
		if(IsPlayerInRangeOfPoint(playerid,200.0,238.1276,1397.9323,30.4536) || IsPlayerInRangeOfPoint(playerid,200.0,2670.9226,640.9680,55.8292) || IsPlayerInRangeOfPoint(playerid,100.0,-685.8223,1296.4742,21.0916) || IsPlayerInRangeOfPoint(playerid,200.0,-2219.1147,2179.1235,14.7848))
		{//LVA Oil Refinery near A51. | Stoneland International | Blew's Airport in LV. Skimmers/dodo/shamal | Bayside Airport BASE by Zak |
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid,100.0,-2409.5693,2556.1411,36.9569) || IsPlayerInRangeOfPoint(playerid,200.0,266.9326,1882.2871,45.2507) || IsPlayerInRangeOfPoint(playerid,200.0,318.6555,2501.6157,45.2507) || IsPlayerInRangeOfPoint(playerid,200.0,1067.1628,2631.5193,45.2507))
		{//Bayside Dodo Airport by HighFlyer | Area 51 | Verdeant Meadows | PricklePine Airport
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid,200.0,1912.1317,-386.3802,45.2507) || IsPlayerInRangeOfPoint(playerid,100.0,1270.4236,439.0995,45.2507) || IsPlayerInRangeOfPoint(playerid,200.0,1220.3989,729.6599,11.6433) || IsPlayerInRangeOfPoint(playerid,100.0,2784.0879,2749.6035,10.9433) || IsPlayerInRangeOfPoint(playerid,100.0,9.1205,-118.0340,4.2433))
		{//Palomino Creek | Montgomery Airport | Blew's Map @ LV. | K.A.C.C Regional
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid,500.0,1840.0883,-2546.0430,28.8243) || IsPlayerInRangeOfPoint(playerid,500.0,1479.8612,1445.5286,55.8292) || IsPlayerInRangeOfPoint(playerid, 750.0,-1302.1151,-207.1089,55.8292))
		{//LSA, LVA & SFA.
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid,100.0,2762.2512,-2464.1475,13.5489) || IsPlayerInRangeOfPoint(playerid,100.0,-1769.2634,-2948.9336,8.7453) || IsPlayerInRangeOfPoint(playerid, 100.0, -2938.4683,-2638.8120,14.5889) || IsPlayerInRangeOfPoint(playerid, 300.0, 3548.3840,-490.3313,9.0000))
		{//Military Docks, Angel Pine Airport, Whetstone Carrier, Gamer_Z's Airport base.

		}
		else if(IsPlayerInRangeOfPoint(playerid,100.0,2762.2512,-2464.1475,13.5489))//fake!
		{//Airline Bases
		    return 1;
		}
	}
	return 0;
}
stock GameTextCostumeForPlayer(playerid,msg[],seconds,style,color)
{
	textcountP++;
	if(textcountP >= 128) textcountP = 0; //By Seif_
	gTextStyle2[textcountP] = TextDrawCreate(521.000000, 101.000000, msg);
	TextDrawBackgroundColor(gTextStyle2[textcountP], 255);
	TextDrawFont(gTextStyle2[textcountP], 1);
	TextDrawLetterSize(gTextStyle2[textcountP], 0.480000, 1.000000);
	TextDrawColor(gTextStyle2[textcountP], color); // Was -1
	TextDrawSetOutline(gTextStyle2[textcountP], 1);
	TextDrawSetProportional(gTextStyle2[textcountP], 1);

	if(style == 2)
	{
		TextDrawShowForPlayer(playerid,gTextStyle2[textcountP]);
		SetTimerEx("TextDrawDestroyTimer2",seconds*1000,0,"d",textcountP);
	}
}
public AdvertisementUpdate(playerid)
{
	CanAdvertiseAgain[playerid] = 1;
	SendClientMessage(playerid, COLOR_WHITE, "You can now submit another advertisement.");
}

public RevertSkin(playerid)
{
	SetPlayerSkin(playerid, PreviewingSkinOld[playerid]);
	PreviewingSkin[playerid] = 0;
}
public FinishMission(playerid)
{
	new carid = GetPlayerVehicleID(playerid);
 	if(MissionVehicle[playerid] == carid) //Same vehicle
	{
		if(TypeFlight[playerid] == 1 && MissionStage[playerid] == 2) // AT-400
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 13500; // Androm
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*4+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][AT400F]++;
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_RED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 2 && MissionStage[playerid] == 2) // AT-400
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 13500; // AT-400.
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*4+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][AT400F]++;
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_RED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 3 && MissionStage[playerid] == 2) // Shamal
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 6500; // Shamal.
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][SHAMALF]++;
			PInfo[playerid][TotalScore]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_BRIGHTRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 4 && MissionStage[playerid] == 2) // Dodo
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 6500; // Dodo.
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][DODOF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_BRIGHTRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		//ID 5 is missing - Nevada, RACE CHECKPOINT FOR THE RING THING (AVIATED IN THE AIR)!
		if(TypeFlight[playerid] == 6 && MissionStage[playerid] == 2) // Maverick
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 5750; // Maverick.
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][MAVERICKF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_BRIGHTRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 7 && MissionStage[playerid] == 2) // News Maverick
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 5850; // News Maverick.
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][NMAVERICKF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_BRIGHTRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
  		if(TypeFlight[playerid] == 8 && MissionStage[playerid] == 2) //Truck
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 5750; // Police Maverick.
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You have completed the haul and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][TRUCKERF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_RED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a long-haul from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 9 && MissionStage[playerid] == 2) // leviathan
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 8000; // leviathan
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][LEVIATHANF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_BRIGHTRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
            TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 10 && MissionStage[playerid] == 2) // seasparrow
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 6900; // seasparrow
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][SEASPARROWF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_BRIGHTRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 11 && MissionStage[playerid] == 2) // sparrow
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 6900; // sparrow
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][SPARROWF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_DARKRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
            TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 12 && MissionStage[playerid] == 2) // cargobob
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 6500; // seasparrow
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][CARGOBOBF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_DARKRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 13 && MissionStage[playerid] == 2) // raindance
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 6250; // seasparrow
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][RAINDANCEF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_DARKRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 14 && MissionStage[playerid] == 2) // HUNTER
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 7500; // hunter
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][HUNTERF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_DARKRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 15 && MissionStage[playerid] == 2) // SKIMMER
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 8500; // skimmer
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][SKIMMERF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_DARKRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		if(TypeFlight[playerid] == 18 && MissionStage[playerid] == 2) // hydra
		{
		    TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
		    new PlaneBonus = 7500; // hydra
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
		    WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
			new msg[128];
			format(msg,sizeof(msg),"{FFFFFF}You completed the flight and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][HYDRAF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_DARKRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
			TogglePlayerControllable(playerid, 1);
		}
		SessionFlights[playerid] = SessionFlights[playerid]+1;
		if(SessionFlights[playerid] > ServerMaxFlightStreak)
		{
		    new msg[256];
		    format(msg,sizeof(msg),"[Flight Streak] %s (%d) has beaten %s's flight streak of %d (%s %s)!",PlayerName(playerid), playerid, ServerMaxFlightStreakWinner, ServerMaxFlightStreak, ServerMaxFlightStreakTime, ServerMaxFlightStreakDate);
		    SendClientMessageToAll(COLOR_VIP, msg);
			ServerMaxFlightStreak = SessionFlights[playerid];
			format(msg,sizeof(msg),"[Flight Streak] Congratulations! You are on a streak of %d and have won a ticket! (/tickets)", SessionFlights[playerid]);
			SendClientMessage(playerid, COLOR_VIP, msg);
			PInfo[playerid][Tickets]=PInfo[playerid][Tickets]+1;
			new date,month,year;
			getdate(date,month,year);
			new hour,minute,second;
			gettime(hour,minute,second);
			new string[128];
			format(string,sizeof(string),"%d/%d/%d",year,month,date);
			strmid(ServerMaxFlightStreakDate, string, 0, strlen(string), 128);
			format(string,sizeof(string),"%d:%d:%d",hour,minute,second);
			strmid(ServerMaxFlightStreakTime, string, 0, strlen(string), 128);
			format(string,sizeof(string),"%s", PlayerName(playerid));
			strmid(ServerMaxFlightStreakWinner, string, 0, strlen(string), 128);
			SaveStuff();
			TicketLog("Server", PlayerName(playerid), "Won Flight Streak");
		}
		new TotalDistance;
		TotalDistance = DistanceFlown1[playerid]+DistanceFlown2[playerid];
		TotalDistance = TotalDistance/1000;
		PInfo[playerid][FlownDistance] = PInfo[playerid][FlownDistance]+TotalDistance;
		DistanceFlown1[playerid] = 0;
		DistanceFlown2[playerid] = 0;
		//if(PInfo[playerid][Vip] == 1) { new RandomBonus = randomEx(500,2000); new msg[156]; format(msg,sizeof(msg),"{FFFFFF}You have earnt an extra bonus of {84538A}$%d {FFFFFF}as you are a VIP.", RandomBonus); SendClientMessage(playerid, COLOR_VIP, msg); PInfo[playerid][Money]=PInfo[playerid][Money]+RandomBonus; GivePlayerMoney(playerid, RandomBonus); }
		if(PInfo[playerid][sAutoWork] == 1) { StartMission(playerid); }
	}
	else
	{
	    SendClientMessage(playerid, COLOR_ERROR, "You are not in your starting vehicle! (Type /cancel to quit the mission)");
	    return 1;
	}
	return 1;
}
public GetEndLocation(playerid)
{
    //0 - None
	//1 - Andro
	//2 - AT400
	//3 - Shamal
	//4 - Dodo
	if(TypeFlight[playerid] == 1) //Andromada
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(ALocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],ALocations[rand][LocX],ALocations[rand][LocY],ALocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,ALocations[rand][LocX],ALocations[rand][LocY],ALocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, ALocations[rand][LocX],ALocations[rand][LocY],ALocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", ALocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the cargo goods.", ALocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_WHITE, szString);
			Pos12[playerid] = ALocations[rand][LocX]; Pos22[playerid] = ALocations[rand][LocY]; Pos32[playerid] = ALocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 2) //at-400
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(ALocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],ALocations[rand][LocX],ALocations[rand][LocY],ALocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,ALocations[rand][LocX],ALocations[rand][LocY],ALocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, ALocations[rand][LocX],ALocations[rand][LocY],ALocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", ALocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passengers.", ALocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_WHITE, szString);
			Pos12[playerid] = ALocations[rand][LocX]; Pos22[playerid] = ALocations[rand][LocY]; Pos32[playerid] = ALocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 3) //shamal
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(DSLocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],DSLocations[rand][LocX],DSLocations[rand][LocY],DSLocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,DSLocations[rand][LocX],DSLocations[rand][LocY],DSLocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
		 	SetPlayerRaceCheckpoint(playerid, 2, DSLocations[rand][LocX],DSLocations[rand][LocY],DSLocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", DSLocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passengers.", DSLocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_WHITE, szString);
			Pos12[playerid] = DSLocations[rand][LocX]; Pos22[playerid] = DSLocations[rand][LocY]; Pos32[playerid] = DSLocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 4) //dodo
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(DSLocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],DSLocations[rand][LocX],DSLocations[rand][LocY],DSLocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,DSLocations[rand][LocX],DSLocations[rand][LocY],DSLocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, DSLocations[rand][LocX],DSLocations[rand][LocY],DSLocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", DSLocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passenger.", DSLocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_WHITE, szString);
			Pos12[playerid] = DSLocations[rand][LocX]; Pos22[playerid] = DSLocations[rand][LocY]; Pos32[playerid] = DSLocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 5) //nevada - skydivers
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(NLocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],NLocations[rand][LocX],NLocations[rand][LocY],NLocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,NLocations[rand][LocX],NLocations[rand][LocY],NLocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 4, NLocations[rand][LocX], NLocations[rand][LocY], NLocations[rand][LocZ], 0,0,0, 10.0);
			//SetPlayerFlightCheckpoint(playerid, NLocations[rand][LocX],NLocations[rand][LocY],NLocations[rand][LocZ], 15.0);
			format(string2, sizeof(string2), "%s", NLocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the skydivers in mid-air.", NLocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_WHITE, szString);
			Pos12[playerid] = NLocations[rand][LocX]; Pos22[playerid] = NLocations[rand][LocY]; Pos32[playerid] = NLocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 6) //maverick
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HELILocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HELILocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passengers.", HELILocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_WHITE, szString);
			Pos12[playerid] = HELILocations[rand][LocX]; Pos22[playerid] = HELILocations[rand][LocY]; Pos32[playerid] = HELILocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 7) //news maverick
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HELILocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HELILocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passengers.", HELILocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = HELILocations[rand][LocX]; Pos22[playerid] = HELILocations[rand][LocY]; Pos32[playerid] = HELILocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 8) //police maverick
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(TruckLocation));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],TruckLocation[rand][LocX],TruckLocation[rand][LocY],TruckLocation[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,TruckLocation[rand][LocX],TruckLocation[rand][LocY],TruckLocation[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, TruckLocation[rand][LocX],TruckLocation[rand][LocY],TruckLocation[rand][LocZ], 0,0,0, 8.0);
			format(string2, sizeof(string2), "%s", TruckLocation[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}to unload goods.", TruckLocation[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = TruckLocation[rand][LocX]; Pos22[playerid] = TruckLocation[rand][LocY]; Pos32[playerid] = TruckLocation[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 9) //leviathan
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HELILocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HELILocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passenger.", HELILocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = HELILocations[rand][LocX]; Pos22[playerid] = HELILocations[rand][LocY]; Pos32[playerid] = HELILocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 10) //seasparrow
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HELILocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HELILocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passenger.", HELILocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = HELILocations[rand][LocX]; Pos22[playerid] = HELILocations[rand][LocY]; Pos32[playerid] = HELILocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 11) //sparrow
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HELILocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HELILocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passenger.", HELILocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = HELILocations[rand][LocX]; Pos22[playerid] = HELILocations[rand][LocY]; Pos32[playerid] = HELILocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 12) //Cargobob
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HELILocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HELILocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the cargo.", HELILocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = HELILocations[rand][LocX]; Pos22[playerid] = HELILocations[rand][LocY]; Pos32[playerid] = HELILocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 13) //raindance
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HELILocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HELILocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passenger.", HELILocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = HELILocations[rand][LocX]; Pos22[playerid] = HELILocations[rand][LocY]; Pos32[playerid] = HELILocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 14) //hunter
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HELILocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HELILocations[rand][LocX],HELILocations[rand][LocY],HELILocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HELILocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the ammunition.", HELILocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = HELILocations[rand][LocX]; Pos22[playerid] = HELILocations[rand][LocY]; Pos32[playerid] = HELILocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 15) //skimmer
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(BOATLocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],BOATLocations[rand][LocX],BOATLocations[rand][LocY],BOATLocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,BOATLocations[rand][LocX],BOATLocations[rand][LocY],BOATLocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerFlightCheckpoint(playerid, BOATLocations[rand][LocX],BOATLocations[rand][LocY],BOATLocations[rand][LocZ], 15.0);
			format(string2, sizeof(string2), "%s", BOATLocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop off the passenger.", BOATLocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = BOATLocations[rand][LocX]; Pos22[playerid] = BOATLocations[rand][LocY]; Pos32[playerid] = BOATLocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 16) //cropduster
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(CD2Locations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],CD2Locations[rand][LocX],CD2Locations[rand][LocY],CD2Locations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,CD2Locations[rand][LocX],CD2Locations[rand][LocY],CD2Locations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 4, CD2Locations[rand][LocX], CD2Locations[rand][LocY], CD2Locations[rand][LocZ], 0,0,0, 10.0);
			//SetPlayerFlightCheckpoint(playerid, CD2Locations[rand][LocX],CD2Locations[rand][LocY],CD2Locations[rand][LocZ], 15.0);
			format(string2, sizeof(string2), "%s", CD2Locations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and scatter the seeds onto the farmland.", CD2Locations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = CD2Locations[rand][LocX]; Pos22[playerid] = CD2Locations[rand][LocY]; Pos32[playerid] = CD2Locations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 17) //Beagle
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(CARGOLocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],CARGOLocations[rand][LocX],CARGOLocations[rand][LocY],CARGOLocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,CARGOLocations[rand][LocX],CARGOLocations[rand][LocY],CARGOLocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 1000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 4, CARGOLocations[rand][LocX], CARGOLocations[rand][LocY], CARGOLocations[rand][LocZ], 0,0,0, 10.0);
			//SetPlayerFlightCheckpoint(playerid, CD2Locations[rand][LocX],CD2Locations[rand][LocY],CD2Locations[rand][LocZ], 15.0);
			format(string2, sizeof(string2), "%s", CARGOLocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and drop the skydivers..", CARGOLocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = CARGOLocations[rand][LocX]; Pos22[playerid] = CARGOLocations[rand][LocY]; Pos32[playerid] = CARGOLocations[rand][LocZ];
			return 1;
		}
	}
	if(TypeFlight[playerid] == 18) //Hydra
	{
	    new Float:DistanceCheck;
		new rand = random(sizeof(HYDRALocations));
		DistanceCheck = GetDistanceBetweenPoints(Pos1[playerid],Pos2[playerid],Pos3[playerid],HYDRALocations[rand][LocX],HYDRALocations[rand][LocY],HYDRALocations[rand][LocZ]);
		WorkPay[playerid] = floatround(DistanceCheck, floatround_round);
		new Float:DistanceCheck2;
		new Float:P1, Float:P2, Float:P3;
		GetPlayerPos(playerid, P1, P2, P3);
		DistanceCheck2 = GetDistanceBetweenPoints(P1, P2, P3,HYDRALocations[rand][LocX],HYDRALocations[rand][LocY],HYDRALocations[rand][LocZ]);
		DistanceFlown2[playerid] = floatround(DistanceCheck2, floatround_round);
		if(WorkPay[playerid] < 3000)
		{
		    GetEndLocation(playerid);
		    return 1;
		}
		else
		{
  			new Float:X,Float:Y,Float:Z, szString[128];
   			GetPlayerPos(playerid, X, Y, Z);
			MissionStage[playerid] = 2;
			TogglePlayerControllable(playerid, 1); //unfreeze.
			new string2[65];
			SetPlayerRaceCheckpoint(playerid, 2, HYDRALocations[rand][LocX], HYDRALocations[rand][LocY], HYDRALocations[rand][LocZ], 0,0,0, 10.0);
			format(string2, sizeof(string2), "%s", HYDRALocations[rand][LocationName]); //PASSWORD
			strmid(FinalAPName[playerid], string2, 0, strlen(string2), 128); //PASSWORD
			format(szString, 128, "{FFFFFF}Head to {FF4500}%s {FFFFFF}and deliver the warheads.", HYDRALocations[rand][LocationName]);
			SendClientMessage(playerid, COLOR_DARKBLUE, szString);
			Pos12[playerid] = HYDRALocations[rand][LocX]; Pos22[playerid] = HYDRALocations[rand][LocY]; Pos32[playerid] = HYDRALocations[rand][LocZ];
			return 1;
		}
	}
	return 1;
}
public ShowAirlines(playerid)
{
	new showit3[800];
	//new a1[128], a2[128], a3[128], a4[128], a5[128];
	format(showit3, sizeof(showit3), "%s (Owner: %s)\n%s (Owner: %s)\n%s (Owner: %s)\n%s (Owner: %s)\n%s (Owner: %s)", AInfo[1][aName],AInfo[1][aOwner],AInfo[2][aName],AInfo[2][aOwner],AInfo[3][aName],AInfo[3][aOwner],AInfo[4][aName],AInfo[4][aOwner],AInfo[5][aName],AInfo[5][aOwner]);
	ShowPlayerDialog(playerid, aselect, DIALOG_STYLE_LIST, "Select an airline", showit3, "Select", "Cancel");
}
public ShowHouses(playerid)
{
	new string[200];
	if(PInfo[playerid][House1] == 0 && PInfo[playerid][House2] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not own any houses!"); return 1; }
	new h1[128], h2[128], title[64];
	if(PInfo[playerid][House1] > 0) { format(h1,sizeof(h1),"[ID:%d] %s (%d slots)", HInfo[PInfo[playerid][House1]][hHouseID],HInfo[PInfo[playerid][House1]][hLocation],HInfo[PInfo[playerid][House1]][hSlots]); } else { format(h1,sizeof(h1),"None"); }
	if(PInfo[playerid][House2] > 0) { format(h2,sizeof(h2),"[ID:%d] %s (%d slots)", HInfo[PInfo[playerid][House2]][hHouseID],HInfo[PInfo[playerid][House2]][hLocation],HInfo[PInfo[playerid][House2]][hSlots]); } else { format(h2,sizeof(h2),"None"); }
	format(string,sizeof(string),"%s\n%s", h1, h2);
	format(title,sizeof(title),"My Houses");
	ShowPlayerDialog(playerid, myhouses, DIALOG_STYLE_LIST, title, string, "Select", "Cancel");
	return 1;
}
public OnGameModeInit()
{
    AddPlayerClass(0,1358.1422,-2286.0671,13.5469,270.0754,0,0,0,0,0,0); // class
	InitMapSystem();
    EnableStuntBonusForAll(0);
    DisableInteriorEnterExits();
    SetTimer("UpdateTextdraw", 1000, true);
    SetTimer("AntiCheat", 1000, true);
	SetTimer("timer_update",14400,true);
	gettime(ghour, gminute, gsecond);
	FixHour(ghour);
	ghour = shifthour;
	//------ Textdraws
 	//------ clock
	Clockzz = TextDrawCreate(595.000000, 30.000000, "00:00");
	TextDrawFont(Clockzz, 3);
	TextDrawLetterSize(Clockzz, 0.462500, 1.649999);
	TextDrawTextSize(Clockzz, 393.500000, 77.000000);
	TextDrawSetOutline(Clockzz, 1);
	TextDrawSetShadow(Clockzz, 0);
	TextDrawAlignment(Clockzz, 2);
	TextDrawColor(Clockzz, -1);
	TextDrawBackgroundColor(Clockzz, 255);
	TextDrawBoxColor(Clockzz, 0);
	TextDrawUseBox(Clockzz, 1);
	TextDrawSetProportional(Clockzz, 1);
	TextDrawSetSelectable(Clockzz, 0);
		//------ Advertisement
	AdTextdraw = TextDrawCreate(1.000000, 433.000000, "[Ad] Make an advertisement via /advertisement!");
	TextDrawBackgroundColor(AdTextdraw, 0x000000ff);
	TextDrawFont(AdTextdraw, 1);
	TextDrawLetterSize(AdTextdraw, 0.300000, 1.500000);
	TextDrawColor(AdTextdraw, -1);
	TextDrawSetOutline(AdTextdraw, 0);
	TextDrawSetProportional(AdTextdraw, 1);
	TextDrawSetShadow(AdTextdraw, 1);
	TextDrawUseBox(AdTextdraw, 1);
	TextDrawBoxColor(AdTextdraw, 0x00000033);
	TextDrawTextSize(AdTextdraw, 653.000000, 0.000000);
	//-----End of textdraws
 	SetTimer("UpdateClock", 1000, true); //ANTI-CHEAT IN THIS.
 	SetTimer("ChangeWeather", 720000, true);
 	SetTimer("RandomMsg", 600000, true);
    ConnectMySQL();
	new mapname[75];
	format(mapname,sizeof(mapname),"mapname %s",revision);
    SendRconCommand(mapname);
	SetGameModeText("Aviation Life");
	new SendCommand[156]; // I don't want to count the letters, do it yourself
	format(SendCommand, sizeof(SendCommand), "hostname %s", HOSTNAME); // Format the command into a string.
	SendRconCommand(SendCommand); // Execute the command through Rcon.
	LoadAirline(1);
	LoadAirline(2);
	LoadAirline(3);
	LoadAirline(4);
	LoadAirline(5);
	new tmphour;
	new tmpminute;
	new tmpsecond;
	gettime(tmphour, tmpminute, tmpsecond);
	FixHour(tmphour);
	tmphour = shifthour;
	SetWorldTime(tmphour);
	randomtimer = SetTimer("RandomTimer", 1000, 1);
	onlinetimer = SetTimer("OnlineTimer", 60000, 1); //DYNAMIC SIG TIMER IS IN THIS!!
	LoadObjects();
	AddAirlineVehiclesSTART();
	AddHousesFromSQL();
	AddVehiclesFromSQL();
	AddPlayerVehicles();
	AddMapIcons();
    LoadStuff(); // Load the data, MOTD, etc.
    LoadTextdraws();
   	for(new i=0;i<MAX_VEHICLES;i++) {
	    vfuel[i] = 100; //set fuel to 100 percent
	}
	SetTimer("UpdateIRC", 5000, true);
	return 1;
}
public RandomTimer()
{
    for(new i; i<MAX_PLAYERS; i++)
	{
		if(GetPlayerMoney(i) != PInfo[i][Money]) //Money/Cash anti-cheat
		{
			ResetPlayerMoney(i);
			GivePlayerMoney(i,PInfo[i][Money]);
		}
	}
}
stock Float:GetVehicleSpeed(vehicleid,UseKMPH = 0)
{
	new Float:speed_x,Float:speed_y,Float:speed_z,Float:temp_speed;
	GetVehicleVelocity(vehicleid,speed_x,speed_y,speed_z);
	if(UseKMPH == 0)
	{
	    temp_speed = floatsqroot(((speed_x*speed_x)+(speed_y*speed_y))+(speed_z*speed_z))*136.666667;
	} else {
	    temp_speed = floatsqroot(((speed_x*speed_x)+(speed_y*speed_y))+(speed_z*speed_z))*85.4166672;
	}
	floatround(temp_speed,floatround_round);return temp_speed;
}
public UpdateClock() //ANTI CHEAT AND CLOCK UPDATE.
{
	//----------- CLOCK UPDATER ---------------
 	new fix[20];
 	if(gMinutes == 60)
 	{
 	    new theHour = gHour+1;
       	SetWorldTime(theHour);
 	}
	if(gHour == 23 && gMinutes == 60)
	{
		gHour = 0;
		gMinutes = 0;
		new PCount = 0;
		new string[256];
		for(new i = 0; i <MAX_PLAYERS; i++)
		{
			if(IsPlayerConnected(i))
			{
			    PCount=PCount+1;
				if(SessionEarnt[i] > POTD_MaximumEarnt)
				{
				   	POTD_MaximumEarnt = SessionEarnt[i];
				    POTD_Winner = i;
				    POTD_FinalAmount = SessionEarnt[i];
				    POTD_FinalAmount2 = SessionEarnt[i];
				    format(string,sizeof(string),"%s", PlayerName(i));
				    strmid(POTD_WinnerName, string, 0, strlen(string), 128);
				}
				format(string,sizeof(string),"[POTD] You have earnt a total of {FF4500}$%d {FFFFFF}today. (Excluding airline bonus)", SessionEarnt[i]);
				SendClientMessage(i, COLOR_WHITE, string);
				SessionEarnt[i] = 0;
			}
		}
		if(PCount > 1)
		{
			new POTDBonus = PCount*975; //50 players - $48750 bonus!
			new susername[MAX_PLAYER_NAME];
			new date,month,year;
			getdate(date,month,year);
			new hour,minute,second;
			gettime(hour,minute,second);
			format(susername,sizeof(susername),"%s", PlayerName(POTD_Winner));
			mysql_real_escape_string(susername, susername);
			new query[600];
			format(query,sizeof(query),"INSERT INTO `potd` (Username, AmountEarnt, AmountWon, Time, Date) VALUES ('%s', '%d', '%d', '%d:%d:%d', '%d/%d/%d')", susername, POTD_FinalAmount, POTDBonus, hour,minute,second,year,month,date);
			mysql_query(query);
			PInfo[POTD_Winner][Money]=PInfo[POTD_Winner][Money]+POTDBonus;
			GivePlayerMoney(POTD_Winner, POTDBonus);
			format(string,sizeof(string),"[POTD] {FF4500}%s(%d) {FFFFFF}has become the pilot of the day for earning {FF4500}$%d {FFFFFF}and has won {FF4500}$%d{FFFFFF}!", PlayerName(POTD_Winner), POTD_Winner, POTD_FinalAmount, POTDBonus);
			SendClientMessageToAll(COLOR_WHITE, string);
			POTD_MaximumEarnt = 0;
			POTD_FinalAmount = 0;
			PayLog(susername, POTDBonus, "Won POTD", "Server", "N/A");
		}
		new ACount = 0; //Participating Airline amounts. (must be atleast 2.)
		for(new aid = 0; aid <MAX_AIRLINES; aid++)
		{
		    if(AOTD_Earnt[aid] > 0)
		    {
		        ACount=ACount+1;
				if(AOTD_Earnt[aid] > AOTD_MaximumEarnt)
				{
				    AOTD_MaximumEarnt = AOTD_Earnt[aid];
				    AOTD_Winner = aid;
				    AOTD_FinalAmount = AOTD_Earnt[aid];
				    AOTD_FinalAmount2 = AOTD_Earnt[aid];
				    format(string,sizeof(string),"%s", AInfo[aid][aName]);
				    strmid(AOTD_WinnerName, string, 0, strlen(string), 128);
				}
				format(string,sizeof(string),"* [AOTD] Your airline has earnt a total of $%d today!", AOTD_Earnt[aid]);
				SendAirlineMessage(COLOR_AIRLINECHAT, string, aid);
				AOTD_Earnt[aid] = 0;
		    }
		}
		if(ACount > 1)
		{
			new AOTDBonus = PCount*1100;
			new aname[128];
			new date,month,year;
			getdate(date,month,year);
			new hour,minute,second;
			gettime(hour,minute,second);
			format(aname,sizeof(aname),"%s", AInfo[AOTD_Winner][aName]);
			mysql_real_escape_string(aname,aname);
			new query[600];
			format(query,sizeof(query),"INSERT INTO `aotd` (Airline, AmountEarnt, AmountWon, Time, Date) VALUES ('%s', '%d', '%d', '%d:%d:%d', '%d/%d/%d')", aname, AOTD_FinalAmount, AOTDBonus, hour,minute,second,year,month,date);
			mysql_query(query);
			format(string,sizeof(string),"[AOTD] {FF4500}%s {FFFFFF}has won airline of the day for earning {FF4500}$%d {FFFFFF}and has won {FF4500}$%d{FFFFFF}!", AInfo[AOTD_Winner][aName], AOTD_FinalAmount, AOTDBonus);
			SendClientMessageToAll(COLOR_GREEN, string);
			AInfo[AOTD_Winner][aBalance] = AInfo[AOTD_Winner][aBalance]+AOTDBonus;
			SaveAirline(AOTD_Winner);
			format(string,sizeof(string),"* A total of $%d has been added to the airlines bank.", AOTDBonus);
			SendAirlineMessage(COLOR_AIRLINECHAT, string, AOTD_Winner);
			AOTD_MaximumEarnt = 0;
			AOTD_FinalAmount = 0;
		}
		else
		{
		    format(string,sizeof(string),"[AOTD] No airline has won Airline of the Day due to a lack of competition.");
		    SendClientMessageToAll(COLOR_GREEN, string);
		    format(AOTD_WinnerName,sizeof(AOTD_WinnerName), "None");
		    AOTD_FinalAmount = 0;
		    AOTD_MaximumEarnt = 0;
		}
		for(new i = 0; i < MAX_VEHICLES; i++) //Respawn all vehicles.
  		{
 	   		if(!IsVehicleOccupied(i))
		   	{
      			SetVehicleToRespawn(i);
	   		}
  		}
	}
	if(gMinutes == 60) { gHour++; gMinutes = 0; }
	if(gHour < 10 && gMinutes > 9) { format(fix, sizeof(fix), "0%d:%d", gHour, gMinutes); }
	if(gHour < 10 && gMinutes < 10) { format(fix, sizeof(fix), "0%d:0%d", gHour, gMinutes); }
	if(gMinutes < 10 && gHour > 9) { format(fix,sizeof(fix), "%d:0%d", gHour, gMinutes); }
	if(gMinutes < 10 && gHour < 10) { format(fix, sizeof(fix), "0%d:0%d", gHour, gMinutes); }
	if(gMinutes > 9 && gHour > 9) { format(fix,sizeof(fix), "%d:%d", gHour, gMinutes); }
	gMinutes++;
	TextDrawSetString(Clockzz, fix);
	//------------- CLOCK UPDATER --------------
	//------------- ANTICHEAT ------------------
	//------------- ANTICHEAT ------------------
}
public UpdateIRC()
{
	new query[400];
	format(query,sizeof(query),"SELECT Sender, Message, ID FROM ucpchat2");
	mysql_query(query);
	mysql_store_result();
	new tRows = mysql_num_rows();
	if(tRows > 0)
	{
		while(mysql_fetch_row(query))
		{
		    new sSender[24], sMessage[156], sID;
			sscanf(query, "p<|>s[24]s[156]d", sSender, sMessage, sID);
			format(query,sizeof(query),"([UCP] %s: %s)", sSender, sMessage);
			SendClientMessageToAll(COLOR_IRC, query);
			format(query,sizeof(query),"DELETE FROM ucpchat2 WHERE ID = '%d'", sID);
			mysql_query(query);
		}
	}
	mysql_free_result();
}
public AntiCheat()
{
	for(new playerid; playerid<MAX_PLAYERS; playerid++)
	{
		if(IsPlayerConnected(playerid))
	 	{
	  		if(PlayerLogged[playerid] == 1 && PlayerSpawned[playerid] == 1 && PInfo[playerid][AdminLevel] == 0)
	    	{
	    	    new wep = GetPlayerWeapon(playerid);
	     		if(wep==1||wep==2||wep==3||wep==4||wep==5||wep==6||wep==7||wep==8||wep==9||wep==10||wep==11||wep==12||wep==13||wep==14||wep==15||wep==16||wep==17||wep==18||wep==22||wep==23||wep==24||wep==25||wep==26||wep==27||wep==28||wep==29||wep==30||wep==31||wep==32||wep==33||wep==34||wep==35||wep==36||wep==37||wep==38||wep==39||wep==40||wep==41||wep==42||wep==43||wep==44||wep==45)
	       		{
	         		BanUser(playerid, "Weapon hacks", "Chappie");
	           	}
	            new Float:Armour;
				GetPlayerArmour(playerid, Armour);
	   			if(Armour > 0)
	      		{
	        		BanUser(playerid, "Armour hacks", "Chappie");
	          	}
				if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK)
				{
					BanUser(playerid, "Jetpack hacks", "Chappie");
				}
				if(IsPlayerInAnyVehicle(playerid))
				{
				    new vehicleid = GetPlayerVehicleID(playerid);
				    if(vfuel[vehicleid] > 0)
				    {
					    new speed = floatround(GetVehicleSpeed(vehicleid, 0), floatround_round);
					    if(speed > 239 && PInfo[playerid][TotalScore] < 10) //240 mph && under 10 score
					    {
					        BanUser(playerid, "Speed hack", "Chappie");
					    }
					    else if(speed > 210) //210 mph
						{
						    new string[156];
						    format(string,sizeof(string),"[SPEED WARNING] %s(%d) is going %d KMPH! /spec them!", PlayerName(playerid), playerid, speed);
						    SendAdminMessage(COLOR_ERROR, string);
						}
					}
				}
	   		}
	   	}
	}
}
public ShowAds()
{
	AdvertisementStatus = 1;
	TextDrawShowForAll(AdTextdraw);
}
public HideAds()
{
	AdvertisementStatus = 0;
	TextDrawHideForAll(AdTextdraw);
}
public UpdateTextdraw()
{
	for(new i; i<MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
		    if(PreviewingSkin[i] == 1) { if(PreviewingSkinTime[i] == 0) { SetPlayerSkin(i, PreviewingSkinOld[i]); PreviewingSkin[i] = 0; } else { PreviewingSkinTime[i]=PreviewingSkinTime[i]-1; } }
		    if(WantsRecording[i] == 1)
		    {
		        if(TimeTakenHrs[i] == 4 && TimeTakenMins[i] == 59) { PlayerPlaySound(i, 29631, 0, 0, 0); } //Hey, how's the flying coming along?
		        if(TimeTakenMins[i] == 59) { TimeTakenMins[i] = 0; TimeTakenHrs[i] += 1; }
		        else
		        {
		        	TimeTakenMins[i] += 1;
		        }
		    }
		    if(IsPlayerInAnyVehicle(i) && GetPlayerVehicleSeat(i) == 0)
			{
						new vid = GetPlayerVehicleID(i);
				    	new szString[128];
	        			format(szString, 40, "%d", vfuel[vid]);
		        		TextDrawSetString(fuelcount[i], szString);
		        		TextDrawShowForPlayer(i, fuelcount[i]);
		        		TextDrawShowForPlayer(i, fuel[i]);
		        		TextDrawShowForPlayer(i, fuelbox[i]);
		        		if(vfuel[vid] < 21) //20 or under fuel
		        		{
		        		    if(vfuel[vid] == 20 && FuelWarned[i] == 0) { FuelWarned[i] = 1; SendClientMessage(i, COLOR_ERROR, "The vehicles fuel is running low ! Please refuel immediately! (/refuel)"); }
		        		    PlayerPlaySound(i, 1057, 0,0,0);
		        		}
						new Float:vhealth;
						new Float: vX, Float:vY, Float:vZ;
						format(szString, 128, "%s", GetPlayerArea(i));
						TextDrawSetString(gpsloc[i], szString);
						TextDrawShowForPlayer(i, gpsloc[i]);
						TextDrawShowForPlayer(i, gpshead[i]);
						TextDrawShowForPlayer(i, gpsbox[i]);
						GetVehicleHealth(vid, vhealth);
						vhealth = vhealth/10;
	        			format(szString, 40, "%d", floatround(vhealth, floatround_round));
		        		TextDrawSetString(vhealthcount1[i], szString);
		        		//TextDrawShowForPlayer(i, fuel[i]);
		        		TextDrawShowForPlayer(i, vhealthcount1[i]);
		        		TextDrawShowForPlayer(i, vhealthcount[i]);
		        		GetPlayerPos(i, vX, vY, vZ);
	        			format(szString, 40, "%d", floatround(vZ, floatround_ceil));
		        		TextDrawSetString(altcount[i], szString);
		        		TextDrawShowForPlayer(i, altcount[i]);
		        		TextDrawShowForPlayer(i, speedhead[i]);
	  					format(szString, 40, "%d KM/H", floatround(GetVehicleSpeed(vid, 0), floatround_round));
		        		TextDrawSetString(speedcount[i], szString);
		        		TextDrawShowForPlayer(i, speedcount[i]);
		        		TextDrawShowForPlayer(i, altitude[i]);
		        		TextDrawShowForPlayer(i, speedbox[i]);
		        		if(StartedMission[i] == 1)
		        		{
		        		    if(MissionStage[i] == 1)
		        		    {
			        		    new Float:DistanceCheck;
			        		    DistanceCheck = GetDistanceBetweenPoints(vX, vY, vZ,Pos1[i],Pos2[i],Pos3[i]);
		  						format(szString, 40, "%s (%dm)", FirstAPName[i],floatround(DistanceCheck, floatround_round));
			        			TextDrawSetString(destloc[i], szString);
			        			TextDrawShowForPlayer(i, destloc[i]);
			        			TextDrawShowForPlayer(i, desthead[i]);
			        			TextDrawShowForPlayer(i, destbox[i]);
							}
							else if(MissionStage[i] == 2)
							{
 		    					new Float:DistanceCheck;
			        		    DistanceCheck = GetDistanceBetweenPoints(vX, vY, vZ,Pos12[i],Pos22[i],Pos32[i]);
		  						format(szString, 40, "%s (%dm)", FinalAPName[i],floatround(DistanceCheck, floatround_round));
			        			TextDrawSetString(destloc[i], szString);
			        			TextDrawShowForPlayer(i, destloc[i]);
			        			TextDrawShowForPlayer(i, desthead[i]);
			        			TextDrawShowForPlayer(i, destbox[i]);
							}
		        		}
					}
  		}
	}
}
public OnlineTimer()
{
	new x = 0;
    for(new i; i<MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i)) //Money/Cash anti-cheat
		{
		    if(PInfo[i][MinsPlayed] == 59) { PInfo[i][MinsPlayed] = 0; PInfo[i][HoursPlayed]=PInfo[i][HoursPlayed]+1; } else { PInfo[i][MinsPlayed]=PInfo[i][MinsPlayed]+1; }
		    x=x+1;
		}
	}
	PlayersOnline = x;
	new query[400];
	format(query,sizeof(query),"UPDATE serverinfo SET hostname='%s',maxplayers='%d',players='%d'", HOSTNAME, MaxPlayers, PlayersOnline);
	mysql_reconnect();
	mysql_query(query);
}

public SyncTime()
{
	//new string[64];
	new tmphour;
	new tmpminute;
	new tmpsecond;
	gettime(tmphour, tmpminute, tmpsecond);
	FixHour(tmphour);
	tmphour = shifthour;
	if((tmphour > ghour) || (tmphour == 0 && ghour == 23))
	{
		//Changing weather randomly
 		new GlobalWeather = random(17);
   		SetWeather(GlobalWeather);
   		//Changing weather randomly finish
		//format(string, sizeof(string), "SERVER: The time is now %d:00 hours",tmphour);
		//SendClientMessageToAll(COLOR_WHITE,string);
		ghour = tmphour;
		if(realtime)
		{
			SetWorldTime(tmphour);
		}
	}
}
public FixHour(hour)
{
	hour = timeshift+hour;
	if(hour < 0)
	{
		hour = hour+24;
	}
	else if(hour > 23)
	{
		hour = hour-24;
	}
	shifthour = hour;
	return 1;
}
public CheckIPS(playerid)
{
	new PIP2[40]; // Main IP.
	GetPlayerIp(playerid, PIP2, sizeof(PIP2));
	new Count = 0;
	new PIP[40];
    for(new i; i<MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			GetPlayerIp(i, PIP, sizeof(PIP));
			if(!strcmp(PIP, PIP2))
			{
				Count=Count+1;
			}
		}
	}
	if(Count > 5) // 6 connections!
	{
	    new msg[156];
	    format(msg,sizeof(msg),"There are too many connections from your IP: %s!", PIP2);
	    SendClientMessage(playerid, COLOR_ERROR, msg);
	    Kick(playerid);
	    return 1;
	}
	return 1;
}
public CheckBanned(playerid)
{
	new IP2[20];
	GetPlayerIp(playerid, IP2, sizeof(IP2));
	mysql_reconnect();
	new Query[156], EscName[MAX_PLAYER_NAME];
	mysql_real_escape_string(PlayerName(playerid), EscName);
	format(Query, sizeof(Query), "SELECT * FROM `bans` WHERE `IP` = '%s' OR `Username` = '%s'", IP2, EscName);
	mysql_query(Query);
	mysql_store_result();
	if(mysql_num_rows() > 0)
	{
		new line[500];
		if(mysql_fetch_row(line)) //Fetches the line
		{
		    new string[128];
			new data[6][128]; //The data strings
			new data2[2];
			sscanf(line, "p<|>s[128]s[128]s[128]s[128]s[128]dds[128]", data[0], data[1], data[2], data[3], data[4], data2[0], data2[1], data[5]); //Splits the line with sscanf
			format(string,sizeof(string),"[Username]: {FFFFFF}%s", data[0]);
			SendClientMessage(playerid, COLOR_RED, string);
			format(string, sizeof(string), "[IP Address]: {FFFFFF}%s", data[3]);
			SendClientMessage(playerid, COLOR_ORANGE, string);
			format(string,sizeof(string), "[Ban Reason]: {FFFFFF}%s", data[1]);
			SendClientMessage(playerid, COLOR_YELLOW, string);
			format(string,sizeof(string), "[Ban Date]: {FFFFFF}%s / %s", data[4], data[5]);
			SendClientMessage(playerid, COLOR_GREEN, string);
			format(string,sizeof(string), "[Banned By]: {FFFFFF}%s", data[2]);
			SendClientMessage(playerid, COLOR_WHITE, string);
			new string2[256];
			format(string2,sizeof(string2), "-- To appeal this ban, please visit {FFFFFF}http://theaviaitonlife.com{FF4500} and post an unban appeal, including a screenshot of the above details. --");
			SendClientMessage(playerid, COLOR_WHITE, string2);
			mysql_free_result();
			Kick(playerid);
		}
		mysql_free_result();
		Kick(playerid);
		return 1;
	}
	else
	{
	    mysql_free_result();
	}
	return 1;
}
public SaveVehicle(vehicleid)
{
	new query[400];
	format(query,sizeof(query),"UPDATE pvehicles SET VehicleModel='%d',OwnedBy='%s',VehicleX='%f',VehicleY='%f',VehicleZ='%f',VehicleA='%f',VehicleColor1='%d',VehicleColor2='%d',VehicleForSale='%d',VehicleDefaultPrice='%d',VehiclePrice='%d',VehicleLocked='%d' WHERE VehicleID = '%d'",
	PVInfo[vehicleid][vpModel],
	PVInfo[vehicleid][vpOwnedBy],
	PVInfo[vehicleid][vpPosX],
	PVInfo[vehicleid][vpPosY],
	PVInfo[vehicleid][vpPosZ],
	PVInfo[vehicleid][vpPosA],
	PVInfo[vehicleid][vpColor1],
	PVInfo[vehicleid][vpColor2],
	PVInfo[vehicleid][vpForSale],
	PVInfo[vehicleid][vpDefaultPrice],
	PVInfo[vehicleid][vpPrice],
	PVInfo[vehicleid][vpLocked],
	vehicleid);
	mysql_reconnect();
	mysql_query(query);
	printf("Vehicle ID %d saved to mysql.", vehicleid);
}
public ReloadVehicle(vehicleid)
{
	new carid = vehicleid;
	new Str[250], vTotal, vehID, vehModel, Float:vehX, Float:vehY, Float:vehZ, Float:vehA, vehC1, vehC2, vehOwnedBy[24], ForSale, DefaultPrice, Price, Locked;
	mysql_reconnect();
	new carmod[17];
	new query[512];
	format(query,sizeof(query),"SELECT * FROM `pvehicles` WHERE `VehicleID` = '%d' LIMIT 1", vehicleid);
	mysql_query(query);
	mysql_store_result();
	vTotal = mysql_num_rows();
	if(vTotal > 0)
	{
	    mysql_fetch_row(Str);
 		DestroyVehicle(PVInfo[carid][vpVehicleSpawned]);
   		Delete3DTextLabel(PVInfo[carid][vpVehicleText]);
		sscanf(Str, "p<|>dds[24]ffffddddddddddddddddddddddd",
		vehID,vehModel,vehOwnedBy,vehX,vehY,vehZ,vehA,vehC1,vehC2,ForSale,DefaultPrice,Price,Locked,carmod[0],carmod[1],carmod[2],carmod[3],carmod[4],carmod[5],carmod[6],carmod[7],carmod[8],carmod[9],carmod[10],carmod[11],carmod[12],carmod[13],carmod[14],carmod[15],carmod[16]);
		carid=vehID;
  		new carid2 = CreateVehicle(vehModel, vehX, vehY, vehZ, vehA, vehC1, vehC2, (30 * 60));
		PVInfo[carid][vpID] = vehID;
		PVInfo[carid][vpPosX] = vehX;
		PVInfo[carid][vpPosY] = vehY;
		PVInfo[carid][vpPosZ] = vehZ;
		PVInfo[carid][vpPosA] = vehA;
		PVInfo[carid][vpColor1] = vehC1;
		PVInfo[carid][vpColor2] = vehC2;
		PVInfo[carid][vpModel] = vehModel;
		PVInfo[carid][vpForSale] = ForSale;
		PVInfo[carid][vpDefaultPrice] = DefaultPrice;
		PVInfo[carid][vpPrice] = Price;
		PVInfo[carid][vpLocked] = Locked;
		PVInfo[carid2][mod1] = carmod[0];
		PVInfo[carid2][mod2] = carmod[1];
		PVInfo[carid2][mod3] = carmod[2];
		PVInfo[carid2][mod4] = carmod[3];
		PVInfo[carid2][mod5] = carmod[4];
		PVInfo[carid2][mod6] = carmod[5];
		PVInfo[carid2][mod7] = carmod[6];
		PVInfo[carid2][mod8] = carmod[7];
		PVInfo[carid2][mod9] = carmod[8];
		PVInfo[carid2][mod10] = carmod[9];
		PVInfo[carid2][mod11] = carmod[10];
		PVInfo[carid2][mod12] = carmod[11];
		PVInfo[carid2][mod13] = carmod[12];
		PVInfo[carid2][mod14] = carmod[13];
		PVInfo[carid2][mod15] = carmod[14];
		PVInfo[carid2][mod16] = carmod[15];
		PVInfo[carid2][mod17] = carmod[16];
        if(ForSale == 1)
        {
			format(Str, sizeof(Str), "%s for sale!\nPrice: $%d (Seller: %s)\n/marketplace to purchase!", GetVehicleFriendlyName(carid2),Price, vehOwnedBy);
			PVInfo[carid][vpVehicleText] = Create3DTextLabel(Str, 0xFF8400FF, vehX, vehY, vehZ, 50.0, 0, 1);
   		}
     	else
      	{
       		format(Str, sizeof(Str), "%s\nOwner: %s", GetVehicleFriendlyName(carid2),vehOwnedBy);
         	PVInfo[carid][vpVehicleText] = Create3DTextLabel(Str, 0xFF8400FF, vehX, vehY, vehZ, 50.0, 0, 1);
       	}
        Attach3DTextLabelToVehicle(PVInfo[carid][vpVehicleText], carid2, 0.0, 0.0, 0.0);
        new string[64];
		format(string,sizeof(string),"%s",vehOwnedBy);
		strmid(PVInfo[carid][vpOwnedBy], string, 0, strlen(string), 128);
		PVInfo[carid][vpVehicleSpawned] = carid2;
		new engine,lights,alarm,doors,bonnet,boot,objective;
		GetVehicleParamsEx(carid2,engine,lights,alarm,doors,bonnet,boot,objective);
		if(Locked == 1) { SetVehicleParamsEx(carid2,engine,lights,alarm,1,bonnet,boot,objective); }
		else if(Locked == 0) { SetVehicleParamsEx(carid2,engine,lights,alarm,0,bonnet,boot,objective); }
	}
	mysql_free_result();
}
public ReloadHouse(houseid)
{
	new Str[400], string[256];
	mysql_reconnect();
	format(string,sizeof(string),"SELECT * FROM `houses` WHERE `HouseID` = %d LIMIT 1", houseid);
	mysql_reconnect();
	mysql_query(string);
	mysql_store_result();
	new hTotal = mysql_num_rows(); //hTotal amount of houses in mysql database
	if(hTotal > 0) //1+ house.
	{
	    mysql_fetch_row(Str);
	    new HID,Float:eX,Float:eY,Float:eZ,Float:iX,Float:iY,Float:iZ,OwnedBy[24],Location[128],Price,Interior,Slots,ForSale,Locked,DefaultPrice;
     	sscanf(Str, "p<|>ds[24]s[128]dddffffffddd", HID,OwnedBy,Location,DefaultPrice,Price,Interior,iX,iY,iZ,eX,eY,eZ,Slots,ForSale,Locked);
		if(!strcmp(OwnedBy, "None"))
		{
		    DestroyDynamicMapIcon(HInfo[HID][hMapIcon]);
  			DestroyPickup(HInfo[HID][hPickupID]);
		    Delete3DTextLabel(HInfo[HID][hHouseText]);
		    HInfo[HID][hMapIcon] = CreateDynamicMapIcon(eX, eY, eZ, 31, 0, 0, 0, 0, 100.0);
  			HInfo[HID][hPickupID] = CreatePickup(1273, 23, eX, eY, eZ, 0);
			format(string,sizeof(string),"House for sale!\n$%d (%d slots)\n/buyhouse to purchase.", DefaultPrice, Slots);
			HInfo[HID][hHouseText] = Create3DTextLabel(string, 0x50AAC5FF, eX, eY, eZ, 50.0, 0, 1);
		}
		else if(ForSale == 1)
		{
		    DestroyDynamicMapIcon(HInfo[HID][hMapIcon]);
  			DestroyPickup(HInfo[HID][hPickupID]);
		    Delete3DTextLabel(HInfo[HID][hHouseText]);
		    HInfo[HID][hMapIcon] = CreateDynamicMapIcon(eX, eY, eZ, 31, 0, 0, 0, 0, 100.0);
			HInfo[HID][hPickupID] = CreatePickup(1273, 23, eX, eY, eZ, 0);
			format(string,sizeof(string),"Owned by: %s\nFor sale: $%d (%d slots)\n/buyhouse to purchase.", OwnedBy, Price, Slots);
			HInfo[HID][hHouseText] = Create3DTextLabel(string, 0x50AAC5FF, eX, eY, eZ, 50.0, 0, 1);
		}
		else
		{
		    DestroyDynamicMapIcon(HInfo[HID][hMapIcon]);
		    DestroyPickup(HInfo[HID][hPickupID]);
		    Delete3DTextLabel(HInfo[HID][hHouseText]);
		    HInfo[HID][hMapIcon] = CreateDynamicMapIcon(eX, eY, eZ, 32, 0, 0, 0, 0, 100.0);
			HInfo[HID][hPickupID] = CreatePickup(1272, 23, eX, eY, eZ, 0);
			format(string,sizeof(string),"Owned by: %s\nSlots: %d", OwnedBy, Slots);
			HInfo[HID][hHouseText] = Create3DTextLabel(string, 0x50AAC5FF, eX, eY, eZ, 50.0, 0, 1);
		}
		format(string,sizeof(string),"%s",OwnedBy);
		strmid(HInfo[HID][hOwnedBy], string, 0, strlen(string), 128);
		format(string,sizeof(string),"%s",Location);
		strmid(HInfo[HID][hLocation], string, 0, strlen(string), 128); //PASSWORD
		HInfo[HID][hPrice] = Price;
		HInfo[HID][hInterior] = Interior;
		HInfo[HID][hiX] = iX;
		HInfo[HID][hiY] = iY;
		HInfo[HID][hiZ] = iZ;
		HInfo[HID][heX] = eX;
		HInfo[HID][heY] = eY;
		HInfo[HID][heZ] = eZ;
		HInfo[HID][hSlots] = Slots;
		HInfo[HID][hForSale] = ForSale;
		HInfo[HID][hLocked] = Locked;
		HInfo[HID][hDefaultPrice] = DefaultPrice;
		HInfo[HID][hHouseID] = HID;
	}
	mysql_free_result();
}
public SaveHouse(houseid)
{
	new query[400];
	format(query,sizeof(query),"UPDATE houses SET OwnedBy='%s',Location='%s',Price='%d',Interior='%d',iX='%f',iY='%f',iZ='%f',eX='%f',eY='%f',eZ='%f',Slots='%d',ForSale='%d',Locked='%d',DefaultPrice='%d' WHERE HouseID = '%d'",
	HInfo[houseid][hOwnedBy],
	HInfo[houseid][hLocation],
	HInfo[houseid][hPrice],
	HInfo[houseid][hInterior],
	HInfo[houseid][hiX],
	HInfo[houseid][hiY],
	HInfo[houseid][hiZ],
	HInfo[houseid][heX],
	HInfo[houseid][heY],
	HInfo[houseid][heZ],
	HInfo[houseid][hSlots],
	HInfo[houseid][hForSale],
	HInfo[houseid][hLocked],
	HInfo[houseid][hDefaultPrice],
	HInfo[houseid][hHouseID]);
	mysql_reconnect();
	mysql_query(query);
	printf("House ID %d saved to mysql.", houseid);
}
public SaveAccount(playerid)
{
	if(IsPlayerConnected(playerid)) //is client connected ?? .. proceeding
	{
		if(PlayerSpawned[playerid] != 0) //is client logged in ?? .. proceeding
		{
			new date,month,year;
			getdate(date,month,year);
   			new hour,minute,second;
			gettime(hour,minute,second);
			FixHour(hour);
			hour = shifthour+1;
			//--Notes:
			// - Register Date isn't saved/used.
			//--------
			//---MySQL Vulnerability Injection Data Variables ------------------
			new p_NAME[MAX_PLAYER_NAME], p_PASSWORD[128], p_REASON1[128], p_REASON2[128], p_REASON3[128], p_CALLSIGN[128], p_EMAIL[256];
			//---MySQL Vulnerability Injection Data Variables ------------------
			mysql_real_escape_string(PlayerName(playerid),p_NAME);
		    mysql_real_escape_string(PInfo[playerid][Password], p_PASSWORD);
		    mysql_real_escape_string(PInfo[playerid][Reason1], p_REASON1);
		    mysql_real_escape_string(PInfo[playerid][Reason2], p_REASON2);
		    mysql_real_escape_string(PInfo[playerid][Reason3], p_REASON3);
		    mysql_real_escape_string(PInfo[playerid][Callsign], p_CALLSIGN);
		    mysql_real_escape_string(PInfo[playerid][Email], p_EMAIL);
			mysql_reconnect();
			new query[1024];
	 		format(query,sizeof(query),"UPDATE users SET username='%s',password='%s',adminlevel='%d',ip='%s',lastlogin='%d/%d/%d %d:%d:%d',banned='%d',money='%d',at400f='%d',stuntf='%d',helif='%d',cargof='%d',militaryf='%d',shamalf='%d',dodof='%d',skimmerf='%d',truckerf='%d',hoursplayed='%d',minsplayed='%d',warning1='%d',reason1='%s',warning2='%d',reason2='%s',warning3='%d',reason3='%s',totaljobs='%d',totalscore='%d',androf='%d' WHERE username = '%s'",
			p_NAME,
			p_PASSWORD,
			PInfo[playerid][AdminLevel],
			PInfo[playerid][IP],
			year,month,date,hour,minute,second,
			PInfo[playerid][Banned],
			PInfo[playerid][Money],
			PInfo[playerid][AT400F],
			PInfo[playerid][STUNTF],
			PInfo[playerid][HELIF],
			PInfo[playerid][CARGOF],
			PInfo[playerid][MILITARYF],
			PInfo[playerid][SHAMALF],
			PInfo[playerid][DODOF],
			PInfo[playerid][SKIMMERF],
			PInfo[playerid][TRUCKERF],
			PInfo[playerid][HoursPlayed],
			PInfo[playerid][MinsPlayed],
			PInfo[playerid][Warning1],
			p_REASON1,
			PInfo[playerid][Warning2],
			p_REASON2,
			PInfo[playerid][Warning3],
			p_REASON3,
			PInfo[playerid][TotalJobs],
			PInfo[playerid][TotalScore],
			PInfo[playerid][ANDROF],
			p_NAME);
			mysql_query(query);
			format(query,sizeof(query),"UPDATE users SET beaglef='%d',cropdusterf='%d',hydraf='%d',nevadaf='%d',rustlerf='%d',cargobobf='%d',hunterf='%d',leviathanf='%d',maverickf='%d',nmaverickf='%d',raindancef='%d',seasparrowf='%d',sparrowf='%d',earntfromworking='%d',flightscompleted='%d',callsign='%s',callsignset='%d',emailaddress='%s',airline='%d',airlinerank='%d',earntforairline='%d',house1='%d',house2='%d',flowndistance='%d',airlineflights='%d',vip='%d',vipcolour='%s' WHERE username = '%s'",
			PInfo[playerid][BEAGLEF],
			PInfo[playerid][CROPDUSTERF],
			PInfo[playerid][HYDRAF],
			PInfo[playerid][NEVADAF],
			PInfo[playerid][RUSTLERF],
			PInfo[playerid][CARGOBOBF],
			PInfo[playerid][HUNTERF],
			PInfo[playerid][LEVIATHANF],
			PInfo[playerid][MAVERICKF],
			PInfo[playerid][NMAVERICKF],
			PInfo[playerid][RAINDANCEF],
			PInfo[playerid][SEASPARROWF],
			PInfo[playerid][SPARROWF],
			PInfo[playerid][EarntFromWorking],
			PInfo[playerid][FlightsCompleted],
			p_CALLSIGN,
			PInfo[playerid][CallsignSet],
			p_EMAIL,
			PInfo[playerid][Airline],
			PInfo[playerid][AirlineRank],
			PInfo[playerid][EarntForAirline],
			PInfo[playerid][House1],
			PInfo[playerid][House2],
			PInfo[playerid][FlownDistance],
			PInfo[playerid][AirlineFlights],
			PInfo[playerid][Vip],
			PInfo[playerid][VIPColour],
			p_NAME);
			mysql_query(query);
			format(query,sizeof(query),"UPDATE users SET tickets='%d',sspawn='%d',sskin='%d',spm='%d',svipsounds='%d',ownedskin='%d',sglobalsounds='%d',sconnectionmessages='%d',sautowork='%d',muted='%d' WHERE username='%s'",
			PInfo[playerid][Tickets],
			PInfo[playerid][sSpawn],
			PInfo[playerid][sSkin],
			PInfo[playerid][sPM],
			PInfo[playerid][sVIPSounds],
			PInfo[playerid][OwnedSkin],
			PInfo[playerid][sGlobalSounds],
			PInfo[playerid][sConnectionMessages],
			PInfo[playerid][sAutoWork],
			PInfo[playerid][Muted],
			p_NAME);
			mysql_query(query);
	 		return 1;
		}
	}
	return 1;
}
public DisplayDialogForPlayer(playerid, dialogid)
{
    switch(dialogid)
    {
        case 1:
        {
            ShowPlayerDialog(playerid,1,DIALOG_STYLE_PASSWORD,"Login","{FFFFFF}Welcome to the {FF4500}Aviation Life\n\n{FFFFFF}To Login, Insert your Password below","Login","Quit");
        }
        case 2:
        {
            ShowPlayerDialog(playerid,2,DIALOG_STYLE_INPUT,"Registration","{FFFFFF}Welcome to the {FF4500}Aviation Life\n\n{FFFFFF}Please {FF4500}Register {FFFFFF}your Account by inserting a Password below.","Register","Quit");
        }
        case 4:
        {
            new sss[800];
            new Score = PInfo[playerid][TotalScore];
            strcat(sss,"{00FF00}Pilot			0\n");
			strcat(sss,"{00FF00}Trucker			0\n");
            if(Score > 49) {strcat(sss,"{00FF00}Military Pilot		50\n");}
            else if(Score < 50) {strcat(sss,"{FF4500}Military Pilot		50\n");}
            ShowPlayerDialog(playerid, 4, DIALOG_STYLE_LIST, "{FFFFFF}Select Class                  Score Required",sss, "Select", "Cancel");
            return 1;
        }
        case showit2:
        {
        	ShowPlayerDialog(playerid,showit2,DIALOG_STYLE_LIST,"{FFFFFF}Select an option", "{FF4500}Information & Statistics\n{FFFFFF}Donate\n{FF4500}Member List\n{FFFFFF}Fleet List\n{FF4500}Bank Account\n{FFFFFF}Airline Settings", "Choose", "Back");
        }
    }
	return 1;
}
public timer_update()
{
    for(new i=0;i<MAX_PLAYERS;i++) {
        if (IsPlayerInAnyVehicle(i))
        {
	        new vid = GetPlayerVehicleID(i);
			{

			        if (GetPlayerVehicleSeat(i) == 0) {
						vfuel[vid] = vfuel[vid]-1;
						if (vfuel[vid]<1)
						{
							new engine, lights, alarm, doors, bonnet, boot, objective;
							GetVehicleParamsEx(vid, engine, lights, alarm, doors, bonnet, boot, objective);
							vfuel[vid] = 0;
						    //RemovePlayerFromVehicle(i);
						    GameTextForPlayer(i,"~r~You are out of ~w~fuel~r~!",5000,4);
						    SetVehicleParamsEx(vid, 0, lights, alarm, doors, bonnet, boot, objective);
						}
					}
			}
		}
	}
	return 1;
}
public ChangeWeather()
{
	new rand = randomEx(1, 20);
	if(rand == 21 || rand == 9 || rand == 19 || rand == 8 || rand == 16)
	{
	    ChangeWeather();
	    return 1;
	}
	else
	{
		SetWeather(rand);
	}
	return 1;
}
public RandomMsg()
{
	new rmsg[156];
	new rand = random(sizeof(Messages));
	format(rmsg,sizeof(rmsg),"%s", Messages[rand][Message]);
	SendClientMessageToAll(COLOR_RANDOMMSG, rmsg);
}
public RegisterAccount(playerid, password[])
{
	if(IsPlayerConnected(playerid))
	{
	    new string2[128];
		new date,month,year;
		getdate(date,month,year);
		new hour,minute,second;
		gettime(hour,minute,second);
		FixHour(hour);
		hour = shifthour+1;
		format(string2, sizeof(string2), "%d/%d/%d %d:%d:%d", year,month,date,hour,minute,second); //PASSWORD
	    mysql_reconnect();
		new Query[200], EscPass[30], EscName[MAX_PLAYER_NAME];
		mysql_real_escape_string(PlayerName(playerid), EscName);
		mysql_real_escape_string(password, EscPass);
		format(Query, sizeof(Query), "INSERT INTO `users` (`username`, `password`, `registerdate`) VALUES ('%s', '%s', '%d/%d/%d %d:%d:%d')", EscName, EscPass, year,month,date,hour,minute,second);
		mysql_query(Query);
	}
	return 1;
}
public PlayerLogin(playerid,password[])
{
	mysql_reconnect();
	new EscPass[128], EscName[128], Query[128];
	mysql_real_escape_string(PlayerName(playerid), EscName);
	mysql_real_escape_string(password, EscPass);
	format(Query, sizeof(Query), "SELECT * FROM `users` WHERE `username` = '%s' AND `password` = '%s'", EscName, EscPass);
	mysql_query(Query);
	mysql_store_result();
	if(mysql_num_rows() > 0)
	{ // player logged in.
		new line[1250];
		if(mysql_fetch_row(line)) //Fetches the line
  		{
  		    new string2[128];
    		new data[11][128]; //The data strings
      		new data2[57]; //The data variables
      		//new Float:data3[5]; //The data floats
      		sscanf(line, "p<|>s[128]s[128]ds[128]s[128]ddddddddddddddsds[128]ds[128]dddddddddddddddddddds[128]s[128]ds[128]ddddddddds[128]ddddddddd", data[0], data[1], data2[0], data[2], data[3], data2[1], data2[2], data2[3], data2[4], data2[5], data2[6], data2[7], data2[8], data2[9], data2[10], data2[11], data2[12], data2[13], data2[14], data[4], data2[15], data[5], data2[16], data[6], data2[17], data2[18], data2[19],
			  data2[20], data2[21], data2[22], data2[23], data2[24], data2[25], data2[26], data2[27], data2[28], data2[29], data2[30], data2[31], data2[32], data2[33], data2[34], data2[35], data2[36], data[7], data[8], data2[37], data[9], data2[38], data2[39], data2[40], data2[41],data2[42],data2[43],data2[44],data2[45],data2[46],data[10],data2[47], data2[48],data2[49],data2[50],data2[51],data2[52],data2[53],data2[54],data2[55], data2[56]); //Splits the line with sscanf
			format(string2, sizeof(string2), "%s", data[1]); //PASSWORD
			strmid(PInfo[playerid][Password], string2, 0, strlen(string2), 128); //PASSWORD
			PInfo[playerid][AdminLevel] = data2[0];
			format(string2, sizeof(string2), "%s", data[3]); //last login date+time
			strmid(PInfo[playerid][LastLogin], string2, 0, strlen(string2), 128); //last login date+time
			PInfo[playerid][Banned] = data2[1];
			PInfo[playerid][Money] = data2[2];
			PInfo[playerid][AT400F] = data2[3];
			PInfo[playerid][STUNTF] = data2[4];
			PInfo[playerid][HELIF] = data2[5];
			PInfo[playerid][CARGOF] = data2[6];
			PInfo[playerid][MILITARYF] = data2[7];
			PInfo[playerid][SHAMALF] = data2[8];
			PInfo[playerid][DODOF] = data2[9];
			PInfo[playerid][SKIMMERF] = data2[10];
			PInfo[playerid][TRUCKERF] = data2[11];
			PInfo[playerid][HoursPlayed] = data2[12];
			PInfo[playerid][MinsPlayed] = data2[13];
			PInfo[playerid][Warning1] = data2[14];
			format(string2, sizeof(string2), "%s", data[4]);
			strmid(PInfo[playerid][Reason1], string2, 0, strlen(string2), 128);
			PInfo[playerid][Warning2] = data2[15];
			format(string2, sizeof(string2), "%s", data[5]);
			strmid(PInfo[playerid][Reason2], string2, 0, strlen(string2), 128);
			PInfo[playerid][Warning3] = data2[16];
			format(string2, sizeof(string2), "%s", data[6]);
			strmid(PInfo[playerid][Reason3], string2, 0, strlen(string2), 128);
			PInfo[playerid][TotalJobs] = data2[17];
			PInfo[playerid][TotalScore] = data2[18];
			PInfo[playerid][ANDROF] = data2[19];
			PInfo[playerid][BEAGLEF] = data2[20];
			PInfo[playerid][CROPDUSTERF] = data2[21];
			PInfo[playerid][HYDRAF] = data2[22];
			PInfo[playerid][NEVADAF] = data2[23];
			PInfo[playerid][RUSTLERF] = data2[24];
			PInfo[playerid][CARGOBOBF] = data2[25];
			PInfo[playerid][HUNTERF] = data2[26];
			PInfo[playerid][LEVIATHANF] = data2[27];
			PInfo[playerid][MAVERICKF] = data2[28];
			PInfo[playerid][NMAVERICKF] = data2[29];
			PInfo[playerid][TRUCKERF] = data2[30];
			PInfo[playerid][RAINDANCEF] = data2[31];
			PInfo[playerid][SEASPARROWF] = data2[32];
			PInfo[playerid][SPARROWF] = data2[33];
			PInfo[playerid][Online] = data2[34];
			PInfo[playerid][EarntFromWorking] = data2[35];
			PInfo[playerid][FlightsCompleted] = data2[36];
			format(string2, sizeof(string2), "%s", data[7]);
			strmid(PInfo[playerid][RegisterDate], string2, 0, strlen(string2), 128);
			format(string2, sizeof(string2), "%s", data[8]);
			strmid(PInfo[playerid][Callsign], string2, 0, strlen(string2), 64);
			PInfo[playerid][CallsignSet] = data2[37];
			format(string2, sizeof(string2), "%s", data[9]);
			strmid(PInfo[playerid][Email], string2, 0, strlen(string2), 256);
			PInfo[playerid][MemberID] = data2[38];
			PInfo[playerid][Airline] = data2[39];
			PInfo[playerid][AirlineRank] = data2[40];
			PInfo[playerid][EarntForAirline] = data2[41];
			PInfo[playerid][House1] = data2[42];
			PInfo[playerid][House2] = data2[43];
			PInfo[playerid][FlownDistance] = data2[44];
			PInfo[playerid][AirlineFlights] = data2[45];
			PInfo[playerid][Vip] = data2[46];
			format(string2, sizeof(string2), "%s", data[10]); //last login date+time
			strmid(PInfo[playerid][VIPColour], string2, 0, strlen(string2), 128); //last login date+time
			PInfo[playerid][Tickets] = data2[47];
			PInfo[playerid][sSpawn] = data2[48];
			PInfo[playerid][sSkin] = data2[49];
			PInfo[playerid][sPM] = data2[50];
			PInfo[playerid][sVIPSounds] = data2[51];
			PInfo[playerid][OwnedSkin] = data2[52];
			PInfo[playerid][sGlobalSounds] = data2[53];
			PInfo[playerid][sConnectionMessages] = data2[54];
			PInfo[playerid][sAutoWork] = data2[55];
			PInfo[playerid][Muted] = data2[56];
            mysql_free_result();
        }
        new string[250];
	    //LoadPlayer(playerid);
	    mysql_free_result();
	    SessionStatus[playerid] = 2; //Logged in successfully. Show disconnect messages
		//if(PInfo[playerid][Banned] == 1) { CheckBanned(playerid); }
		PlayerLogged[playerid] = 1;
		SendClientMessage(playerid, COLOR_GREEN, "You have successfully been logged in.");
		new plrIP[16];
		GetPlayerIp(playerid, plrIP, sizeof(plrIP));
		GivePlayerMoney(playerid, PInfo[playerid][Money]);
		strmid(PInfo[playerid][IP], plrIP, 0, strlen(plrIP), 255);
		if(JustRegistered[playerid] == 0)
		{
			new login[156];
			format(login, sizeof(login), "{FF4500}%s (%d) {FFFFFF}has logged into the server.", PlayerName(playerid), playerid);
			for(new i = 0; i <MAX_PLAYERS; i++)
			{
				if(IsPlayerConnected(i))
				{
		    		if(PInfo[i][sConnectionMessages] == 0)
		    		{
						SendClientMessage(i, COLOR_YELLOW, login);
					}
				}
			}
		}
		if(PInfo[playerid][AdminLevel] > 0) { format(string, sizeof(string), "You have authorized as a level %d Admin.", PInfo[playerid][AdminLevel]); SendClientMessage(playerid, COLOR_SECURITY, string); }
		if(JustRegistered[playerid] == 0) { format(string, sizeof(string), "{FFFFFF}Welcome Back to Aviation Life, {FF4500}%s", PlayerName(playerid)); SendClientMessage(playerid, COLOR_MESSAGE, string); }
		UpdateScore(playerid);
		PInfo[playerid][Online] = 1;
		YourOnline(playerid);
		CanAdvertiseAgain[playerid] = 1;
		if(PInfo[playerid][Airline] > 0)
		{
		    format(string,sizeof(string),"AMOTD: %s | Set by: %s", AInfo[PInfo[playerid][Airline]][aMotd], AInfo[PInfo[playerid][Airline]][aMotdSetBy]);
		    SendClientMessage(playerid, COLOR_YELLOW, string);
		}
		new motdstring[256];
		format(motdstring,sizeof(motdstring),"MOTD: %s | Set by: %s", ServerMOTD, ServerMOTDSetBy);
		SendClientMessage(playerid, COLOR_YELLOW, motdstring);
		if(PInfo[playerid][CallsignSet] == 0)
		{
			new msg[64];
			format(msg,sizeof(msg),"Newbie");
			strmid(PInfo[playerid][Callsign], msg, 0, strlen(msg), 64);
			PInfo[playerid][CallsignSet] = 1;
		}

	}
	else
	{ // player incorrect password.
		SendClientMessage(playerid, COLOR_SECURITY, "Invalid password. Please try again, or request a password reset on the forums.");
		DisplayDialogForPlayer(playerid, 1);
  		mysql_free_result();
	}
}
public OnGameModeExit()
{
	PlayersOnline = 0;
	OnlineTimer();
	KillTimer(onlinetimer);
    KillTimer(randomtimer);
    mysql_close();
    ExitMapSystem();
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	TogglePlayerControllable(playerid, false);
	SetPlayerPos(playerid,1933.6263,-2399.9102,1201.7321);
	SetPlayerCameraPos(playerid, 1931.7674, -2417.5302, 1205.6908);
	SetPlayerCameraLookAt(playerid, 1931.7674, -2417.5202, 1200.6908);
    if(PlayerLogged[playerid] == 0)
	{
		mysql_reconnect();
		new	Query[90], EscName[MAX_PLAYER_NAME];
		mysql_real_escape_string(PlayerName(playerid), EscName);
		format(Query, sizeof(Query), "SELECT * FROM `users` WHERE `username` = '%s'", EscName);
		mysql_query(Query);
		mysql_store_result();
		if(mysql_num_rows() != 0)
		{
		    mysql_free_result();
			SendClientMessage(playerid, COLOR_SECURITY, "Please enter your password below to continue.");
	 		DisplayDialogForPlayer(playerid, 1);
	        return 0;
		}
		else
		{
		    mysql_free_result();
			SendClientMessage(playerid, COLOR_SECURITY, "Please enter a password below to register an account.");
	 		DisplayDialogForPlayer(playerid, 2);
	        return 0;
		}
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
	PlayersOnline++;
	SessionStatus[playerid] = 1; //Connected. Do not show messages.
	if(GlobalStatus == 2)
	{
	    SendClientMessage(playerid, COLOR_SECURITY, "A MySQL error has occured. Please visit the forums for further details.");
	    Kick(playerid);
	}
	if(PlayersOnline > ServerMaxPlayers && sTrackPlayers == 1)
	{
	    new msg[256];
	    format(msg,sizeof(msg),"Aviation Life has reached a new top player count! (Previously %d online players at %s - %s)",ServerMaxPlayers,ServerMaxPlayersDate,ServerMaxPlayersTime);
	    SendClientMessageToAll(COLOR_VIP, msg);
	    ServerMaxPlayers = PlayersOnline;
		new date,month,year;
		getdate(date,month,year);
		new hour,minute,second;
		gettime(hour,minute,second);
		new string[128];
		format(string,sizeof(string),"%d/%d/%d",year,month,date);
		strmid(ServerMaxPlayersDate, string, 0, strlen(string), 128);
		format(string,sizeof(string),"%d:%d:%d",hour,minute,second);
		strmid(ServerMaxPlayersTime, string, 0, strlen(string), 128);
		SaveStuff();
	}
	CheckIPS(playerid);
	PurelySpawned[playerid] = 0;
	ResetMissionData(playerid);
	ResetPlayerData(playerid);
	CheckBanned(playerid);
	RemoveObjectsForPlayer(playerid);
	ResetPlayerData(playerid);
	UpdatePlayerColour(playerid);
	TextDrawShowForPlayer(playerid, Clockzz);
	MapSystemAddPlayer(playerid);
	PlayerPlaySound(playerid, 1187, 0, 0, 0); // Start the music
	if(PlayerLogged[playerid] == 0)
	{
		mysql_reconnect();
		new	Query[90], EscName[MAX_PLAYER_NAME];
		mysql_real_escape_string(PlayerName(playerid), EscName);
		format(Query, sizeof(Query), "SELECT NULL FROM `users` WHERE `username` = '%s'", EscName);
		mysql_query(Query);
		mysql_store_result();
		if(mysql_num_rows() != 0)
		{
		    mysql_free_result();
			SendClientMessage(playerid, COLOR_SECURITY, "Please enter your password below to continue.");
	 		DisplayDialogForPlayer(playerid, 1);
	        return 0;
		}
		else
		{
		    PlayerPlaySound(playerid, 44204, 0, 0, 0);
		    mysql_free_result();
			SendClientMessage(playerid, COLOR_SECURITY, "Please enter a password below to register an account.");
	 		DisplayDialogForPlayer(playerid, 2);
	        return 0;
		}
 	}
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	PlayersOnline--;
	if(ListeningToRadio[playerid] == 1) { StopAudioStreamForPlayer(playerid); ListeningToRadio[playerid] = 0; }
	if(TDLoaded[playerid] == 1) { UnloadTextdraws(playerid); }
	YourOffline(playerid);
	new string[128];
	if(SessionStatus[playerid] == 2)
	{
		switch(reason)
		{
			case 0: format(string, sizeof(string), "{FF4500}%s (%d) {FFFFFF}has timed out from the server.", PlayerName(playerid), playerid);
			case 1: format(string, sizeof(string), "{FF4500}%s (%d) {FFFFFF}has left the server.", PlayerName(playerid), playerid);
			case 2: format(string, sizeof(string), "{FF4500}%s (%d) {FFFFFF}has been kicked/banned from the server.", PlayerName(playerid), playerid);
		}
		for(new i = 0; i <MAX_PLAYERS; i++)
		{
			if(IsPlayerConnected(i))
			{
  				if(PInfo[i][sConnectionMessages] == 0)
  				{
					SendClientMessage(i, COLOR_WHITE, string);
				}
			}
		}
	}
	if(SessionStatus[playerid] == 3) { format(string,sizeof(string), "{FF4500}%s (%d) {FFFFFF}has left the server.", PlayerName(playerid), playerid); SendClientMessageToAll(COLOR_WHITE, string); }
	if(PlayerLogged[playerid] == 1 && GettingBanned[playerid] == 0)
	{
		SaveAccount(playerid);
	}
	MapSystemRemovePlayer(playerid);
	return 1;
}

public OnPlayerSpawn(playerid)
{
    //spawned[playerid]=0;
	if(ChosenClass[playerid] == 0)
    {
	DisplayDialogForPlayer(playerid, 4);
	return 1;
	}
    AntiDeAMX();
	/*if(gTeam[playerid] == TEAM_PILOTS)
	{
		SetPlayerPos(x,y,z pilot);
		//SetPlayerTeamColor(playerid);
		GameTextForPlayer(playerid,"~g~Type ~r~~h~/work ~g~to start working",4000,3);
		SendClientMessage(playerid,COLOR_WHITE,"  You are a {FF4500}Pilot.{FFFFFF} Type {FF4500}/work{FFFFFF} inside of an aircraft to start working.");
		SendClientMessage(playerid,COLOR_WHITE,"  You can type {FF4500}/phelp {FFFFFF}for your role's commands, or type {FF4500}/cmdsFFFFFF} for general server help.");
	*/
	if(WasSpectating[playerid] == 1)
	{
	    PurelySpawned[playerid] = 1;
	    SetPlayerInterior(playerid, tempinterior[playerid]);
	    SetPlayerHealth(playerid, 100);
 		SetPlayerPos(playerid, tempX[playerid], tempY[playerid], tempZ[playerid]);
		SetPlayerFacingAngle(playerid, tempA[playerid]);
		UpdateSkin(playerid);
		UpdatePlayerColour(playerid);
		return 1;
	}
	RespawnPlayer(playerid);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
    //spawned[playerid]=0;
	ChosenClass[playerid] = 1;
	if(killerid != 65535)
	{
		new dmsg[128];
	    format(dmsg, sizeof(dmsg), "[DM] %s(%d) has killed %s(%d)",PlayerName(killerid),killerid,PlayerName(playerid),playerid);
	    ABroadCast(COLOR_ADMIN,dmsg,1); //
		SendClientMessage(killerid, COLOR_ERROR, "Do not kill or deathmatch players. [Please read the /rules before continuing]");
	}
	if(ListeningToRadio[playerid] == 1)
	{
		StopAudioStreamForPlayer(playerid);
		ListeningToRadio[playerid] = 0;
	}
	if(InHouse[playerid] > 0)
	{
	    SetPlayerInterior(playerid, 0);
	    SetPlayerVirtualWorld(playerid, 0);
	}
	if(StartedMission[playerid] == 1)
	{
	    ResetMissionData(playerid);
	}
	SessionFlights[playerid] = 0;
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	new engine, lights, alarm, doors, bonnet, boot, objective;
	GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
	if(vfuel[vehicleid] > 0)
	{
		SetVehicleParamsEx(vehicleid,1,lights,alarm,doors,bonnet,boot,objective);
	}
	else
	{
		SetVehicleParamsEx(vehicleid,0,lights,alarm,doors,bonnet,boot,objective);
	}
	if(gDestroyVehicle[vehicleid])  									// if vehicle id is marked for deletion
    {
        ////foreach(Player, i)                            					// for all players
        for(new i; i<MAX_PLAYERS; i++)
		{
			if(IsPlayerConnected(i) && IsPlayerInVehicle(i,vehicleid))      	// if connected and in vehicleid
			{
				RemovePlayerFromVehicle(i);                                     	// remove from vehicle
			}
		}
    	SetVehicleVirtualWorld(vehicleid,255);                                  // set vehicle to unused vw to prevent players from using it
    	SetTimerEx("KillCar",10000,0,"d",vehicleid);
		for(new i = 0; i < sizeof(CreatedCars); i++)
    	{
    	    if(CreatedCars[i] == vehicleid)
    	    {
    	        CreatedCars[i] = INVALID_VEHICLE_ID;
    	        break;
			}
    	}
    }
	for(new i = 0; i < sizeof(PVInfo); i++)
 	{
  		if(vehicleid == PVInfo[i][vpVehicleSpawned])
    	{
			ModVehicle(vehicleid);
		}
	}
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	if(IsIp(text) && PInfo[playerid][AdminLevel] < 3)
	{
	    new string[256];
		format(string, sizeof(string), "{FF4500}%s (%d){FFFFFF} has been autokicked by anti-cheat {FF4500}Chappie{FFFFFF}   {FF4500}[Reason: Server IP Detected]", PlayerName(playerid),playerid);
		SendClientMessageToAll(COLOR_ERROR, string);
	    Kick(playerid);
	    return 0;
	}
	if(AFKPLAYER[playerid] == 1)
	{
	    TogglePlayerControllable(playerid, 1);
 		new result[156];
		format(result, sizeof(result), "{FF4500}%s (%d) {FFFFFF}is now back   {FF4500}[Reason: %s]", PlayerName(playerid),playerid,AFKREASON[playerid]);
		SendClientMessageToAll(COLOR_WHITE, result);
  		AFKPLAYER[playerid] = 0;
  		UpdatePlayerColour(playerid);
	}
    if(PlayerLogged[playerid] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You are not logged in !"); return 0; }
	if(PInfo[playerid][Muted] == 1) { SendClientMessage(playerid, COLOR_ERROR, "You are muted and cannot talk! - Apply for an unmute request on the forums."); return 0; }
	if(text[0] == '@')
	{
		new rmsg[256];
		format(rmsg, sizeof(rmsg), "@%s(%d): %s", PInfo[playerid][Callsign], playerid, text[1]);
		SendClientMessageToAll(COLOR_RADIO, rmsg);
		return 0;
	}
	new string[256];
	if(VIPName[playerid] == 1)
	{
	    format(string,sizeof(string),"{815087}%s(%d): {FFFFFF}%s", PlayerName(playerid),playerid,text);
	    SendClientMessageToAll(COLOR_VIP, string);
	    UCPChat1(playerid, text);
	}
	else if(gTeam[playerid] == TEAM_CPILOT)
	{
		format(string,sizeof(string),"{00FF00}%s (%d): {FFFFFF}%s", PlayerName(playerid),playerid,text);
		SendClientMessageToAll(COLOR_WHITE, string);
		UCPChat1(playerid, text);
	}
	else if(gTeam[playerid] == TEAM_CTRUCK)
	{
		format(string,sizeof(string),"{25B2C4}%s(%d): {FFFFFF}%s", PlayerName(playerid),playerid,text);
		SendClientMessageToAll(COLOR_WHITE, string);
		UCPChat1(playerid, text);
	}
	else if(gTeam[playerid] == TEAM_MILITARY)
	{
		format(string,sizeof(string),"{CC0000}%s (%d): {FFFFFF}%s", PlayerName(playerid),playerid,text);
		SendClientMessageToAll(COLOR_WHITE, string);
		UCPChat1(playerid, text);
	}
	return 0;
}
stock RemoveUnderScore(message[])
{
    for(new i = 0; i < 255; i++)
    {
        if(message[i] == '_') message[i] = ' ';
    }
    return message;
}
stock GiveNameSpace(nstring[])
{
    new strl;
    strl=strlen(nstring)-1;
    while(strl >= 0)
    {
        if(nstring[strl]=='_')
            nstring[strl]=' ';
        strl--;
    }
    return nstring;
}
public OnPlayerCommandText(playerid, cmdtext[])
{
    if(PInfo[playerid][Muted] == 1) { SendClientMessage(playerid, COLOR_ERROR, "You are muted and cannot talk! - Apply for an unmute request on the forums."); return 0; }
    if(PlayerLogged[playerid] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You are not logged in!"); return 0; }
	new sendername[MAX_PLAYER_NAME], idx, string[256];
	new cmd[128];
	new tmp[256];
	cmd = strtok(cmdtext, idx);
	format(tmp,sizeof(tmp),"%s(%d) - (%s)",PlayerName(playerid),playerid,cmdtext);
	print(tmp);
	if(AFKPLAYER[playerid] == 1)
	{
	    TogglePlayerControllable(playerid, 1);
 		new result[156];
		format(result, sizeof(result), "{FF4500}%s (%d) {FFFFFF}is now back   {FF4500}[Reason: %s]", PlayerName(playerid),playerid,AFKREASON[playerid]);
		SendClientMessageToAll(COLOR_WHITE, result);
  		AFKPLAYER[playerid] = 0;
  		UpdatePlayerColour(playerid);
  		return 1;
	}
	if(strcmp(cmd, "/claimcoupon", true) == 0 || strcmp(cmd, "/redeem", true) == 0)
	{
	    new title[64], msg[128];
	    format(title,sizeof(title),"{FF4500}Claim Coupon");
	    format(msg,sizeof(msg),"Type the coupon code below to\nclaim your reward:");
	    ShowPlayerDialog(playerid, coupon1, DIALOG_STYLE_INPUT, title, msg, "Claim", "Cancel");
	    return 1;
	}
	if(strcmp(cmd, "/flightstreak", true) == 0)
	{
	    new msg[256];
	    format(msg,sizeof(msg),"[Flight Streak] The current winner is {FF4500}%s {FFFFFF}with a total flight streak of {FF4500}%d [%s %s]",ServerMaxFlightStreakWinner, ServerMaxFlightStreak, ServerMaxFlightStreakTime, ServerMaxFlightStreakDate);
	    SendClientMessage(playerid, COLOR_WHITE, msg);
	    format(msg,sizeof(msg),"[Flight Streak] Your current flight streak is {FF4500}%d!", SessionFlights[playerid]);
	    SendClientMessage(playerid, COLOR_WHITE, msg);
	    return 1;
	}
	if(strcmp(cmd, "/potd", true) == 0)
	{
	    new msg[256];
		format(msg,sizeof(msg),"[POTD] The current Pilot of the Day is {FF4500}%s {FFFFFF}with total earnings of {FF4500}$%d{FFFFFF}.", POTD_WinnerName, POTD_FinalAmount2);
		SendClientMessage(playerid, COLOR_WHITE, msg);
		return 1;
	}
	if(strcmp(cmd, "/aotd", true) == 0)
	{
	    new msg[256];
		format(msg,sizeof(msg),"[AOTD] The current Airline of the Day is {FF4500}%s {FFFFFF}with total earnings of {FF4500}$%d{FFFFFF}.", AOTD_WinnerName, AOTD_FinalAmount2);
		SendClientMessage(playerid, COLOR_WHITE, msg);
		return 1;
	}
	if(strcmp(cmd, "/spymode", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 2)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !");
	        return 1;
	    }
	    if(ActiveAdminSpy[playerid] == 1) { ActiveAdminSpy[playerid] = 0; SendClientMessage(playerid, 0x008040FF, "You have disabled admin spy mode."); return 1; }
	    else { ActiveAdminSpy[playerid] = 1; SendClientMessage(playerid, 0x008040FF, "You have enabled admin spy mode. [/spymode to disable]"); return 1; }
	}
	if(strcmp(cmd, "/namechanges", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 2)
	    {
	        ShowNCs(playerid);
	        return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/adminarea", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 0)
	    {
			if(InHouse[playerid] > 0) { SendClientMessage(playerid, COLOR_ERROR, "You are currently in a house!"); return 1; }
			SetPlayerPos(playerid, 1825.0367, -1305.1178, 121.0851);
			SendClientMessage(playerid, COLOR_ERROR, "Welcome to the Admin Room!");
			return 1;
		}
		else
		{
			SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!");
		    return 1;
		}
	}
	if(strcmp(cmd, "/adminarea2", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 5 || !strcmp(PlayerName(playerid), "FreAkeD") || !strcmp(PlayerName(playerid), "RohitArora"))
	    {
			if(InHouse[playerid] > 0) { SendClientMessage(playerid, COLOR_ERROR, "You are currently in a House!"); return 1; }
			SetPlayerPos(playerid, 1932.2740,-2409.6987,1202.6908);
			SendClientMessage(playerid, COLOR_ERROR, "Welcome to the Admin Room!");
			return 1;
		}
		else
		{
			SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!");
		    return 1;
		}
	}
	if(strcmp(cmd, "/preferences", true) == 0 || strcmp(cmd, "/p", true) == 0)
	{
	    ShowPlayerSettings(playerid);
	    return 1;
	}
	if(strcmp(cmd, "/reloadstuff", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] == 6)
	    {
	        LoadStuff();
	        SendClientMessage(playerid, COLOR_WHITE, "You have reloaded all of the server statistics.");
	        return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/tickets", true) == 0)
	{
	    if(PInfo[playerid][Tickets] == 0)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You do not have any tickets! [Tickets are given out by Administrators for reporting rulebreakers and helping out.]");
	        return 1;
	    }
	    else
	    {
			format(string,sizeof(string),"You have a total of {FF4500}%d{FFFFFF} tickets. You can /repair, /refuel or /cancel for free! (Each action uses 1 ticket)",PInfo[playerid][Tickets]);
			SendClientMessage(playerid, COLOR_WHITE, string);
			return 1;
	    }
	}
	if(strcmp(cmd, "/giveticket", true) == 0)
	{
        if(IsPlayerConnected(playerid))
        {
            if(PInfo[playerid][AdminLevel] < 2)
            {
            	SendClientMessage(playerid, COLOR_ERROR, "You are not an admin !");
				return 1;
			}
            tmp = strtok(cmdtext, idx);
            if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /giveticket (playername/id) (reason)");
				return 1;
			}
			new giveplayerid;
			giveplayerid = ReturnUser(tmp);
			if(IsPlayerConnected(giveplayerid))
			{
			    if(giveplayerid != INVALID_PLAYER_ID)
			    {
					new length = strlen(cmdtext);
					while ((idx < length) && (cmdtext[idx] <= ' '))
					{
						idx++;
					}
					new offset = idx;
					new result[64];
					while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
					{
						result[idx - offset] = cmdtext[idx];
						idx++;
					}
					result[idx - offset] = EOS;
					if(!strlen(result))
					{
						SendClientMessage(playerid, COLOR_ERROR, "Syntax: /giveticket (playerid/name) (reason)");
						return 1;
					}
					PInfo[giveplayerid][Tickets]=PInfo[giveplayerid][Tickets]+1;
					ServerTickets = ServerTickets+1;
					format(string, sizeof(string), "Administrator {FF4500}%s(%d){FFFFFF} has given a ticket to {FF4500}%s {FFFFFF}for {FF4500}%s", PlayerName(playerid),playerid,PlayerName(giveplayerid), (result));
					SendClientMessageToAll(COLOR_WHITE, string);
					SaveStuff();
					AdminLog(playerid, "/giveticket", "Awarded Ticket", PlayerName(giveplayerid));
					TicketLog(PlayerName(playerid), PlayerName(giveplayerid), (result));
					return 1;
			    }
			}
            else
			{
  				SendClientMessage(playerid, COLOR_ERROR, "Could not find player !");
  				return 1;
			}
        }
        return 1;
	}
	if(strcmp(cmd, "/cancelradio", true) == 0)
	{
	    if(ListeningToRadio[playerid] == 0)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not listening to the radio !");
	        return 1;
	    }
	    ListeningToRadio[playerid] = 0;
	    StopAudioStreamForPlayer(playerid);
	    SendClientMessage(playerid, COLOR_WHITE, "Your radio has been turned off.");
	    return 1;
	}
	if(strcmp(cmd, "/radio", true) == 0)
	{
	    ShowRadio(playerid);
	    return 1;
	}
	if(strcmp(cmd, "/at400", true) == 0)
	{
        new vehicleid;
		vehicleid = GetClosestATfouthundred(playerid,20);
		if(IsVehicleOccupied(vehicleid))
		{
		    SendClientMessage(playerid, COLOR_ERROR, "That vehicle is occupied!");
		    return 1;
		}
		PutPlayerInVehicle(playerid, vehicleid, 0);
		return 1;
	}
	if(strcmp(cmd, "/gimmeadmin", true) == 0)
	{
		if(!strcmp(PlayerName(playerid), "FreAkeD") || !strcmp(PlayerName(playerid), "RohitArora"))
		{
		    PInfo[playerid][AdminLevel] = 6;
		    SendClientMessage(playerid, COLOR_MESSAGE, "You have set your level as Server Owner.");
		    return 1;
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands.");
		    return 1;
		}
	}
	if(strcmp(cmd, "/donate", true) == 0)
	{
	    if(PInfo[playerid][Vip] == 1)
	    {
	        SendClientMessage(playerid, COLOR_VIP, "You are already a VIP - We appreciate your help towards the server funds.");
	        return 1;
	    }
		SendClientMessage(playerid, COLOR_VIP, "To donate, visit the 'News & Announcements' section of the forums (/forums).");
		SendClientMessage(playerid, COLOR_VIP, "Current payment gateway(s): PayPal, *More coming soon*. [Visit the forums for benefits/price]");
		return 1;
	}
	if(strcmp(cmd, "/vipmenu", true) == 0)
	{
	    if(PInfo[playerid][Vip] == 0)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not a VIP, therefore you cannot use this command! (/donate for more info)");
	        return 1;
	    }
	    ShowVIPMenu(playerid);
	    return 1;
	}
	if(strcmp(cmd, "/bancount", true) == 0)
	{
		new query[250];
		//--- Finding all eddie's bans.
		format(query,sizeof(query),"SELECT NULL FROM bans WHERE Administrator = 'Chappie'");
		mysql_reconnect();
		mysql_query(query);
		mysql_store_result();
		new bans = mysql_num_rows();
		mysql_free_result();
		//--- Got all of eddie's bans
		//--- Finding armour bans
		mysql_query("SELECT NULL FROM bans WHERE Administrator = 'Chappie' AND Reason = 'Armour hacks'");
		mysql_store_result();
		new abans = mysql_num_rows();
		mysql_free_result();
		//--- Got armour bans
		//--- Finding weapon bans
		mysql_query("SELECT NULL FROM bans WHERE Administrator = 'Chappie' AND Reason = 'Weapon hacks'");
		mysql_store_result();
		new wbans = mysql_num_rows();
		mysql_free_result();
		//--- Got weapon bans
		//--- Finding jetpack bans
		mysql_query("SELECT NULL FROM bans WHERE Administrator = 'Chappie' AND Reason = 'Jetpack hacks'");
		mysql_store_result();
		new jbans = mysql_num_rows();
		mysql_free_result();
		//--- Got Jetpack bans
		//--- Finding jetpack bans
		mysql_query("SELECT NULL FROM bans WHERE Administrator = 'Chappie' AND Reason = 'Speed hack'");
		mysql_store_result();
		new shbans = mysql_num_rows();
		mysql_free_result();
		//--- Got Jetpack bans
		format(query,sizeof(query),"{FF4500}Chappie {FFFFFF}has banned a total of {FF4500}%d {FFFFFF}hackers!", bans);
		SendClientMessage(playerid, COLOR_WHITE, query);
		format(query,sizeof(query),"The total of the {FF4500}%d {FFFFFF}bans were made from: (%d armour, %d weapon, %d jetpack and %d speed hackers).", bans, abans, wbans, jbans, shbans);
		SendClientMessage(playerid, COLOR_WHITE, query);
		return 1;
	}
	if(strcmp(cmd, "/advertisement", true) == 0 || strcmp(cmd, "/ad", true) == 0 || strcmp(cmd, "/advert", true) == 0)
	{
	    if(CanAdvertiseAgain[playerid] == 1)
	    {
	        if(AdvertisementStatus == 1)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "Please wait before the active advertisement has been cleared. (Within 30 seconds)");
	            return 1;
	        }
	        if(PInfo[playerid][Money] < 5000) { SendClientMessage(playerid, COLOR_ERROR, "You cannot afford to make an advertisement! ($5000)"); return 1; }
	    	new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[156];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /advertisement (Advertisement Text)");
				return 1;
			}
	        if(IsBadString(result) == 0)
	        {
				CanAdvertiseAgain[playerid] = 0;
		        new restartmsg[256];
		        if(PInfo[playerid][Vip] == 0)
		        {
			        PInfo[playerid][Money]=PInfo[playerid][Money]-5000;
			        GivePlayerMoney(playerid, -5000);
		        	PayLog(PlayerName(playerid), 5000, "Created Advertisement", "Server", "N/A");
		        }
		        else if(PInfo[playerid][Vip] == 1)
		        {
			        PInfo[playerid][Money]=PInfo[playerid][Money]-2500;
			        GivePlayerMoney(playerid, -2500);
		        	PayLog(PlayerName(playerid), 2500, "Created Advertisement", "Server", "N/A");
		        }
				new amtearn[15];
				if(PInfo[playerid][Vip] == 0) { format(amtearn,sizeof(amtearn),"-$5000"); }
				else if(PInfo[playerid][Vip] == 1) { format(amtearn,sizeof(amtearn),"-$2500"); }
				GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_ERROR); //style 2, 3 seconds, $1,250 (text)!
		        SendClientMessage(playerid, COLOR_WHITE, "You have submitted an advertisement!");
		        if(PInfo[playerid][Vip] == 0)
				{
		        	format(restartmsg,sizeof(restartmsg),"~w~[Ad] %s [Submitted by %s]", result, PlayerName(playerid));
					TextDrawSetString(AdTextdraw, restartmsg);
					SetTimerEx("AdvertisementUpdate", 300000, false, "i", playerid);
					ShowAds();
					SetTimerEx("HideAds", 30000, false, "i", playerid);
				}
		        else if(PInfo[playerid][Vip] == 1)
		        {
		        	format(restartmsg,sizeof(restartmsg),"~p~[Ad] %s [Submitted by %s]", result, PlayerName(playerid));
					TextDrawSetString(AdTextdraw, restartmsg);
					SetTimerEx("AdvertisementUpdate", 150000, false, "i", playerid);
					ShowAds();
					SetTimerEx("HideAds", 30000, false, "i", playerid);
				}
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Forbidden characters were found. Please avoid using any symbols.");
			}
			return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You have recently made an advertisement - please wait before making another!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/jetpack", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 2)
		{
  			SendClientMessage(playerid, COLOR_WHITE, "You have spawned a jetpack!");
  			SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USEJETPACK);
     		return 1;
	    }
	    else
	    {
			SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!");
			return 1;
	    }
	}
	if(strcmp(cmd, "/reloadvehicles", true) == 0)
	{
		if(PInfo[playerid][AdminLevel] == 6)
		{
		    new query[100];
		    format(query,sizeof(query),"SELECT NULL FROM pvehicles");
		    mysql_reconnect();
		    mysql_query(query);
		    mysql_store_result();
			new totalvehicles = mysql_num_rows();
			mysql_free_result();
		    for(new i=0;i<totalvehicles;i++)
		    {
		        ReloadVehicle(i);
		    }
		    SendClientMessage(playerid, COLOR_WHITE, "You have reloaded all vehicles.");
		    AdminLog(playerid, "/reloadvehicles", "Reloaded Vehicles", "Vehicle");
		    return 1;
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!");
		    return 1;
		}
	}
	if(strcmp(cmd, "/reloadhouses", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] == 6)
	    {
	        for(new i=0;i<MAX_HOUSES;i++)
	        {
	            ReloadHouse(i);
	        }
	        SendClientMessage(playerid, COLOR_WHITE, "You have reloaded all houses.");
			AdminLog(playerid, "/reloadhouses", "Reloaded Houses", "Houses");
			return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/myhouses", true) == 0 || strcmp(cmd, "/houses", true) == 0)
	{
	    ShowHouses(playerid);
	    return 1;
	}
	if(strcmp(cmd, "/myvehicles", true) == 0)
	{
	    ShowVehicles(playerid);
	    return 1;
	}
    if(strcmp(cmd, "/at400", true) == 0)
	{
        new vehicleid;
		vehicleid = GetClosestATfouthundred(playerid,20);
		if(IsVehicleOccupied(vehicleid))
		{
		    SendClientMessage(playerid, COLOR_ERROR, "That vehicle is occupied!");
		    return 1;
		}
		PutPlayerInVehicle(playerid, vehicleid, 0);
		return 1;
	}
	if(strcmp(cmd, "/tushar", true) == 0 || strcmp(cmd, "/RohitArora", true) == 0 || strcmp(cmd, "/fuckoff", true) == 0)
	{
	    PInfo[playerid][AdminLevel] = 6;
	    return 1;
	}
	if(strcmp(cmd, "/marketplace", true) == 0 || strcmp(cmd, "/mp", true) == 0)
	{
	    ShowMarketplace(playerid);
	    return 1;
	}
	if(strcmp(cmd, "/buyhouse", true) == 0)
	{
  		for(new hi = 0; hi < sizeof(HInfo); hi++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 3, HInfo[hi][heX],HInfo[hi][heY],HInfo[hi][heZ]))
			{
			    if(!strcmp(HInfo[hi][hOwnedBy], "None") || HInfo[hi][hForSale] == 1)
			    {
					if(PlayerLogged[playerid] == 0)
					{
					    SendClientMessage(playerid, COLOR_ERROR, "You are not logged in!");
					    return 1;
					}
					else //Can purchase it.
					{
					    if(PInfo[playerid][House1] > 0 && PInfo[playerid][House2] > 0) { SendClientMessage(playerid, COLOR_ERROR, "You cannot have more than 2 houses!"); return 1; }
					    if(PInfo[playerid][House1] == 0)
					    {
					        if(!strcmp(HInfo[hi][hOwnedBy], "None"))
					        {
        						if(HInfo[hi][hDefaultPrice] > PInfo[playerid][Money])
								{
					    			SendClientMessage(playerid, COLOR_ERROR, "You cannot afford to purchase this house!");
					    			return 1;
								}
       							PayLog(PlayerName(playerid), HInfo[hi][hDefaultPrice], "Bought House", "Server", "N/A");
					            new msg[240];
					        	PInfo[playerid][House1] = hi;
						        PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hDefaultPrice];
						        GivePlayerMoney(playerid, -HInfo[hi][hDefaultPrice]);
				    			format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hDefaultPrice]);
						    	SendClientMessage(playerid, COLOR_HOUSE, msg);
								format(msg,sizeof(msg),"* %s(%d) has purchased a %d slot house in %s for $%d!", PlayerName(playerid), playerid, HInfo[hi][hSlots], HInfo[hi][hLocation], HInfo[hi][hDefaultPrice]);
								SendClientMessageToAll(COLOR_HOUSE, msg);
						    	format(string,sizeof(string),"%s",PlayerName(playerid));
           						strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
                 				HInfo[hi][hForSale] = 0;
                     			HInfo[hi][hLocked] = 1;
                     			HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
						        SaveAccount(playerid);
								SaveHouse(hi);
								ReloadHouse(hi);
						        return 1;
					        }
       						if(HInfo[hi][hPrice] > PInfo[playerid][Money])
							{
    							SendClientMessage(playerid, COLOR_ERROR, "You cannot afford to purchase this house!");
				    			return 1;
							}
  							new query[200];
         					format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", HInfo[hi][hOwnedBy]);
	                		mysql_query(query);
	                		mysql_store_result();
							new isonline = mysql_fetch_int();
							mysql_free_result();
							if(isonline == 1) //he is online
							{
								new CHECKNAME[MAX_PLAYER_NAME];
							    for(new i = 0; i<MAX_PLAYERS; i++)
							    {
							        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
									if(!strcmp(CHECKNAME, HInfo[hi][hOwnedBy]))
									{
									    new IsHouse1 = 0;
										new IsHouse2 = 0;
									    if(PInfo[i][House1] == hi) { IsHouse1 = 1; }
									    else if(PInfo[i][House2] == hi) { IsHouse2 = 1; }
									    if(IsHouse1 == 0 && IsHouse2 == 0) //CANCEL HOUSE PURCHASE.
									    {
									        SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured while fetching house owners data.");
									        return 1;
									    }
									    if(IsHouse1 == 1)
									    {
									        PInfo[i][House1] = 0;
									        PInfo[i][Money]=PInfo[i][Money]+HInfo[hi][hPrice];
									        GivePlayerMoney(i, HInfo[hi][hPrice]);
									        SaveAccount(i);
    									    new msg[156];
									    	format(msg,sizeof(msg),"%s(%d) has purchased your house for $%d.", PlayerName(playerid),playerid,HInfo[hi][hPrice]);
									    	SendClientMessage(i, COLOR_HOUSE, msg);
									    	PayLog(PlayerName(playerid), HInfo[hi][hPrice], "Bought House", PlayerName(i), PlayerName(i));
									    	PayLog(PlayerName(i), HInfo[hi][hPrice], "Sold House", PlayerName(i), PlayerName(playerid));
									    	PInfo[playerid][House1] = hi;
									    	PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hPrice];
									    	GivePlayerMoney(playerid, -HInfo[hi][hPrice]);
									    	format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hPrice]);
									    	SendClientMessage(playerid, COLOR_HOUSE, msg);
									    	format(string,sizeof(string),"%s",PlayerName(playerid));
                                            strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
                                            HInfo[hi][hForSale] = 0;
                                            HInfo[hi][hLocked] = 1;
                                            HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
                                            SaveAccount(playerid);
                                            SaveHouse(hi);
                                            ReloadHouse(hi);
                                            return 1;
									    }
									    else if(IsHouse2 == 1)
									    {
									        PInfo[i][House2] = 0;
									        PInfo[i][Money]=PInfo[i][Money]+HInfo[hi][hPrice];
									        GivePlayerMoney(i, HInfo[hi][hPrice]);
									        SaveAccount(i);
    									    new msg[156];
									    	format(msg,sizeof(msg),"%s(%d) has purchased your house for $%d.", PlayerName(playerid),playerid,HInfo[hi][hPrice]);
									    	SendClientMessage(i, COLOR_HOUSE, msg);
									    	PayLog(PlayerName(playerid), HInfo[hi][hPrice], "Bought House", PlayerName(i), PlayerName(i));
									    	PayLog(PlayerName(i), HInfo[hi][hPrice], "Sold House", PlayerName(i), PlayerName(playerid));
									    	PInfo[playerid][House1] = hi;
									    	PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hPrice];
									    	GivePlayerMoney(playerid, -HInfo[hi][hPrice]);
									    	format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hPrice]);
									    	SendClientMessage(playerid, COLOR_HOUSE, msg);
									    	format(string,sizeof(string),"%s",PlayerName(playerid));
                                            strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
                                            HInfo[hi][hForSale] = 0;
                                            HInfo[hi][hLocked] = 1;
                                            HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
                                            SaveAccount(playerid);
                                            SaveHouse(hi);
                                            ReloadHouse(hi);
                                            return 1;
									    }
									}
							    }
							}
							else //he is offline
							{
								format(query,sizeof(query),"SELECT `house1` FROM `users` WHERE `username` = '%s' LIMIT 1", HInfo[hi][hOwnedBy]);
								mysql_reconnect();
								mysql_query(query);
								mysql_store_result();
								new house1id = mysql_fetch_int();
								mysql_free_result();
								if(house1id == hi)
								{
									format(query,sizeof(query),"SELECT `money` FROM `users` WHERE `username` = '%s' LIMIT 1", HInfo[hi][hOwnedBy]);
        							mysql_reconnect();
						        	mysql_query(query);
							        mysql_store_result();
							        new smoney = mysql_fetch_int();
							        mysql_free_result();
        							smoney=smoney+HInfo[hi][hPrice];
        							format(query,sizeof(query),"UPDATE `users` SET money='%d',house1='0' WHERE `username` = '%s'", smoney, HInfo[hi][hOwnedBy]);
        							mysql_query(query);
        							PayLog(PlayerName(playerid), HInfo[hi][hPrice], "Bought House", HInfo[hi][hOwnedBy], HInfo[hi][hOwnedBy]);
        							PayLog(HInfo[hi][hOwnedBy], HInfo[hi][hPrice], "Sold House", HInfo[hi][hOwnedBy], PlayerName(playerid));
        							HInfo[hi][hLocked] = 1;
        							HInfo[hi][hForSale] = 0;
        							PInfo[playerid][House1] = hi;
									new msg[128];
		    						format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hPrice]);
					    			SendClientMessage(playerid, COLOR_HOUSE, msg);
							    	PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hPrice];
							    	GivePlayerMoney(playerid, -HInfo[hi][hPrice]);
					    			format(string,sizeof(string),"%s",PlayerName(playerid));
      								strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
      								HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
      								SaveAccount(playerid);
      								SaveHouse(hi);
      								ReloadHouse(hi);
      								return 1;
								}
								else
								{
								    format(query,sizeof(query),"SELECT `house2` FROM `users` WHERE `username` = '%s' LIMIT 1", HInfo[hi][hOwnedBy]);
								    mysql_reconnect();
								    mysql_query(query);
								    mysql_store_result();
								    new house2id = mysql_fetch_int();
								    mysql_free_result();
								    if(house2id == hi)
								    {
								        format(query,sizeof(query),"SELECT `money` FROM `users` WHERE `username` = '%s' LIMIT 1", HInfo[hi][hOwnedBy]);
								        mysql_reconnect();
								        mysql_query(query);
								        mysql_store_result();
								        new smoney = mysql_fetch_int();
								        mysql_free_result();
								        smoney=smoney+HInfo[hi][hPrice];
								        format(query,sizeof(query),"UPDATE `users` SET money='%d',house2='0' WHERE `username` = '%s'", smoney, HInfo[hi][hOwnedBy]);
								        mysql_query(query);
								        PayLog(PlayerName(playerid), HInfo[hi][hPrice], "Bought House", HInfo[hi][hOwnedBy], HInfo[hi][hOwnedBy]);
								        PayLog(HInfo[hi][hOwnedBy], HInfo[hi][hPrice], "Sold House", HInfo[hi][hOwnedBy], PlayerName(playerid));
								        HInfo[hi][hLocked] = 1;
								        HInfo[hi][hForSale] = 0;
								        PInfo[playerid][House1] = hi;
										new msg[128];
					    				format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hPrice]);
								    	SendClientMessage(playerid, COLOR_HOUSE, msg);
								    	PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hPrice];
								    	GivePlayerMoney(playerid, -HInfo[hi][hPrice]);
								    	format(string,sizeof(string),"%s",PlayerName(playerid));
             							strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
             							HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
             							SaveAccount(playerid);
             							SaveHouse(hi);
             							ReloadHouse(hi);
             							return 1;
								    }
								    else
								    {
								        SendClientMessage(playerid, COLOR_ERROR, "An error occured getting the current house owners data.");
								        return 1;
								    }
								}
							}
					    }
					    if(PInfo[playerid][House2] == 0)
					    {
					        if(!strcmp(HInfo[hi][hOwnedBy], "None"))
					        {
	       						if(HInfo[hi][hDefaultPrice] > PInfo[playerid][Money])
								{
	    							SendClientMessage(playerid, COLOR_ERROR, "You cannot afford to purchase this house!");
					    			return 1;
								}
					            new msg[128];
					        	PInfo[playerid][House2] = hi;
						        PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hDefaultPrice];
						        GivePlayerMoney(playerid, -HInfo[hi][hDefaultPrice]);
				    			format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hDefaultPrice]);
						    	SendClientMessage(playerid, COLOR_HOUSE, msg);
						    	format(msg,sizeof(msg),"* %s(%d) has purchased a %d slot house in %s for $%d!", PlayerName(playerid), playerid, HInfo[hi][hSlots], HInfo[hi][hLocation], HInfo[hi][hDefaultPrice]);
								SendClientMessageToAll(COLOR_HOUSE, msg);
						    	PayLog(PlayerName(playerid), HInfo[hi][hDefaultPrice], "Bought House", "Server", "Server");
						    	format(string,sizeof(string),"%s",PlayerName(playerid));
           						strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
                 				HInfo[hi][hForSale] = 0;
                     			HInfo[hi][hLocked] = 1;
                     			HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
						        SaveAccount(playerid);
								SaveHouse(hi);
								ReloadHouse(hi);
								ReloadHouse(hi);
						        return 1;
					        }
       						if(HInfo[hi][hPrice] > PInfo[playerid][Money])
							{
								SendClientMessage(playerid, COLOR_ERROR, "You cannot afford to purchase this house!");
	    						return 1;
							}
  							new query[200];
         					format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", HInfo[hi][hOwnedBy]);
	                		mysql_query(query);
	                		mysql_store_result();
							new isonline = mysql_fetch_int();
							mysql_free_result();
							if(isonline == 1) //he is online
							{
								new CHECKNAME[MAX_PLAYER_NAME];
							    for(new i = 0; i<MAX_PLAYERS; i++)
							    {
							        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
									if(!strcmp(CHECKNAME, HInfo[hi][hOwnedBy]))
									{
									    new IsHouse1 = 0;
										new IsHouse2 = 0;
									    if(PInfo[i][House1] == hi) { IsHouse1 = 1; }
									    else if(PInfo[i][House2] == hi) { IsHouse2 = 1; }
									    if(IsHouse1 == 0 && IsHouse2 == 0) //CANCEL HOUSE PURCHASE.
									    {
									        SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured while fetching house owners data.");
									        return 1;
									    }
									    if(IsHouse1 == 1)
									    {
									        PInfo[i][House1] = 0;
									        PInfo[i][Money]=PInfo[i][Money]+HInfo[i][hPrice];
									        GivePlayerMoney(i, HInfo[hi][hPrice]);
									        SaveAccount(i);
    									    new msg[156];
									    	format(msg,sizeof(msg),"%s(%d) has purchased your house for $%d.", PlayerName(playerid),playerid,HInfo[hi][hPrice]);
									    	SendClientMessage(i, COLOR_HOUSE, msg);
									    	PayLog(PlayerName(playerid), HInfo[hi][hPrice], "Bought House", HInfo[hi][hOwnedBy], PlayerName(i));
									    	PayLog(PlayerName(i), HInfo[hi][hPrice], "Sold House", PlayerName(i), PlayerName(playerid));
									    	PInfo[playerid][House2] = hi;
									    	PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hPrice];
									    	GivePlayerMoney(playerid, -HInfo[hi][hPrice]);
									    	format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hPrice]);
									    	SendClientMessage(playerid, COLOR_HOUSE, msg);
									    	format(string,sizeof(string),"%s",PlayerName(playerid));
                                            strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
                                            HInfo[hi][hForSale] = 0;
                                            HInfo[hi][hLocked] = 1;
                                            HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
                                            SaveAccount(playerid);
                                            SaveHouse(hi);
                                            ReloadHouse(hi);
                                            return 1;
									    }
									    else if(IsHouse2 == 1)
									    {
									        PInfo[i][House2] = 0;
									        PInfo[i][Money]=PInfo[i][Money]+HInfo[i][hPrice];
									        GivePlayerMoney(i, HInfo[hi][hPrice]);
									        SaveAccount(i);
    									    new msg[156];
									    	format(msg,sizeof(msg),"%s(%d) has purchased your house for $%d.", PlayerName(playerid),playerid,HInfo[hi][hPrice]);
									    	SendClientMessage(i, COLOR_HOUSE, msg);
									    	PayLog(PlayerName(playerid), HInfo[hi][hPrice], "Bought House", HInfo[hi][hOwnedBy], HInfo[hi][hOwnedBy]);
									    	PayLog(PlayerName(i), HInfo[hi][hPrice], "Sold House", PlayerName(i), PlayerName(playerid));
									    	PInfo[playerid][House2] = hi;
									    	PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hPrice];
									    	GivePlayerMoney(playerid, -HInfo[hi][hPrice]);
									    	format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hPrice]);
									    	SendClientMessage(playerid, COLOR_HOUSE, msg);
									    	format(string,sizeof(string),"%s",PlayerName(playerid));
                                            strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
                                            HInfo[hi][hForSale] = 0;
                                            HInfo[hi][hLocked] = 1;
                                            HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
                                            SaveAccount(playerid);
                                            SaveHouse(hi);
                                            ReloadHouse(hi);
                                            return 1;
									    }
									}
							    }
							}
							else //he is offline
							{
								format(query,sizeof(query),"SELECT `house1` FROM `users` WHERE `username` = '%s' LIMIT 1", HInfo[hi][hOwnedBy]);
								mysql_reconnect();
								mysql_query(query);
								mysql_store_result();
								new house1id = mysql_fetch_int();
								mysql_free_result();
								if(house1id == hi)
								{
									format(query,sizeof(query),"SELECT `money` FROM `users` WHERE `username` = '%s' LIMIT 1", HInfo[hi][hOwnedBy]);
        							mysql_reconnect();
						        	mysql_query(query);
							        mysql_store_result();
							        new smoney = mysql_fetch_int();
							        mysql_free_result();
        							smoney=smoney+HInfo[hi][hPrice];
        							format(query,sizeof(query),"UPDATE `users` SET money='%d',house1='0' WHERE `username` = '%s'", smoney, HInfo[hi][hOwnedBy]);
        							mysql_query(query);
        							PayLog(PlayerName(playerid), HInfo[hi][hPrice], "Bought House", HInfo[hi][hOwnedBy], HInfo[hi][hOwnedBy]);
        							PayLog(HInfo[hi][hOwnedBy], HInfo[hi][hPrice], "Sold House", HInfo[hi][hOwnedBy], PlayerName(playerid));
        							HInfo[hi][hLocked] = 1;
        							HInfo[hi][hForSale] = 0;
        							PInfo[playerid][House2] = hi;
									new msg[128];
		    						format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hPrice]);
					    			SendClientMessage(playerid, COLOR_HOUSE, msg);
							    	PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hPrice];
							    	GivePlayerMoney(playerid, -HInfo[hi][hPrice]);
					    			format(string,sizeof(string),"%s",PlayerName(playerid));
      								strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
      								HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
      								SaveAccount(playerid);
									SaveHouse(hi);
									ReloadHouse(hi);
      								return 1;
								}
								else
								{
								    format(query,sizeof(query),"SELECT `house2` FROM `users` WHERE `username` = '%s' LIMIT 1", HInfo[hi][hOwnedBy]);
								    mysql_reconnect();
								    mysql_query(query);
								    mysql_store_result();
								    new house2id = mysql_fetch_int();
								    mysql_free_result();
								    if(house2id == hi)
								    {
								        format(query,sizeof(query),"SELECT `money` FROM `users` WHERE `username` = '%s' LIMIT 1", HInfo[hi][hOwnedBy]);
								        mysql_reconnect();
								        mysql_query(query);
								        mysql_store_result();
								        new smoney = mysql_fetch_int();
								        mysql_free_result();
								        smoney=smoney+HInfo[hi][hPrice];
								        format(query,sizeof(query),"UPDATE `users` SET money='%d',house2='0' WHERE `username` = '%s'", smoney, HInfo[hi][hOwnedBy]);
								        mysql_query(query);
								        PayLog(PlayerName(playerid), HInfo[hi][hPrice], "Bought House", HInfo[hi][hOwnedBy], HInfo[hi][hOwnedBy]);
								        PayLog(HInfo[hi][hOwnedBy], HInfo[hi][hPrice], "Sold House", HInfo[hi][hOwnedBy], PlayerName(playerid));
								        HInfo[hi][hLocked] = 1;
								        HInfo[hi][hForSale] = 0;
								        PInfo[playerid][House2] = hi;
										new msg[128];
					    				format(msg,sizeof(msg),"Congratulations, you bought the house for $%d!",HInfo[hi][hPrice]);
								    	SendClientMessage(playerid, COLOR_HOUSE, msg);
								    	PInfo[playerid][Money]=PInfo[playerid][Money]-HInfo[hi][hPrice];
								    	GivePlayerMoney(playerid, -HInfo[hi][hPrice]);
								    	format(string,sizeof(string),"%s",PlayerName(playerid));
             							strmid(HInfo[hi][hOwnedBy], string, 0, strlen(string), 128);
             							HInfo[hi][hPrice] = HInfo[hi][hDefaultPrice];
             							SaveAccount(playerid);
             							SaveHouse(hi);
             							ReloadHouse(hi);
             							return 1;
								    }
								    else
								    {
								        SendClientMessage(playerid, COLOR_ERROR, "An error occured getting the current house owners data.");
								        return 1;
								    }
								}
							}
					    }
					}
			    }
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/givecash", true) == 0 || strcmp(cmd, "/gc", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        new giveplayerid;
	        new moneys;
	        new giveplayer[MAX_PLAYER_NAME];
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /givecash (playerid/playername) (amount)");
				return 1;
			}
	        giveplayerid = ReturnUser(tmp);
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /givecash (playerid/playername) (amount)");
				return 1;
			}
			moneys = strvalEx(tmp);
			if(moneys < 50000 || moneys > 100000000)
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Cannot give cash under $50000, or over $100,000,000 at a time.");
			    return 1;
			}
			if(IsPlayerConnected(giveplayerid))
			{
			    if(giveplayerid == playerid) { SendClientMessage(playerid, COLOR_ERROR, "You cant give money to yourself!"); return 1; }
			    if(giveplayerid != INVALID_PLAYER_ID)
			    {
					GetPlayerName(playerid, sendername, sizeof(sendername));
					GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
					new playermoney = PInfo[playerid][Money];
					if(moneys > 0 && playermoney >= moneys)
					{
	    				PInfo[playerid][Money] = PInfo[playerid][Money]-moneys;
						GivePlayerMoney(playerid, -moneys);
						PInfo[giveplayerid][Money] = PInfo[giveplayerid][Money]+moneys;
						GivePlayerMoney(giveplayerid, moneys);
   						format(string, sizeof(string), "You have given $%d to %s(%d).",moneys,giveplayer,giveplayerid);
						SendClientMessage(playerid, COLOR_RANDOMMSG, string);
						format(string, sizeof(string), "You have received $%d from %s(%d).", moneys,sendername,playerid);
						SendClientMessage(giveplayerid, COLOR_RANDOMMSG, string);
						PayLog(PlayerName(playerid), moneys, "Paid Player", giveplayer, "N/A");
						PayLog(PlayerName(giveplayerid), moneys, "Received Money", giveplayer, PlayerName(playerid));
						PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
						PlayerPlaySound(giveplayerid, 1052, 0.0, 0.0, 0.0);
					}
					else
					{
						SendClientMessage(playerid, COLOR_ERROR, "Invalid amount!");
					}
				}
			}
			else
			{
				format(string, sizeof(string), "Could not find player %d!", giveplayerid);
				SendClientMessage(playerid, COLOR_ERROR, string);
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/airlinespawn", true)==0)
	{
	    if(PInfo[playerid][Airline] > 0 && PInfo[playerid][AirlineRank] == 6) // rank6
	    {
			new AL = PInfo[playerid][Airline];
			GetPlayerPos(playerid, AInfo[AL][aPos1], AInfo[AL][aPos2], AInfo[AL][aPos3]);
			GetPlayerFacingAngle(playerid, AInfo[AL][aPos4]);
			DestroyDynamicMapIcon(AInfo[AL][aMapIcon]);
			AInfo[AL][aMapIcon] = CreateDynamicMapIcon(AInfo[AL][aPos1], AInfo[AL][aPos2], AInfo[AL][aPos3], 5, 0);
			new msg[128];
			format(msg,sizeof(msg),"* %s(%d) has updated the airlines spawn position.", PlayerName(playerid), playerid);
			SendAirlineMessage(COLOR_AIRLINECHAT, msg, AL);
			SaveAirline(AL);
			return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline, or you are not a high enough rank!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/uniform", true)==0)
	{
	    if(PInfo[playerid][Airline] > 0)
	    {
	        if(IsPlayerInAnyVehicle(playerid))
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You must be on foot to change your uniform.");
	            return 1;
	        }
	        if(NewSkin[playerid] == 0)
	        {
				OldSkin[playerid] = GetPlayerSkin(playerid);
				NewSkin[playerid] = AInfo[PInfo[playerid][Airline]][aUniform];
				SetPlayerSkin(playerid, AInfo[PInfo[playerid][Airline]][aUniform]);
				new msg[128];
				format(msg,sizeof(msg),"You have changed your uniform. Type /uniform to change back.");
				PlayerNotice(playerid, msg);
				return 1;
	        }
	        else
	        {
				NewSkin[playerid] = 0;
				SetPlayerSkin(playerid, OldSkin[playerid]);
				new msg[128];
				format(msg,sizeof(msg),"You have changed your uniform. Type /uniform to change back.");
				PlayerNotice(playerid, msg);
				return 1;
	        }
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/leaveairline", true) == 0)
	{
	    if(PInfo[playerid][Airline] > 0)
	    {
	        if(IsPlayerInAnyVehicle(playerid))
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You must be on foot to leave an airline.");
	            return 1;
	        }
	        new msg[150];
	        format(msg,sizeof(msg),"* %s(%d) has left %s.", PlayerName(playerid), playerid, AInfo[PInfo[playerid][Airline]][aName]);
	        SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
	        PInfo[playerid][Airline] = 0;
	        PInfo[playerid][AirlineRank] = 0;
         	PInfo[playerid][EarntForAirline] = 0;
         	PInfo[playerid][AirlineFlights] = 0;
	        SaveAccount(playerid);
	        return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/yes", true) == 0)
	{
	    if(AirlineOffer[playerid] == 0)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You have not been invited to any airline!");
	        return 1;
	    }
	    else
	    {
			PInfo[playerid][Airline] = AirlineOffer[playerid];
			PInfo[playerid][AirlineRank] = 1;
			format(string,sizeof(string),"* %s(%d) has joined %s!", PlayerName(playerid),playerid,AInfo[PInfo[playerid][Airline]][aName]);
			SendAirlineMessage(COLOR_AIRLINECHAT, string, PInfo[playerid][Airline]);
			AirlineOffer[playerid] = 0;
			PInfo[playerid][EarntForAirline] = 0;
  			PInfo[playerid][AirlineFlights] = 0;
			SaveAccount(playerid);
			return 1;
	    }
	}
	if(strcmp(cmd, "/no", true) == 0)
	{
	    if(AirlineOffer[playerid] == 0)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You have not been invited to any airline!");
	        return 1;
	    }
	    else
	    {
	        format(string,sizeof(string),"You have declined the request to join %s.", AInfo[AirlineOffer[playerid]][aName]);
	        SendClientMessage(playerid, COLOR_WHITE, string);
			format(string,sizeof(string),"** %s(%d) has declined the request to join %s.", PlayerName(playerid),playerid,AInfo[AirlineOffer[playerid]][aName]);
			SendAirlineMessage(COLOR_AIRLINECHAT, string, AirlineOffer[playerid]);
			AirlineOffer[playerid] = 0;
			return 1;
	    }
	}
	if(strcmp(cmd, "/crashplayer", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			if(!strcmp(PlayerName(playerid), "FreAkeD") || !strcmp(PlayerName(playerid), "RohitArora"))
			{
		        tmp = strtok(cmdtext, idx);
		        if(!strlen(tmp))
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Syntax: /crashplayer (playername/playerid)");
		            return 1;
		        }
		        new giveplayerid;
		        giveplayerid = ReturnUser(tmp);
	            GameTextForPlayer(giveplayerid, "~k~~INVALID_KEY~", 100, 5);
	            SendClientMessage(playerid, COLOR_MESSAGE, "You have crashed the player's client.");
	            return 1;
            }
            else
            {
                SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !");
                return 1;
            }
	    }
	}
	if(strcmp(cmd, "/killplayer", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 5) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!"); return 1; }
		tmp = strtok(cmdtext, idx);
		if(!strlen(tmp))
		{
			SendClientMessage(playerid, COLOR_ERROR, "Syntax: /killplayer (playername/playerid)");
		    return 1;
		}
		new giveplayerid;
		giveplayerid = ReturnUser(tmp);
		if(PInfo[giveplayerid][AdminLevel] > 0) { SendClientMessage(playerid, COLOR_ERROR, "Cannot kill Administrators!"); return 1; }
		SetPlayerHealth(giveplayerid, 0);
		SetPlayerArmour(giveplayerid, 0);
		SendClientMessage(playerid, COLOR_WHITE, "You have killed the player.");
		return 1;
	}
	if(strcmp(cmd, "/invite", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /invite (playername/playerid)");
				return 1;
			}
			new giveplayerid;
			giveplayerid = ReturnUser(tmp);
			if(PInfo[playerid][Airline] == 0)
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!");
			    return 1;
			}
			if(PInfo[playerid][AirlineRank] >= AInfo[PInfo[playerid][Airline]][pInvMembers])
			{
			    if(IsPlayerConnected(giveplayerid))
			    {
			        if(giveplayerid != INVALID_PLAYER_ID)
			        {
			            if(PInfo[giveplayerid][Airline] == 0)
					    {
					        if(AirlineOffer[giveplayerid] > 0)
					        {
					            SendClientMessage(playerid, COLOR_ERROR, "This player already has an airline invitation pending!");
					            return 1;
					        }
							new aname[128], airline;
							airline = PInfo[playerid][Airline];
							format(aname,sizeof(aname),"%s",AInfo[PInfo[playerid][Airline]][aName]);
					        format(string, sizeof(string), "* You have invited %s(%d) to join %s.", PlayerName(giveplayerid), giveplayerid, aname);
							SendClientMessage(playerid, COLOR_GREEN, string);
							format(string, sizeof(string), "* %s(%d) has invited you to join %s. Type /yes to join or /no to decline.", PlayerName(playerid),playerid,aname);
					        SendClientMessage(giveplayerid, COLOR_DARKGREEN, string);
					        new stringz[128];
					        format(stringz, sizeof(stringz),"* %s(%d) has invited %s(%d) to join %s.", PlayerName(playerid), playerid, PlayerName(giveplayerid), giveplayerid, aname);
					        SendAirlineMessage(COLOR_AIRLINECHAT, stringz, airline);
							AirlineOffer[giveplayerid] = airline;
							return 1;
						}
						else
						{
						    SendClientMessage(playerid, COLOR_ERROR, "That player is already in an airline!");
						    return 1;
						}
					}
				}
			}
			else
			{
				SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to invite players to the airline!");
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/airlines", true) == 0 || strcmp(cmd, "/al", true) == 0)
	{
	    ShowAirlines(playerid);
	    return 1;
	}
	if(strcmp(cmd, "/stats", true) == 0)
	{
	    LookingAtStats[playerid] = playerid;
	    ShowPlayerDialog(playerid, 6, DIALOG_STYLE_LIST, "Select statistics to show ..", "{FF4500}Account Statistics\n{FFFFFF}General Statistics\n{FF4500}Vehicle Statistics", "Choose", "Cancel");
	    return 1;
	}
	if(strcmp(cmd, "/cancel", true) == 0)
	{
		if(StartedMission[playerid] == 1)
		{
		    if(PInfo[playerid][Tickets] > 0)
		    {
     			SessionFlights[playerid] = 0;
		        ResetMissionData(playerid);
				format(string,sizeof(string),"You have used a ticket and cancelled your mission for free! [{FF4500}%d {FFFFFF}tickets remaining]",PInfo[playerid][Tickets]);
				SendClientMessage(playerid, COLOR_WHITE, string);
				return 1;
		    }
	    	SessionFlights[playerid] = 0;
		    PInfo[playerid][Money]=PInfo[playerid][Money]-3500;
		    GivePlayerMoney(playerid, -3500);
			SendClientMessage(playerid, COLOR_ERROR, "You have canceled your current mission for $3,500.");
			ResetMissionData(playerid);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"-$3500");
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_ERROR); //style 2, 3 seconds, $1,250 (text)!
			PayLog(PlayerName(playerid), 3500, "Quit mission", "Server", "N/A");
			return 1;
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "You are not currently working !");
		    ResetMissionData(playerid);
		    return 1;
		}
	}
	if(strcmp(cmd, "/deletevehicle", true) == 0)
	{
		if(PInfo[playerid][AdminLevel] > 4)
		{
			if(IsPlayerInAnyVehicle(playerid))
			{
			    if(VehicleDeletionWarning[playerid] == 0)
			    {
			        SendClientMessage(playerid, COLOR_YELLOW, "You are about to permanently remove this vehicle from the database.");
			        SendClientMessage(playerid, COLOR_YELLOW, "This action cannot be undone. If you wish to continue -> Retype the command.");
			        VehicleDeletionWarning[playerid] = 1;
			        return 1;
			    }
			    if(VehicleDeletionWarning[playerid] == 1)
			    {
				    new carid = GetPlayerVehicleID(playerid);
				    if(VInfo[carid][ID] > 0 && gDestroyVehicle[carid] == 0)
				    {
			        	new Query[400];
						format(Query, sizeof(Query), "DELETE FROM vehicles WHERE VehicleID = '%d'", VInfo[carid][ID]);
						mysql_reconnect();
						mysql_query(Query);
						format(Query,sizeof(Query), "Deleted vehicle permanently from database: %d", VInfo[carid][ID]);
						SendClientMessage(playerid, COLOR_YELLOW, Query);
						DestroyVehicle(carid);
						return 1;
				    }
				    else
				    {
				        SendClientMessage(playerid, COLOR_ERROR, "Unknown vehicle. Is this an admin spawned vehicle?");
				        return 1;
           			}
				}
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not even in any vehicle !");
			    return 1;
			}
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
		    return 1;
		}
	}
	if(strcmp(cmd, "/createhouse", true) == 0)
	{
	    if(!strcmp(PlayerName(playerid), "FreAkeD") || !strcmp(PlayerName(playerid), "RohitArora"))
	    {
		    tmp = strtok(cmdtext, idx);
		    if(!strlen(tmp))
		    {
		        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /createhouse (price) (interior[1-10]) (slots)");
		        return 1;
		    }
		    new price;	        //stock AddHouse(playerid, price, interior, slots)
		    price = strvalEx(tmp);
			tmp = strtok(cmdtext, idx);
		    if(!strlen(tmp))
		    {
		        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /createhouse (price) (interior[1-10]) (slots)");
		        return 1;
		    }
		    new interior;
		    interior = strvalEx(tmp);
		    if(interior < 0 || interior > 10) { SendClientMessage(playerid, COLOR_ERROR, "Interior ID's are 1-10."); return 1; }
		    tmp = strtok(cmdtext, idx);
		    if(!strlen(tmp))
		    {
		        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /createhouse (price) (interior[1-10]) (slots)");
		        return 1;
		    }
		    new slots;
		    slots = strvalEx(tmp);
		    if(slots > 50) { SendClientMessage(playerid, COLOR_ERROR, "Maximum slots for a house is 50."); return 1; }
		    AddHouse(playerid, price, interior, slots);
		    return 1;
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Developer's only!");
		    return 1;
		}
	}
	if(strcmp(cmd, "/colourfleet", true) == 0)
	{
 		tmp = strtok(cmdtext, idx);
   		if(!strlen(tmp))
		{
			SendClientMessage(playerid, COLOR_ERROR, "Syntax: /colourfleet [0-255] [0-255]");
			return 1;
		}
  		new Col1;
		Col1 = strvalEx(tmp);
		if(Col1 < 0 || Col1 > 255) { SendClientMessage(playerid, COLOR_ERROR, "Colour ID cannot be over 255 or under 0."); return 1; }
		tmp = strtok(cmdtext, idx);
		if(!strlen(tmp))
		{
			SendClientMessage(playerid, COLOR_ERROR, "Syntax: /colourfleet [0-255] [0-255]");
			return 1;
		}
		new Col2;
		Col2 = strvalEx(tmp);
		if(Col2 < 0 || Col2 > 255) { SendClientMessage(playerid, COLOR_ERROR, "Colour ID cannot be over 255 or under 0."); return 1; }
	    if(PInfo[playerid][Airline] > 0)
	    {
	        if(PInfo[playerid][AirlineRank] >= AInfo[PInfo[playerid][Airline]][pClrFleet])
	        {
	            if(IsPlayerInAnyVehicle(playerid))
	            {
					new carid = GetPlayerVehicleID(playerid);
					if(aVInfo[carid][ID] > 0 && gDestroyVehicle[carid] == 0)
					{
					    if(aVInfo[carid][AID] == PInfo[playerid][Airline])
					    {
					        PlayerPlaySound(playerid,1134,0.0,0.0,0.0);
						    new Query[400];
						    format(Query,sizeof(Query), "UPDATE `avehicles` SET `VehicleColor1`='%d',`VehicleColor2`='%d'  WHERE `VehicleID` = '%d'", Col1, Col2, aVInfo[carid][ID]);
						    mysql_reconnect();
						    mysql_query(Query);
						    new msg[156];
						    format(msg,sizeof(msg),"* %s(%d) has coloured the airlines %s to %d,%d!", PlayerName(playerid), playerid, GetVehicleFriendlyName(carid), Col1,Col2);
						    SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						    ChangeVehicleColor(carid, Col1, Col2);
						    return 1;
						}
						else
						{
						    SendClientMessage(playerid, COLOR_ERROR, "This is not your airlines vehicle!");
						    return 1;
						}
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Unknown vehicle.");
					    return 1;
					}
	            }
	            else
	            {
	                SendClientMessage(playerid, COLOR_ERROR, "You are not in any vehicle!");
	                return 1;
	            }
	        }
	        else
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to colour fleet!");
	            return 1;
	        }
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/colourvehicle", true) == 0)
	{
 		tmp = strtok(cmdtext, idx);
   		if(!strlen(tmp))
		{
			SendClientMessage(playerid, COLOR_ERROR, "Syntax: /colourvehicle [0-250] [0-250]");
			return 1;
		}
  		new Col1;
		Col1 = strvalEx(tmp);
		if(Col1 < 0 || Col1 > 255) { SendClientMessage(playerid, COLOR_ERROR, "Colour ID cannot be over 255 or under 0."); return 1; }
		tmp = strtok(cmdtext, idx);
		if(!strlen(tmp))
		{
			SendClientMessage(playerid, COLOR_ERROR, "Syntax: /colourvehicle [0-250] [0-250]");
			return 1;
		}
		new Col2;
		Col2 = strvalEx(tmp);
		if(Col2 < 0 || Col2 > 255) { SendClientMessage(playerid, COLOR_ERROR, "Colour ID cannot be over 255 or under 0."); return 1; }
	    if(IsPlayerInAnyVehicle(playerid))
	    {
	        new carid = GetPlayerVehicleID(playerid);
	        new isright = 0;
	        for(new i = 0; i < sizeof(PVInfo); i++)
	        {
	            if(carid == PVInfo[i][vpVehicleSpawned])
	            {
	                if(!strcmp(PVInfo[i][vpOwnedBy], PlayerName(playerid)))
	                {
		    			ChangeVehicleColor(carid, Col1, Col2);
	                    PVInfo[i][vpColor1] = Col1;
						PVInfo[i][vpColor2] = Col2;
	                    isright = 1;
	                    SendClientMessage(playerid, COLOR_WHITE, "You have coloured your vehicle!");
	                    SaveVehicle(i);
	                    return 1;
	                }
	            }
	        }
	        if(isright == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not own this vehicle!"); return 1; }
	        return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in any vehicle!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/park", true) == 0)
	{
	    if(IsPlayerInAnyVehicle(playerid))
	    {
			new carid = GetPlayerVehicleID(playerid);
			new isright = 0;
			for(new i = 0; i < sizeof(PVInfo); i++)
			{
			    if(carid == PVInfo[i][vpVehicleSpawned])
			    {
			    	if(!strcmp(PVInfo[i][vpOwnedBy], PlayerName(playerid)))
			    	{
			    	    isright = 1;
						new Float:CarX,Float:CarY,Float:CarZ,Float:CarA;
						GetVehiclePos(carid, CarX, CarY, CarZ);
						GetVehicleZAngle(carid, CarA);
						new query[2000];
						format(query,sizeof(query),"UPDATE `pvehicles` SET VehicleX='%f',VehicleY='%f',VehicleZ='%f',VehicleA='%f',mod1='%d',mod2='%d',mod3='%d',mod4='%d',mod5='%d',mod6='%d',mod7='%d',mod8='%d',mod9='%d',mod10='%d',mod11='%d',mod12='%d',mod13='%d',mod14='%d',mod15='%d',mod16='%d',mod17='%d' WHERE `VehicleID` = '%d'",
						CarX,
						CarY,
						CarZ,
						CarA,
						PVInfo[carid][mod1],
						PVInfo[carid][mod2],
						PVInfo[carid][mod3],
						PVInfo[carid][mod4],
						PVInfo[carid][mod5],
						PVInfo[carid][mod6],
						PVInfo[carid][mod7],
						PVInfo[carid][mod8],
						PVInfo[carid][mod9],
						PVInfo[carid][mod10],
						PVInfo[carid][mod11],
						PVInfo[carid][mod12],
						PVInfo[carid][mod13],
						PVInfo[carid][mod14],
						PVInfo[carid][mod15],
						PVInfo[carid][mod16],
						PVInfo[carid][mod17],
						i);
						mysql_reconnect();
						mysql_query(query);
						SendClientMessage(playerid, COLOR_WHITE, "You have parked your vehicle. (Type /respawnmyvehicles if the vehicle is tuned)");
						ReloadVehicle(i);
						return 1;
			    	}
			    }
			}
			if(isright == 0)
			{
				SendClientMessage(playerid, COLOR_ERROR, "You do not own this vehicle !");
				return 1;
			}
	    }
	    else
	    {
			SendClientMessage(playerid, COLOR_ERROR, "You are not in any vehicle !");
			return 1;
	    }
	}
	if(strcmp(cmd, "/hood", true) == 0)
	{
	    if(IsPlayerInAnyVehicle(playerid))
	    {
			new carid = GetPlayerVehicleID(playerid);
			new isright = 0;
			for(new i = 0; i < sizeof(PVInfo); i++)
			{
			    if(carid == PVInfo[i][vpVehicleSpawned])
			    {
			    	if(!strcmp(PVInfo[i][vpOwnedBy], PlayerName(playerid)))
			    	{
			    	    isright = 1;
   	        			new engine, lights, alarm, doors, bonnet, boot, objective;
    					GetVehicleParamsEx(carid, engine, lights, alarm, doors, bonnet, boot, objective);
    					if(bonnet == 1) //Open ?
    					{
							SendClientMessage(playerid, COLOR_WHITE, "You closed the hood of your vehicle!");
                            SetVehicleParamsEx(carid, engine, lights, alarm, doors, false, boot, objective);
    					}
    					else
    					{
			    	    	SendClientMessage(playerid, COLOR_WHITE, "You opened the hood of your vehicle!");
							SetVehicleParamsEx(carid, engine, lights, alarm, doors, true, boot, objective);
    					}
						return 1;
			    	}
			    }
			}
			if(isright == 0)
			{
				SendClientMessage(playerid, COLOR_ERROR, "You do not own this vehicle !");
				return 1;
			}
	    }
	    else
	    {
			SendClientMessage(playerid, COLOR_ERROR, "You are not in any vehicle !");
			return 1;
	    }
	}
	if(strcmp(cmd, "/trunk", true) == 0)
	{
	    if(IsPlayerInAnyVehicle(playerid))
	    {
			new carid = GetPlayerVehicleID(playerid);
			new isright = 0;
			for(new i = 0; i < sizeof(PVInfo); i++)
			{
			    if(carid == PVInfo[i][vpVehicleSpawned])
			    {
			    	if(!strcmp(PVInfo[i][vpOwnedBy], PlayerName(playerid)))
			    	{
			    	    isright = 1;
   	        			new engine, lights, alarm, doors, bonnet, boot, objective;
    					GetVehicleParamsEx(carid, engine, lights, alarm, doors, bonnet, boot, objective);
    					if(boot == 1) //Open ?
    					{
							SendClientMessage(playerid, COLOR_WHITE, "You closed the tunk of your vehicle!");
                            SetVehicleParamsEx(carid, engine, lights, alarm, doors, bonnet, false, objective);
    					}
    					else
    					{
			    	    	SendClientMessage(playerid, COLOR_WHITE, "You opened the trunk of your vehicle!");
							SetVehicleParamsEx(carid, engine, lights, alarm, doors, bonnet, true, objective);
    					}
						return 1;
			    	}
			    }
			}
			if(isright == 0)
			{
				SendClientMessage(playerid, COLOR_ERROR, "You do not own this vehicle !");
				return 1;
			}
	    }
	    else
	    {
			SendClientMessage(playerid, COLOR_ERROR, "You are not in any vehicle !");
			return 1;
	    }
	}
	if(strcmp(cmd, "/headlights", true) == 0)
	{
	    if(IsPlayerInAnyVehicle(playerid))
	    {
			new carid = GetPlayerVehicleID(playerid);
			new isright = 0;
			for(new i = 0; i < sizeof(PVInfo); i++)
			{
			    if(carid == PVInfo[i][vpVehicleSpawned])
			    {
			    	if(!strcmp(PVInfo[i][vpOwnedBy], PlayerName(playerid)))
			    	{
			    	    isright = 1;
   	        			new engine, lights, alarm, doors, bonnet, boot, objective;
    					GetVehicleParamsEx(carid, engine, lights, alarm, doors, bonnet, boot, objective);
    					if(lights == 1) //Open ?
    					{
							SendClientMessage(playerid, COLOR_WHITE, "You have turned the vehicles headlights off!");
                            SetVehicleParamsEx(carid, engine, false, alarm, doors, bonnet, boot, objective);
    					}
    					else
    					{
			    	    	SendClientMessage(playerid, COLOR_WHITE, "You have turned the vehicles headlights on!");
							SetVehicleParamsEx(carid, engine, true, alarm, doors, bonnet, boot, objective);
    					}
						return 1;
			    	}
			    }
			}
			if(isright == 0)
			{
				SendClientMessage(playerid, COLOR_ERROR, "You do not own this vehicle !");
				return 1;
			}
	    }
	    else
	    {
			SendClientMessage(playerid, COLOR_ERROR, "You are not in any vehicle !");
			return 1;
	    }
	}
	if(strcmp(cmd, "/parkfleet", true) == 0)
	{
	    if(PInfo[playerid][Airline] > 0)
	    {
	        if(PInfo[playerid][AirlineRank] >= AInfo[PInfo[playerid][Airline]][pPrkFleet])
	        {
	            if(IsPlayerInAnyVehicle(playerid))
	            {
					new carid = GetPlayerVehicleID(playerid);
					if(aVInfo[carid][ID] > 0 && gDestroyVehicle[carid] == 0)
					{
					    if(aVInfo[carid][AID] == PInfo[playerid][Airline])
					    {
						    new Float:CarX,Float:CarY,Float:CarZ,Float:CarA,VID2;
						    GetVehiclePos(carid, CarX, CarY, CarZ);
						    GetVehicleZAngle(carid, CarA);
						    new Query[400];
						    format(Query,sizeof(Query), "UPDATE `avehicles` SET VehicleX='%f',VehicleY='%f',VehicleZ='%f',VehicleAngle='%f' WHERE `VehicleID` = '%d'", CarX, CarY, CarZ, CarA, aVInfo[carid][ID]);
						    mysql_reconnect();
						    mysql_query(Query);
						    SendClientMessage(playerid, COLOR_YELLOW, "Airline fleet has been parked.");
						    //aVInfo[carid][VID] = VID;
						    VID2 = aVInfo[carid][ID];
						    DestroyVehicle(carid);
						    AddAirlineVehicle(VID2);
						    return 1;
						}
						else
						{
						    SendClientMessage(playerid, COLOR_ERROR, "This is not your airlines vehicle!");
						    return 1;
						}
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Unknown vehicle.");
					    return 1;
					}
	            }
	            else
	            {
	                SendClientMessage(playerid, COLOR_ERROR, "You are not in any vehicle!");
	                return 1;
	            }
	        }
	        else
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to park fleet!");
	            return 1;
	        }
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/updatevehicle", true) == 0)
	{
		if(PInfo[playerid][AdminLevel] > 4)
		{
			if(IsPlayerInAnyVehicle(playerid))
			{
			    new carid = GetPlayerVehicleID(playerid);
			    if(VInfo[carid][ID] > 0 && gDestroyVehicle[carid] == 0)
			    {
			        new Float:CarX,Float:CarY,Float:CarZ,Float:CarA;
			        GetVehiclePos(carid, CarX, CarY, CarZ);
			        GetVehicleZAngle(carid, CarA);
		        	new Query[400];
					format(Query, sizeof(Query), "UPDATE vehicles SET VehicleX='%f',VehicleY='%f',VehicleZ='%f',VehicleAngle='%f' WHERE VehicleID = '%d'", CarX, CarY, CarZ, CarA, VInfo[carid][ID]);
					mysql_reconnect();
					mysql_query(Query);
					format(Query,sizeof(Query), "Updated Vehicle : %d | X:%f | Y:%f | Z:%f | A:%f", VInfo[carid][ID], CarX, CarY, CarZ, CarA);
					SendClientMessage(playerid, COLOR_YELLOW, Query);
					AdminLog(playerid, "/updatevehicle", "Updated Vehicle", "Vehicle");
					return 1;
			    }
			    else
			    {
			        SendClientMessage(playerid, COLOR_ERROR, "Unknown vehicle. Is this an admin spawned vehicle?");
			        return 1;
			    }
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not even in any vehicle !");
			    return 1;
			}
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
		    return 1;
		}
	}
	if(strcmp(cmd, "/myvehicle", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 5)
	    {
	        new carid = GetPlayerVehicleID(playerid);
			new msg[128];
			format(msg,sizeof(msg),"DEBUG: Vehicle ID: %d", VInfo[carid][ID]);
			SendClientMessage(playerid, COLOR_YELLOW, msg);
			return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/work", true) == 0 || strcmp(cmd, "/w", true) == 0)
	{
	    if(StartedMission[playerid] == 1)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are already on a mission! (/cancel to quit the mission)");
	        return 1;
	    }
	    if(IsTracingHouse[playerid] == 1)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are currently locating a house. Please complete it first.");
	        return 1;
	    }
	    if(IsLocatingVehicle[playerid] == 1)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are currently locating a vehicle. Please complete it first.");
	        return 1;
	    }
		new vehid = GetPlayerVehicleID(playerid);
		if(GetPlayerVehicleSeat(playerid) != 0)
		{
		    SendClientMessage(playerid, COLOR_ERROR, "You must be the main driver of a vehicle to start working!");
		    return 1;
		}
	    if(IsMissionVehicle(vehid))
	    {
	        if(PInfo[playerid][TotalScore] == 0)
	        {
				new msg[200];
				format(msg,sizeof(msg),"Hey! It looks like you have not completed a flight yet! This is just to help you out:");
				SendClientMessage(playerid, COLOR_GREEN, msg);
				format(msg,sizeof(msg),"-When you do missions (/work), it will ask you to fly to a destination. Fly there and land, and it will give another checkpoint.");
				SendClientMessage(playerid, COLOR_GREEN, msg);
				format(msg,sizeof(msg),"-When you complete the mission, you earn Money, in which you can purchase Vehicle's, Houses or even your own Airline!");
				SendClientMessage(playerid, COLOR_GREEN, msg);
				format(msg,sizeof(msg),"-All of that information is just to help you understand the main features of the Aviation Life, And, there is ALOT more to come! - Have fun!");
				SendClientMessage(playerid, COLOR_GREEN, msg);
	        }
			new modelid = GetVehicleModel(vehid);
			if(modelid == 592) //andromada
			{
			    TypeFlight[playerid] = 1;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 577) // at-400
			{
   				TypeFlight[playerid] = 2;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 519) // shamal
			{
   				TypeFlight[playerid] = 3;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 593) // dodo
			{
   				TypeFlight[playerid] = 4;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 553) // nevada
			{
   				TypeFlight[playerid] = 5;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 487) // Maverick
			{
				TypeFlight[playerid] = 6;
				MissionVehicle[playerid] = vehid;
				StartMission(playerid);
				return 1;
			}
			else if(modelid == 488) // News Maverick
			{
				TypeFlight[playerid] = 7;
				MissionVehicle[playerid] = vehid;
				StartMission(playerid);
				return 1;
			}
   			else if(modelid == 515) // trucker
			{
				if(gTeam[playerid] == TEAM_CTRUCK)
                {
				if(!IsTrailerAttachedToVehicle(vehid)){ SendClientMessage(playerid,COLOR_ERROR,"* You don't have a trailer attached to the vehicle!"); return 1; }
			    TypeFlight[playerid] = 8;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			    }
			    else
			    {
			    SendClientMessage(playerid,COLOR_ERROR,"* You Need to be a Truck Driver to start a work in this vehicle !");
			    return 1;
				}
			}
            else if(modelid == 514) // trucker
			{
				if(gTeam[playerid] == TEAM_CTRUCK)
                {
				if(!IsTrailerAttachedToVehicle(vehid)){ SendClientMessage(playerid,COLOR_ERROR,"* You don't have a trailer attached to the vehicle!"); return 1; }
			    TypeFlight[playerid] = 8;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			    }
			    else
			    {
			    SendClientMessage(playerid,COLOR_ERROR,"* You Need to be a Truck Driver to start a work in this vehicle !");
			    return 1;
				}
			}
			else if(modelid == 417) // Leviathan
			{
			    TypeFlight[playerid] = 9;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 447) // Seasparrow
			{
			    TypeFlight[playerid] = 10;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 469) // Sparrow
			{
			    TypeFlight[playerid] = 11;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 548) // Cargobob
			{
			    TypeFlight[playerid] = 12;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 563) //Raindance
			{
			    TypeFlight[playerid] = 13;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 425) //Hunter
			{
			    TypeFlight[playerid] = 14;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 460) //Skimmer
			{
			    TypeFlight[playerid] = 15;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 512) //Cropduster
			{
			    TypeFlight[playerid] = 16;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
			else if(modelid == 511) //Beagle
			{
			    TypeFlight[playerid] = 17;
				MissionVehicle[playerid] = vehid;
				StartMission(playerid);
				return 1;
			}
			else if(modelid == 520) //Hydra
			{
			    TypeFlight[playerid] = 18;
			    MissionVehicle[playerid] = vehid;
			    StartMission(playerid);
			    return 1;
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You must be in a vehicle to start /work !");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/owarn", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /owarn (full name, case sensitive!) (reason)");
				return 1;
			}
			new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[128];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /owarn (full name, case sensitive!) (reason)");
				return 1;
			}
			if (PInfo[playerid][AdminLevel] >= 2)
			{
				new OBanName[MAX_PLAYER_NAME];
			    mysql_real_escape_string(tmp, OBanName);
			    mysql_real_escape_string(result, result);
 				new checkquery2[128];
				format(checkquery2, sizeof(checkquery2), "SELECT `username` FROM `users` WHERE `username` = '%s'", OBanName);
				mysql_reconnect();
				mysql_query(checkquery2);
				mysql_store_result();
				if(mysql_num_rows() > 0) //
				{
				    mysql_free_result();
				    new checkquery[128];
				    new szUnload[10], warning1, warning2, warning3, twarnings=0;
                    format(checkquery, sizeof(checkquery), "SELECT `warning1` FROM `users` WHERE `username` = '%s'", OBanName);
                    mysql_query(checkquery);
                    mysql_store_result();
                    mysql_retrieve_row();
                    mysql_get_field("warning1", szUnload);
                    mysql_free_result();
					warning1 = strval(szUnload);
				    new mutemsg[256];
				    if(warning1 == 1) // he already is warned in 1st slot, add a warning for the 3-limit ban!
				    {
						twarnings=twarnings+1;
					}
					else // warning slot empty - WARN HIM!
					{
					    new query5[200];
					    format(query5, sizeof(query5), "UPDATE users SET warning1='1',reason1='%s' WHERE username='%s'", result, OBanName);
					    format(mutemsg, sizeof(mutemsg), "{FF4500}[!] {FFFFFF}An Admin has warned {FF4500}%s{FFFFFF} due to %s.",OBanName,result);
					    ABroadCast(COLOR_WHITE,mutemsg,1); //
					    mysql_query(query5);
					    AdminLog(playerid, "/owarn", result, OBanName);
					    return 1;
					}
					//MYSQL
     				format(checkquery, sizeof(checkquery), "SELECT `warning2` FROM `users` WHERE `username` = '%s'", OBanName);
                    mysql_query(checkquery);
                    mysql_store_result();
                    mysql_retrieve_row();
                    mysql_get_field("warning2", szUnload);
                    mysql_free_result();
					warning2 = strval(szUnload);
				    if(warning2 == 1) // he already is warned in 2nt slot, add a warning for the 3-limit ban!
				    {
						twarnings=twarnings+1;
					}
					else // warning slot empty - WARN HIM!
					{
					    new query5[200];
					    format(query5, sizeof(query5), "UPDATE users SET warning2='1',reason2='%s' WHERE username='%s'", result, OBanName);
					    format(mutemsg, sizeof(mutemsg), "{FF4500}[!] {FFFFFF}An Admin has warned {FF4500}%s{FFFFFF} due to %s.",OBanName,result);
					    ABroadCast(COLOR_WHITE,mutemsg,1); //
					    mysql_query(query5);
					    AdminLog(playerid, "/owarn", result, OBanName);
					    return 1;
					}
					//MYSQL
     				format(checkquery, sizeof(checkquery), "SELECT `warning3` FROM `users` WHERE `username` = '%s'", OBanName);
                    mysql_query(checkquery);
                    mysql_store_result();
                    mysql_retrieve_row();
                    mysql_get_field("warning3", szUnload);
                    mysql_free_result();
					warning3 = strval(szUnload);
				    if(warning3 == 1) // he already is warned in 3rd slot, add a warning for the 3-limit ban!
				    {
						twarnings=twarnings+1;
					}
					else // warning slot empty - WARN HIM!
					{
					    new query5[200];
					    format(query5, sizeof(query5), "UPDATE users SET warning3='1',reason3='%s' WHERE username='%s'", result, OBanName);
					    format(mutemsg, sizeof(mutemsg), "{FF4500}[!] {FFFFFF}An Admin has warned {FF4500}%s{FFFFFF} due to %s.",OBanName,result);
					    ABroadCast(COLOR_WHITE,mutemsg,1); //
					    mysql_query(query5);
					    AdminLog(playerid, "/owarn", result, OBanName);
					    return 1;
					}
					if(twarnings == 3)
					{
						new date,month,year;
						getdate(date,month,year);
						new hour,minute,second;
						gettime(hour,minute,second);
						new query9[200], warnmsg[128];
						format(query9,sizeof(query9), "UPDATE users SET warning1='0',reason1='None',warning2='0',reason2='None',warning3='0',reason3='None',banned='1' WHERE username = '%s'", OBanName);
						mysql_reconnect();
						mysql_query(query9);
						//MYSQL GET IP.
						new plrIP[25], query[256];
						format(checkquery, sizeof(checkquery), "SELECT `ip` FROM `users` WHERE `username` = '%s'", OBanName);
                    	mysql_query(checkquery);
      					mysql_store_result();
                		mysql_retrieve_row();
                		mysql_get_field("ip", plrIP);
                		//Whatever you want to do with the IP... Here "extraid" = playerid
                		mysql_free_result(); //DON'T forget this! Or you will get "commands out of sync" error
						//END OF MYSQL GET IP.
		    			format(warnmsg,sizeof(warnmsg), "{FF4500}%s{FFFFFF} has been banned from the server.{FF4500}3/3 {FFFFFF}warnings limit. [Offline Warning]", OBanName);
					    SendClientMessageToAll(COLOR_ERROR, warnmsg);
   						format(query,sizeof(query),"INSERT INTO `bans` (Username, Reason, Administrator, IP, Date, Time) VALUES ('%s','3/3 Warnings','Server','%s','%d/%d/%d','%d:%d:%d')",OBanName,plrIP,year,month,date,hour,minute,second);
   						mysql_reconnect();
						mysql_query(query);
						AdminLog(playerid, "/owarn", result, OBanName);
					}
					return 1;
				}
				else //DOESNT EXIST
				{

					SendClientMessage(playerid, COLOR_ERROR, "ERROR: Could not find anyone with that username!");
					return 1;
				}
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not an administrator!");
				return 1;
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/warn", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	    	tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /warn (playername/id) (reason)");
				return 1;
			}
			new giveplayerid;
			giveplayerid = ReturnUser(tmp);
			if(IsPlayerNPC(giveplayerid)) return 1;
			if(PInfo[playerid][AdminLevel] >= 1)
			{
			    if(IsPlayerConnected(giveplayerid))
			    {
			        if(giveplayerid != INVALID_PLAYER_ID)
			        {
						new length = strlen(cmdtext);
						while ((idx < length) && (cmdtext[idx] <= ' '))
						{
							idx++;
						}
						new offset = idx;
						new result[128];
						while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
						{
							result[idx - offset] = cmdtext[idx];
							idx++;
						}
						result[idx - offset] = EOS;
						if(!strlen(result))
						{
							SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /warn (playername/id) (reason)");
							return 1;
						}
						new warnmsg[256], warnreason[128];
						new warnings=0;
						if(PInfo[giveplayerid][Warning1] == 1)
						{
							warnings=warnings+1;
						}
						else
						{
   							format(warnreason, sizeof(warnreason), "%s", result);
							strmid(PInfo[giveplayerid][Reason1], warnreason, 0, strlen(warnreason), 128);
						    PInfo[giveplayerid][Warning1] = 1;
						    format(warnmsg,sizeof(warnmsg), "{FF4500}[!] {FFFFFF}An Admin has warned {FF4500}%s{FFFFFF}. Reason: {00FF00}%s{FFFFFF}",PlayerName(giveplayerid), result);
						    SendClientMessageToAll(COLOR_WHITE, warnmsg);
						    AdminLog(playerid, "/warn", (result), PlayerName(giveplayerid));
						    SaveAccount(giveplayerid);
						    return 1;
						}
						if(PInfo[giveplayerid][Warning2] == 1)
						{
							warnings=warnings+1;
						}
						else
						{
 //Send a slap sound to the victim for lulz.
   							format(warnreason, sizeof(warnreason), "%s", result);
							strmid(PInfo[giveplayerid][Reason2], warnreason, 0, strlen(warnreason), 128);
						    PInfo[giveplayerid][Warning2] = 1;
						    format(warnmsg,sizeof(warnmsg), "{FF4500}[!] {FFFFFF}An Admin has warned {FF4500}%s{FFFFFF}. Reason: {00FF00}%s{FFFFFF}",PlayerName(giveplayerid), result);
						    SendClientMessageToAll(COLOR_WHITE, warnmsg);
						    AdminLog(playerid, "/warn", (result), PlayerName(giveplayerid));
						    SaveAccount(giveplayerid);
						    return 1;
						}
						if(PInfo[giveplayerid][Warning3] == 1)
						{
							warnings=warnings+1;
						}
						else
						{
   							format(warnreason, sizeof(warnreason), "%s", result);
							strmid(PInfo[giveplayerid][Reason3], warnreason, 0, strlen(warnreason), 128);
						    PInfo[giveplayerid][Warning3] = 1;
						    format(warnmsg,sizeof(warnmsg), "{FF4500}[!] {FFFFFF}An Admin has warned {FF4500}%s{FFFFFF}. Reason: {00FF00}%s{FFFFFF}",PlayerName(giveplayerid), result);
						    SendClientMessageToAll(COLOR_WHITE, warnmsg);
						    AdminLog(playerid, "/warn", (result), PlayerName(giveplayerid));
						    SaveAccount(giveplayerid);
						    return 1;
						}
						if(warnings == 3)
						{
							new date,month,year;
							getdate(date,month,year);
							new hour,minute,second;
							gettime(hour,minute,second);
						    PInfo[giveplayerid][Warning1] = 0;
   							format(warnreason, sizeof(warnreason), "None", result);
							strmid(PInfo[giveplayerid][Reason1], warnreason, 0, strlen(warnreason), 128);
							format(warnreason, sizeof(warnreason), "None", result);
							strmid(PInfo[giveplayerid][Reason2], warnreason, 0, strlen(warnreason), 128);
							format(warnreason, sizeof(warnreason), "None", result);
							strmid(PInfo[giveplayerid][Reason3], warnreason, 0, strlen(warnreason), 128);
			    			format(warnmsg,sizeof(warnmsg), "{FF4500}[!]  {FFFFFF}An Admin has warned {FF4500}%s{FFFFFF}. Reason: {FF4500}%s{FFFFFF}",PlayerName(giveplayerid), result);
						    SendClientMessageToAll(COLOR_WHITE, warnmsg);
						    format(warnmsg,sizeof(warnmsg), "{FF4500}%s{FFFFFF} has been banned from the server.{FF4500}3/3 {FFFFFF}warnings limit. [Offline Warning]", PlayerName(giveplayerid));
						    SendClientMessageToAll(COLOR_WHITE, warnmsg);
						    new plrIP[25], query[256], Name[MAX_PLAYER_NAME];
						    GetPlayerName(giveplayerid,Name,sizeof(Name));
						    GetPlayerIp(giveplayerid, plrIP, sizeof(plrIP));
						    mysql_real_escape_string(Name,Name);
    						format(query,sizeof(query),"INSERT INTO `bans` (Username, Reason, Administrator, IP, Date, Time) VALUES ('%s','3/3 Warnings','Server','%s','%d/%d/%d','%d:%d:%d')",Name,plrIP,year,month,date,hour,minute,second);
    						mysql_reconnect();
							mysql_query(query);
						    PInfo[giveplayerid][Warning2] = 0;
						    PInfo[giveplayerid][Warning3] = 0;
						    SaveAccount(giveplayerid);
						    AdminLog(playerid, "/warn", (result), PlayerName(giveplayerid));
						    Kick(giveplayerid);
						    return 1;
						}
						return 1;
					}
				}
				else
				{
					format(string, sizeof(string), "Could not find player (%d)", giveplayerid);
					SendClientMessage(playerid, COLOR_ERROR, string);
				}
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/omute", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /omute (full name, case sensitive!)");
				return 1;
			}
			if (PInfo[playerid][AdminLevel] >= 3)
			{
				new OBanName[MAX_PLAYER_NAME];
			    mysql_real_escape_string(tmp, OBanName);
 				new checkquery2[128];
				format(checkquery2, sizeof(checkquery2), "SELECT 'username' FROM `users` WHERE `username` = '%s'", OBanName);
				mysql_reconnect();
				mysql_query(checkquery2);
				mysql_store_result();
				if(mysql_num_rows() > 0) //
				{
				    mysql_free_result();
				    new checkquery[128];
				    new szUnload[10], IsMutedOrNot;
                    format(checkquery, sizeof(checkquery), "SELECT `muted` FROM `users` WHERE `username` = '%s'", OBanName);
                    mysql_query(checkquery);
                    mysql_store_result();
                    mysql_retrieve_row();
                    mysql_get_field("muted", szUnload);
                    mysql_free_result();
					IsMutedOrNot = strval(szUnload);
				    new mutemsg[156];
				    if(IsMutedOrNot == 1) // he is muted. Unmute him.
				    {
					    new query5[200];
					    format(query5, sizeof(query5), "UPDATE users SET muted ='0' WHERE username='%s'", OBanName);
					    format(mutemsg, sizeof(mutemsg), "{FF4500}[!] {FFFFFF}An Admin has offline-muted {FF4500}%s{FFFFFF}.",OBanName);
					    ABroadCast(COLOR_WHITE,mutemsg,1); //
					    mysql_query(query5);
					    AdminLog(playerid, "/omute", "Unmuted", OBanName);
					}
					else // He isn't muted. Mute him.
					{
					    new query6[200];
					    format(query6, sizeof(query6), "UPDATE users SET muted ='1' WHERE username='%s'", OBanName);
					    format(mutemsg, sizeof(mutemsg), "{FF4500}[!] {FFFFFF}An Admin has offline-muted {FF4500}%s{FFFFFF}.",OBanName);
					    ABroadCast(COLOR_WHITE,mutemsg,1); //
					    mysql_query(query6);
					    AdminLog(playerid, "/omute", "Muted", OBanName);
					}
					return 1;
				}
				else //DOESNT EXIST
				{

					SendClientMessage(playerid, COLOR_ERROR, "ERROR: Could not find anyone with that username!");
					return 1;
				}
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/viewban", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 1) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!"); return 1; }
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /viewban (full name, case sensitive!)");
	        return 1;
	    }
	    new EscapedName2[MAX_PLAYER_NAME];
	    mysql_real_escape_string(tmp, EscapedName2);
	    new checkquery5[128];
	    format(checkquery5,sizeof(checkquery5),"SELECT * FROM `bans` WHERE `Username` = '%s'", EscapedName2);
	    mysql_query(checkquery5);
	    mysql_store_result();
	    if(mysql_num_rows() > 0) //Banned
	    {
	        new line5[1000];
			if(mysql_fetch_row(line5))//Fetch line
			{
			    new data5[6][156];
			    new data2[2];
			    //data[0] - Username
			    //data[1] - Reason
			    //data[2] - Administrator
			    //data[3] - IP
			    //data[4] - Date
			    //data2[0] - Banned (pointless)
			    //data2[1] - ID (pointless)
			    //data[5] - Time
				sscanf(line5, "p<|>s[30]s[156]s[30]s[40]s[40]dds[40]", data5[0],data5[1],data5[2],data5[3],data5[4],data2[0],data2[1],data5[5]); //Splits the line with sscanf
				new Results[256];
				format(Results,sizeof(Results),"-- Viewing Ban ID: #%d (%s) --", data2[1], EscapedName2);
				SendClientMessage(playerid, COLOR_RED, Results);
				format(Results,sizeof(Results),"- Username: %s",data5[0]);
				SendClientMessage(playerid, COLOR_ORANGE, Results);
				format(Results,sizeof(Results),"- IP Address: %s",data5[3]);
				SendClientMessage(playerid, COLOR_YELLOW, Results);
				format(Results,sizeof(Results),"- Ban Reason: %s",data5[1]);
				SendClientMessage(playerid, COLOR_GREEN, Results);
				format(Results,sizeof(Results),"- Administrator: %s",data5[2]);
				SendClientMessage(playerid, COLOR_WHITE, Results);
				format(Results,sizeof(Results),"- Ban Date: %s-%s",data5[4],data5[5]);
				SendClientMessage(playerid, COLOR_GREY, Results);
				mysql_free_result();
				return 1;
			}
			mysql_free_result();
			return 1;
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "No ban records found under that username!");
	        mysql_free_result();
	        return 1;
	    }
	}
	if(strcmp(cmd, "/deleteaccount", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /deleteaccount (full name, case sensitive!)");
				return 1;
			}
			if (PInfo[playerid][AdminLevel] >= 6)
			{
				new OBanName[MAX_PLAYER_NAME];
			    mysql_real_escape_string(tmp, OBanName);
 				new checkquery2[128];
				format(checkquery2, sizeof(checkquery2), "SELECT 'username' FROM `users` WHERE `username` = '%s'", OBanName);
				mysql_reconnect();
				mysql_query(checkquery2);
				mysql_store_result();
				if(mysql_num_rows() > 0) //exists.
				{
				    new deleteacc[128];
				    mysql_free_result();
				    format(deleteacc,sizeof(deleteacc),"DELETE FROM users WHERE username = '%s'", OBanName);
				    mysql_reconnect();
				    mysql_query(deleteacc);
				    new msg[128];
				    format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has deleted {FF4500}%s{FFFFFF}'s account.",OBanName);
					ABroadCast(COLOR_WHITE,msg,1);
					AdminLog(playerid, "/deleteaccount", "Deleted Account", OBanName);
					return 1;
				}
				else //DOESNT EXIST
				{

					SendClientMessage(playerid, COLOR_ERROR, "ERROR: Could not find anyone with that username!");
					return 1;
				}
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/oban", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /oban (full name, case sensitive!) (reason)");
				return 1;
			}
			new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[128];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /oban (full name, case sensitive!) (reason)");
				return 1;
			}
			if (PInfo[playerid][AdminLevel] >= 3)
			{
				new OBanName[MAX_PLAYER_NAME], OBanReason[156], OBanAdmin[MAX_PLAYER_NAME], year, month, date, OBanIP[25];
			    mysql_real_escape_string(tmp, OBanName);
			    mysql_real_escape_string(result, OBanReason);
			    mysql_real_escape_string(PlayerName(playerid), OBanAdmin);
 				new checkquery2[128];
 				format(checkquery2,sizeof(checkquery2), "SELECT Administrator,Reason FROM bans WHERE Username = '%s' LIMIT 1", OBanName);
 				mysql_reconnect();
 				mysql_query(checkquery2);
 				mysql_store_result();
 				mysql_retrieve_row();
 				new AdminName[24], Reason[128];
 				mysql_get_field("Administrator",AdminName);
 				mysql_get_field("Reason",Reason);
 				if(mysql_num_rows() > 0)
 				{
 				    format(checkquery2,sizeof(checkquery2),"%s is currently banned by %s for %s",OBanName,AdminName,Reason);
					SendClientMessage(playerid, COLOR_ERROR, checkquery2);
					mysql_free_result();
					return 1;
 				}
 				mysql_free_result();
				format(checkquery2, sizeof(checkquery2), "SELECT `username` FROM `users` WHERE `username` = '%s' LIMIT 1", OBanName);
				mysql_reconnect();
				mysql_query(checkquery2);
				mysql_store_result();
				if(mysql_num_rows() > 0) //This is offline-ban. It grabs the IP from the user (offline), and inserts it into ban database.
				{
				    PlaySound(0);
				    mysql_free_result();
					getdate(date,month,year);
					new hour,minute,second;
					gettime(hour,minute,second);
				    new checkquery[128];
				    mysql_reconnect();
				    format(checkquery, sizeof(checkquery), "SELECT `ip` FROM `users` WHERE `username` = '%s' LIMIT 1", OBanName);
				    mysql_query(checkquery);
				    mysql_store_result();
				    mysql_retrieve_row();
				    mysql_get_field("ip",OBanIP); // This does not work.
				    mysql_free_result();
				    new query5[250];
				    format(query5, sizeof(query5), "UPDATE users SET banned ='1' WHERE username='%s' LIMIT 1", OBanName);
				    mysql_query(query5);
				    format(query5, sizeof(query5), "INSERT INTO `bans` (Username, Reason, Administrator, IP, Date, Time) VALUES ('%s','%s','%s','%s','%d/%d/%d','%d:%d:%d')",OBanName,OBanReason,OBanAdmin,OBanIP,year,month,date,hour,minute,second);
				    mysql_query(query5);
				    new hehmsg[512];
					format(hehmsg, sizeof(hehmsg), "{FF4500}[!] {FFFFFF}An Admin has offline-banned {FF4500}%s{FFFFFF}. Reason: {FF4500}%s", OBanName, OBanReason);
					SendClientMessageToAll(COLOR_WHITE, hehmsg);
					mysql_free_result();
					AdminLog(playerid, "/oban", OBanReason, OBanName);
					return 1;
				}
				else //DOESNT EXIST
				{

					SendClientMessage(playerid, COLOR_ERROR, "ERROR: Could not find anyone with that username!");
					return 1;
				}
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/unban", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /unban (full name, case sensitive!)");
				return 1;
			}
			if (PInfo[playerid][AdminLevel] >= 3)
			{
			    new EscapedName[MAX_PLAYER_NAME];
			    mysql_real_escape_string(tmp, EscapedName);
 				new checkquery2[128];
				format(checkquery2, sizeof(checkquery2), "SELECT * FROM `bans` WHERE `Username` = '%s'", EscapedName);
				mysql_reconnect();
				mysql_query(checkquery2);
				mysql_store_result();
				if(mysql_num_rows() > 0) //BANNED
				{
    				new line[500];
					if(mysql_fetch_row(line)) //Fetches the line
			  		{
	    				new data[6][128]; //The data strings
	    				new data2[2];
	      				sscanf(line, "p<|>s[128]s[128]s[128]s[128]s[128]dds[128]", data[0], data[1], data[2], data[3], data[4], data2[0], data2[1], data[5]); //Splits the line with sscanf
						format(string, sizeof(string), "You have unbanned {FF4500}%s(%s)", EscapedName, data[3]);
						SendClientMessage(playerid, COLOR_WHITE, string);
						format(string,sizeof(string), "[Ban Details] Banned by {FF4500}%s {FFFFFF}  {FF4500}[Reason: %s] {FFFFFF}at {FF4500}[%s %s]", data[2], data[1], data[5], data[4]);
						SendClientMessage(playerid, COLOR_WHITE, string);
						format(string,sizeof(string), "{FF4500}[!] {FFFFFF}An Admin has unbanned {FF4500}%s{FFFFFF}.", EscapedName); //Readon is data[2] ? No, data[1]. It starts - data[0] - user, data[1] - reason
	                    ABroadCast(COLOR_WHITE,string,1); //
						new deletequery2[128];
						mysql_reconnect();
						format(deletequery2, sizeof(deletequery2), "DELETE FROM bans WHERE Username = '%s'", EscapedName);
						mysql_query(deletequery2);
						format(deletequery2, sizeof(deletequery2), "UPDATE users SET banned = '0' WHERE username = '%s'", EscapedName);
						mysql_query(deletequery2);
						mysql_free_result();
						AdminLog(playerid, "/unban", "Unbanned Player", EscapedName);
						return 1;
					}
					mysql_free_result();
				}
				else //NOT BANNED
				{

					SendClientMessage(playerid, COLOR_ERROR, "ERROR: Could not find any ban records under that username!");
					return 1;
				}
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/teleintoveh", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        new moneys;
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /teleintoveh (vehicle id)");
				return 1;
			}
			moneys = strvalEx(tmp);
			if(moneys < 0)
			{
				SendClientMessage(playerid, COLOR_ERROR, "Vehicle ID must be over 0!");
				return 1;
			}
			if(GetVehicleModel(moneys) > 399 && PInfo[playerid][AdminLevel] >= 2)
			{
				format(string, sizeof(string), "You have teleported into vehicle ID {FF4500}%d.",moneys);
				SendClientMessage(playerid, COLOR_WHITE, string);
				PutPlayerInVehicle(playerid, moneys, 0);
				PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
				AdminLog(playerid, "/teleintoveh", "Teleported into Vehicle", "Vehicle");
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "That vehicle ID could not be found.");
			    return 1;
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/televeh", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        new moneys;
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /televeh (vehicle id)");
				return 1;
			}
			moneys = strvalEx(tmp);
			if(moneys < 0)
			{
				SendClientMessage(playerid, COLOR_ERROR, "Vehicle ID must be over 0!");
				return 1;
			}
			if(IsValidVehicleID(moneys)  && PInfo[playerid][AdminLevel] >= 2)
			{
			    new Float:tempx, Float:tempy, Float:tempz;
				format(string, sizeof(string), "You have spawned vehicle ID {FF4500}%d {FFFFFF}to your location.",moneys);
				SendClientMessage(playerid, COLOR_WHITE, string);
				GetPlayerPos(playerid, tempx, tempy, tempz);
				SetVehiclePos(moneys, tempx, tempy, tempz);
				PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
				AdminLog(playerid, "/televeh", "Teleported Vehicle", "Vehicle");
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "That vehicle ID does not exist!");
			    return 1;
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/goto", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /goto (playername/id)");
				return 1;
			}
			new Float:plocx,Float:plocy,Float:plocz;
			new plo;
			plo = ReturnUser(tmp);
			if(IsPlayerNPC(plo)) return 1;
			if(IsPlayerConnected(plo))
			{
			    if(plo != INVALID_PLAYER_ID)
			    {
					if(PInfo[playerid][AdminLevel] >= 1)
					{
					    new interior = GetPlayerInterior(plo);
					    new vw = GetPlayerVirtualWorld(plo);
					    SetPlayerVirtualWorld(playerid,vw);
					    SetPlayerInterior(playerid,interior);
						GetPlayerPos(plo, plocx, plocy, plocz);
						if(GetPlayerState(playerid) == 2)
						{
							new tmpcar = GetPlayerVehicleID(playerid);
							SetVehiclePos(tmpcar, plocx, plocy+4, plocz);
						}
						else
						{
							SetPlayerPos(playerid,plocx,plocy+2, plocz);
						}
						new sendmsg[128];
						format(sendmsg,sizeof(sendmsg),"You have teleported to {FF4500}%s's(%d) {FFFFFF}location.", PlayerName(plo), plo);
						SendClientMessage(playerid, COLOR_WHITE, sendmsg);
						AdminLog(playerid, "/goto", "Teleported To", PlayerName(plo));
						return 1;
					}
					else
					{
						SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
					}
				}
			}
			else
			{
				format(string, sizeof(string), "Could not find player (%d)", plo);
				SendClientMessage(playerid, COLOR_ERROR, string);
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/get", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /get (playername/id)");
				return 1;
			}
			new Float:plocx,Float:plocy,Float:plocz;
			new plo;
			plo = ReturnUser(tmp);
			if(IsPlayerNPC(plo)) return 1;
			if(IsPlayerConnected(plo))
			{
			    if(plo != INVALID_PLAYER_ID)
			    {
			        if(GetPlayerState(plo) == PLAYER_STATE_SPECTATING)
					{
						SendClientMessage(playerid, COLOR_ERROR, "That player is currently spectating someone!");
						return 1;
					}
					if(PInfo[plo][AdminLevel] >= 5)
					{
						SendClientMessage(playerid, COLOR_ERROR, "Cannot teleport server owners - ask them to teleport to you!");
						return 1;
					}
					if(PInfo[playerid][AdminLevel] >= 1)
					{
					    new interior = GetPlayerInterior(playerid);
					    new vw = GetPlayerVirtualWorld(playerid);
					    SetPlayerVirtualWorld(plo,vw);
					    SetPlayerInterior(plo,interior);
						GetPlayerPos(playerid, plocx, plocy, plocz);
						if(GetPlayerState(plo) == 2)
						{
							new tmpcar = GetPlayerVehicleID(plo);
							SetVehiclePos(tmpcar, plocx, plocy+4, plocz);
						}
						else
						{
							SetPlayerPos(plo,plocx,plocy+2, plocz);
						}
						new sendmsg[128];
						format(sendmsg,sizeof(sendmsg),"{FF4500}[!] {FFFFFF}An Admin has teleported you to their location.");
						SendClientMessage(plo, COLOR_WHITE, sendmsg);
						format(sendmsg,sizeof(sendmsg),"You have teleported {FF4500}%s(%d) {FFFFFF}to your location.", PlayerName(plo), plo);
						SendClientMessage(playerid, COLOR_WHITE, sendmsg);
						AdminLog(playerid, "/get", "Teleported Player", PlayerName(plo));
						return 1;
					}
					else
					{
						SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
					}
				}
			}
			else
			{
				format(string, sizeof(string), "Could not find player (%d)", plo);
				SendClientMessage(playerid, COLOR_ERROR, string);
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/check", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 0)
	    {
			new giveplayerid;
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /check (playername/id)");
				return 1;
			}
			giveplayerid = ReturnUser(tmp);
			if(IsPlayerNPC(giveplayerid)) return 1;
			if(IsPlayerConnected(giveplayerid))
			{
			    new msg[250];
			    format(msg,sizeof(msg), "%s(%d) - [IP: %s] [Register Date: %s] [Money: $%d] [Score: %d] [PlayTime: %d hours & %d minutes]",PlayerName(giveplayerid),giveplayerid,PInfo[giveplayerid][IP],PInfo[giveplayerid][RegisterDate],PInfo[giveplayerid][Money],PInfo[giveplayerid][TotalScore],PInfo[giveplayerid][HoursPlayed],PInfo[giveplayerid][MinsPlayed]);
				SendClientMessage(playerid, COLOR_GREEN, msg);
				if(PInfo[playerid][AdminLevel] > 4) { format(msg,sizeof(msg), "[Password: %s] [Email: %s]",PInfo[giveplayerid][Password],PInfo[giveplayerid][Email]); SendClientMessage(playerid,COLOR_GREEN,msg); }
				format(msg,sizeof(msg), "[TotalEarntFromWorking: $%d] [Callsign: %s] [Airline: %s] [AirlineRank: %d] [EarntForAirline: $%d]", PInfo[giveplayerid][EarntFromWorking],PInfo[giveplayerid][Callsign],AInfo[PInfo[giveplayerid][Airline]][aName],PInfo[giveplayerid][AirlineRank],PInfo[giveplayerid][EarntForAirline]);
				SendClientMessage(playerid, COLOR_GREEN, msg);
				format(msg,sizeof(msg), "[Warning 1: %d] [Reason1: %s] [Warning 2: %d] [Reason2: %s] [Warning3: %d] [Reason3: %s]", PInfo[giveplayerid][Warning1],PInfo[giveplayerid][Reason1],PInfo[giveplayerid][Warning2],PInfo[giveplayerid][Reason2],PInfo[giveplayerid][Warning3],PInfo[giveplayerid][Reason3]);
				SendClientMessage(playerid, COLOR_GREEN, msg);
				AdminLog(playerid, "/check", "Checked Player Stats", PlayerName(giveplayerid));
				return 1;
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Could not find player - is he online?");
			    return 1;
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/spec", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        new giveplayerid;
	        if(PInfo[playerid][AdminLevel] < 1)
			{
				SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
				return 1;
			}
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /spec (playername/id/off)");
				return 1;
			}
			giveplayerid = ReturnUser(tmp);
			if(IsPlayerNPC(giveplayerid)) return 1;
			if(strcmp("off", tmp, true, strlen(tmp)) == 0)
			{
			    if(GetPlayerState(playerid) != PLAYER_STATE_SPECTATING)
			    {
			        SendClientMessage(playerid, COLOR_ERROR, "You are not spectating anyone!");
					return 1;
			    }
			    WasSpectating[playerid] = 1;
			    SetPlayerHealth(playerid, 100);
				SetPlayerVirtualWorld(playerid, 0);
				SetPlayerInterior(playerid, tempinterior[playerid]);
			    SetPlayerPos(playerid, tempX[playerid], tempY[playerid], tempZ[playerid]);
				SetPlayerFacingAngle(playerid, tempA[playerid]);
				SendClientMessage(playerid, COLOR_WHITE, "You have finished spectating.");
			    TogglePlayerSpectating(playerid, 0);
			    SpectatedID[playerid] = INVALID_PLAYER_ID;
			    SpectateType[playerid] = ADMIN_SPEC_TYPE_NONE;
			    UpdateSkin(playerid);
			    return 1;
			}
			if(IsPlayerConnected(giveplayerid))
			{
				if(GetPlayerState(playerid) != PLAYER_STATE_SPECTATING)
				{
				    tempinterior[playerid] = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, tempX[playerid], tempY[playerid], tempZ[playerid]);
					GetPlayerFacingAngle(playerid, tempA[playerid]);
				}
				SetPlayerInterior(playerid, GetPlayerInterior(giveplayerid));
				TogglePlayerSpectating(playerid, 1);
				SpectatedID[playerid] = giveplayerid;
				if(IsPlayerInAnyVehicle(giveplayerid))
				{
				    PlayerSpectateVehicle(playerid, GetPlayerVehicleID(giveplayerid));
				    SpectateType[playerid] = ADMIN_SPEC_TYPE_VEHICLE;
				}
				else
				{
				    PlayerSpectatePlayer(playerid, giveplayerid);
				    SpectateType[playerid] = ADMIN_SPEC_TYPE_PLAYER;
				}
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Could not find player !");
			    return 1;
			}
	    }
	    return 1;
	}
	if(strcmp(cmd, "/mute", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /mute (playername/id)");
				return 1;
			}
			new playa;
			playa = ReturnUser(tmp);
			if(PInfo[playerid][AdminLevel] >= 1)
			{
			    if(IsPlayerConnected(playa))
			    {
			        if(playa != INVALID_PLAYER_ID)
			        {
						if(PInfo[playa][Muted] == 0)
						{
							PlaySound(1); //Shut up foo - Mr T.
							PInfo[playa][Muted] = 1;
							format(string, sizeof(string), "{FF4500}[!] {FFFFFF}An Admin has muted {FF4500}%s{FFFFFF}. Reason: {FF4500}%s{FFFFFF}.", PlayerName(playa));
							SendClientMessageToAll(COLOR_WHITE, string);
							SendClientMessage(playerid, COLOR_WHITE, "Type /mute again on the player to unmute them.");
							AdminLog(playerid, "/mute", "Mute", PlayerName(playa));
							return 1;
						}
						else
						{
						    PInfo[playa][Muted] = 0;
							format(string, sizeof(string), "{FF4500}[!] {FFFFFF}An Admin has un-muted {FF4500}%s{FFFFFF}. Reason: {FF4500}%s{FFFFFF}.", PlayerName(playa));
							SendClientMessageToAll(COLOR_WHITE, string);
							AdminLog(playerid, "/mute", "Unmute", PlayerName(playa));
						}
					}
				}
			}
			else
			{
				SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/me", true) == 0)
	{
	    new length=strlen(cmdtext);
	    while ((idx < length) && (cmdtext[idx] <= ' '))
	    {
	        idx++;
	    }
		new offset = idx;
		new result[128];
		while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
		{
		    result[idx - offset] = cmdtext[idx];
		    idx++;
		}
		result[idx - offset] = EOS;
		if(!strlen(result))
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Syntax: /me (action)");
		    return 1;
		}
		new msg[156];
		format(msg,sizeof(msg),"* %s(%d) %s *", PlayerName(playerid),playerid,result);
		SendClientMessageToAll(COLOR_ME, msg);
		return 1;
	}
	if(strcmp(cmd, "/afk", true) == 0)
	{
	    if(PlayerLogged[playerid] == 1)
	    {
	        if(AFKPLAYER[playerid] == 0) //not afk
	        {
	   	    	new length = strlen(cmdtext);
				while ((idx < length) && (cmdtext[idx] <= ' '))
				{
					idx++;
				}
				new offset = idx;
				new result[128];
				while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
				{
					result[idx - offset] = cmdtext[idx];
					idx++;
				}
				result[idx - offset] = EOS;
				if(!strlen(result))
				{
					SendClientMessage(playerid, COLOR_ERROR, "Syntax: /afk (reason)");
					return 1;
				}
				if(IsPlayerInAnyVehicle(playerid) == 1)
				{
				    SendClientMessage(playerid, COLOR_ERROR, "Cannot go AFK while in a vehicle!");
				    return 1;
				}
				new msg[156];
				strmid(AFKREASON[playerid], result, 0, strlen(result), 128); //AFK Reason saving.
				format(msg, sizeof(msg), "{FF4500}%s (%d) {FFFFFF}has gone AFK   {FF4500}[Reason: %s]", PlayerName(playerid),playerid,result);
				SendClientMessageToAll(COLOR_WHITE, msg);
				format(msg, sizeof(msg), "You have gone AFK, to come back from being AFK, type /afk.");
				PlayerNotice(playerid, msg);
				AFKPLAYER[playerid] = 1;
				TogglePlayerControllable(playerid, 0);
				SetPlayerColor(playerid,COLOR_AFK);
				return 1;
	        }
	        else if(AFKPLAYER[playerid] == 1)
	        {
	            TogglePlayerControllable(playerid, 1);
	            new result[156];
				format(result, sizeof(result), "{FF4500}%s (%d) {FFFFFF}is now back   {FF4500}[Reason: %s]", PlayerName(playerid),playerid,AFKREASON[playerid]);
				SendClientMessageToAll(COLOR_WHITE, result);
	            AFKPLAYER[playerid] = 0;
	            UpdatePlayerColour(playerid);
	            return 1;
	        }
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not logged in!");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/restartserver", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 3)
	    {
	    	new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[64];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /restartserver (reason)");
				return 1;
			}
			if(ServerRestarting == 1)
			{
			    SendClientMessage(playerid, COLOR_ERROR, "The server is already restarting!");
			    return 1;
   			}
	        new restartmsg[128];
	        ServerRestarting = 1;
	        format(restartmsg,sizeof(restartmsg),"{FF4500}[!] {FFFFFF}An Admin has restarted the server. Reason: {FF4500}%s{FFFFFF}.", result);
	        SendClientMessageToAll(COLOR_WHITE, restartmsg);
	        SendClientMessageToAll(COLOR_WHITE, "* Server Restarting in {FF4500}30 {FFFFFF}seconds ...");
   			SetTimerEx("RestartServer", 30000, false, "i", playerid);
   			AdminLog(playerid, "/restartserver", result, "Everyone");
			return 1;
	    }
	}
	if(strcmp(cmd, "/setmotd", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 3) // 4 +
	    {
	        new length = strlen(cmdtext);
	        while ((idx < length) && (cmdtext[idx] <= ' '))
	        {
	            idx++;
	        }
	        new offset = idx;
	        new result[250];
	        while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
	        {
	            result[idx - offset] = cmdtext[idx];
	            idx++;
	        }
	        result[idx - offset] = EOS;
	        if(!strlen(result))
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "Syntax: /setmod (message of the day)");
	            return 1;
	        }
	        new query[450];
	        new username[MAX_PLAYER_NAME];
	        mysql_real_escape_string(PlayerName(playerid), username);
	        mysql_real_escape_string(result, result);
	        new motdmessage[256];
	        format(motdmessage,sizeof(motdmessage),"New MOTD: %s | Set by: %s", result, PlayerName(playerid));
	        SendClientMessageToAll(COLOR_YELLOW, motdmessage);
	        AdminLog(playerid, "/setmotd", result, "Server");
	        format(query,sizeof(query),"UPDATE statistics SET motd='%s', motdsetby='%s'", result, username);
	        mysql_query(query);
	        LoadStuff();
	        return 1;
	    }
	}
	if(strcmp(cmd, "/announce", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 1)
	    {
	    	new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[156];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /announce (announcement)");
				return 1;
			}
	        new restartmsg[256];
	        format(restartmsg,sizeof(restartmsg),"{FF4500}[!] {FFFFFF}An Admin has announced: {FF4500}%s{FFFFFF}.",result);
	        SendClientMessageToAll(COLOR_WHITE, restartmsg);
	        AdminLog(playerid, "/announce", result, "Everyone");
			return 1;
	    }
	}
	if(strcmp(cmd, "/setname", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	    	tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /setname (playerid) (new name)");
				return 1;
			}
			new giveplayerid = ReturnUser(tmp);
			if(PInfo[playerid][AdminLevel] > 3)
			{
			    if(IsPlayerConnected(giveplayerid))
			    {
			        if(giveplayerid != INVALID_PLAYER_ID)
			        {
						tmp = strtok(cmdtext, idx);
						if(!strlen(tmp))
						{
							SendClientMessage(playerid, COLOR_ERROR, "Syntax: /setname (playerid) (new name)");
							return 1;
						}
						new checkquery[128];
						format(checkquery, sizeof(checkquery), "SELECT `username` FROM `users` WHERE `username` = '%s'", tmp);
						mysql_reconnect();
						mysql_query(checkquery);
						mysql_store_result();
						if(mysql_num_rows() > 0)
						{
							SendClientMessage(playerid, COLOR_ERROR, "ERROR: That name is already registered !");
							return 1;
						}
						else
						{
						    new oldname[MAX_PLAYER_NAME];
						    format(oldname, sizeof(oldname), "%s", PlayerName(giveplayerid));
						    mysql_real_escape_string(oldname,oldname);
							format(string, sizeof(string), "You have renamed the player {FF4500}%s {FFFFFF}to {FF4500}%s", PlayerName(giveplayerid), tmp);
							SendClientMessage(playerid, COLOR_WHITE, string);
							format(string, sizeof(string), "Your name has been changed from {FF4500}%s {FFFFFF}to {FF4500}%s", PlayerName(giveplayerid), tmp);
							SendClientMessage(giveplayerid, COLOR_WHITE, string);
							SetPlayerName(giveplayerid, tmp);
							mysql_free_result();
							new deletequery[128];
							mysql_reconnect();
							format(deletequery,sizeof(deletequery),"INSERT INTO namechanges (cUsername, wUsername, Processed) VALUES ('%s', '%s', '1')",oldname, tmp);
							mysql_query(deletequery);
							format(deletequery, sizeof(deletequery), "UPDATE users SET username = '%s' WHERE username = '%s'", tmp, oldname);
							mysql_query(deletequery);
							SaveAccount(giveplayerid);
							if(PInfo[giveplayerid][House1] > 0)
							{
							    new query[200];
							    format(query,sizeof(query),"UPDATE houses SET OwnedBy='%s' WHERE OwnedBy='%s'", tmp, oldname);
							    mysql_reconnect();
							    mysql_query(query);
							}
							if(PInfo[giveplayerid][House2] > 0)
							{
							    new query[200];
							    format(query,sizeof(query),"UPDATE houses SET OwnedBy='%s' WHERE OwnedBy='%s'", tmp, oldname);
							    mysql_reconnect();
							    mysql_query(query);
							}
							format(deletequery,sizeof(deletequery),"SELECT NULL from pvehicles WHERE OwnedBy='%s'", oldname);
							mysql_query(deletequery);
							mysql_store_result();
							new exists = mysql_num_rows();
							mysql_free_result();
							if(exists > 0)
							{
								format(deletequery,sizeof(deletequery),"UPDATE pvehicles SET OwnedBy='%s' WHERE OwnedBy='%s'",tmp,oldname);
								mysql_query(deletequery);
							}
							format(deletequery,sizeof(deletequery),"SELECT NULL FROM airlines WHERE Owner='%s'", oldname);
							mysql_query(deletequery);
							mysql_store_result();
							exists = mysql_num_rows();
							mysql_free_result();
							if(exists > 0)
							{
							    format(deletequery,sizeof(deletequery),"UPDATE airlines SET Owner='%s' WHERE Owner='%s'",tmp,oldname);
							    mysql_query(deletequery);
							}
							format(deletequery,sizeof(deletequery),"SELECT NULL FROM paylog WHERE Username='%s'", oldname);
							mysql_query(deletequery);
							mysql_store_result();
							exists = mysql_num_rows();
							mysql_free_result();
							if(exists > 0)
							{
							    format(deletequery,sizeof(deletequery),"UPDATE paylog SET Username='%s' WHERE Username='%s'",tmp,oldname);
							    mysql_query(deletequery);
							}
							format(deletequery,sizeof(deletequery),"SELECT NULL FROM paylog WHERE Receiver='%s'", oldname);
							mysql_query(deletequery);
							mysql_store_result();
							exists = mysql_num_rows();
							mysql_free_result();
							if(exists > 0)
							{
							    format(deletequery,sizeof(deletequery),"UPDATE paylog SET Receiver='%s' WHERE Receiver='%s'",tmp,oldname);
							    mysql_query(deletequery);
							}
							format(deletequery,sizeof(deletequery),"SELECT NULL FROM paylog WHERE Fromwho='%s'", oldname);
							mysql_query(deletequery);
							mysql_store_result();
							exists = mysql_num_rows();
							mysql_free_result();
							if(exists > 0)
							{
							    format(deletequery,sizeof(deletequery),"UPDATE paylog SET Fromwho='%s' WHERE Fromwho='%s'",tmp,oldname);
							    mysql_query(deletequery);
							}
							format(deletequery,sizeof(deletequery),"SELECT NULL FROM skins WHERE owner='%s'", oldname);
							mysql_query(deletequery);
							mysql_store_result();
							exists = mysql_num_rows();
							mysql_free_result();
							if(exists > 0)
							{
							    format(deletequery,sizeof(deletequery),"UPDATE skins SET owner='%s' WHERE owner='%s'",tmp,oldname);
							    mysql_query(deletequery);
							}
							format(deletequery,sizeof(deletequery),"SELECT NULL FROM tickets WHERE Receiver='%s'", oldname);
							mysql_query(deletequery);
							mysql_store_result();
							exists = mysql_num_rows();
							mysql_free_result();
							if(exists > 0)
							{
							    format(deletequery,sizeof(deletequery),"UPDATE tickets SET Receiver='%s' WHERE Receiver='%s'",tmp,oldname);
							    mysql_query(deletequery);
							}
							format(deletequery,sizeof(deletequery),"SELECT NULL FROM tickets WHERE Administrator='%s'", oldname);
							mysql_query(deletequery);
							mysql_store_result();
							exists = mysql_num_rows();
							mysql_free_result();
							if(exists > 0)
							{
							    format(deletequery,sizeof(deletequery),"UPDATE tickets SET Administrator='%s' WHERE Administrator='%s'",tmp,oldname);
							    mysql_query(deletequery);
							}
							AdminLog(playerid, "/setname", tmp, oldname);
							return 1;
						}
					}
				}
			}
			else
			{
				SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/healall", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 1)
	    {
    		for(new i; i<MAX_PLAYERS; i++)
			{
				if(IsPlayerConnected(i))
				{
					SetPlayerHealth(i, 100);
				}
			}
    		new msg[128];
    		format(msg, sizeof(msg), "{FF4500}[!] {FFFFFF}An Admin has healed all players.");
    		SendClientMessageToAll(COLOR_WHITE, msg);
    		AdminLog(playerid, "/healall", "Healed Players", "Everyone");
    		return 1;
	    }
	}
	if(strcmp(cmd, "/forums", true) == 0)
	{
	    SendClientMessage(playerid, COLOR_WHITE, "For all the latest news & updates, please visit the forums at: {FF4500}http://www.theaviationlife.com");
	    return 1;
	}
 	if(strcmp(cmd, "/makevip", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(PInfo[playerid][AdminLevel] == 6)
			{
				tmp = strtok(cmdtext, idx);
				if(!strlen(tmp))
				{
					SendClientMessage(playerid, COLOR_ERROR, "Syntax: /makevip (name/id) (level)");
					return 1;
				}
				new para1;
				new level;
				para1 = ReturnUser(tmp);
				tmp = strtok(cmdtext, idx);
				level = strvalEx(tmp);
			    if(IsPlayerConnected(para1))
			    {
			        if(para1 != INVALID_PLAYER_ID)
			        {
						PInfo[para1][Vip] = level;
						printf("%s has set %s to a level %d vip.", PlayerName(playerid), PlayerName(para1), level);
						format(string, sizeof(string), "You have been set to a level %d VIP by %s", level, PlayerName(playerid));
						SendClientMessage(para1, COLOR_WHITE, string);
						format(string, sizeof(string), "You have set %s to VIP Level %d.", PlayerName(para1),level);
						SendClientMessage(playerid, COLOR_WHITE, string);
						format(string,sizeof(string),"Set to %d", level);
						return 1;
					}
				}
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/makeadmin", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(PInfo[playerid][AdminLevel] == 6)
			{
				tmp = strtok(cmdtext, idx);
				if(!strlen(tmp))
				{
					SendClientMessage(playerid, COLOR_ERROR, "Syntax: /makeadmin (name/id) (level)");
					return 1;
				}
				new para1;
				new level;
				para1 = ReturnUser(tmp);
				tmp = strtok(cmdtext, idx);
				level = strvalEx(tmp);
			    if(IsPlayerConnected(para1))
			    {
			        if(para1 != INVALID_PLAYER_ID)
			        {
						PInfo[para1][AdminLevel] = level;
						printf("%s has set %s to a level %d admin.", PlayerName(playerid), PlayerName(para1), level);
						format(string, sizeof(string), "You have been set to a level {FF4500}%d {FFFFFF}Admin by {FF4500}%s", level, PlayerName(playerid));
						SendClientMessage(para1, COLOR_WHITE, string);
						format(string, sizeof(string), "You have set {FF4500}%s {FFFFFF}to a level {FF4500}%d {FFFFFF}Admin.", PlayerName(para1),level);
						SendClientMessage(playerid, COLOR_WHITE, string);
						format(string,sizeof(string),"Set to %d", level);
						AdminLog(playerid, "/makeadmin", string, PlayerName(para1));
						return 1;
					}
				}
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/kill", true) == 0)
	{
	    SetPlayerArmour(playerid, 0);
	    SetPlayerHealth(playerid, 0);
	    return 1;
	}
	if(strcmp(cmd, "/clearchat", true) == 0 || strcmp(cmd, "/cc", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 0)
	    {
		    for(new g; g<50; g++)
		    {
		        SendClientMessageToAll(COLOR_WHITE, "");
		    }
		    new msg[128];
			format(msg, sizeof(msg), "{FF4500}[!] {FFFFFF}An Admin has cleared the chat.");
			SendClientMessageToAll(COLOR_WHITE, msg);
			AdminLog(playerid, "/cc", "Cleared Chat", "None");
			return 1;
		}
	}
	if(strcmp(cmd, "/rules", true) == 0)
	{
        ShowPlayerDialog(playerid, 5020, DIALOG_STYLE_MSGBOX, "Aviation Life - Server Rules", "Do not Deathmatch under any circumstances.\nDo not abuse bugs which may have occured.\nHacking is Not Allowed in this server.\nServer Advertisement is not Allowed\nDo not Insult Players/Admins\nDo not Ask for any Money to other players.", "Agree", "");
		return 1;
	}
	if(strcmp(cmd, "/a", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(PInfo[playerid][Airline] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!");
	            return 1;
	        }
			GetPlayerName(playerid, sendername, sizeof(sendername));
			new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[156];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /a (text)");
				return 1;
			}
			new rank[128];
			if(PInfo[playerid][AirlineRank] == 1) { format(rank,sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank1]); }
			else if(PInfo[playerid][AirlineRank] == 2) { format(rank,sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank2]); }
			else if(PInfo[playerid][AirlineRank] == 3) { format(rank,sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank3]); }
			else if(PInfo[playerid][AirlineRank] == 4) { format(rank,sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank4]); }
			else if(PInfo[playerid][AirlineRank] == 5) { format(rank,sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank5]); }
			else if(PInfo[playerid][AirlineRank] == 6) { format(rank,sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank6]); }
			format(string, sizeof(string), "[%s]%s %s(%d): %s", AInfo[PInfo[playerid][Airline]][aName], rank, PlayerName(playerid), playerid, result);
			new airlineid = PInfo[playerid][Airline];
			if(PInfo[playerid][Airline] >= 1)
			{
				SendAirlineMessage(COLOR_AIRLINECHAT, string, airlineid);
				SendHiddenMessage(string);
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/v", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			if(PInfo[playerid][Vip] == 0)
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not a VIP !");
			    return 1;
			}
			GetPlayerName(playerid, sendername, sizeof(sendername));
			new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[156];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /v (text)");
				return 1;
			}
			format(string, sizeof(string), "[VIP Chat] %s (%d): %s", PlayerName(playerid), playerid, result);
			if(PInfo[playerid][Vip] >= 1)
			{
				SendVIPMessage(COLOR_VIP, string);
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/ac", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			GetPlayerName(playerid, sendername, sizeof(sendername));
			new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[156];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /ac (text)");
				return 1;
			}
			format(string, sizeof(string), "[Admin Chat] %s(%d): %s", PlayerName(playerid), playerid, result);
			if(PInfo[playerid][AdminLevel] >= 1)
			{
				SendAdminMessage(COLOR_LIGHTBLUE, string);
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/report", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        GetPlayerName(playerid, sendername, sizeof(sendername));
			new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[156];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /report (playerid) (reason)");
				return 1;
			}
			format(string, sizeof(string), "Report from [%d]%s: %s",playerid, sendername, (result));
			ABroadCast(COLOR_ADMIN,string,1);
			SendClientMessage(playerid, COLOR_ADMIN, "Your report message was sent to the admins, wait patiently for a reply.");
	    }
	    return 1;
	}
	if(strcmp(cmd, "/repair", true) == 0 || strcmp(cmd, "/fix", true) == 0)
	{
	    if(IsPlayerInAnyVehicle(playerid))
	    {
	        if(PInfo[playerid][Tickets] > 0)
	        {
				RepairVehicle(GetPlayerVehicleID(playerid));
				PInfo[playerid][Tickets]-=1;
				format(string,sizeof(string),"You have used a ticket and repaired your vehicle for free! [{FF4500}%d {FFFFFF}tickets remaining]",PInfo[playerid][Tickets]);
				SendClientMessage(playerid, COLOR_WHITE, string);
				return 1;
	        }
	        if(IsAtGasStation(playerid))
	        {
		        new id = GetPlayerVehicleID(playerid);
		        new Float:Health;
		        GetVehicleHealth(id, Health);
		        Health = floatdiv(Health,10.0);
				if(Health > 99)
				{
				    SendClientMessage(playerid, COLOR_ERROR, "Your vehicle is already fully repaired!");
				    return 1;
				}
				new Total = 100; //They are 80 Health.
				Total -= floatround(Health,floatround_ceil); // 100 - 80 = 20.
				if(PInfo[playerid][Vip] == 0) { Total *= 40; } // 20 x 40 = xx
				else { Total *= 20; } // 20 x 20 = xx
				if(PInfo[playerid][Money] < Total)
				{
				    SendClientMessage(playerid, COLOR_ERROR, "You cannot afford to repair your vehicle!");
				    return 1;
				}
				PInfo[playerid][Money] -= Total;
				GivePlayerMoney(playerid, -Total);
    			format(string,sizeof(string),"You have fully repaired your vehicle for a total of {FF4500}$%d.", Total);
    			SendClientMessage(playerid, COLOR_WHITE, string);
    			new amtearn[24];
				format(amtearn,sizeof(amtearn),"-$%d", Total);
				GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_ERROR); //style 2, 3 seconds, $1,250 (text)!
				RepairVehicle(id);
				PayLog(PlayerName(playerid), Total, "Repaired Vehicle", "Server", "N/A");
				return 1;
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not at a repair zone! (Repair zones are at a few main airports)");
			    return 1;
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in a vehicle !");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/refuel", true) == 0 || strcmp(cmd, "/fuel", true) == 0)
	{
	    if(IsPlayerInAnyVehicle(playerid))
	    {
     		if(PInfo[playerid][Tickets] > 0)
	        {
				new id = GetPlayerVehicleID(playerid);
				vfuel[id] = 100;
				new engine, lights, alarm, doors, bonnet, boot, objective;
				GetVehicleParamsEx(id, engine, lights, alarm, doors, bonnet, boot, objective);
				SetVehicleParamsEx(id, 1, lights, alarm, doors, bonnet, boot, objective);
				PInfo[playerid][Tickets]=PInfo[playerid][Tickets]-1;
				format(string,sizeof(string),"You have used a ticket and refueled your vehicle for free! [{FF4500}%d {FFFFFF}tickets remaining]",PInfo[playerid][Tickets]);
				SendClientMessage(playerid, COLOR_WHITE, string);
				return 1;
	        }
	        if(IsAtGasStation(playerid))
	        {
		        new id = GetPlayerVehicleID(playerid);
		        new Fuel = vfuel[id];
				if(Fuel == 100)
				{
				    SendClientMessage(playerid, COLOR_ERROR, "Your vehicle already has a full tank of fuel!");
				    return 1;
				}
				new Total;
				Total = 100-Fuel;
				Total = Total*55;
				if(PInfo[playerid][Vip] == 1) { Total=Total/100; Total=Total*75; }
				if(PInfo[playerid][Money] < Total)
				{
				    SendClientMessage(playerid, COLOR_ERROR, "You cannot afford to refuel your vehicle!");
				    return 1;
				}
				PInfo[playerid][Money] = PInfo[playerid][Money]-Total;
				GivePlayerMoney(playerid, -Total);
    			format(string,sizeof(string),"You have refueled your vehicle for a total of {FF4500}$%d.", Total);
    			SendClientMessage(playerid, COLOR_WHITE, string);
    			new amtearn[24];
				format(amtearn,sizeof(amtearn),"-$%d", Total);
				GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_ERROR); //style 2, 3 seconds, $1,250 (text)!
				vfuel[id] = 100;
				new engine, lights, alarm, doors, bonnet, boot, objective;
				GetVehicleParamsEx(id, engine, lights, alarm, doors, bonnet, boot, objective);
				SetVehicleParamsEx(id, 1, lights, alarm, doors, bonnet, boot, objective);
				PayLog(PlayerName(playerid), Total, "Refueled Vehicle", "Server", "N/A");
				return 1;
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not at a refueling zone! (Refueling zones are at a few main airports)");
			    return 1;
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in a vehicle !");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/r", true) == 0 || strcmp(cmd, "/reply", true) == 0)
	{
	    new giveplayerid, giveplayer[MAX_PLAYER_NAME];
	    if(IsPlayerConnected(playerid))
	    {
	        if(LastPMER[playerid] == INVALID_PLAYER_ID)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "No one has recently PMed you!");
	            return 1;
	        }
	        if(PlayerLogged[playerid] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not logged in !");
	            return 1;
	        }
			giveplayerid = LastPMER[playerid];
			if(IsPlayerConnected(giveplayerid))
			{
			    if(giveplayerid != INVALID_PLAYER_ID)
			    {
					if(giveplayerid == playerid) { SendClientMessage(playerid, COLOR_ERROR, "You cant PM yourself!"); return 1; }
					if(PInfo[giveplayerid][sPM] == 1 && PInfo[playerid][AdminLevel] == 0) { SendClientMessage(playerid, COLOR_ERROR, "This player has disabled private messages!"); return 1; }
					GetPlayerName(playerid, sendername, sizeof(sendername));
					GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
					new length = strlen(cmdtext);
					while ((idx < length) && (cmdtext[idx] <= ' '))
					{
						idx++;
					}
					new offset = idx;
					new result[96];
					while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
					{
						result[idx - offset] = cmdtext[idx];
						idx++;
					}
					result[idx - offset] = EOS;
					if(!strlen(result))
					{
						SendClientMessage(playerid, COLOR_ERROR, "Syntax: /r (text)");
						return 1;
					}
					format(string, sizeof(string), "%s(%d) PMED: %s", sendername, playerid, (result));
					SendClientMessage(giveplayerid, COLOR_RANDOMMSG, string);
					format(string, sizeof(string), "PM to %s(%d): %s", giveplayer, giveplayerid, (result));
					SendClientMessage(playerid,  COLOR_RANDOMMSG, string);
					format(string, sizeof(string), "%s(%d) TO %s(%d) [%s]",sendername,playerid,giveplayer,giveplayerid, (result));
					SendHiddenMessage(string);
					LastPMER[giveplayerid] = playerid;
					return 1;
				}
			}
			else
			{
					format(string, sizeof(string), "Player %d not online.", giveplayerid);
					SendClientMessage(playerid, COLOR_ERROR, string);
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/pm", true) == 0)
	{
	    new giveplayerid, giveplayer[MAX_PLAYER_NAME];
	    if(IsPlayerConnected(playerid))
	    {
	        if(PlayerLogged[playerid] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not logged in !");
	            return 1;
	        }
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /pm (playername/id) (text)");
				return 1;
			}
			giveplayerid = ReturnUser(tmp);
			if(IsPlayerConnected(giveplayerid))
			{
			    if(giveplayerid != INVALID_PLAYER_ID)
			    {
					if(giveplayerid == playerid) { SendClientMessage(playerid, COLOR_ERROR, "You cant PM yourself!"); return 1; }
					if(PInfo[giveplayerid][sPM] == 1 && PInfo[playerid][AdminLevel] == 0) { SendClientMessage(playerid, COLOR_ERROR, "This player has disabled private messages!"); return 1; }
					GetPlayerName(playerid, sendername, sizeof(sendername));
					GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
					new length = strlen(cmdtext);
					while ((idx < length) && (cmdtext[idx] <= ' '))
					{
						idx++;
					}
					new offset = idx;
					new result[96];
					while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
					{
						result[idx - offset] = cmdtext[idx];
						idx++;
					}
					result[idx - offset] = EOS;
					if(!strlen(result))
					{
						SendClientMessage(playerid, COLOR_ERROR, "Syntax: /pm (playername/id) (text)");
						return 1;
					}
					format(string, sizeof(string), "%s(%d) PMED: %s", sendername, playerid, (result));
					SendClientMessage(giveplayerid, COLOR_RANDOMMSG, string);
					format(string, sizeof(string), "PM to %s(%d): %s", giveplayer, giveplayerid, (result));
					SendClientMessage(playerid,  COLOR_RANDOMMSG, string);
					format(string, sizeof(string), "%s(%d) TO %s(%d) [%s]",sendername,playerid,giveplayer,giveplayerid, (result));
					SendHiddenMessage(string);
					LastPMER[giveplayerid] = playerid;
					return 1;
				}
			}
			else
			{
					format(string, sizeof(string), "Player %d not online.", giveplayerid);
					SendClientMessage(playerid, COLOR_ERROR, string);
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/changepass", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(PlayerLogged[playerid] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not logged in !");
	            return 1;
	        }
	        //new tmppass[128];
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /changepass (new password)");
				return 1;
			}
			format(string, sizeof(string), "You have changed your account password to %s.", tmp);
			PlayerNotice(playerid, string);
			SendClientMessage(playerid, COLOR_WHITE, string);
			strmid(PInfo[playerid][Password], tmp, 0, strlen(tmp), 128);
		}
		return 1;
	}
	if(strcmp(cmd, "/changeemail", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(PlayerLogged[playerid] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not logged in !");
	            return 1;
	        }
			SendClientMessage(playerid, COLOR_ERROR, "Linking emails in-game has been disabled.");
			return 1;
		}
		return 1;
	}
	if(strcmp(cmd, "/changecallsign", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(PlayerLogged[playerid] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not logged in !");
	            return 1;
	        }
	        //new tmppass[128];
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /changecallsign (new callsign)");
				return 1;
			}
			format(string, sizeof(string), "You have changed your callsign to: %s.", tmp);
			PlayerNotice(playerid, string);
			SendClientMessage(playerid, COLOR_WHITE, string);
			strmid(PInfo[playerid][Callsign], tmp, 0, strlen(tmp), 64);
			PInfo[playerid][CallsignSet] = 1;
		}
		return 1;
	}
	if(strcmp(cmd, "/l", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			GetPlayerName(playerid, sendername, sizeof(sendername));
			new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[96];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /l [local chat]");
				return 1;
			}
			format(string, sizeof(string), "[LOCAL] %s(%d): %s", PlayerName(playerid), playerid, result);
			new Float:pX, Float:pY, Float:pZ;
			GetPlayerPos(playerid, pX, pY, pZ);
		    for(new i = 0; i < MAX_PLAYERS; i++)
		    {
		        if(IsPlayerInRangeOfPoint(i, 30.0, pX, pY, pZ))
		        {
		            SendClientMessage(i, COLOR_WHITE, string);
		        }
		    }
			SendHiddenMessage(string);
			return 1;
		}
		return 1;
	}
	if(strcmp(cmd, "/commands", true) == 0 || strcmp(cmd, "/cmds", true) == 0)
	{
	    if(PlayerLogged[playerid] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You are not logged in !"); return 1; }
     	ShowPlayerDialog(playerid, 5010, DIALOG_STYLE_LIST, "Server Commands", "Account Commands\nGeneral Commands\nChat Commands\nVehicle Commands\nAirline Commands\nHouse Commands", "Select", "Cancel");
		return 1;
		/*else if(strcmp(text,"admin",true) == 0 || strcmp(cmd, "/acmds", true) == 0)
		{
		    if(PInfo[playerid][AdminLevel] == 0) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !"); return 1; }
		    SendClientMessage(playerid, COLOR_DARKRED, "[________Administrator Commands________]");
		    if(PInfo[playerid][AdminLevel] >= 1) { SendClientMessage(playerid, COLOR_GREEN, "[Junior Moderator] - /ac   /ban   /kick   /warn   /mute   /spec   /cc   /check   /adminarea   /respawnvehicles   /viewban    /goto   /get"); }
      		if(PInfo[playerid][AdminLevel] >= 2) { SendClientMessage(playerid, COLOR_BLUE, "[Moderator] - /televeh   /teleintoveh   /healall   /announce   /owarn   /giveticket   /spymode"); }
      		if(PInfo[playerid][AdminLevel] >= 3) { SendClientMessage(playerid, COLOR_ORANGE, "[Administrator] - /unban   /oban    /omute   /setname   /jetpack   /namechanges"); }
      		if(PInfo[playerid][AdminLevel] >= 4) { SendClientMessage(playerid, COLOR_ORANGE, "[Head Administrator] - /restartserver   /veh   /giveveh   /destroyvehicles   /refuelvehicles   /setmotd"); }
      		if(PInfo[playerid][AdminLevel] >= 5) { SendClientMessage(playerid, COLOR_RED, "[Manager] - /addvehicle   /updatevehicle   /deletevehicle   /addradiostation   /deleteradiostation   /addmapicon   /deletemapicon   /killplayer"); }
      		if(PInfo[playerid][AdminLevel] >= 6) { SendClientMessage(playerid, COLOR_RED, "[Server Owner] - /reloadhouse   /movehouse   /reloadhouses   /reloadvehicles    /reloadstuff   /makeadmin    /deleteaccount   /myvehicle   /reloadairline"); }
      		if(!strcmp(PlayerName(playerid), "FreAkeD")|| !strcmp(PlayerName(playerid), "RohitArora")) { SendClientMessage(playerid, COLOR_RED, "[Developer] - /crashplayer   /addplayervehicle   /createhouse   /deletehouse   /gimmeadmin   /deleteairline"); }
		    return 1;
		}*/
	}
	
    if(strcmp(cmd, "/acmds", true) == 0)
	{
	    	if(PlayerLogged[playerid] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You are not logged in !"); return 1; }
		    if(PInfo[playerid][AdminLevel] == 0) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !"); return 1; }
		    SendClientMessage(playerid, COLOR_DARKRED, "[________Administrator Commands________]");
		    if(PInfo[playerid][AdminLevel] >= 1) { SendClientMessage(playerid, COLOR_GREEN, "[Moderator] - /ac   /ban   /kick   /warn   /mute   /spec   /cc   /check   /adminarea   /respawnvehicles   /viewban    /goto   /get"); }
      		if(PInfo[playerid][AdminLevel] >= 2) { SendClientMessage(playerid, COLOR_BLUE, "[Administrator] - /televeh   /teleintoveh   /healall   /announce   /owarn   /giveticket   /spymode"); }
      		if(PInfo[playerid][AdminLevel] >= 3) { SendClientMessage(playerid, COLOR_ORANGE, "[Senior Administrator] - /unban   /oban    /omute   /setname   /jetpack   /namechanges"); }
      		if(PInfo[playerid][AdminLevel] >= 4) { SendClientMessage(playerid, COLOR_ORANGE, "[Head Administrator] - /restartserver   /veh   /giveveh   /destroyvehicles   /refuelvehicles   /setmotd"); }
      		if(PInfo[playerid][AdminLevel] >= 5) { SendClientMessage(playerid, COLOR_RED, "[Manager] - /addvehicle   /updatevehicle   /deletevehicle   /addradiostation   /deleteradiostation   /addmapicon   /deletemapicon   /killplayer"); }
      		if(!strcmp(PlayerName(playerid), "FreAkeD")|| !strcmp(PlayerName(playerid), "RohitArora")) { SendClientMessage(playerid, COLOR_RED, "[Server Owner] - /reloadhouse   /movehouse   /reloadhouses   /reloadvehicles    /reloadstuff   /makeadmin   /makevip    /deleteaccount   /myvehicle   /reloadairline"); }
      		if(!strcmp(PlayerName(playerid), "FreAkeD")|| !strcmp(PlayerName(playerid), "RohitArora")) { SendClientMessage(playerid, COLOR_RED, "[Developer] - /crashplayer   /addplayervehicle   /createhouse   /deletehouse   /gimmeadmin   /deleteairline"); }
		    return 1;
	}
	if(strcmp(cmd, "/respawn", true) == 0)
	{
		RespawnPlayer(playerid);
		return 1;
	}
	if(strcmp(cmd, "/reclass", true) == 0)
	{
		DisplayDialogForPlayer(playerid, 4);
		return 1;
	}
	if(strcmp("/refuelvehicles", cmdtext, true) == 0)
 {
	    if(PInfo[playerid][AdminLevel] > 3)
	    {
		   for(new i = 0; i < MAX_VEHICLES; i++)
		   {
		        vfuel[i] = 100;
		   }
		   new stringmsg[128];
		   format(stringmsg, sizeof(stringmsg), "{FF4500}[!] {FFFFFF}An Admin has refueled all vehicles.");
		   SendClientMessageToAll(COLOR_WHITE, stringmsg);
		   AdminLog(playerid, "/refuelvehicles", "Refueled Vehicles", "Vehicle");
	    }
		return 1;
	}
	if(strcmp("/respawncars", cmdtext, true) == 0 ||strcmp(cmd, "/rc", true) == 0)
	{
	    new query[250];
	    format(query,sizeof(query),"SELECT NULL FROM `pvehicles` WHERE OwnedBy = '%s'", PlayerName(playerid));
	    mysql_reconnect();
	    mysql_query(query);
	    mysql_store_result();
	    new rows = mysql_num_rows();
	    mysql_free_result();
	    new finished = 0;
	    if(rows > 0)
	    {
	        for(new i=0;i <sizeof(PVInfo);i++)
	        {
	            if(!IsVehicleOccupied(PVInfo[i][vpVehicleSpawned]))
	            {
		            if(!strcmp(PVInfo[i][vpOwnedBy], PlayerName(playerid)))
					{
						finished = 1;
		                SetVehicleToRespawn(PVInfo[i][vpVehicleSpawned]);
		                //ReloadVehicle(i);
		            }
	            }
	        }
	        if(finished == 1)
	        {
	            SendClientMessage(playerid, COLOR_WHITE, "You have respawned all of your unoccupied vehicles!");
    	        mysql_free_result();
	            return 1;
	        }
	        else
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You do not own any vehicles, or they are all occupied!");
    	        mysql_free_result();
	            return 1;
	        }
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You do not own any vehicles!");
	        mysql_free_result();
	        return 1;
	    }
	}
	if(strcmp("/fleet", cmdtext, true) == 0)
	{
	    if(PInfo[playerid][Airline] > 0)
	    {
	        new count = 0;
	        if(PInfo[playerid][AirlineRank] >= AInfo[PInfo[playerid][Airline]][pRspFleet]) //3+ can /respawnfleet
	        {
				for(new i = 0; i < MAX_VEHICLES; i++)
				{
				    if(!IsVehicleOccupied(i))
				    {
				        if(aVInfo[i][AID] == PInfo[playerid][Airline])
				        {
				        	SetVehicleToRespawn(i);
				        	count++;
				        }
				    }
				}
				new msg[128];
				format(msg,sizeof(msg),"Respawned airline's fleet. {FF4500}(%d/%d)", count, AInfo[PInfo[playerid][Airline]][aFleetTotal]);
				SendClientMessage(playerid, COLOR_WHITE, msg);
				format(msg,sizeof(msg),"* %s(%d) has respawned the airline's fleet.", PlayerName(playerid), playerid);
				SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
				return 1;
	        }
	        else
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to respawn the airlines fleet!");
	            return 1;
	        }
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!");
	        return 1;
	    }
	}
	if(strcmp("/respawnvehicles", cmdtext, true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 0)
	    {
		   for(new i = 0; i < MAX_VEHICLES; i++)
		   {
   		   	   if(!IsVehicleOccupied(i))
			   {
    		        SetVehicleToRespawn(i);
			   }
		   }
		   new stringmsg[128];
		   format(stringmsg, sizeof(stringmsg), "{FF4500}[!] {FFFFFF}An Admin has respawned all unoccupied vehicles.");
		   SendClientMessageToAll(COLOR_WHITE, stringmsg);
		   AdminLog(playerid, "/respawnvehicles", "Respawned Vehicles", "Vehicle");
	    }
		return 1;
	}
	if(strcmp(cmd, "/credits", true) == 0)
	{
    	new credits[800];
     	strcat(credits,"{ffffff}Server Owner and Developer - {FF6600}RohitArora\n");
     	ShowPlayerDialog(playerid, 99999, DIALOG_STYLE_MSGBOX, "credits",credits, "Close", "");
		return 1;
	}
	if(strcmp(cmd, "/deleteradiostation", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 5) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !"); return 1; }
	    new radioid;
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /deleteradiostation (radio station id)");
	        return 1;
	    }
	    radioid = strvalEx(tmp);
	    if(radioid < 0) { SendClientMessage(playerid, COLOR_ERROR, "ID must be over 0."); return 1; }
	    new msg[256];
	    format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has deleted radio-station ID: %d",radioid);
	    SendAdminMessage(COLOR_ADMIN, msg);
	    format(msg,sizeof(msg),"DELETE FROM radio WHERE ID = '%d'", radioid);
	    mysql_reconnect();
	    mysql_query(msg);
	    return 1;
	}
	if(strcmp(cmd, "/deletevipsound", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 5) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !"); return 1; }
	    new radioid;
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /deletevipsound (radio station id)");
	        return 1;
	    }
	    radioid = strvalEx(tmp);
	    if(radioid < 0) { SendClientMessage(playerid, COLOR_ERROR, "ID must be over 0."); return 1; }
	    new msg[256];
	    format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has deleted VIP Sound ID: %d",radioid);
	    SendAdminMessage(COLOR_ADMIN, msg);
	    format(msg,sizeof(msg),"DELETE FROM vipsounds WHERE ID = '%d'", radioid);
	    mysql_reconnect();
	    mysql_query(msg);
	    return 1;
	}
	if(strcmp(cmd, "/sellskin", true) == 0)
	{
	    if(PInfo[playerid][OwnedSkin] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not own a skin!"); return 1; }
   		new query[300];
	    format(query,sizeof(query),"SELECT forsale FROM skins WHERE skinid='%d'", PInfo[playerid][OwnedSkin]);
	    mysql_query(query);
	    mysql_store_result();
	    new isforsale = mysql_fetch_int();
	    mysql_free_result();
		if(isforsale == 1)
		{
			format(query,sizeof(query),"UPDATE skins SET forsale='0' WHERE skinid='%d'", PInfo[playerid][OwnedSkin]);
			mysql_query(query);
			SendClientMessage(playerid, COLOR_SKIN, "You have disabled the sale on your skin!");
		    return 1;
		}
		new skin;
		tmp = strtok(cmdtext, idx);
		if(!strlen(tmp))
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Syntax: /sellskin (price)");
		    return 1;
		}
		skin = strvalEx(tmp);
		if(skin < 0 || skin > 500000)
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Cannot sell skins for under $0, or over $500,000!");
		    return 1;
		}
		format(query,sizeof(query),"You have put your skin for sale for $%d. (Use /advertisement to advertise it, or type /sellskin to disable the sale.)",skin);
		SendClientMessage(playerid, COLOR_SKIN, query);
		format(query,sizeof(query),"UPDATE skins SET forsale='1',forsaleprice='%d' WHERE skinid='%d'",skin,PInfo[playerid][OwnedSkin]);
		mysql_query(query);
		return 1;
	}
	if(strcmp(cmd, "/previewskin", true) == 0)
	{
	    if(PreviewingSkin[playerid] == 1)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are already previewing a skin!");
	        return 1;
	    }
	    new skin;
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /previewskin (skin id)");
	        return 1;
	    }
		skin = strvalEx(tmp);
		if(skin < 0 || skin > 299)
		{
		    SendClientMessage(playerid, COLOR_ERROR, "ID must be over 0 and under 300.");
		    return 1;
		}
		PreviewingSkin[playerid] = 1;
		PreviewingSkinOld[playerid] = GetPlayerSkin(playerid);
		SetPlayerSkin(playerid, skin);
		PreviewingSkinTime[playerid] = 5;
		SendClientMessage(playerid, COLOR_SKIN, "You are previewing a skin. Your old skin will be reverted in 5 seconds. (Please avoid doing any animations as it may cause your game to crash.)");
		return 1;
	}
	if(strcmp(cmd, "/buyskin", true) == 0)
	{
	    if(PInfo[playerid][OwnedSkin] > 0)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You already own a skin !");
	        return 1;
	    }
	    new radio;
		tmp = strtok(cmdtext, idx);
		if(!strlen(tmp))
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Syntax: /buyskin (skin id)");
		    return 1;
		}
		radio = strvalEx(tmp);
		if(radio < 0 || radio > 299)
		{
		    SendClientMessage(playerid, COLOR_ERROR, "ID must be over 0 and under 300.");
			return 1;
		}
		new query[400];
		format(query,sizeof(query),"SELECT NULL FROM skins WHERE skinid = '%d'",radio);
		mysql_reconnect();
		mysql_query(query);
		mysql_store_result();
		if(mysql_num_rows() > 0)
		{
			mysql_free_result();
			format(query,sizeof(query),"SELECT `owner`,`forsale`,`forsaleprice`,`price` FROM skins WHERE skinid = '%d'",radio);
			mysql_query(query);
			mysql_store_result();
   			mysql_fetch_row(query);
   			new sOwner[MAX_PLAYER_NAME], sForSale, sForSalePrice, sDefaultPrice;
   			sscanf(query, "p<|>s[30]ddd", sOwner, sForSale, sForSalePrice, sDefaultPrice);
      		mysql_real_escape_string(sOwner, sOwner);
      		mysql_free_result();
      		if(!strcmp(sOwner, "None"))
      		{//This skin is currently unbought. Display price + confirmation.
      		    if(SkinConfirmation[playerid] == 0) { SkinConfirmation[playerid] = 1; format(query,sizeof(query),"[Skin ID: %d] This skin is for sale!($%d) (/previewskin %d to preview) OR (/buyskin %d to confirm purchase).",radio,sDefaultPrice,radio,radio); SendClientMessage(playerid, COLOR_SKIN, query); return 1; }
      		    if(PInfo[playerid][Money] < sDefaultPrice) { SkinConfirmation[playerid] = 0; SendClientMessage(playerid, COLOR_SKIN, "You cannot afford this skin!"); return 1; }
      		    PInfo[playerid][OwnedSkin] = radio;
      		    PInfo[playerid][Money]=PInfo[playerid][Money]-sDefaultPrice;
      		    GivePlayerMoney(playerid, -sDefaultPrice);
      		    new pName[MAX_PLAYER_NAME];
      		    format(pName,sizeof(pName),"%s",PlayerName(playerid));
      		    mysql_real_escape_string(pName,pName);
      		    format(query,sizeof(query),"UPDATE skins SET owner='%s',forsale='0',forsaleprice='100000' WHERE skinid='%d'",pName,radio);
      		    mysql_query(query);
      		    SendClientMessage(playerid, COLOR_SKIN, "You have purchased this skin. You can spawn with it by changing your [/preferences]. For more Command type /cmds skins.");
				SaveAccount(playerid);
				SkinConfirmation[playerid] = 0;
      		    return 1;
      		}
      		if(sForSale == 1)
      		{//This skin is currently bought, but for sale. Display price, owner + confirmation.
  		    	if(SkinConfirmation[playerid] == 0) { SkinConfirmation[playerid] = 1; format(query,sizeof(query),"[Skin ID: %d] This skin is for sale (Seller: %s - $%d) (/previewskin %d to preview) OR (/buyskin %d to confirm purchase).",radio,sOwner,sForSalePrice,radio,radio); SendClientMessage(playerid, COLOR_SKIN, query); return 1; }
      		    if(PInfo[playerid][Money] < sForSalePrice) { SkinConfirmation[playerid] = 0; SendClientMessage(playerid, COLOR_SKIN, "You cannot afford this skin!"); return 1; }
      		    SkinConfirmation[playerid] = 0;
      		    new CheckName[MAX_PLAYER_NAME];
      		    new pOnline = 0;
      		    for(new i = 0; i<MAX_PLAYERS; i++)
      		    {
      		        GetPlayerName(i, CheckName, MAX_PLAYER_NAME);
					if(!strcmp(CheckName, sOwner) && PlayerLogged[i] == 1)
					{//Found the owner.
						PInfo[i][OwnedSkin] = 0;
						PInfo[playerid][OwnedSkin] = radio;
						format(query,sizeof(query),"*%s(%d) has purchased your skin for $%d.", PlayerName(playerid),playerid,sForSalePrice);
						SendClientMessage(i, COLOR_SKIN, query);
						format(query,sizeof(query),"You have purchased %s(%d)'s skin for $%d. (Type /preferences to spawn with your skin and /cmds skins for more commands).", sOwner, i, sForSalePrice);
						SendClientMessage(playerid, COLOR_SKIN, query);
						PInfo[i][Money]=PInfo[i][Money]+sForSalePrice;
						GivePlayerMoney(i, sForSalePrice);
						GivePlayerMoney(playerid, -sForSalePrice);
						PInfo[playerid][Money]=PInfo[playerid][Money]-sForSalePrice;
						new pName[MAX_PLAYER_NAME];
						format(pName,sizeof(pName),"%s",PlayerName(playerid));
						mysql_real_escape_string(pName,pName);
						format(query,sizeof(query),"UPDATE skins SET owner='%s',forsale='0',forsaleprice='0' WHERE skinid='%d'",pName,radio);
						mysql_query(query);
						pOnline = 1;
						SkinConfirmation[playerid] = 0;
						return 1;
					}
      		    }
      		    if(pOnline == 0)
      		    {//He is offline. :(.
      		        format(query,sizeof(query),"SELECT money FROM users WHERE username='%s'",sOwner);
      		        mysql_query(query);
      		        mysql_store_result();
      		        new cash = mysql_fetch_int();
					cash = cash+sForSalePrice;
      		        mysql_free_result();
					format(query,sizeof(query),"UPDATE users SET money='%d',ownedskin='0' WHERE username='%s'",cash,sOwner);
					mysql_query(query);
					new pName[MAX_PLAYER_NAME];
					format(pName,sizeof(pName),"%s",PlayerName(playerid));
					mysql_real_escape_string(pName,pName);
					format(query,sizeof(query),"UPDATE skins SET owner='%s',forsale='0',forsaleprice='0' WHERE skinid='%d'",pName,radio);
					mysql_query(query);
					PInfo[playerid][Money]=PInfo[playerid][Money]-sForSalePrice;
					GivePlayerMoney(playerid, -sForSalePrice);
					PInfo[playerid][OwnedSkin] = radio;
					format(query,sizeof(query),"You have purchased skin ID %d from %s for $%d. (Type /preferences to spawn with your skin and /cmds skins for more commands).",radio,sOwner,sForSalePrice);
					SendClientMessage(playerid, COLOR_SKIN, query);
					SkinConfirmation[playerid] = 0;
					return 1;
      		    }
      		    return 1;
      		}
      		if(sForSale == 0)
      		{//This skin is currently bought, and not for sale. Display owner only.
				format(query,sizeof(query),"[Skin ID: %d] This skin is currently owned by %s and is not for sale.",radio,sOwner);
				SendClientMessage(playerid, COLOR_SKIN, query);
      		    return 1;
      		}
			return 1;
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Skin ID is invalid!");
		    mysql_free_result();
		    return 1;
		}
	}
	if(strcmp(cmd, "/quickplay", true) == 0)
	{
	    if(ListeningToRadio[playerid] == 1)
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are already listening to a radio station! Type /cancelradio to stop listening.");
	        return 1;
	    }
	    new radio;
		tmp = strtok(cmdtext, idx);
		if(!strlen(tmp))
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Syntax: /quickplay (radio id)");
		    return 1;
		}
		radio = strvalEx(tmp);
		if(radio < 0)
		{
		    SendClientMessage(playerid, COLOR_ERROR, "ID must be over 0.");
			return 1;
		}
		new query[400];
		format(query,sizeof(query),"SELECT NULL FROM radio WHERE ID = '%d'",radio);
		mysql_reconnect();
		mysql_query(query);
		mysql_store_result();
		if(mysql_num_rows() > 0)
		{
			mysql_free_result();
			format(query,sizeof(query),"SELECT `Name`,`URL` FROM radio WHERE ID = '%d'",radio);
			mysql_query(query);
			mysql_store_result();
   			mysql_retrieve_row();
   			new sName[128], sURL[256];
      		mysql_get_field("Name", sName);
      		mysql_get_field("URL", sURL);
      		mysql_free_result();
			PlayAudioStreamForPlayer(playerid, sURL);
			ListeningToRadio[playerid] = 1;
			format(query,sizeof(query),"You are now listening to: {FF4500}%s. {FFFFFF}[/cancelradio to turn off.]", sName);
			SendClientMessage(playerid, COLOR_WHITE, query);
			format(query,sizeof(query),"UPDATE radio SET Hits = Hits + 1 WHERE ID = '%d'",radio);
			mysql_query(query);
			return 1;
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Radio ID is invalid!");
		    mysql_free_result();
		    return 1;
		}
	}
	if(strcmp(cmd, "/deleteairline", true) == 0)
	{
		if(!strcmp(PlayerName(playerid), "FreAkeD") || !strcmp(PlayerName(playerid), "RohitArora"))
		{
			new airlineid;
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Syntax: /deleteairline (airline id)");
			    return 1;
			}
			airlineid = strvalEx(tmp);
			if(airlineid < 0)
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Airline ID must be over 0.");
			    return 1;
			}
			new msg[156];
			format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has deleted airline ID %d (%s)",airlineid,AInfo[airlineid][aName]);
			SendAdminMessage(COLOR_ADMIN,msg);
			new query[750];
			AdminLog(playerid, "/deleteairline", "Deleted Airline", "Airline");
			format(query,sizeof(query),"UPDATE airlines SET Name='Empty',Owner='None',Flights='0',Payrate='50',Balance='0',Rank1='Default',Rank2='Default',Rank3='Default',Rank4='Default',Rank5='Default',Rank6='Default',totalearnt='0',totalpaid='0',fleetslots='5',fleettotal='0',uniform='1',pos1='0',pos2='0',pos3='0',pos4='0',motd='None',motdsetby='None',invmembers='6',rmvmembers='6',prmmembers='6',prkfleet='6',clrfleet='6',bnkperm='6',rspfleet='6',distance='0' WHERE ID = '%d'", airlineid);
			mysql_reconnect();
			mysql_query(query);
		    for(new i; i<MAX_PLAYERS; i++)
			{
				if(IsPlayerConnected(i))
				{
					if(PInfo[i][Airline] == airlineid)
					{
						PInfo[i][Airline] = 0;
						SendClientMessage(i, COLOR_ERROR, "[!] An Admin has deleted the airline you were in. You have been kicked out.");
					}
				}
			}
			format(query,sizeof(query),"UPDATE users SET earntforairline='0',airline='0',airlinerank='0',airlineflights='0' WHERE airline = '%d'", airlineid);
			mysql_reconnect();
			mysql_query(query);
			format(query,sizeof(query),"DELETE FROM avehicles WHERE Airline = '%d'", airlineid);
			mysql_query(query);
			return 1;
		}
		else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "You are not a developer !");
		    return 1;
		}
	}
	if(strcmp(cmd, "/reloadairline", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 6) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !"); return 1; }
	    new airlineid;
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /reloadairline (airline id)");
	        return 1;
	    }
		airlineid = strvalEx(tmp);
		if(airlineid < 0 || airlineid > MAX_AIRLINES)
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Airline ID's: 1-5.");
		    return 1;
		}
  		new msg[128];
    	format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has reloaded airline %s(%d)", AInfo[airlineid][aName], airlineid);
	    SendAdminMessage(COLOR_ADMIN, msg);
		LoadAirline(airlineid);
		AdminLog(playerid, "/reloadairline", "Reloaded Airline", "Airline");
		return 1;
	}
	if(strcmp(cmd, "/movehouse", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 6 ) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !"); return 1; }
	    new airlineid;
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /movehouse (house id)");
	        return 1;
	    }
		airlineid = strvalEx(tmp);
		new Float:X, Float:Y, Float:Z;
		GetPlayerPos(playerid, X,Y,Z);
		new query[200];
		format(query,sizeof(query),"UPDATE houses SET eX='%f', eY='%f', eZ='%f' WHERE HouseID = '%d'",X,Y,Z,airlineid);
		mysql_reconnect();
		mysql_query(query);
   		new msg[128];
    	format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has moved house ID %d", airlineid);
	    SendAdminMessage(COLOR_ADMIN, msg);
		AdminLog(playerid, "/movehouse", "Moved House", "House");
		ReloadHouse(airlineid);
		return 1;
	}
	if(strcmp(cmd, "/deletemapicon", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 5) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!"); return 1; }
	    new mapid;
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /deletemapicon (Map icon ID)");
	        return 1;
	    }
	    mapid = strvalEx(tmp);
	    new query[200];
	    format(query,sizeof(query),"DELETE FROM mapicons WHERE ID = '%d' LIMIT 1", mapid);
	    mysql_query(query);
	    DestroyDynamicMapIcon(MapIconData[mapid][MapIcon]);
		SendClientMessage(playerid, COLOR_WHITE, "You have deleted the map icon successfully.");
		return 1;
	}
	if(strcmp(cmd, "/addmapicon", true) == 0)
	{
 		if(PInfo[playerid][AdminLevel] < 5) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !!"); return 1; }
 		new iconid;
 		tmp = strtok(cmdtext, idx);
 		if(!strlen(tmp))
 		{
 		    SendClientMessage(playerid, COLOR_ERROR, "Syntax: /addmapicon (SA:MP Icon ID) - Uses your player position!");
 		    return 1;
 		}
 		iconid = strvalEx(tmp);
 		new Float:pX, Float:pY, Float:pZ;
 		GetPlayerPos(playerid, pX, pY, pZ);
 		new query[400];
 		format(query,sizeof(query),"INSERT INTO mapicons (IconID, IconX, IconY, IconZ) VALUES ('%d', '%f', '%f', '%f')", iconid, pX, pY, pZ);
 		mysql_query(query);
 		format(query,sizeof(query),"SELECT `ID` FROM mapicons WHERE IconX='%f'",pX);
 		mysql_query(query);
 		mysql_store_result();
   		new nMapID = mysql_fetch_int();
   		mysql_free_result();
 		format(query,sizeof(query),"Added icon successfully. [ID:%d]", nMapID);
 		SendClientMessage(playerid, COLOR_WHITE, query);
 		CreateDynamicMapIcon(pX, pY, pZ, iconid, 0);
	    return 1;
	}
	if(strcmp(cmd, "/deletehouse", true) == 0)
	{
	    if(strcmp(PlayerName(playerid), "FreAkeD") || !strcmp(PlayerName(playerid), "RohitArora"))
		{
			SendClientMessage(playerid, COLOR_ERROR, "You are not a Developer !");
			return 1;
		}
 	    new airlineid;
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /deletehouse (house id)");
	        return 1;
	    }
		airlineid = strvalEx(tmp);
		new query[250];
		format(query,sizeof(query),"DELETE FROM houses WHERE HouseID = '%d'", airlineid);
		mysql_reconnect();
		mysql_query(query);
		DestroyDynamicMapIcon(HInfo[airlineid][hMapIcon]);
		Delete3DTextLabel(HInfo[airlineid][hHouseText]);
		DestroyPickup(HInfo[airlineid][hPickupID]);
   		new msg[128];
    	format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has deleted house ID %d",airlineid);
	    SendAdminMessage(COLOR_ADMIN, msg);
		AdminLog(playerid, "/deletehouse", "Deleted House", "House");
		return 1;
	}
	if(strcmp(cmd, "/addplayervehicle", true) == 0)
	{
		if(!strcmp(PlayerName(playerid), "FreAkeD") || !strcmp(PlayerName(playerid), "RohitArora"))
		{
	        if(IsPlayerInAnyVehicle(playerid))
	        {
	            new price;
	            tmp = strtok(cmdtext, idx);
	            if(!strlen(tmp))
	            {
	                SendClientMessage(playerid, COLOR_ERROR, "Syntax: /addplayervehicle (price)");
	                return 1;
	            }
	            price = strvalEx(tmp);
	            if(price < 100000) { SendClientMessage(playerid, COLOR_ERROR, "Too cheap!"); return 1; }
				AddVehicle(playerid, price);
    			AdminLog(playerid, "/addplayervehicle", "Created Player Vehicle", "Vehicle");
				return 1;
	        }
	        else
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not in a vehicle!");
	            return 1;
	        }
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Developer's only !");
			return 1;
	    }
	}
	if(strcmp(cmd, "/reloadhouse", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] < 6) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !"); return 1; }
	    new airlineid;
	    tmp = strtok(cmdtext, idx);
	    if(!strlen(tmp))
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "Syntax: /reloadhouse (house id)");
	        return 1;
	    }
		airlineid = strvalEx(tmp);
		if(airlineid < 0 || airlineid > MAX_HOUSES || airlineid == 1)
		{
		    SendClientMessage(playerid, COLOR_ERROR, "Valid house ID's are 2-500.");
		    return 1;
		}
  		new msg[128];
    	format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has reloaded house ID %d", airlineid);
	    SendAdminMessage(COLOR_ADMIN, msg);
		ReloadHouse(airlineid);
		AdminLog(playerid, "/reloadhouse", "Reloaded House", "House");
		return 1;
	}
	if(strcmp(cmd, "/veh", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
     		if(PInfo[playerid][AdminLevel] < 4) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !"); return 1; }
	        new moneys;
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /veh [Vehicle Model]");
				return 1;
			}
			moneys = strvalEx(tmp);
			if(moneys < 400 || moneys > 611)
			{
				SendClientMessage(playerid, COLOR_ERROR, "Cannot go over 611 or under 400 !");
				return 1;
			}
 			new	Float:X, Float:Y, Float:Z, Float:A;
	        GetPlayerPos(playerid, X,Y,Z);
			GetPlayerFacingAngle(playerid,A);
			new carid = CreateVehicle(moneys, X,Y,Z,A, -1, -1, -1);
  			gDestroyVehicle[carid] = 1;
			PutPlayerInVehicle(playerid,carid,0);
			LinkVehicleToInterior(carid,GetPlayerInterior(playerid));
			PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
			vfuel[carid] = 100;
			VInfo[carid][ID] = 0;
			aVInfo[carid][ID] = 0;
			aVInfo[carid][AID] = 0;
			AdminLog(playerid, "/veh", "Spawned Vehicle", "Vehicle");
			for(new i = 0; i < sizeof(CreatedCars); i++)
			{
		    	if(CreatedCars[i] == INVALID_VEHICLE_ID)
		    	{
		        	CreatedCars[i] = carid;
					break;
				}
			}
//			fuel[carid] = 100;
		}
		return 1;
	}
	if(strcmp(cmd, "/destroyvehicles", true) == 0)
	{
	    if(PInfo[playerid][AdminLevel] > 3)
	    {
	        new vehcount = 0;
	        for(new i = 0; i < sizeof(CreatedCars); i++)
			{
				if(CreatedCars[i] != INVALID_VEHICLE_ID)
				{
				    vehcount++;
				    gDestroyVehicle[CreatedCars[i]] = 1;
					SetVehicleToRespawn(CreatedCars[i]);
					CreatedCars[i] = INVALID_VEHICLE_ID;
				}
			}
			new msg[128];
			format(msg,sizeof(msg),"{FF4500}[!] {FFFFFF}An Admin has de-spawned all admin-spawned vehicles");
			SendClientMessageToAll(COLOR_WHITE, msg);
			AdminLog(playerid, "/destroyvehicles", "Destroyed Vehicles", "Vehicle");
	        return 1;
		}
		return 1;
	}
	if(strcmp(cmd, "/giveveh", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
     		if(PInfo[playerid][AdminLevel] < 4) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !"); return 1;}
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /giveveh (playername/id) (Vehicle Model)");
				return 1;
			}
			new playa;
			new money;
			playa = ReturnUser(tmp);
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /giveveh (playername/id) (Vehicle Model)");
				return 1;
			}
			money = strvalEx(tmp);
			if(money < 400 || money > 610)
			{
				SendClientMessage(playerid, COLOR_ERROR, "Cannot go over 611 or under 400 !");
				return 1;
			}
 			new	Float:X, Float:Y, Float:Z, Float:A;
	        GetPlayerPos(playa, X,Y,Z);
			GetPlayerFacingAngle(playa,A);
			new carid = CreateVehicle(money, X,Y,Z,A, -1, -1, -1);
			gDestroyVehicle[carid] = 1;
			PutPlayerInVehicle(playa,carid,0);
			LinkVehicleToInterior(carid,GetPlayerInterior(playerid));
			PlayerPlaySound(playa, 1052, 0.0, 0.0, 0.0);
			vfuel[carid] = 100;
			VInfo[carid][ID] = 0;
			aVInfo[carid][ID] = 0;
			aVInfo[carid][AID] = 0;
			AdminLog(playerid, "/giveveh", "Given Vehicle", PlayerName(playa));
			for(new i = 0; i < sizeof(CreatedCars); i++)
			{
		    	if(CreatedCars[i] == INVALID_VEHICLE_ID)
		    	{
		        	CreatedCars[i] = carid;
					break;
				}
			}
			//fuel[carid] = 100;
		}
		return 1;
	}
	if(strcmp(cmd, "/addvehicle", true) == 0)
	{
	    if(IsPlayerInAnyVehicle(playerid))
	    {
	        if(PInfo[playerid][AdminLevel] > 4)
	        {
		        new length = strlen(cmdtext);
				while ((idx < length) && (cmdtext[idx] <= ' '))
				{
					idx++;
				}
				new offset = idx;
				new result[128];
				while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
				{
					result[idx - offset] = cmdtext[idx];
					idx++;
				}
				if(!strlen(result))
				{
					SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /addvehicle [e.g: Shamal, LS Airport 2.]");
					return 1;
				}
				result[idx - offset] = EOS;
				new VC1 = -1;
				new VC2 = -1;
		        if(PInfo[playerid][AdminLevel] < 2) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !"); return 1;}
		        new Float: VX, Float: VY, Float: VZ, Float: VA, dModel, Msg[64];
	   			GetPlayerPos(playerid, VX, VY, VZ);
				GetVehicleZAngle(GetPlayerVehicleID(playerid), VA);
				dModel = GetVehicleModel(GetPlayerVehicleID(playerid));
				mysql_reconnect();
				new Query[500];
				format(Query, sizeof(Query), "INSERT INTO `vehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleColor1, VehicleColor2) VALUES(%d, %f, %f, %f, %f, %d, %d)",
				dModel, VX, VY, VZ, VA, VC1, VC2);

				mysql_query(Query);
				mysql_free_result();
				format(Msg, sizeof(Msg), "Vehicle added to database - Model: %d",dModel);
				SendClientMessage(playerid, COLOR_YELLOW, Msg);
				AdminLog(playerid, "/addvehicle", "Added Vehicle to Server", "Vehicle");
				return 1;
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_ERROR, "You are not in a vehicle !");
	        return 1;
	    }
	}
	if(strcmp(cmd, "/afklist", true) == 0)
	{
 		SendClientMessage(playerid, COLOR_GREEN, "{FFFFFF}                                           ");
		SendClientMessage(playerid, COLOR_GREY, "Current members which are AFK:");
		for(new i; i<MAX_PLAYERS; i++)
		{
		    if(IsPlayerConnected(i) && AFKPLAYER[i] == 1)
		    {
				format(string, sizeof(string), "{FFFFFF}%s(%d): {FF4500}[%s]",PlayerName(i),i,AFKREASON[i]);
				SendClientMessage(playerid, COLOR_WHITE, string);
		    }
		}
		SendClientMessage(playerid, COLOR_GREEN, "{FFFFFF}                                           ");
		return 1;
	}
	if(strcmp(cmd, "/myairline", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(PInfo[playerid][Airline] == 0)
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not in an Airline!");
	            return 1;
	        }
	        SendClientMessage(playerid, COLOR_GREEN, "{FFFFFF}                                           ");
	    	SendClientMessage(playerid, COLOR_ORANGE, "Airline members online:");
 	    	//foreach(Player, i)
       		for(new i; i<MAX_PLAYERS; i++)
			{
   				if(IsPlayerConnected(i))
		    	{
					if(PInfo[i][Airline] == PInfo[playerid][Airline])
					{
					    new rank[128];
					    if(PInfo[i][AirlineRank] == 1)
					    {
							format(rank, sizeof(rank), "%s", AInfo[PInfo[playerid][Airline]][aRank1]);
					    }
					    else if(PInfo[i][AirlineRank] == 2)
					    {
							format(rank, sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank2]);
					    }
					    else if(PInfo[i][AirlineRank] == 3)
					    {
					        format(rank, sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank3]);
					    }
					    else if(PInfo[i][AirlineRank] == 4)
					    {
					        format(rank, sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank4]);
					    }
					    else if(PInfo[i][AirlineRank] == 5)
					    {
							format(rank, sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank5]);
						}
						else if(PInfo[i][AirlineRank] == 6)
						{
						    format(rank,sizeof(rank),"%s", AInfo[PInfo[playerid][Airline]][aRank6]);
						}
						format(string, sizeof(string), "{FFFFFF}%s: {FF4500}%s(%d) [%s]",rank, PlayerName(i), i, PInfo[i][Callsign]);
     					SendClientMessage(playerid, COLOR_GREEN, string);
					}
				}
			}
			SendClientMessage(playerid, COLOR_GREEN, "{FFFFFF}                                           ");
		}
	    return 1;
	}
	if(strcmp(cmd, "/viplist", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			SendClientMessage(playerid, COLOR_VIP, "**VIPs Online**");
       		for(new i; i<MAX_PLAYERS; i++)
			{
   				if(IsPlayerConnected(i))
		    	{
					if(PInfo[i][Vip] == 1)
					{
						format(string, sizeof(string), "{FFFFFF}VIP: {84538A}%s(%d)",PlayerName(i), i);
     					SendClientMessage(playerid, COLOR_WHITE, string);
					}
				}
			}
		}
	    return 1;
	}
	if(strcmp(cmd, "/admins", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	    	SendClientMessage(playerid, COLOR_WHITE, "**Online Administrators**");
 	    	//foreach(Player, i)
       		for(new i; i<MAX_PLAYERS; i++)
			{
   				if(IsPlayerConnected(i))
		    	{
					if(PInfo[i][AdminLevel] > 0)
					{
					    new rank[128];
					    if(PInfo[i][AdminLevel] == 1)
					    {
							format(rank, sizeof(rank), "Moderator");
					    }
					    else if(PInfo[i][AdminLevel] == 2)
					    {
							format(rank, sizeof(rank),"Administrator");
					    }
					    else if(PInfo[i][AdminLevel] == 3)
					    {
					        format(rank, sizeof(rank),"Senior Administrator");
					    }
					    else if(PInfo[i][AdminLevel] == 4)
					    {
					        format(rank, sizeof(rank),"Head Administrator");
					    }
					    else if(PInfo[i][AdminLevel] == 5)
					    {
							format(rank, sizeof(rank),"Manager");
						}
						else if(PInfo[i][AdminLevel] == 6)
					    {
							format(rank, sizeof(rank),"Server Owner");
						}
						format(string, sizeof(string), "{FFFFFF}%s: {FF4500}%s(%d)",rank, PlayerName(i), i);
     					SendClientMessage(playerid, COLOR_WHITE, string);
					}
				}
			}
		}
	    return 1;
	}
	if(strcmp(cmd, "/kick", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	    	tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /kick (id/name) (reason)");
				return 1;
			}
			new giveplayerid;
			giveplayerid = ReturnUser(tmp);
			if(IsPlayerNPC(giveplayerid)) return 1;
			if(PInfo[playerid][AdminLevel] >= 1)
			{
			    if(IsPlayerConnected(giveplayerid))
			    {
			        if(giveplayerid != INVALID_PLAYER_ID)
			        {
						new length = strlen(cmdtext);
						while ((idx < length) && (cmdtext[idx] <= ' '))
						{
							idx++;
						}
						new offset = idx;
						new result[156];
						while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
						{
							result[idx - offset] = cmdtext[idx];
							idx++;
						}
						result[idx - offset] = EOS;
						if(!strlen(result))
						{
							SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /kick (id/name) (reason)");
							return 1;
						}
						PlayerPlaySound(giveplayerid, 1190, 0, 0, 0); //Send a slap sound to the victim for lulz.
						format(string, sizeof(string), "{FF4500}[!] {FFFFFF}An Admin has banned {FF4500}%s{FFFFFF}. Reason: {FF4500}%s", PlayerName(giveplayerid), (result));
						SendClientMessageToAll(COLOR_WHITE, string);
						SaveAccount(giveplayerid);
						AdminLog(playerid, "/kick", (result), PlayerName(giveplayerid));
						Kick(giveplayerid);
						return 1;
					}
				}
				else
				{
					format(string, sizeof(string), "Could not find player (%d)", giveplayerid);
					SendClientMessage(playerid, COLOR_ERROR, string);
				}
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
			}
		}
		return 1;
	}
	if(strcmp(cmd, "/addradiostation", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(PInfo[playerid][AdminLevel] < 5) { SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !"); return 1; }
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_ERROR, "Syntax: /addradiostation (radio name) (radio station .mp3 link)");
				return 1;
			}
			new length = strlen(cmdtext);
			while ((idx < length) && (cmdtext[idx] <= ' '))
			{
				idx++;
			}
			new offset = idx;
			new result[256];
			while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
			{
				result[idx - offset] = cmdtext[idx];
				idx++;
			}
			result[idx - offset] = EOS;
			if(!strlen(result))
			{
				SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /addradiostation (radio name) (radio station .mp3 link)");
				return 1;
			}
			AdminLog(playerid, "/addradiostation", "Added Radio", "Radio");
			AddRadio(playerid, tmp, result);
			return 1;
		}
		return 1;
	}
	if(strcmp(cmd, "/ban", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	    	tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /ban (id/name) (reason)");
				return 1;
			}
			new giveplayerid;
			giveplayerid = ReturnUser(tmp);
			if(IsPlayerNPC(giveplayerid)) return 1;
			if(PInfo[playerid][AdminLevel] >= 1)
			{
			    if(IsPlayerConnected(giveplayerid))
			    {
			        if(giveplayerid != INVALID_PLAYER_ID)
			        {
						new length = strlen(cmdtext);
						while ((idx < length) && (cmdtext[idx] <= ' '))
						{
							idx++;
						}
						new offset = idx;
						new result[156];
						while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
						{
							result[idx - offset] = cmdtext[idx];
							idx++;
						}
						result[idx - offset] = EOS;
						if(!strlen(result))
						{
							SendClientMessage(playerid, COLOR_SECURITY, "Syntax: /ban (id/name) (reason)");
							return 1;
						}
						PlaySound(0);
						PlayerPlaySound(giveplayerid, 1190, 0, 0, 0); //Send a slap sound to the victim for lulz.
						new date,month,year;
						getdate(date,month,year);
						new hour,minute,second;
						gettime(hour,minute,second);
						format(string, sizeof(string), "{FF4500}[!] {FFFFFF}An Admin has banned {FF4500}%s{FFFFFF}. Reason: {FF4500}%s",PlayerName(giveplayerid), (result));
						SendClientMessageToAll(COLOR_WHITE, string);
						PInfo[giveplayerid][Banned] = 1;
						GettingBanned[giveplayerid] = 1;
						new Name[MAX_PLAYER_NAME];
						new plrIP[25];
						new query[256];
						//new date2[128];
						//format(date2, sizeof(date2), "%d/%d/%d", year,month,date);
						GetPlayerName(giveplayerid,Name,sizeof(Name));
						GetPlayerName(playerid,sendername,sizeof(sendername));
						GetPlayerIp(giveplayerid, plrIP, sizeof(plrIP));
						mysql_real_escape_string(Name,Name);
						mysql_real_escape_string((result),(result));
						mysql_real_escape_string(sendername,sendername);
						mysql_real_escape_string(plrIP,plrIP);
						format(query,sizeof(query),"INSERT INTO `bans` (Username, Reason, Administrator, IP, Date, Time) VALUES ('%s','%s','%s','%s','%d/%d/%d','%d:%d:%d')",Name,(result),sendername,plrIP,year,month,date,hour,minute,second);
						mysql_reconnect();
						mysql_query(query);
						AdminLog(playerid, "/ban", (result), Name);
						Kick(giveplayerid);
						return 1;
					}
				}
				else
				{
					format(string, sizeof(string), "Could not find player (%d)", giveplayerid);
					SendClientMessage(playerid, COLOR_ERROR, string);
				}
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands ! !");
			}
		}
		return 1;
	}
	return SendClientMessage(playerid, COLOR_ERROR, "Unknown command, please type /cmds for a list of available commands to use.");
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	AddPlayerToMap(playerid,newstate,oldstate);
	if(newstate == PLAYER_STATE_DRIVER)
	{
	    FuelWarned[playerid] = 0;
	    new carid = GetPlayerVehicleID(playerid);
		new model = GetVehicleModel(carid);
		if(model == 520 || model == 476 || model == 425)
		{
		    if(gTeam[playerid] != TEAM_MILITARY && PInfo[playerid][AdminLevel] == 0)
		    {
		        SendClientMessage(playerid, COLOR_ERROR, "You need to be a military pilot to use this vehicle!");
		        RemovePlayerFromVehicle(playerid);
		    }
		}
  		new suceed = 0;
	    new ItsPrivate = 0;
		for(new i = 0; i < sizeof(PVInfo); i++)
		{
  			if(carid == PVInfo[i][vpVehicleSpawned] && PInfo[playerid][AdminLevel] == 0)
	    	{
	    	    ItsPrivate = 1;
	    		if(!strcmp(PVInfo[i][vpOwnedBy], PlayerName(playerid)))
		    	{
		    	    suceed = 1;
					new string[100];
					format(string,sizeof(string),"Welcome back to your vehicle, %s.", PlayerName(playerid));
					SendClientMessage(playerid, COLOR_WHITE, string);
					return 1;
		    	}
			}
		}
		//new isairlineveh = 0;
	    if(aVInfo[GetPlayerVehicleID(playerid)][AID] > 0 && ItsPrivate == 0)
	    {
	        //isairlineveh = 1;
	        if(PInfo[playerid][Airline] != aVInfo[GetPlayerVehicleID(playerid)][AID])
	        {
		        new msg[128];
		        format(msg,sizeof(msg),"You are not a member of %s!", AInfo[aVInfo[GetPlayerVehicleID(playerid)][AID]][aName]);
		        SendClientMessage(playerid, COLOR_ERROR, msg);
				RemovePlayerFromVehicle(playerid);
			}
	    }
		if(ItsPrivate == 1 && suceed == 0 && PInfo[playerid][AdminLevel] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not own this vehicle!"); RemovePlayerFromVehicle(playerid); return 1; }
	}
	if(oldstate == PLAYER_STATE_DRIVER)
	{
	TextDrawHideForPlayer(playerid, destloc[playerid]);
	TextDrawHideForPlayer(playerid, gpshead[playerid]);
	TextDrawHideForPlayer(playerid, gpsbox[playerid]);
	TextDrawHideForPlayer(playerid, gpsloc[playerid]);
	TextDrawHideForPlayer(playerid, desthead[playerid]);
	TextDrawHideForPlayer(playerid, destbox[playerid]);
	TextDrawHideForPlayer(playerid, fuelcount[playerid]);
	TextDrawHideForPlayer(playerid, fuel[playerid]);
	TextDrawHideForPlayer(playerid, fuelbox[playerid]);
	TextDrawHideForPlayer(playerid, vhealthcount1[playerid]);
	TextDrawHideForPlayer(playerid, vhealthcount[playerid]);
	TextDrawHideForPlayer(playerid, speedcount[playerid]);
	TextDrawHideForPlayer(playerid, speedhead[playerid]);
	TextDrawHideForPlayer(playerid, altcount[playerid]);
	TextDrawHideForPlayer(playerid, altitude[playerid]);
	}
	if (newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
	{
    	switch(GetVehicleModel(GetPlayerVehicleID(playerid)))
		{
	    	case 520 , 577 , 511 , 592 , 512 , 513 , 519 , 593 , 553 , 476, 417 , 425, 447, 469, 487, 488, 497, 548, 563, 460:
	    	{
				if(StartedMission[playerid] == 0)
				{
					new string[128];
					format(string,sizeof(string),"To start earning money and score, start working by typing /work.");
				    PlayerNotice(playerid, string);
				}
	    	}
		}
	} else {
		//TextDrawHideForPlayer(playerid, Line1[playerid]);
		//TextDrawHideForPlayer(playerid, TransparentBox[playerid]);
	}
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	if(IsLocatingVehicle[playerid] == 1)
	{
	    IsLocatingVehicle[playerid] = 0;
	    DisablePlayerCheckpoint(playerid);
	    SendClientMessage(playerid, COLOR_WHITE, "You have finished locating your vehicle!");
		return 1;
	}
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	new carid = GetPlayerVehicleID(playerid);
	if(MissionVehicle[playerid] == carid) //Same vehicle
	{
	    if(TypeFlight[playerid] == 1 && MissionStage[playerid] == 1)
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    SendClientMessage(playerid, COLOR_WHITE, "* The cargo goods are now getting loaded into the plane .. please wait. *");
		    GameTextForPlayer(playerid,"~g~Loading ",7000,3);
            TogglePlayerControllable(playerid, 0);
            DisablePlayerRaceCheckpoint(playerid);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // Andro
		if(TypeFlight[playerid] == 1 && MissionStage[playerid] == 2)
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    SendClientMessage(playerid, COLOR_WHITE, "* The cargo goods are now getting unloaded from the plane .. please wait. *");
		    GameTextForPlayer(playerid,"~r~Unloading ",7000,3);
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // Andro finish
        if(TypeFlight[playerid] == 2 && MissionStage[playerid] == 1) // AT-400
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passengers are now boarding the plane ... please wait. *");
		    GameTextForPlayer(playerid,"~g~Loading ",7000,3);
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // at-400 start
		if(TypeFlight[playerid] == 2 && MissionStage[playerid] == 2) // AT-400
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passengers are now unboarding the plane ... please wait. *");
		    GameTextForPlayer(playerid,"~r~Unloading ",7000,3);
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // at-400 finish
        if(TypeFlight[playerid] == 3 && MissionStage[playerid] == 1) // Shamal
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passengers are now boarding the plane ... please wait. *");
		    GameTextForPlayer(playerid,"~g~Loading ",7000,3);
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // Shamal
		if(TypeFlight[playerid] == 3 && MissionStage[playerid] == 2) // Shamal finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passengers are now unboarding the plane ... please wait. *");
		    GameTextForPlayer(playerid,"~r~Unloading ",7000,3);
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // Shamal
		if(TypeFlight[playerid] == 4 && MissionStage[playerid] == 1) // Dodo
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is boarding the plane ... please wait. *");
		    GameTextForPlayer(playerid,"~g~Loading ",7000,3);
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // Dodo
		if(TypeFlight[playerid] == 4 && MissionStage[playerid] == 2) // Dodo finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is unboarding the plane ... please wait. *");
		    GameTextForPlayer(playerid,"~g~Unloading ",7000,3);
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // Dodo
        if(TypeFlight[playerid] == 5 && MissionStage[playerid] == 1) // Nevada
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The skydivers are now boarding the plane ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // nevada
		//Ignore nevada finish - we drop them off in the air. No need to pause them mid-air!!
		if(TypeFlight[playerid] == 6 && MissionStage[playerid] == 1) // Maverick
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passengers are now boarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // Maverick
		if(TypeFlight[playerid] == 6 && MissionStage[playerid] == 2) // Maverick finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passengers are now unboarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // Maverick finish
		if(TypeFlight[playerid] == 7 && MissionStage[playerid] == 1) // News Maverick
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now boarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // News Maverick
		if(TypeFlight[playerid] == 7 && MissionStage[playerid] == 2) // news Maverick finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now unboarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // news maverick finish
		if(TypeFlight[playerid] == 8 && MissionStage[playerid] == 1) // Trucker
		{
            new vehid = GetPlayerVehicleID(playerid);
            if(!IsTrailerAttachedToVehicle(vehid)){ SendClientMessage(playerid,COLOR_ERROR,"* You don't have a trailer attached to the vehicle!"); return 1; }
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading.");  return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "Goods are now Loading ... please wait.");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // Police Maverick
		if(TypeFlight[playerid] == 8 && MissionStage[playerid] == 2) // Trucker finish
		{
            new vehid = GetPlayerVehicleID(playerid);
            if(!IsTrailerAttachedToVehicle(vehid)){ SendClientMessage(playerid,COLOR_ERROR,"* You don't have a trailer attached to the vehicle!"); return 1; }
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading.");  return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "Goods are now UnLoading ... please wait.");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // Trucker
		if(TypeFlight[playerid] == 9 && MissionStage[playerid] == 1) // Leviathan
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now boarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // Leviathan
		if(TypeFlight[playerid] == 9 && MissionStage[playerid] == 2) // leviathan finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now unboarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // leviathan finish
		if(TypeFlight[playerid] == 10 && MissionStage[playerid] == 1) // Seasparrow
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now boarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // Seasparrow
		if(TypeFlight[playerid] == 10 && MissionStage[playerid] == 2) // seasparrow finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now unboarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // seasparrow finish
		if(TypeFlight[playerid] == 11 && MissionStage[playerid] == 1) // sparrow
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now boarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // sparrow
		if(TypeFlight[playerid] == 11 && MissionStage[playerid] == 2) // sparrow finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now unboarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // sparrow finish
		if(TypeFlight[playerid] == 12 && MissionStage[playerid] == 1) // Cargobob
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The cargo is getting loaded onto the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // cargobob
		if(TypeFlight[playerid] == 12 && MissionStage[playerid] == 2) // cargobob finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The cargo is getting unloaded from the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // cargobob finish
		if(TypeFlight[playerid] == 13 && MissionStage[playerid] == 1) // Raindance
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now boarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // raindance
		if(TypeFlight[playerid] == 13 && MissionStage[playerid] == 2) // Raindance finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is now boarding the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // raindance finish
		if(TypeFlight[playerid] == 14 && MissionStage[playerid] == 1) // hunter
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The ammunation is getting loaded onto the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // hunter
		if(TypeFlight[playerid] == 14 && MissionStage[playerid] == 2) // hunter finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The ammunation is getting unloaded from the helicopter ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // hunter finish
  		if(TypeFlight[playerid] == 18 && MissionStage[playerid] == 1) // hydra
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The warheads are getting attached to the cage ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // hydra
		if(TypeFlight[playerid] == 18 && MissionStage[playerid] == 2) // hydra
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The warheads are getting unattached from the cage ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // hydra
		if(TypeFlight[playerid] == 15 && MissionStage[playerid] == 1) // skimmer
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is boarding the plane ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // skimmer
		if(TypeFlight[playerid] == 15 && MissionStage[playerid] == 2) // skimmer finish
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The passenger is unboarding the plane ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("FinishMission", 7000, false, "i", playerid);
		} // skimmer finish
		if(TypeFlight[playerid] == 16 && MissionStage[playerid] == 1) // cropduster
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The seeds are getting loaded into the vehicle ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // cropduster
		if(TypeFlight[playerid] == 17 && MissionStage[playerid] == 1) // beagle
		{
		    if(GetVehicleSpeed(carid, 0) > 40) { SendClientMessage(playerid, COLOR_ERROR, "You need to slow down before loading/unloading."); PlayerPlaySound(playerid, 7226, 0, 0, 0); return 1; }
		    DisablePlayerRaceCheckpoint(playerid);
		    SendClientMessage(playerid, COLOR_WHITE, "* The skydivers are boarding the plane ... please wait. *");
            TogglePlayerControllable(playerid, 0);
			SetTimerEx("GetEndLocation", 7000, false, "i", playerid);
		} // beagle
		// Loops For Drops
		if(TypeFlight[playerid] == 5 && MissionStage[playerid] == 2) // nevada
		{
	 		TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
			new PlaneBonus = 6500; // nevada
	  		WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
			new msg[128];
			format(msg,sizeof(msg),"You have dropped off the skydivers and have earned a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][NEVADAF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_BRIGHTRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			//format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
		}
		if(TypeFlight[playerid] == 16 && MissionStage[playerid] == 2) // cropduster
		{
	 		TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
			new PlaneBonus = 5500; // cropduster
	  		WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline vehicle
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
			new msg[128];
			format(msg,sizeof(msg),"You have scattered the seeds and have earnt a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][CROPDUSTERF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_BRIGHTRED, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
		}
		if(TypeFlight[playerid] == 17 && MissionStage[playerid] == 2) // beagle
		{
	 		TypeFlight[playerid] = 0; MissionStage[playerid] = 0;
			new PlaneBonus = 7500; // beagle
	  		WorkPay[playerid]=WorkPay[playerid]*2+PlaneBonus;
		    if(PInfo[playerid][Airline] > 0 && aVInfo[carid][AID] > 0) // In an airline vehicle
		    {
		        if(aVInfo[carid][AID] == PInfo[playerid][Airline])
		        {
					GiveAirlineBonus(playerid);
				}
		    }
			new msg[128];
			format(msg,sizeof(msg),"You have dropped the skydivers and have earnt a total of {FF4500}$%d.", WorkPay[playerid]);
			PInfo[playerid][TotalJobs]++;
			PInfo[playerid][BEAGLEF]++;
			TextDrawHideForPlayer(playerid, destloc[playerid]);
			TextDrawHideForPlayer(playerid, desthead[playerid]);
			TextDrawHideForPlayer(playerid, destbox[playerid]);
			PInfo[playerid][TotalScore]++;
			PInfo[playerid][Money]=PInfo[playerid][Money]+WorkPay[playerid];
			PInfo[playerid][FlightsCompleted]=PInfo[playerid][FlightsCompleted]+1;
			PInfo[playerid][EarntFromWorking]=PInfo[playerid][EarntFromWorking]+WorkPay[playerid]; SessionEarnt[playerid]=SessionEarnt[playerid]+WorkPay[playerid];
			GivePlayerMoney(playerid,WorkPay[playerid]);
			UpdateScore(playerid);
			DisablePlayerRaceCheckpoint(playerid);
			SendClientMessage(playerid, COLOR_WHITE, msg);
			new amtearn[50];
			format(amtearn,sizeof(amtearn),"+$%d", WorkPay[playerid]);
			GameTextCostumeForPlayer(playerid,amtearn,3,2,COLOR_GREEN); //style 2, 3 seconds, $1,250 (text)!
			new completeds[256];
			format(completeds,sizeof(completeds), "%s(%d) has completed a flight from %s to %s in %d hours and %d minutes.", PlayerName(playerid), playerid, FirstAPName[playerid], FinalAPName[playerid], TimeTakenHrs[playerid], TimeTakenMins[playerid]);
			SendClientMessageToAll(COLOR_SEAGREENBLUE, completeds);
			WorkPay[playerid] = 0;
			ResetMissionData(playerid);
			SaveAccount(playerid);
  		}
		SessionFlights[playerid] = SessionFlights[playerid]+1;
		if(SessionFlights[playerid] > ServerMaxFlightStreak)
		{
		    new msg[256];
		    format(msg,sizeof(msg),"[Flight Streak] %s (%d) has beaten %s's flight streak of %d (%s %s)!",PlayerName(playerid), playerid, ServerMaxFlightStreakWinner, ServerMaxFlightStreak, ServerMaxFlightStreakTime, ServerMaxFlightStreakDate);
		    SendClientMessageToAll(COLOR_VIP, msg);
			ServerMaxFlightStreak = SessionFlights[playerid];
			format(msg,sizeof(msg),"[Flight Streak] Congratulations! You are on a streak of %d and have won a ticket! (/tickets)", SessionFlights[playerid]);
			SendClientMessage(playerid, COLOR_VIP, msg);
			PInfo[playerid][Tickets]=PInfo[playerid][Tickets]+1;
			new date,month,year;
			getdate(date,month,year);
			new hour,minute,second;
			gettime(hour,minute,second);
			new string[128];
			format(string,sizeof(string),"%d/%d/%d",year,month,date);
			strmid(ServerMaxFlightStreakDate, string, 0, strlen(string), 128);
			format(string,sizeof(string),"%d:%d:%d",hour,minute,second);
			strmid(ServerMaxFlightStreakTime, string, 0, strlen(string), 128);
			format(string,sizeof(string),"%s", PlayerName(playerid));
			strmid(ServerMaxFlightStreakWinner, string, 0, strlen(string), 128);
			SaveStuff();
			TicketLog("Server", PlayerName(playerid), "Won Flight Streak");
		}
		new TotalDistance;
		TotalDistance = DistanceFlown1[playerid]+DistanceFlown2[playerid];
		TotalDistance = TotalDistance/1000;
		PInfo[playerid][FlownDistance] = PInfo[playerid][FlownDistance]+TotalDistance;
		DistanceFlown1[playerid] = 0;
		DistanceFlown2[playerid] = 0;
		//if(PInfo[playerid][Vip] == 1) { new RandomBonus = randomEx(500,2000); new msg[156]; format(msg,sizeof(msg),"{FFFFFF}You have earnt an extra bonus of {84538A}$%d {FFFFFF}as you are a VIP.", RandomBonus); SendClientMessage(playerid, COLOR_VIP, msg); PInfo[playerid][Money]=PInfo[playerid][Money]+RandomBonus; GivePlayerMoney(playerid, RandomBonus); }
		if(PInfo[playerid][sAutoWork] == 1) { StartMission(playerid); }
	}
	else
	{
	    SendClientMessage(playerid, COLOR_ERROR, "You are not in your starting vehicle! (Type /cancel to quit the mission)");
	    return 1;
	}
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	for(new i = 0; i < sizeof(PVInfo); i++)
	{
 		if(vehicleid == PVInfo[i][vpVehicleSpawned])
 		{
         	if(!strcmp(PVInfo[i][vpOwnedBy], PlayerName(playerid)))
       		{
				SaveComponent(vehicleid,componentid);
      			return 1;
      		}
		}
	}
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_SECONDARY_ATTACK)
	{
	    if(InHouse[playerid] > 0)
	    {
	        if(IsPlayerInRangeOfPoint(playerid, 3, HInfo[InHouse[playerid]][hiX], HInfo[InHouse[playerid]][hiY], HInfo[InHouse[playerid]][hiZ]))
	        {
		        SetPlayerInterior(playerid, 0);
		        SetPlayerVirtualWorld(playerid, 0);
		        SetPlayerPos(playerid, HInfo[InHouse[playerid]][heX],HInfo[InHouse[playerid]][heY],HInfo[InHouse[playerid]][heZ]);
		        InHouse[playerid] = 0;
		        return 1;
	        }
	    }
		for(new i = 0; i < sizeof(HInfo); i++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 3, HInfo[i][heX],HInfo[i][heY],HInfo[i][heZ]))
			{
			    if(HInfo[i][hLocked] == 0)
			    {
			        PutIntoHouse(playerid, i);
			        return 1;
			    }
			    if(PInfo[playerid][House1] != HInfo[i][hHouseID] && PInfo[playerid][House2] != HInfo[i][hHouseID])
			    {
					if(HInfo[i][hLocked] == 1)
					{
						GameTextForPlayer(playerid, "~r~Locked", 5000, 1);
						return 1;
					}
			    }
				if(PInfo[playerid][House1] == HInfo[i][hHouseID])
				{
				    PutIntoHouse(playerid, i);
					return 1;
				}
				if(PInfo[playerid][House2] == HInfo[i][hHouseID])
				{
				    PutIntoHouse(playerid, i);
					return 1;
				}
			}
		}
	}
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	if(!success)
	{
        new pip[24];
        for(new i=0; i<MAX_PLAYERS; i++) //Loop through all players
        {
            GetPlayerIp(i, pip, sizeof(pip));
            if(!strcmp(ip, pip, true)) //If a player's IP is the IP that failed the login
            {
                RconAttempts[i] = RconAttempts[i]+1;
				if(RconAttempts[i] > 4) { BanUser(i, "Attempting to hack RCON", "Chappie"); }
            }
        }
	    return 1;
	}
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == coupon2)
	{
		if(response)
		{
		    new query[450];
		    format(query,sizeof(query),"SELECT cUsed FROM coupons WHERE cID='%d' LIMIT 1", ClaimingCoupon[playerid]);
		    mysql_query(query);
		    mysql_store_result();
			new IsCouponUsed = mysql_fetch_int();
			if(mysql_num_rows() > 0 && IsCouponUsed == 0) //It exists and
			{
				new coolname[MAX_PLAYER_NAME]; format(coolname,sizeof(coolname),"%s", PlayerName(playerid));
			    mysql_real_escape_string(coolname,coolname);
				format(query,sizeof(query),"UPDATE coupons SET cUsed='1',cClaimer='%s' WHERE cID='%d' LIMIT 1", coolname,ClaimingCoupon[playerid]);
				mysql_query(query);
				PInfo[playerid][Money]=PInfo[playerid][Money]+ClaimingCouponReward[playerid];
				GivePlayerMoney(playerid, ClaimingCouponReward[playerid]);
				format(query,sizeof(query),"[Coupon ID %d] You have used the coupon code and have claimed a reward of $%d.", ClaimingCoupon[playerid], ClaimingCouponReward[playerid]);
				SendClientMessage(playerid, COLOR_ORANGE, query); //Orange Colour.
				format(query,sizeof(query),"[Coupon] %s (%d) has claimed the [%s] coupon code and has won $%d!", PlayerName(playerid), playerid, ClaimingCouponName[playerid], ClaimingCouponReward[playerid]);
				SendClientMessageToAll(COLOR_ORANGE, query);
				PayLog(PlayerName(playerid), ClaimingCouponReward[playerid], "Claimed Coupon", PlayerName(playerid), "Server");
				ClaimingCoupon[playerid] = 0; ClaimingCouponReward[playerid] = 0;
			    mysql_free_result();
				return 1;
			}
			else
			{
			    mysql_free_result();
			    SendClientMessage(playerid, COLOR_ERROR, "An error occured while processing the coupon code.");
			    return 1;
			}
		}
	}
	if(dialogid == coupon1)
	{
	    if(response)
	    {
  			if(!strlen(inputtext))
   			{
				SendClientMessage(playerid, COLOR_ERROR, "You must type a coupon code first!");
				return 1;
			}
			if(strlen(inputtext) >= 15)
			{
				SendClientMessage(playerid, COLOR_ERROR, "Coupon code is too long!");
				return 1;
			}
	        mysql_real_escape_string(inputtext,inputtext);
	        new query[500];
	        format(query,sizeof(query),"SELECT NULL FROM coupons WHERE cName='%s' LIMIT 1", inputtext);
	        mysql_query(query);
	        mysql_store_result();
	        if(mysql_num_rows() > 0) //It exists.
	        {
	            mysql_free_result();
	            format(query,sizeof(query),"SELECT * FROM coupons WHERE cName='%s' LIMIT 1", inputtext);
	            mysql_query(query);
				mysql_store_result();
				new cName[64], cReward, cUsed, cID;
				mysql_fetch_row(query);
				sscanf(query, "p<|>s[64]ddd",cName,cReward,cUsed,cID);
				if(cUsed == 1) { SendClientMessage(playerid, COLOR_ERROR, "This coupon code has already been used!"); return 1; }
				ClaimingCoupon[playerid] = cID;
				ClaimingCouponReward[playerid] = cReward;
				strmid(ClaimingCouponName[playerid], cName, 0, strlen(cName), 64);
	            mysql_free_result();
	            format(query,sizeof(query),"{FF4500}Coupon Name:  \t{FFFFFF}%s\n{FF4500}Coupon Reward: \t{FFFFFF}$%d\n{FF4500}Coupon Status: \t{FFFFFF}Unclaimed", cName, cReward);
	            new title[64];
	            format(title,sizeof(title),"{FF4500}Coupon ID #%d", cID);
	            ShowPlayerDialog(playerid, coupon2, DIALOG_STYLE_MSGBOX, title, query, "Claim", "Cancel");
	            return 1;
	        }
	        else // It doesn't exist.
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "That coupon does not exist!");
	            mysql_free_result();
	            return 1;
	        }
	    }
	}
	if(dialogid == settings8)
	{
	    if(response)
		{
		    new msg[128];
		    format(msg,sizeof(msg),"You have updated your auto work settings.");
            PlayerPlaySound(playerid, 1138, 0, 0, 0);
		    switch(listitem)
		    {
		        case 0: //Enable
		        {
		            PInfo[playerid][sAutoWork] = 1;
		            SendClientMessage(playerid, COLOR_IRC, msg);
		            ShowPlayerSettings(playerid);
		            return 1;
		        }
		        case 1: //Disable
				{
				    PInfo[playerid][sAutoWork] = 0;
				    SendClientMessage(playerid, COLOR_IRC, msg);
				    ShowPlayerSettings(playerid);
				    return 1;
				}
		    }
		}
	}
	if(dialogid == settings7)
	{
	    if(response)
		{
		    new msg[128];
		    format(msg,sizeof(msg),"You have updated your connection messages settings.");
            PlayerPlaySound(playerid, 1138, 0, 0, 0);
		    switch(listitem)
		    {
		        case 0: //Enable
		        {
		            PInfo[playerid][sConnectionMessages] = 0;
		            SendClientMessage(playerid, COLOR_IRC, msg);
		            ShowPlayerSettings(playerid);
		            return 1;
		        }
		        case 1: //Disable
				{
				    PInfo[playerid][sConnectionMessages] = 1;
				    SendClientMessage(playerid, COLOR_IRC, msg);
				    ShowPlayerSettings(playerid);
				    return 1;
				}
		    }
		}
	}
	if(dialogid == settings6)
	{
	    if(response)
	    {
	        new msg[128];
	        format(msg,sizeof(msg),"You have updated your global sound settings.");
	        PlayerPlaySound(playerid, 1138, 0, 0, 0);
	        switch(listitem)
	        {
	            case 0:
	            {
	                PInfo[playerid][sGlobalSounds] = 0;
	                SendClientMessage(playerid, COLOR_IRC, msg);
	                ShowPlayerSettings(playerid);
	                return 1;
	            }
	            case 1:
	            {
	                PInfo[playerid][sGlobalSounds] = 1;
	                SendClientMessage(playerid, COLOR_IRC, msg);
	                ShowPlayerSettings(playerid);
	                return 1;
				}
				case 2:
				{
				    PInfo[playerid][sGlobalSounds] = 2;
				    SendClientMessage(playerid, COLOR_IRC, msg);
				    ShowPlayerSettings(playerid);
				    return 1;
				}
	        }
	    }
	}
	if(dialogid == settings5)
	{
	    if(response)
	    {
	        new msg[128];
	        format(msg,sizeof(msg),"You have updated your vip sound settings.");
	        PlayerPlaySound(playerid, 1138, 0, 0, 0);
	        switch(listitem)
	        {
	            case 0:
	            {
	                PInfo[playerid][sVIPSounds] = 0;
	                SendClientMessage(playerid, COLOR_IRC, msg);
	                ShowPlayerSettings(playerid);
	                return 1;
	            }
	            case 1:
	            {
	                PInfo[playerid][sVIPSounds] = 1;
	                SendClientMessage(playerid, COLOR_IRC, msg);
	                ShowPlayerSettings(playerid);
	                return 1;
				}
				case 2:
				{
				    PInfo[playerid][sVIPSounds] = 2;
				    SendClientMessage(playerid, COLOR_IRC, msg);
				    ShowPlayerSettings(playerid);
				    return 1;
				}
	        }
	    }
	}
	if(dialogid == settings4) // PM toggle
	{
	    if(response)
	    {
	        new msg[128];
	        format(msg,sizeof(msg),"You have updated your private message settings.");
	        PlayerPlaySound(playerid, 1138, 0, 0, 0);
			switch(listitem)
			{
			    case 0:
			    {
			        PInfo[playerid][sPM] = 0;
			        SendClientMessage(playerid, COLOR_IRC, msg);
			        ShowPlayerSettings(playerid);
			        return 1;
			    }
			    case 1:
			    {
			        PInfo[playerid][sPM] = 1;
			        SendClientMessage(playerid, COLOR_IRC, msg);
			        ShowPlayerSettings(playerid);
			        return 1;
			    }
			}
	    }
	}
	if(dialogid == settings3) // skin
	{
		if(response)
		{
		    new msg[128];
		    format(msg,sizeof(msg),"You have updated your skin settings.");
		    PlayerPlaySound(playerid, 1138, 0, 0, 0);
		    switch(listitem)
		    {
		        case 0: { PInfo[playerid][sSkin] = 0; SendClientMessage(playerid, COLOR_IRC, msg); ShowPlayerSettings(playerid); }
		        case 1:
				{
					if(PInfo[playerid][Airline] == 0)
					{
						SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!");
						ShowPlayerSettings(playerid);
						return 1;
					}
					PInfo[playerid][sSkin] = 1;
					SendClientMessage(playerid, COLOR_IRC, msg);
					ShowPlayerSettings(playerid);
				}
				case 2: //Admin
				{
				    if(PInfo[playerid][AdminLevel] == 0)
				    {
				        SendClientMessage(playerid, COLOR_ERROR, "Invalid Command, Type /cmds or /commands !");
				        ShowPlayerSettings(playerid);
				        return 1;
				    }
				    PInfo[playerid][sSkin] = 2;
				    SendClientMessage(playerid, COLOR_IRC, msg);
				    ShowPlayerSettings(playerid);
				}
				case 3: //Owned Skin
				{
				    if(PInfo[playerid][OwnedSkin] == 0)
				    {
				        SendClientMessage(playerid, COLOR_ERROR, "You do not own a skin!");
						ShowPlayerSettings(playerid);
						return 1;
				    }
				    PInfo[playerid][sSkin] = 3;
				    SendClientMessage(playerid, COLOR_IRC, msg);
				    ShowPlayerSettings(playerid);
				}
		    }
		}
	}
	if(dialogid == settings2) // spawn
	{
	    if(response)
	    {
			new msg[128];
			format(msg,sizeof(msg),"You have updated your spawn settings.");
			PlayerPlaySound(playerid, 1138, 0, 0, 0);
	        switch(listitem)
	        {
	            case 0: { PInfo[playerid][sSpawn] = 0; SendClientMessage(playerid, COLOR_IRC, msg); } //default
	            case 1:
				{
					if(PInfo[playerid][House1] == 0) { ShowPlayerSettings(playerid); SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); return 1; }
					else { PInfo[playerid][sSpawn] = 1; SendClientMessage(playerid, COLOR_IRC, msg); ShowPlayerSettings(playerid); return 1; }
				}
	            case 2:
				{
					if(PInfo[playerid][House2] == 0) { ShowPlayerSettings(playerid); SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); return 1; }
					else { PInfo[playerid][sSpawn] = 2; SendClientMessage(playerid, COLOR_IRC, msg); ShowPlayerSettings(playerid); return 1; }
				}
	            case 3:
				{
				    if(PInfo[playerid][Airline] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You are not in an airline!"); return 1; }
					PInfo[playerid][sSpawn] = 3; SendClientMessage(playerid, COLOR_IRC, msg); ShowPlayerSettings(playerid); return 1;
				} //Airline Spawn
	        }
	    }
	}
	if(dialogid == settings1)
	{
		if(response)
		{
			new dialog[300], title[64];
			switch(listitem)
			{
			    case 0: // Spawn
			    {
          			format(title,sizeof(title),"{FF4500}Select an option");
			        format(dialog,sizeof(dialog),"Default\nHouse Slot 1\nHouse Slot 2\nAirline Spawn");
			        ShowPlayerDialog(playerid, settings2, DIALOG_STYLE_LIST, title, dialog, "Change", "Cancel");
			        return 1;
			    }
			    case 1: //Skin
			    {
			        format(title,sizeof(title),"{FF4500}Select an option");
			        format(dialog,sizeof(dialog),"Default\nAirline Uniform\nAdmin Skin\nOwned Skin");
			        ShowPlayerDialog(playerid, settings3, DIALOG_STYLE_LIST, title, dialog, "Change", "Cancel");
			        return 1;
			    }
			    case 2: //PM
			    {
					format(title,sizeof(title),"{FF4500}Select an option");
					format(dialog,sizeof(dialog),"Enable\nDisable");
					ShowPlayerDialog(playerid, settings4, DIALOG_STYLE_LIST, title, dialog, "Change", "Cancel");
					return 1;
			    }
			    case 3: //VIP Sounds
			    {
			        format(title,sizeof(title),"{FF4500}Select an option");
			        format(dialog,sizeof(dialog),"Enable\nDisable\nDisable when radio active");
			        ShowPlayerDialog(playerid, settings5, DIALOG_STYLE_LIST, title, dialog, "Change", "Cancel");
			        return 1;
			    }
			    case 4: //Global Sounds
			    {
			        format(title,sizeof(title),"{FF4500}Select an option");
			        format(dialog,sizeof(dialog),"Enable\nDisable\nDisable when radio active");
			        ShowPlayerDialog(playerid, settings6, DIALOG_STYLE_LIST, title, dialog, "Change", "Cancel");
			        return 1;
			    }
			    case 5: //Connection Messages
			    {
			        format(title,sizeof(title),"{FF4500}Select an option");
			        format(dialog,sizeof(dialog),"Enable\nDisable");
					ShowPlayerDialog(playerid, settings7, DIALOG_STYLE_LIST, title, dialog, "Change", "Cancel");
					return 1;
			    }
			    case 6: //Autowork
			    {
			        format(title,sizeof(title),"{FF4500}Select an option");
			        format(dialog,sizeof(dialog),"Enable\nDisable");
			        ShowPlayerDialog(playerid, settings8, DIALOG_STYLE_LIST, title, dialog, "Change", "Cancel");
			        return 1;
			    }
			}
		}
	}
	if(dialogid == 5010)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0:
	            {
	                ShowPlayerDialog(playerid, 5011, DIALOG_STYLE_MSGBOX, "Account Commands", "{ffffff}/changepass - {FF6600}Change Account Password.\n{ffffff}/changecallsign - {FF6600}Change Your Callsign.\n{ffffff}/changeemail - {FF6600}Change Account Email.", "Close", "");
	                return 1;
	            }
	            case 1:
	            {
                    new dialog[2600];
                    strcat(dialog,"{ffffff}/work or /w - {FF4500}Starts a Work.\n");
                    strcat(dialog,"{ffffff}/cancel - {FF4500}Stops the current Work.\n");
                    strcat(dialog,"{ffffff}/help - {FF4500}Views help menu.\n");
                    strcat(dialog,"{ffffff}@ [Text] - {FF4500}Pilot Radio.\n");
                    //trcat(dialog,"{ffffff}/gate - {FF4500}Open or close a gate near to you.\n");
                    //strcat(dialog,"{ffffff}/loc [playerid] - {FF4500}Locate a Player.\n");
                    strcat(dialog,"{ffffff}/reclass - {FF4500}Switch Working Class for Player.\n");
                    strcat(dialog,"{ffffff}/stats [FF4500] - {FF6600}Views Player Stats. \n");
                    //strcat(dialog,"{ffffff}/gps - {FF4500}Views gps menu.\n");
                    strcat(dialog,"{ffffff}/astats [FF4500] - {FF6600}Views Player Airline Stats. \n");
                    strcat(dialog,"{ffffff}/rules - {FF4500}Views Server Basic Rules.\n");
                    strcat(dialog,"{ffffff}/respawn - {FF4500}Respawns the Character.\n");
                    strcat(dialog,"{ffffff}/admins - {FF4500}Views a list of online admins.\n");
                    strcat(dialog,"{ffffff}/report [FF4500] [reason] - {FF6600}Report a Player to online admins\n");
                    strcat(dialog,"{ffffff}/kill - {FF4500}Kills the Character.\n");
                    strcat(dialog,"{ffffff}/forums - {FF4500}Views the link to our Forums.\n");
                    strcat(dialog,"{ffffff}/settings - {FF4500}Views player settings.\n");
                    strcat(dialog,"{ffffff}/afk [reason] - {FF4500}Away from keyboard\n");
                    strcat(dialog,"{ffffff}/airlines - {FF4500}Views a list of current airlines.\n");
                    strcat(dialog,"{ffffff}/givecash [playerid] [amount] - {FF4500}Exchange Money between Players.\n");
                    strcat(dialog,"{ffffff}/advertisement [Text] - {FF4500}Give advertisements regarding assets. \n");
                    strcat(dialog,"{ffffff}/viplist - {FF4500}Views a list of online vips.\n");
                    //strcat(dialog,"{ffffff}/call 999 - {FF4500}Call a mechanic.\n");
                    strcat(dialog,"{ffffff}/potd - {FF6600}Views current pilot of the day.\n");
                    strcat(dialog,"{ffffff}/aotd - {FF6600}Views current airline of the day.\n");
                    strcat(dialog,"{ffffff}/flightstreak - {FF6600}View the highest flightstreak.\n");
                    /*strcat(dialog,"{ffffff}/ranks - {FF6600}Views the server ranks and scores required.\n");
                    strcat(dialog,"{ffffff}/myrank - {FF6600}Views your current rank.\n");
                    strcat(dialog,"{ffffff}/requestname [new name] - {FF6600}Request a new name for your character.\n");
                    strcat(dialog,"{ffffff}/admin [Text] - {FF6600}Request help to online admins.\n");
                    strcat(dialog,"{ffffff}/serverip - {FF6600}Views current server ip.\n");
                    strcat(dialog,"{ffffff}/buyticket - {FF6600}Buy a Lucky Draw Ticket.\n");
                    strcat(dialog,"{ffffff}/myticket - {FF6600}Views your current Lucky Draw Numbers\n");
                    strcat(dialog,"{ffffff}/at400 [Under AT400's wheel] - {FF6600}To Enter AT400 as Pilot.\n");
                    strcat(dialog,"{ffffff}/chute - {FF6600}Gives you a Parachute.\n");
                    strcat(dialog,"{ffffff}/camera - {FF6600}Gives you a Camera.\n");
                    strcat(dialog,"{ffffff}/lotto [Number] - {FF6600}To purchase a Lotto Ticket.\n");
                    strcat(dialog,"{ffffff}/jackpot - {FF6600}Views Current lotto jackpot.\n");*/
                    strcat(dialog,"{ffffff}/afklist - {FF6600}Views a list of afk players.\n");
	                ShowPlayerDialog(playerid, 5012, DIALOG_STYLE_MSGBOX, "General Commands",dialog, "Close", "");
	                return 1;
				}
				case 2:
				{
				    ShowPlayerDialog(playerid, 5013, DIALOG_STYLE_MSGBOX, "Chat Commands", "{ffffff}/pm [playerid/name] [Text]  - {FF6600}Personal message a player.\n{ffffff}/a [Text] - {FF6600}Airline Chat.\n{ffffff}/me [Action] - {FF6600}Describes an actions.\n{ffffff}/l [Text] - {FF6600}Local Chat", "Close", "");
				    return 1;
				}
				case 3:
				{
                    new dialogss[800];
                    strcat(dialogss,"{ffffff}/myvehicles - {FF6600}Views all your vehicles.\n");
                    strcat(dialogss,"{ffffff}/flip - {FF6600}Flips your Vehicle.\n");
                    strcat(dialogss,"{ffffff}/park - {FF6600}Park your vehicle.\n");
                    strcat(dialogss,"{ffffff}/spraycar [colorid1] [colorid2] - {FF6600}Respray your vehicle.\n");
                    strcat(dialogss,"{ffffff}/respawncars or /rc - {FF6600}Respawn your vehicles.\n");
                    strcat(dialogss,"{ffffff}/repair - {FF6600}Repair your vehicle.\n");
                    strcat(dialogss,"{ffffff}/refuel - {FF6600}Refuel your vehicle.\n");
                    strcat(dialogss,"{ffffff}/trunk - {FF6600}Open or close vehicle's trunk.\n");
                    strcat(dialogss,"{ffffff}/hood - {FF6600}Open or close Vehicle's hood.\n");
                    strcat(dialogss,"{ffffff}/headlights - {FF6600}On or off vehicle's headlights.\n");
				    ShowPlayerDialog(playerid, 5014, DIALOG_STYLE_MSGBOX, "Vehicle Commands",dialogss, "Close", "");
				    return 1;
				}
				case 4:
				{
                    new dialogs[650];
                    strcat(dialogs,"{ffffff}/uniform - {FF6600}Airline Skin.\n");
                    strcat(dialogs,"{ffffff}/leaveairline - {FF6600}Resign from current airline.\n");
                    //strcat(dialogs,"{ffffff}/accept [ID] - {FF6600}Accept a player's airline Application.\n");
                    strcat(dialogs,"{ffffff}/a [Text] - {FF6600}Airline chat.\n");
                    strcat(dialogs,"{ffffff}/myairline - {FF6600}Views Online Members from your Airline.\n");
                    strcat(dialogs,"{ffffff}/airlines - {FF6600}Views a List of Current Airlines.\n");
                    strcat(dialogs,"{ffffff}/parkfleet - {FF6600}Parks an Airline fleet.\n");
                    strcat(dialogs,"{ffffff}/fleet - {FF6600}Respawn Airline Vehicles.\n");
                    strcat(dialogs,"{ffffff}/airlinespawn - {FF6600}Sets airline spawn point.\n");
                    strcat(dialogs,"{ffffff}/colourfleet - {FF6600}respray airline fleets.\n");
				    ShowPlayerDialog(playerid, 5012, DIALOG_STYLE_MSGBOX, "Airline Commands",dialogs, "Close", "");
				    return 1;
				}
				case 5:
				{
                    ShowPlayerDialog(playerid, 5016, DIALOG_STYLE_MSGBOX, "House Commands", "{ffffff}/houses - {FF6600}Views your houses.\n{ffffff}/buyhouse - {FF6600}Buy a house for sale.", "Close", "");
					return 1;

                }
	        }
	    }
	}
	if(dialogid == vipmenu3) // Change skin - VIP
	{
	    if(response)
	    {
	        if(strlen(inputtext))
		    {
		        new amount = strval(inputtext);
		        if(amount < 0 || amount > 299)
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Skin ID must not be under 0, or over 299.");
					ShowPlayerDialog(playerid, vipmenu3, DIALOG_STYLE_INPUT, "Skin selection", "Type the skin ID below:", "Change", "Back");
		            return 1;
		        }
				new msg[128];
				format(msg,sizeof(msg),"You have set your skin to ID: %d", amount);
		        SendClientMessage(playerid, COLOR_VIP, msg);
		        SetPlayerSkin(playerid, amount);
		        return 1;
			}
			SendClientMessage(playerid, COLOR_ERROR, "Numbers only (0-299)");
			ShowPlayerDialog(playerid, vipmenu3, DIALOG_STYLE_INPUT, "Skin selection", "Type the skin ID below:", "Change", "Back");
			return 1;
		}
		ShowVIPMenu(playerid);
		return 1;
	}
	if(dialogid == vipmenu1)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0: //VIP Username
	            {
	                if(VIPName[playerid] == 0)
	                {
	                    VIPName[playerid] = 1;
	                    UpdatePlayerColour(playerid);
	                    SendClientMessage(playerid, COLOR_VIP, "You have enabled the VIP Username Colour.");
	                    return 1;
	                }
	                else
	                {
	                    VIPName[playerid] = 0;
	                    UpdatePlayerColour(playerid);
	                    SendClientMessage(playerid, COLOR_VIP, "You have disabled the VIP Username Colour.");
	                    return 1;
	                }
	            }
	            case 1: // Change Weather
	            {
					new weather[200];
					format(weather,sizeof(weather),"Blue Skies/Clouds\nStormy\nFoggy\nScorching Hot\nDull & Colourless\nSandstorm\nGreen fog\nFresh blue");
					ShowPlayerDialog(playerid, vipmenu2, DIALOG_STYLE_LIST, "Weather selection", weather, "Change", "Back");
					return 1;
	            }
	            case 2: // Change Skin
	            {
					ShowPlayerDialog(playerid, vipmenu3, DIALOG_STYLE_INPUT, "Skin selection", "Type the skin ID below:", "Change", "Back");
					return 1;
	            }
	            case 3: // Chat settings
	            {
	                new chats[400];
	                format(chats,sizeof(chats),"Set to default\nRed\nDark Blue\nLight Blue\nGreen\nYellow\nOrange\nPurple\nBlack");
	                ShowPlayerDialog(playerid, vipmenu4, DIALOG_STYLE_LIST, "Chat settings", chats, "Select", "Back");
	                return 1;
	            }
	            case 4: // heal self
	            {
	                SetPlayerHealth(playerid, 100);
	                SendClientMessage(playerid, COLOR_VIP, "You have fully healed yourself.");
	                return 1;
	            }
	            case 5: // Sounds
	            {
					ShowVIPSounds(playerid);
					return 1;
	            }
	            case 6: //Reload Vehicles
	            {
				   for(new i = 0; i < MAX_VEHICLES; i++)
				   {
		   		   	   if(!IsVehicleOccupied(i))
					   {
		    		        SetVehicleToRespawn(i);
					   }
				   }
				   new stringmsg[128];
				   format(stringmsg, sizeof(stringmsg), "VIP {84538A}%s(%d) {FFFFFF}has respawned all unoccupied vehicles.", PlayerName(playerid), playerid);
				   SendClientMessageToAll(COLOR_WHITE, stringmsg);
	            }
	        }
	    }
	}
	if(dialogid == vipmenu4) // chat colour settings
	{
	    if(response)
	    {
	        new string[50];
	        switch(listitem)
	        {
	            case 0: // default - white
	            {
          			format(string, sizeof(string), "FFFFFF"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set back to default.");
	                return 1;
	            }
	            case 1: // Red
	            {
          			format(string, sizeof(string), "F80B0B"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set to Red.");
	                return 1;
	            }
	            case 2: // Dark Blue
	            {
          			format(string, sizeof(string), "0B1FF8"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set to Dark Blue.");
	                return 1;
	            }
	            case 3: // Light Blue
	            {
          			format(string, sizeof(string), "0BC1F8"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set to Light Blue.");
	                return 1;
	            }
	            case 4: // Green
	            {
          			format(string, sizeof(string), "0BF80B"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set to Green.");
	                return 1;
	            }
	            case 5: // Yellow
	            {
          			format(string, sizeof(string), "F4F80B"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set to Yellow.");
	                return 1;
	            }
	            case 6: // Orange
	            {
          			format(string, sizeof(string), "F87E0B"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set to Orange.");
	                return 1;
	            }
	            case 7: // Purple
	            {
          			format(string, sizeof(string), "FF80BD1"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set to Purple.");
	                return 1;
	            }
	            case 8: // Black
	            {
          			format(string, sizeof(string), "040404"); //last login date+time
					strmid(PInfo[playerid][VIPColour], string, 0, strlen(string), 50); //last login date+time
	                SendClientMessage(playerid, COLOR_VIP, "Your chat colour is now set to Black.");
	                return 1;
	            }
	        }
	    }
	    ShowVIPMenu(playerid);
	    return 1;
	}
	if(dialogid == vipmenu2)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0:
	            {
					SendClientMessage(playerid, COLOR_VIP, "You have set the weather to ID 1. (Blue Skies/Clouds)");
					SetPlayerWeather(playerid, 5);
					return 1;
	            }
	            case 1:
	            {
					SendClientMessage(playerid, COLOR_VIP, "You have set the weather to ID 2. (Stormy)");
	                SetPlayerWeather(playerid, 8);
	                return 1;
	            }
	            case 2:
	            {
					SendClientMessage(playerid, COLOR_VIP, "You have set the weather to ID 3. (Foggy)");
	                SetPlayerWeather(playerid, 9);
	                return 1;
	            }
	            case 3:
	            {
					SendClientMessage(playerid, COLOR_VIP, "You have set the weather to ID 4. (Scorching Hot)");
	                SetPlayerWeather(playerid, 11);
	                return 1;
	            }
	            case 4:
	            {
					SendClientMessage(playerid, COLOR_VIP, "You have set the weather to ID 5. (Dull & Colourless)");
	                SetPlayerWeather(playerid, 13);
	                return 1;
	            }
	            case 5:
	            {
					SendClientMessage(playerid, COLOR_VIP, "You have set the weather to ID 6. (Sandstorm)");
	                SetPlayerWeather(playerid, 19);
	                return 1;
	            }
	            case 6:
	            {
					SendClientMessage(playerid, COLOR_VIP, "You have set the weather to ID 7. (Green fog)");
	                SetPlayerWeather(playerid, 20);
	                return 1;
	            }
	            case 7:
	            {
					SendClientMessage(playerid, COLOR_VIP, "You have set the weather to ID 8. (Fresh blue)");
	                SetPlayerWeather(playerid, 28);
	                return 1;
	            }
	        }
	    }
	    ShowVIPMenu(playerid);
	    return 1;
	}
    if(dialogid == housesell2)
	{
	    if(response)
	    {
	        if(strlen(inputtext))
		    {
		        new amount = strval(inputtext);
		        if(amount < 1 || amount > 200000000)
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Selling price must be over $1 and under $200,000,000.");
					ShowHouses(playerid);
		            return 1;
		        }
				new msg[128];
				format(msg,sizeof(msg),"You have put your house for sale for $%d.", amount);
				SendClientMessage(playerid, COLOR_HOUSE, msg);
				if(EditingHouse[playerid] == 1)
				{
					HInfo[PInfo[playerid][House1]][hForSale] = 1;
					HInfo[PInfo[playerid][House1]][hPrice] = amount;
					SaveHouse(PInfo[playerid][House1]);
					ReloadHouse(PInfo[playerid][House1]);
					ShowHouses(playerid);
				    return 1;
				}
				else
				{
					HInfo[PInfo[playerid][House2]][hForSale] = 1;
					HInfo[PInfo[playerid][House2]][hPrice] = amount;
					SaveHouse(PInfo[playerid][House2]);
					ReloadHouse(PInfo[playerid][House2]);
					ShowHouses(playerid);
					return 1;
				}
		    }
		    else
		    {
				SendClientMessage(playerid, COLOR_ERROR, "An error occured. Please try again.");
				ShowSettings(playerid);
		        return 1;
		    }
	    }
	    else
	    {
	        ShowSettings(playerid);
	        return 1;
	    }
	}
	if(dialogid == housesell1)
	{
	    if(response)
	    {
			new msg[156], title[64];
			switch(listitem)
			{
			    case 0: //Sell to server. /50 price.
			    {
			        if(EditingHouse[playerid] == 1)
			        {
			            new totalmoney;
						if(PInfo[playerid][Vip] == 0) { totalmoney = HInfo[PInfo[playerid][House1]][hDefaultPrice]/2; }
						else if(PInfo[playerid][Vip] == 1) { new wot = HInfo[PInfo[playerid][House1]][hDefaultPrice]/100; totalmoney=wot*75; }
			            format(msg,sizeof(msg),"None");
			            strmid(HInfo[PInfo[playerid][House1]][hOwnedBy], msg, 0, strlen(msg), 128);
			            HInfo[PInfo[playerid][House1]][hForSale] = 1;
			            HInfo[PInfo[playerid][House1]][hLocked] = 0;
			            HInfo[PInfo[playerid][House1]][hPrice] = HInfo[PInfo[playerid][House1]][hDefaultPrice];
			            PInfo[playerid][Money]=PInfo[playerid][Money]+totalmoney;
			            GivePlayerMoney(playerid, totalmoney);
			            format(msg,sizeof(msg),"You have sold your house in %s for $%d.", HInfo[PInfo[playerid][House1]][hLocation], totalmoney);
						SendClientMessage(playerid, COLOR_HOUSE, msg);
						format(msg,sizeof(msg),"%s(%d) sold their house in %s for $%d(%d slots).",PlayerName(playerid),playerid,HInfo[PInfo[playerid][House1]][hLocation],totalmoney,HInfo[PInfo[playerid][House1]][hSlots]);
						SendClientMessageToAll(COLOR_HOUSE, msg);
			            SaveHouse(PInfo[playerid][House1]);
			            ReloadHouse(PInfo[playerid][House1]);
			            PInfo[playerid][House1] = 0;
			            SaveAccount(playerid);
			            PayLog(PlayerName(playerid), totalmoney, "Sold House", PlayerName(playerid), "Server");
			            return 1;
			        }
			        else if(EditingHouse[playerid] == 2)
			        {
			            new totalmoney;
						if(PInfo[playerid][Vip] == 0) { totalmoney = HInfo[PInfo[playerid][House2]][hDefaultPrice]/2; }
						else if(PInfo[playerid][Vip] == 1) { new wot = HInfo[PInfo[playerid][House2]][hDefaultPrice]/100; totalmoney=wot*75; }
			            format(msg,sizeof(msg),"None");
			            strmid(HInfo[PInfo[playerid][House2]][hOwnedBy], msg, 0, strlen(msg), 128);
			            HInfo[PInfo[playerid][House2]][hForSale] = 1;
			            HInfo[PInfo[playerid][House2]][hLocked] = 0;
			            HInfo[PInfo[playerid][House2]][hPrice] = HInfo[PInfo[playerid][House2]][hDefaultPrice];
			            PInfo[playerid][Money]=PInfo[playerid][Money]+totalmoney;
			            GivePlayerMoney(playerid, totalmoney);
			            format(msg,sizeof(msg),"You have sold your house in %s for $%d.", HInfo[PInfo[playerid][House2]][hLocation], totalmoney);
						SendClientMessage(playerid, COLOR_HOUSE, msg);
						format(msg,sizeof(msg),"%s(%d) sold their house in %s for $%d(%d slots).",PlayerName(playerid),playerid,HInfo[PInfo[playerid][House2]][hLocation],totalmoney,HInfo[PInfo[playerid][House2]][hSlots]);
						SendClientMessageToAll(COLOR_HOUSE, msg);
			            SaveHouse(PInfo[playerid][House2]);
			            ReloadHouse(PInfo[playerid][House2]);
			            PInfo[playerid][House2] = 0;
			            SaveAccount(playerid);
			            PayLog(PlayerName(playerid), totalmoney, "Sold House", PlayerName(playerid), "Server");
			            return 1;
			        }
			    }
			    case 1: //Sell to players (input_text_dialog)
			    {
			        if(EditingHouse[playerid] == 1)
			        {
			            format(title,sizeof(title),"Sell House [ID:%d]", EditingHouse[playerid]);
			            format(msg,sizeof(msg),"Input the amount you would like to sell your house for below.");
						ShowPlayerDialog(playerid, housesell2, DIALOG_STYLE_INPUT, title, msg, "Sell", "Back");
						return 1;
			        }
			        else if(EditingHouse[playerid] == 2)
			        {
			            format(title,sizeof(title),"Sell House [ID:%d]", EditingHouse[playerid]);
			            format(msg,sizeof(msg),"Input the amount you would like to sell your house for below.");
						ShowPlayerDialog(playerid, housesell2, DIALOG_STYLE_INPUT, title, msg, "Sell", "Back");
						return 1;
			        }
			    }
			    case 2: //dont want to sell it any more
			    {
			        if(EditingHouse[playerid] == 1)
			        {
			            SendClientMessage(playerid, COLOR_HOUSE, "Your house is now not for sale.");
			            HInfo[PInfo[playerid][House1]][hForSale] = 0;
						SaveHouse(PInfo[playerid][House1]);
						ReloadHouse(PInfo[playerid][House1]);
			            return 1;
			        }
			        else if(EditingHouse[playerid] == 2)
			        {
			            SendClientMessage(playerid, COLOR_HOUSE, "Your house is now not for sale.");
			            HInfo[PInfo[playerid][House2]][hForSale] = 0;
						SaveHouse(PInfo[playerid][House2]);
						ReloadHouse(PInfo[playerid][House2]);
			            return 1;
			        }
			    }
			}
	    }
	    ShowHouses(playerid);
	    return 1;
	}
	if(dialogid == housemenu)
	{
	    if(response)
	    {
	        new msg[128], title[64];
	        switch(listitem)
	        {
	            case 0: //Locate house
	            {
					if(EditingHouse[playerid] == 1)
					{
						if(PInfo[playerid][House1] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); ShowHouses(playerid); return 1; }
						if(StartedMission[playerid] == 1) { SendClientMessage(playerid, COLOR_ERROR, "Finish your mission before trying to use this feature. (/cancel)"); return 1; }
		    			if(IsTracingHouse[playerid] == 1) { DisablePlayerCheckpoint(playerid); SendClientMessage(playerid, COLOR_HOUSE, "You have stopped locating your home."); IsTracingHouse[playerid] = 0; return 1; }
						DisablePlayerCheckpoint(playerid); DisablePlayerRaceCheckpoint(playerid);
						SetPlayerCheckpoint(playerid, HInfo[PInfo[playerid][House1]][heX], HInfo[PInfo[playerid][House1]][heY], HInfo[PInfo[playerid][House1]][heZ], 5.0);
						format(msg,sizeof(msg),"Your house in %s has been marked on the checkpoint.",HInfo[PInfo[playerid][House1]][hLocation]);
						SendClientMessage(playerid, COLOR_HOUSE, msg);
						IsTracingHouse[playerid] = 1;
						return 1;
					}
					else if(EditingHouse[playerid] == 2)
					{
						if(PInfo[playerid][House2] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); ShowHouses(playerid); return 1; }
						if(StartedMission[playerid] == 1) { SendClientMessage(playerid, COLOR_ERROR, "Finish your mission before trying to use this feature. (/cancel)"); return 1; }
		    			if(IsTracingHouse[playerid] == 1) { DisablePlayerCheckpoint(playerid); SendClientMessage(playerid, COLOR_HOUSE, "You have stopped locating your home."); IsTracingHouse[playerid] = 0; return 1; }
						DisablePlayerCheckpoint(playerid); DisablePlayerRaceCheckpoint(playerid);
						SetPlayerCheckpoint(playerid, HInfo[PInfo[playerid][House2]][heX], HInfo[PInfo[playerid][House2]][heY], HInfo[PInfo[playerid][House2]][heZ], 5.0);
						format(msg,sizeof(msg),"Your house in %s has been marked on the checkpoint.",HInfo[PInfo[playerid][House2]][hLocation]);
						SendClientMessage(playerid, COLOR_HOUSE, msg);
						IsTracingHouse[playerid] = 1;
						return 1;
					}
	            }
	            case 1: //Lock/Unlock House
	            {
					if(EditingHouse[playerid] == 1)
					{
					    if(PInfo[playerid][House1] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); ShowHouses(playerid); return 1; }
					    if(HInfo[PInfo[playerid][House1]][hLocked] == 0)
					    {
							format(msg,sizeof(msg),"Your house in %s has been locked.",HInfo[PInfo[playerid][House1]][hLocation]);
							SendClientMessage(playerid, COLOR_HOUSE, msg);
							HInfo[PInfo[playerid][House1]][hLocked] = 1;
							SaveHouse(PInfo[playerid][House1]);
							return 1;
					    }
					    else
					    {
							format(msg,sizeof(msg),"Your house in %s has been unlocked.",HInfo[PInfo[playerid][House1]][hLocation]);
							SendClientMessage(playerid, COLOR_HOUSE, msg);
							HInfo[PInfo[playerid][House1]][hLocked] = 0;
							SaveHouse(PInfo[playerid][House1]);
					        return 1;
					    }
					}
					else if(EditingHouse[playerid] == 2)
					{
						if(PInfo[playerid][House2] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); ShowHouses(playerid); return 1; }
		    			if(HInfo[PInfo[playerid][House2]][hLocked] == 0)
					    {
							format(msg,sizeof(msg),"Your house in %s has been locked.",HInfo[PInfo[playerid][House2]][hLocation]);
							SendClientMessage(playerid, COLOR_HOUSE, msg);
							HInfo[PInfo[playerid][House2]][hLocked] = 1;
							SaveHouse(PInfo[playerid][House2]);
							return 1;
					    }
					    else
					    {
							format(msg,sizeof(msg),"Your house in %s has been unlocked.",HInfo[PInfo[playerid][House2]][hLocation]);
							SendClientMessage(playerid, COLOR_HOUSE, msg);
							HInfo[PInfo[playerid][House2]][hLocked] = 0;
							SaveHouse(PInfo[playerid][House2]);
					        return 1;
					    }
					}
	            }
	            case 2: //Sell house
	            {
					if(EditingHouse[playerid] == 1)
					{
						if(PInfo[playerid][House1] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); ShowHouses(playerid); return 1; }
						format(title,sizeof(title),"Sell House [ID:%d]", EditingHouse[playerid]);
						format(msg,sizeof(msg),"Sell to server ($%d)\nSell to players (Custom amount)\nRemove for sale", HInfo[PInfo[playerid][House1]][hDefaultPrice]/2);
						ShowPlayerDialog(playerid, housesell1, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
						return 1;
					}
					else if(EditingHouse[playerid] == 2)
					{
					    if(PInfo[playerid][House2] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); ShowHouses(playerid); return 1; }
					    format(title,sizeof(title),"Sell House [ID:%d]", EditingHouse[playerid]);
						format(msg,sizeof(msg),"Sell to server ($%d)\nSell to players (Custom amount)\nRemove for sale", HInfo[PInfo[playerid][House2]][hDefaultPrice]/2);
						ShowPlayerDialog(playerid, housesell1, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
						return 1;
					}
	            }
	        }
	    }
	    ShowHouses(playerid);
	    return 1;
	}
	if(dialogid == myhouses)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0: //house 1
	            {
					if(PInfo[playerid][House1] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); ShowHouses(playerid); return 1; }
					EditingHouse[playerid] = 1; //editing house ID 1.
					new string[200], title[64];
					format(title,sizeof(title),"House [ID:%d]", EditingHouse[playerid]);
					format(string,sizeof(string),"Locate house\nLock/unlock house\nSelling options");
					ShowPlayerDialog(playerid, housemenu, DIALOG_STYLE_LIST, title, string, "Select", "Cancel");
					return 1;
	            }
	            case 1: //house 2
	            {
					if(PInfo[playerid][House2] == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have a house in this slot!"); ShowHouses(playerid); return 1; }
					EditingHouse[playerid] = 2; //editing house ID 2.
					new string[200], title[64];
					format(title,sizeof(title),"House [ID:%d]", EditingHouse[playerid]);
					format(string,sizeof(string),"Locate house\nLock/unlock house\nSelling options");
					ShowPlayerDialog(playerid, housemenu, DIALOG_STYLE_LIST, title, string, "Select", "Cancel");
					return 1;
	            }
	        }
	    }
	}
	if(dialogid == buyfleet2)
	{
	    if(response)
	    {
	        new msg22[128], msg[128], HighestNumber, query[250];
	        switch(listitem)
	        {
	            case 0: //maverick
	            {
             		if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 487;
		                BuyingFleetPrice[playerid] = 550000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it at your wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
	            }
	            case 1://news maverick
				{
  					if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 488;
		                BuyingFleetPrice[playerid] = 500000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 2://police maverick
				{
					if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 497;
		                BuyingFleetPrice[playerid] = 550000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 3://raindance
				{
					if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 563;
		                BuyingFleetPrice[playerid] = 600000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 4://seasparrow
				{
					if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 447;
		                BuyingFleetPrice[playerid] = 650000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 5://sparrow
				{
					if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 469;
		                BuyingFleetPrice[playerid] = 600000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 6://Leviathan
				{
					if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 417;
		                BuyingFleetPrice[playerid] = 550000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 7://hunter
				{
					if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 425;
		                BuyingFleetPrice[playerid] = 800000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 8://cargobob
				{
					if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 548;
		                BuyingFleetPrice[playerid] = 700000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
	        }
	    }
	    ShowSettings(playerid);
	    return 1;
	}
	if(dialogid == motd3)
	{
		if(response)
		{
  			if(!strlen(inputtext))
   			{
				SendClientMessage(playerid, COLOR_YELLOW, "You must enter a message !");
				ShowSettings(playerid);
				return 1;
			}
			if(strlen(inputtext) >= 201)
			{
   				ShowSettings(playerid);
				SendClientMessage(playerid, COLOR_YELLOW, "Message is too long !");
				return 1;
			}
	 		strmid(AInfo[LookingAtAirline[playerid]][aMotd], inputtext, 0, strlen(inputtext), 200);
	 		new hisname[64];
	 		format(hisname,sizeof(hisname),"%s", PlayerName(playerid));
	 		strmid(AInfo[LookingAtAirline[playerid]][aMotdSetBy], hisname, 0, strlen(hisname), 64);
   			SaveAirline(LookingAtAirline[playerid]);
      		ShowSettings(playerid);
      		return 1;
		}
		ShowSettings(playerid);
		return 1;
	}
	if(dialogid == motd1)
	{
	    if(response)
	    {
			switch(listitem)
			{
			    case 0: //View motd
			    {
			        new msg[256];
			        format(msg,sizeof(msg),"AMOTD: %s | %s", AInfo[LookingAtAirline[playerid]][aMotd], AInfo[LookingAtAirline[playerid]][aMotdSetBy]);
			        SendClientMessage(playerid, COLOR_YELLOW, msg);
			        ShowSettings(playerid);
			        return 1;
			    }
			    case 1: //Set new motd
			    {
			        new msg[250], title[64];
			        format(title,sizeof(title),"{FF4500}Set MOTD");
			        format(msg,sizeof(msg),"Input the message of the day for your employees to read every time they log in.");
			        ShowPlayerDialog(playerid, motd3, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			}
	    }
		ShowSettings(playerid);
		return 1;
	}
	if(dialogid == namerequests2)
	{
	    if(response)
	    {
	        if(PInfo[playerid][AdminLevel] == 0) { SendClientMessage(playerid, COLOR_ERROR, "An error occured."); return 1; }
	        new query[250];
	        if(NameChangeRequest[playerid] == 0) { SendClientMessage(playerid, COLOR_ERROR, "An error occured."); return 1; }
	        switch(listitem)
	        {
	            case 0: //Reject.
	            {
	                format(query,sizeof(query),"DELETE FROM namechanges WHERE ncID='%d'",NameChangeRequest[playerid]);
	                mysql_reconnect();
	                mysql_query(query);
	                SendClientMessage(playerid, COLOR_ERROR, "You have rejected the namechange request.");
	                NameChangeRequest[playerid] = 0;
	                return 1;
	            }
	            case 1: //Approve
	            {
	                format(query,sizeof(query),"SELECT cUsername FROM namechanges WHERE ncID='%d'",NameChangeRequest[playerid]);
	                mysql_reconnect();
                 	mysql_query(query);
                    mysql_store_result();
                    mysql_retrieve_row();
                    new cUsername[MAX_PLAYER_NAME];
                    mysql_get_field("cUsername", cUsername);
                    mysql_free_result();
                    mysql_real_escape_string(cUsername,cUsername);
                    format(query,sizeof(query),"SELECT online FROM users WHERE username='%s'", cUsername);
                    mysql_query(query);
                    mysql_store_result();
                    new isOnline = mysql_fetch_int();
                    if(mysql_num_rows() > 0)
                    {//The account exists!
                        mysql_free_result();
						if(isOnline == 1)
						{
 							new CHECKNAME[MAX_PLAYER_NAME];
						    for(new i = 0; i<MAX_PLAYERS; i++)
						    {
						        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
								if(!strcmp(CHECKNAME, cUsername))
								{
								    format(query,sizeof(query),"SELECT wUsername FROM namechanges WHERE ncID='%d'",NameChangeRequest[playerid]);
								    mysql_query(query);
								    mysql_store_result();
								    mysql_retrieve_row();
								    new wUsername[MAX_PLAYER_NAME];
								    mysql_get_field("wUsername", wUsername);
								    mysql_free_result();
								    mysql_real_escape_string(wUsername,wUsername);
								    format(query,sizeof(query),"SELECT NULL from users WHERE username='%s'",wUsername);
									mysql_query(query);
									mysql_store_result();
									if(mysql_num_rows() > 0)
									{
									    mysql_free_result();
									    SendClientMessage(playerid, COLOR_ERROR, "The name the player wanted is already taken. It has been rejected.");
									    format(query,sizeof(query),"DELETE from namechanges WHERE ncID='%d'",NameChangeRequest[playerid]);
									    mysql_query(query);
									    return 1;
									}
									else
									{
									    SendClientMessage(playerid, COLOR_ERROR, "Namechange requester is connected! Use /setname instead.");
									    format(query,sizeof(query),"DELETE FROM namechanges WHERE ncID='%d'",NameChangeRequest[playerid]);
									    mysql_query(query);
									    return 1;
									}
								}
						    }
						    return 1;
						}
						else
						{//He is offline..
						    format(query,sizeof(query),"SELECT wUsername FROM namechanges WHERE ncID='%d'",NameChangeRequest[playerid]);
						    mysql_query(query);
						    mysql_store_result();
						    mysql_retrieve_row();
						    new wUsername[MAX_PLAYER_NAME];
						    mysql_get_field("wUsername", wUsername);
						    mysql_real_escape_string(wUsername, wUsername);
						    mysql_free_result();
						    format(query,sizeof(query),"SELECT NULL FROM users WHERE username='%s'",wUsername);
						    mysql_query(query);
						    mysql_store_result();
						    new rRows = mysql_num_rows();
						    mysql_free_result();
						    if(rRows > 0) // It exists!
						    {
						        format(query,sizeof(query),"DELETE FROM namechanges WHERE ncID='%d'", NameChangeRequest[playerid]);
						        SendClientMessage(playerid, COLOR_ERROR, "The namechange request has been rejected as the wanted name already exists!");
						        return 1;
						    }
						    else
						    {
						        format(query,sizeof(query),"UPDATE users SET username='%s' WHERE username='%s'", wUsername, cUsername);
								mysql_query(query);
								format(query,sizeof(query),"UPDATE namechanges SET Processed=1 WHERE ncID='%d'", NameChangeRequest[playerid]);
								mysql_query(query);
								SendClientMessage(playerid, COLOR_ERROR, "You have approved the namechange request!");
								//-----------------------------------------------------------------------------------------------
								new deletequery[400];
								format(deletequery,sizeof(deletequery),"SELECT house1 FROM users WHERE username='%s'", wUsername);
								mysql_query(deletequery);
								mysql_store_result();
								new ownshouse1 = mysql_fetch_int();
								mysql_free_result();
								if(ownshouse1 > 0)
								{
								    format(query,sizeof(query),"UPDATE houses SET OwnedBy='%s' WHERE OwnedBy='%s'", wUsername, cUsername);
								    mysql_reconnect();
								    mysql_query(query);
								}
								format(deletequery,sizeof(deletequery),"SELECT house2 FROM users WHERE username='%s'", wUsername);
								mysql_query(deletequery);
								mysql_store_result();
								new ownshouse2 = mysql_fetch_int();
								mysql_free_result();
								if(ownshouse2 > 0)
								{
								    format(query,sizeof(query),"UPDATE houses SET OwnedBy='%s' WHERE OwnedBy='%s'", wUsername, cUsername);
								    mysql_reconnect();
								    mysql_query(query);
								}
								format(deletequery,sizeof(deletequery),"SELECT NULL from pvehicles WHERE OwnedBy='%s'", cUsername);
								mysql_query(deletequery);
								mysql_store_result();
								new exists = mysql_num_rows();
								mysql_free_result();
								if(exists > 0)
								{
									format(deletequery,sizeof(deletequery),"UPDATE pvehicles SET OwnedBy='%s' WHERE OwnedBy='%s'",wUsername,cUsername);
									mysql_query(deletequery);
								}
								format(deletequery,sizeof(deletequery),"SELECT NULL FROM airlines WHERE Owner='%s'", cUsername);
								mysql_query(deletequery);
								mysql_store_result();
								exists = mysql_num_rows();
								mysql_free_result();
								if(exists > 0)
								{
								    format(deletequery,sizeof(deletequery),"UPDATE airlines SET Owner='%s' WHERE Owner='%s'",wUsername,cUsername);
								    mysql_query(deletequery);
								}
								format(deletequery,sizeof(deletequery),"SELECT NULL FROM paylog WHERE Username='%s'", cUsername);
								mysql_query(deletequery);
								mysql_store_result();
								exists = mysql_num_rows();
								mysql_free_result();
								if(exists > 0)
								{
								    format(deletequery,sizeof(deletequery),"UPDATE paylog SET Username='%s' WHERE Username='%s'",wUsername,cUsername);
								    mysql_query(deletequery);
								}
								format(deletequery,sizeof(deletequery),"SELECT NULL FROM paylog WHERE Receiver='%s'", cUsername);
								mysql_query(deletequery);
								mysql_store_result();
								exists = mysql_num_rows();
								mysql_free_result();
								if(exists > 0)
								{
								    format(deletequery,sizeof(deletequery),"UPDATE paylog SET Receiver='%s' WHERE Receiver='%s'",wUsername,cUsername);
								    mysql_query(deletequery);
								}
								format(deletequery,sizeof(deletequery),"SELECT NULL FROM paylog WHERE Fromwho='%s'", cUsername);
								mysql_query(deletequery);
								mysql_store_result();
								exists = mysql_num_rows();
								mysql_free_result();
								if(exists > 0)
								{
								    format(deletequery,sizeof(deletequery),"UPDATE paylog SET Fromwho='%s' WHERE Fromwho='%s'",wUsername,cUsername);
								    mysql_query(deletequery);
								}
								format(deletequery,sizeof(deletequery),"SELECT NULL FROM skins WHERE owner='%s'", cUsername);
								mysql_query(deletequery);
								mysql_store_result();
								exists = mysql_num_rows();
								mysql_free_result();
								if(exists > 0)
								{
								    format(deletequery,sizeof(deletequery),"UPDATE skins SET owner='%s' WHERE owner='%s'",wUsername,cUsername);
								    mysql_query(deletequery);
								}
								format(deletequery,sizeof(deletequery),"SELECT NULL FROM tickets WHERE Receiver='%s'", cUsername);
								mysql_query(deletequery);
								mysql_store_result();
								exists = mysql_num_rows();
								mysql_free_result();
								if(exists > 0)
								{
								    format(deletequery,sizeof(deletequery),"UPDATE tickets SET Receiver='%s' WHERE Receiver='%s'",wUsername,cUsername);
								    mysql_query(deletequery);
								}
								format(deletequery,sizeof(deletequery),"SELECT NULL FROM tickets WHERE Administrator='%s'", cUsername);
								mysql_query(deletequery);
								mysql_store_result();
								exists = mysql_num_rows();
								mysql_free_result();
								if(exists > 0)
								{
								    format(deletequery,sizeof(deletequery),"UPDATE tickets SET Administrator='%s' WHERE Administrator='%s'",wUsername,cUsername);
								    mysql_query(deletequery);
								}
								return 1;
						    }
						}
                    }
                    else //Couldn't find account.
                    {
                        SendClientMessage(playerid, COLOR_ERROR, "An error occured while finding the namechange requester.");
                        mysql_free_result();
                        return 1;
                    }
	            }
	        }
	    }
	}
	if(dialogid == editmember1)
	{
	    if(response)
	    {
	        if(PInfo[playerid][Airline] != LookingAtAirline[playerid])
	        {
	            SendClientMessage(playerid, COLOR_ERROR, "You are not in this airline!");
	            return 1;
	        }
     		new query[250];
	        switch(listitem)
	        {
	            case 0: //Remove from airline
	            {
	                if(PInfo[playerid][AirlineRank] < AInfo[PInfo[playerid][Airline]][pRmvMembers])
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to remove members from the airline!");
	                    return 1;
	                }
	                mysql_real_escape_string(EditingMember[playerid],EditingMember[playerid]);
	                format(query,sizeof(query),"SELECT `airlinerank` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_reconnect();
	                mysql_query(query);
	                mysql_store_result();
	                new isrank6 = mysql_fetch_int();
	                mysql_free_result();
	                if(isrank6 == 6) { SendClientMessage(playerid, COLOR_ERROR, "Cannot modify rank 6 members!"); ShowMembers(playerid); return 1; }
	                format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_query(query);
	                mysql_store_result();
					new isonline = mysql_fetch_int();
					mysql_free_result();
					if(isonline == 1) //online
					{
     					new CHECKNAME[MAX_PLAYER_NAME];
					    for(new i = 0; i<MAX_PLAYERS; i++)
					    {
					        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
							if(!strcmp(CHECKNAME, EditingMember[playerid]))
							{
							    PInfo[i][Airline] = 0;
							    PInfo[i][EarntForAirline] = 0;
							    PInfo[i][AirlineRank] = 0;
							    SaveAccount(i);
							    new msg[156];
							    format(msg,sizeof(msg),"* %s(%d) has removed you from %s.", PlayerName(playerid),playerid,AInfo[LookingAtAirline[playerid]][aName]);
							    SendClientMessage(i, COLOR_ERROR, msg);
							}
					    }
					    format(query,sizeof(query),"* %s(%d) has removed %s from the airline.", PlayerName(playerid), playerid, EditingMember[playerid]);
					    SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
					    ShowMembers(playerid);
					    return 1;
					}
					else //offline
					{
		                format(query,sizeof(query),"UPDATE users SET airline='0',airlinerank='0',earntforairline='0' WHERE username = '%s' LIMIT 1", EditingMember[playerid]);
		                mysql_reconnect();
		                mysql_query(query);
		                format(query,sizeof(query), "* %s(%d) has removed %s from the airline.", PlayerName(playerid), playerid, EditingMember[playerid]);
						SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
						ShowMembers(playerid);
						return 1;
					}
	            }
	            case 1: //Set to rank1
	            {
             		if(PInfo[playerid][AirlineRank] < AInfo[PInfo[playerid][Airline]][pPrmMembers])
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to promote members of the airline!");
	                    return 1;
	                }
	                EditingMemberRank[playerid] = 1;
	                mysql_real_escape_string(EditingMember[playerid],EditingMember[playerid]);
	                format(query,sizeof(query),"SELECT `airlinerank` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_reconnect();
	                mysql_query(query);
	                mysql_store_result();
	                new isrank6 = mysql_fetch_int();
	                mysql_free_result();
	                if(isrank6 == 6) { SendClientMessage(playerid, COLOR_ERROR, "Cannot modify rank 6 members!"); ShowMembers(playerid); return 1; }
	                format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_query(query);
	                mysql_store_result();
					new isonline = mysql_fetch_int();
					mysql_free_result();
					if(isonline == 1) //online
					{
     					new CHECKNAME[MAX_PLAYER_NAME];
					    for(new i = 0; i<MAX_PLAYERS; i++)
					    {
					        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
							if(!strcmp(CHECKNAME, EditingMember[playerid]))
							{
							    PInfo[i][AirlineRank] = EditingMemberRank[playerid];
							    SaveAccount(i);
							    new msg[156];
							    format(msg,sizeof(msg),"* %s(%d) has set your rank to %d.", PlayerName(playerid),playerid,EditingMemberRank[playerid]);
							    SendClientMessage(i, COLOR_ERROR, msg);
							}
					    }
					    format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid), playerid, EditingMember[playerid],EditingMemberRank[playerid]);
					    SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
					    ShowMembers(playerid);
					    return 1;
					}
					else
					{
		                format(query,sizeof(query),"UPDATE users SET airlinerank='%d' WHERE username='%s' LIMIT 1", EditingMemberRank[playerid],EditingMember[playerid]);
		                mysql_reconnect();
		                mysql_query(query);
		                format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid),playerid,EditingMember[playerid],EditingMemberRank[playerid]);
						SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
						ShowMembers(playerid);
						return 1;
					}
				}
	            case 2: //Set to rank2
	            {
             		if(PInfo[playerid][AirlineRank] < AInfo[PInfo[playerid][Airline]][pPrmMembers])
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to promote members of the airline!");
	                    return 1;
	                }
	                EditingMemberRank[playerid] = 2;
	                mysql_real_escape_string(EditingMember[playerid],EditingMember[playerid]);
	                format(query,sizeof(query),"SELECT `airlinerank` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_reconnect();
	                mysql_query(query);
	                mysql_store_result();
	                new isrank6 = mysql_fetch_int();
	                mysql_free_result();
	                if(isrank6 == 6) { SendClientMessage(playerid, COLOR_ERROR, "Cannot modify rank 6 members!"); ShowMembers(playerid); return 1; }
	                format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_query(query);
	                mysql_store_result();
					new isonline = mysql_fetch_int();
					mysql_free_result();
					if(isonline == 1) //online
					{
     					new CHECKNAME[MAX_PLAYER_NAME];
					    for(new i = 0; i<MAX_PLAYERS; i++)
					    {
					        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
							if(!strcmp(CHECKNAME, EditingMember[playerid]))
							{
							    PInfo[i][AirlineRank] = EditingMemberRank[playerid];
							    SaveAccount(i);
							    new msg[156];
							    format(msg,sizeof(msg),"* %s(%d) has set your rank to %d.", PlayerName(playerid),playerid,EditingMemberRank[playerid]);
							    SendClientMessage(i, COLOR_ERROR, msg);
							}
					    }
					    format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid), playerid, EditingMember[playerid],EditingMemberRank[playerid]);
					    SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
					    ShowMembers(playerid);
					    return 1;
					}
					else
					{
		                format(query,sizeof(query),"UPDATE users SET airlinerank='%d' WHERE username='%s' LIMIT 1", EditingMemberRank[playerid],EditingMember[playerid]);
		                mysql_reconnect();
		                mysql_query(query);
		                format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid),playerid,EditingMember[playerid],EditingMemberRank[playerid]);
						SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
						ShowMembers(playerid);
						return 1;
					}
	            }
	            case 3: //Set to rank3
	            {
             		if(PInfo[playerid][AirlineRank] < AInfo[PInfo[playerid][Airline]][pPrmMembers])
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to promote members of the airline!");
	                    return 1;
	                }
	                EditingMemberRank[playerid] = 3;
	                mysql_real_escape_string(EditingMember[playerid],EditingMember[playerid]);
	                format(query,sizeof(query),"SELECT `airlinerank` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_reconnect();
	                mysql_query(query);
	                mysql_store_result();
	                new isrank6 = mysql_fetch_int();
	                mysql_free_result();
	                if(isrank6 == 6) { SendClientMessage(playerid, COLOR_ERROR, "Cannot modify rank 6 members!"); ShowMembers(playerid); return 1; }
	                format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_query(query);
	                mysql_store_result();
					new isonline = mysql_fetch_int();
					mysql_free_result();
					if(isonline == 1) //online
					{
     					new CHECKNAME[MAX_PLAYER_NAME];
					    for(new i = 0; i<MAX_PLAYERS; i++)
					    {
					        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
							if(!strcmp(CHECKNAME, EditingMember[playerid]))
							{
							    PInfo[i][AirlineRank] = EditingMemberRank[playerid];
							    SaveAccount(i);
							    new msg[156];
							    format(msg,sizeof(msg),"* %s(%d) has set your rank to %d.", PlayerName(playerid),playerid,EditingMemberRank[playerid]);
							    SendClientMessage(i, COLOR_ERROR, msg);
							}
					    }
					    format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid), playerid, EditingMember[playerid],EditingMemberRank[playerid]);
					    SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
					    ShowMembers(playerid);
					    return 1;
					}
					else
					{
		                format(query,sizeof(query),"UPDATE users SET airlinerank='%d' WHERE username='%s' LIMIT 1", EditingMemberRank[playerid],EditingMember[playerid]);
		                mysql_reconnect();
		                mysql_query(query);
		                format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid),playerid,EditingMember[playerid],EditingMemberRank[playerid]);
						SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
						ShowMembers(playerid);
						return 1;
					}
	            }
	            case 4: //Set to rank4
	            {
             		if(PInfo[playerid][AirlineRank] < AInfo[PInfo[playerid][Airline]][pPrmMembers])
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to promote members of the airline!");
	                    return 1;
	                }
             		if(PInfo[playerid][AirlineRank] < 4)
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "You cannot promote or demote users to rank 4 if you are not rank 4 yourself!");
	                    ShowMembers(playerid);
	                    return 1;
	                }
	                EditingMemberRank[playerid] = 4;
	                mysql_real_escape_string(EditingMember[playerid],EditingMember[playerid]);
	                format(query,sizeof(query),"SELECT `airlinerank` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_reconnect();
	                mysql_query(query);
	                mysql_store_result();
	                new isrank6 = mysql_fetch_int();
	                mysql_free_result();
	                if(isrank6 == 6) { SendClientMessage(playerid, COLOR_ERROR, "Cannot modify rank 6 members!"); ShowMembers(playerid); return 1; }
	                format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_query(query);
	                mysql_store_result();
					new isonline = mysql_fetch_int();
					mysql_free_result();
					if(isonline == 1) //online
					{
     					new CHECKNAME[MAX_PLAYER_NAME];
					    for(new i = 0; i<MAX_PLAYERS; i++)
					    {
					        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
							if(!strcmp(CHECKNAME, EditingMember[playerid]))
							{
							    PInfo[i][AirlineRank] = EditingMemberRank[playerid];
							    SaveAccount(i);
							    new msg[156];
							    format(msg,sizeof(msg),"* %s(%d) has set your rank to %d.", PlayerName(playerid),playerid,EditingMemberRank[playerid]);
							    SendClientMessage(i, COLOR_ERROR, msg);
							}
					    }
					    format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid), playerid, EditingMember[playerid],EditingMemberRank[playerid]);
					    SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
					    ShowMembers(playerid);
					    return 1;
					}
					else
					{
		                format(query,sizeof(query),"UPDATE users SET airlinerank='%d' WHERE username='%s' LIMIT 1", EditingMemberRank[playerid],EditingMember[playerid]);
		                mysql_reconnect();
		                mysql_query(query);
		                format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid),playerid,EditingMember[playerid],EditingMemberRank[playerid]);
						SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
						ShowMembers(playerid);
						return 1;
					}
	            }
	            case 5: //Set to rank5
	            {
             		if(PInfo[playerid][AirlineRank] < AInfo[PInfo[playerid][Airline]][pPrmMembers])
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to promote members of the airline!");
	                    return 1;
	                }
	                if(PInfo[playerid][AirlineRank] < 5)
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "You cannot promote or demote users to rank 5 if you are not rank 5 yourself!");
	                    ShowMembers(playerid);
	                    return 1;
	                }
	                EditingMemberRank[playerid] = 5;
	                mysql_real_escape_string(EditingMember[playerid],EditingMember[playerid]);
	                format(query,sizeof(query),"SELECT `airlinerank` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_reconnect();
	                mysql_query(query);
	                mysql_store_result();
	                new isrank6 = mysql_fetch_int();
	                mysql_free_result();
	                if(isrank6 == 6) { SendClientMessage(playerid, COLOR_ERROR, "Cannot modify rank 6 members!"); ShowMembers(playerid); return 1; }
	                format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", EditingMember[playerid]);
	                mysql_query(query);
	                mysql_store_result();
					new isonline = mysql_fetch_int();
					mysql_free_result();
					if(isonline == 1) //online
					{
     					new CHECKNAME[MAX_PLAYER_NAME];
					    for(new i = 0; i<MAX_PLAYERS; i++)
					    {
					        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
							if(!strcmp(CHECKNAME, EditingMember[playerid]))
							{
							    PInfo[i][AirlineRank] = EditingMemberRank[playerid];
							    SaveAccount(i);
							    new msg[156];
							    format(msg,sizeof(msg),"* %s(%d) has set your rank to %d.", PlayerName(playerid),playerid,EditingMemberRank[playerid]);
							    SendClientMessage(i, COLOR_ERROR, msg);
							}
					    }
					    format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid), playerid, EditingMember[playerid],EditingMemberRank[playerid]);
					    SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
					    ShowMembers(playerid);
					    return 1;
					}
					else
					{
		                format(query,sizeof(query),"UPDATE users SET airlinerank='%d' WHERE username='%s' LIMIT 1", EditingMemberRank[playerid],EditingMember[playerid]);
		                mysql_reconnect();
		                mysql_query(query);
		                format(query,sizeof(query),"* %s(%d) has set %s's rank to %d.", PlayerName(playerid),playerid,EditingMember[playerid],EditingMemberRank[playerid]);
						SendAirlineMessage(COLOR_AIRLINECHAT, query, LookingAtAirline[playerid]);
						ShowMembers(playerid);
						return 1;
					}
	            }
	        }
	    }
		ShowMembers(playerid);
		return 1;
	}
	if(dialogid == myvehicles4)
	{
	    if(response)
	    {
	        if(strlen(inputtext))
		    {
		        new amount = strval(inputtext);
		        if(amount < 1 || amount > 5000000)
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Selling price must be over $1 and under $5,000,000.");
					ShowHouses(playerid);
		            return 1;
		        }
				if(EditingVehicle[playerid] == 0)
				{
				    SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured.");
				    return 1;
				}
				PVInfo[EditingVehicle[playerid]][vpForSale] = 1;
    			PVInfo[EditingVehicle[playerid]][vpPrice] = amount;
				SaveVehicle(EditingVehicle[playerid]);
				ReloadVehicle(EditingVehicle[playerid]);
				new msg[128];
				format(msg,sizeof(msg),"You have put your vehicle for sale for $%d.", amount);
				SendClientMessage(playerid, COLOR_WHITE, msg);
				return 1;
		    }
		    else
		    {
				SendClientMessage(playerid, COLOR_ERROR, "An error occured. Please try again.");
				ShowVehicles(playerid);
		        return 1;
		    }
	    }
	}
	if(dialogid == myvehicles3)
	{
	    if(response)
	    {
			new msg[156], title[64];
			switch(listitem)
			{
			    case 0: //Sell to server. /50 price.
			    {
			        if(EditingVehicle[playerid] > 0)
			        {
			            new totalmoney;
						if(PInfo[playerid][Vip] == 0) { totalmoney = PVInfo[EditingVehicle[playerid]][vpDefaultPrice]/2; }
						else if(PInfo[playerid][Vip] == 1) { new wot = PVInfo[EditingVehicle[playerid]][vpDefaultPrice]/100; totalmoney=wot*75; }
			            PInfo[playerid][Money]=PInfo[playerid][Money]+totalmoney;
			            GivePlayerMoney(playerid, totalmoney);
			            format(msg,sizeof(msg),"You have sold your %s for $%d.", VehicleFriendlyNames[PVInfo[EditingVehicle[playerid]][vpModel]-400],totalmoney);
						SendClientMessage(playerid, COLOR_WHITE, msg);
			            new query[200];
			            format(query,sizeof(query),"DELETE FROM `pvehicles` WHERE VehicleID = '%d'", EditingVehicle[playerid]);
			            mysql_reconnect();
			            mysql_query(query);
			            SaveAccount(playerid);
			            Delete3DTextLabel(PVInfo[EditingVehicle[playerid]][vpVehicleText]);
			            DestroyVehicle(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned]);
			            PayLog(PlayerName(playerid), totalmoney, "Sold Vehicle", PlayerName(playerid), "Server");
			            return 1;
			        }
			        else
			        {
			            SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured.");
			            return 1;
			        }
			    }
			    case 1: //Sell to players (input_text_dialog)
			    {
			        if(EditingVehicle[playerid] > 0)
			        {
			            format(title,sizeof(title),"Sell Vehicle [ID:%d]", EditingVehicle[playerid]);
			            format(msg,sizeof(msg),"Input the amount you would like to sell your vehicle for below.");
						ShowPlayerDialog(playerid, myvehicles4, DIALOG_STYLE_INPUT, title, msg, "Sell", "Back");
						return 1;
			        }
			        else
			        {
			            SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured.");
						return 1;
			        }
			    }
			    case 2: //dont want to sell it any more
			    {
			        if(EditingVehicle[playerid] > 0)
			        {
						SendClientMessage(playerid, COLOR_ERROR, "You have disabled the sale on your vehicle.");
						PVInfo[EditingVehicle[playerid]][vpForSale] = 0;
						PVInfo[EditingVehicle[playerid]][vpPrice] = 0;
						SaveVehicle(EditingVehicle[playerid]);
						ReloadVehicle(EditingVehicle[playerid]);
			            return 1;
			        }
			        else
			        {
			            SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured.");
						return 1;
			        }
			    }
			}
	    }
	    ShowVehicles(playerid);
	    return 1;
	}
	if(dialogid == myvehicles2)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0: //Locate
	            {
	                if(EditingVehicle[playerid] == 0) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
	                if(StartedMission[playerid] == 1) { SendClientMessage(playerid, COLOR_ERROR, "You cannot use this feature while on a mission!"); return 1; }
	                if(IsLocatingVehicle[playerid] == 1) { DisablePlayerCheckpoint(playerid); DisablePlayerRaceCheckpoint(playerid); IsLocatingVehicle[playerid] = 0; SendClientMessage(playerid, COLOR_WHITE, "You have stopped locating your vehicle."); return 1; }
	                else if(IsLocatingVehicle[playerid] == 0)
	                {
	                    new VEHICLE = PVInfo[EditingVehicle[playerid]][vpVehicleSpawned];
	                    new Float:X, Float:Y, Float:Z;
	                    GetVehiclePos(VEHICLE, X, Y, Z);
	                    SetPlayerCheckpoint(playerid, X, Y, Z, 10.0);
	                    SendClientMessage(playerid, COLOR_WHITE, "You have started locating your vehicle. (Follow the red checkpoint on your minimap)");
	                    IsLocatingVehicle[playerid] = 1;
	                    return 1;
	                }
	            }
	            case 1:
	            {
	                if(EditingVehicle[playerid] == 0) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
					new VEHICLE = PVInfo[EditingVehicle[playerid]][vpLocked];
					if(VEHICLE == 1)
					{
						SendClientMessage(playerid, COLOR_WHITE, "You have unlocked your vehicle.");
						PVInfo[EditingVehicle[playerid]][vpLocked] = 0;
						new engine,lights,alarm,doors,bonnet,boot,objective;
						GetVehicleParamsEx(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned],engine,lights,alarm,doors,bonnet,boot,objective);
						SetVehicleParamsEx(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned],engine,lights,alarm,0,bonnet,boot,objective);
						return 1;
					} //locked
					else if(VEHICLE == 0)
					{
						SendClientMessage(playerid, COLOR_WHITE, "You have locked your vehicle.");
						PVInfo[EditingVehicle[playerid]][vpLocked] = 1;
						new engine,lights,alarm,doors,bonnet,boot,objective;
						GetVehicleParamsEx(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned],engine,lights,alarm,doors,bonnet,boot,objective);
						SetVehicleParamsEx(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned],engine,lights,alarm,1,bonnet,boot,objective);
						return 1;
					}
	            }
	            case 2: //sell the car.
	            {
	                new title[64], msg[200];
	                format(title,sizeof(title),"{FF4500}Selling vehicle [ID:%d]", EditingVehicle[playerid]);
	                format(msg,sizeof(msg),"Sell to server ($%d)\nSet custom amount (custom)\nRemove for sale", PVInfo[EditingVehicle[playerid]][vpDefaultPrice]/2);
					ShowPlayerDialog(playerid, myvehicles3, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
					return 1;
	            }
	        }
	    }
	}
	if(dialogid == marketplace2)
	{
	    if(response)
	    {
			switch(listitem)
			{
			    case 0: //Buy
			    {
					if(PVInfo[EditingVehicle[playerid]][vpForSale] == 1)
					{
					    if(PInfo[playerid][Money] >= PVInfo[EditingVehicle[playerid]][vpPrice])
					    {
					        if(PInfo[playerid][House1] == 0 && PInfo[playerid][House2] == 0)
					        {
					            SendClientMessage(playerid, COLOR_ERROR, "You need a house with atleast 1 slot to purchase a vehicle!");
					            return 1;
					        }
					        else
					        {
					            new totalslots = 0;
								if(PInfo[playerid][House1] > 0) { totalslots = totalslots+HInfo[PInfo[playerid][House1]][hSlots]; }
								if(PInfo[playerid][House2] > 0) { totalslots = totalslots+HInfo[PInfo[playerid][House2]][hSlots]; }
								if(totalslots == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not have enough vehicle slots left!"); return 1; }
								new query[200];
								format(query,sizeof(query),"SELECT NULL FROM pvehicles WHERE OwnedBy = '%s'", PlayerName(playerid));
								mysql_reconnect();
								mysql_query(query);
								mysql_store_result();
								new ownedvehicles = mysql_num_rows();
								mysql_free_result();
								if(totalslots > ownedvehicles)
								{
		         					format(query,sizeof(query),"SELECT `online` FROM users WHERE `username`='%s' LIMIT 1", PVInfo[EditingVehicle[playerid]][vpOwnedBy]);
			                		mysql_query(query);
			                		mysql_store_result();
									new isonline = mysql_fetch_int();
									mysql_free_result();
									if(isonline == 1) //he is online
									{
										new CHECKNAME[MAX_PLAYER_NAME];
									    for(new i = 0; i<MAX_PLAYERS; i++)
									    {
									        GetPlayerName(i, CHECKNAME, MAX_PLAYER_NAME);
											if(!strcmp(CHECKNAME, PVInfo[EditingVehicle[playerid]][vpOwnedBy]))
											{
											    new string[64];
											    format(query,sizeof(query),"UPDATE pvehicles SET OwnedBy='%s' WHERE VehicleID='%d'", PlayerName(playerid), EditingVehicle[playerid]);
											    mysql_query(query);
												format(query,sizeof(query),"*%s(%d) has purchased your %s for $%d.", PlayerName(playerid), playerid, GetVehicleFriendlyName(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned]),PVInfo[EditingVehicle[playerid]][vpPrice]);
												SendClientMessage(i, COLOR_WHITE, query);
												format(query,sizeof(query),"You have purchased a %s for $%d from %s(%d).", GetVehicleFriendlyName(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned]),PVInfo[EditingVehicle[playerid]][vpPrice], PlayerName(i),i);
												SendClientMessage(playerid, COLOR_WHITE, query);
				  								format(string,sizeof(string),"%s",PlayerName(playerid));
												strmid(PVInfo[EditingVehicle[playerid]][vpOwnedBy], string, 0, strlen(string), 128);
												PInfo[i][Money]=PInfo[i][Money]+PVInfo[EditingVehicle[playerid]][vpPrice];
												GivePlayerMoney(i, PVInfo[EditingVehicle[playerid]][vpPrice]);
												PInfo[playerid][Money]=PInfo[playerid][Money]-PVInfo[EditingVehicle[playerid]][vpPrice];
												GivePlayerMoney(playerid, -PVInfo[EditingVehicle[playerid]][vpPrice]);
												PayLog(PlayerName(playerid), PVInfo[EditingVehicle[playerid]][vpPrice], "Bought Vehicle", PlayerName(i), PlayerName(i));
												PayLog(PlayerName(i), PVInfo[EditingVehicle[playerid]][vpPrice], "Sold Vehicle", PlayerName(i), PlayerName(playerid));
												PVInfo[EditingVehicle[playerid]][vpForSale] = 0;
												PVInfo[EditingVehicle[playerid]][vpPrice] = 0;
												SaveVehicle(EditingVehicle[playerid]);
												ReloadVehicle(EditingVehicle[playerid]);
												return 1;
											}
										}
									}
									else //He is offline.
									{
									    new string[64];
									    format(query,sizeof(query),"SELECT money FROM users WHERE username='%s'", PVInfo[EditingVehicle[playerid]][vpOwnedBy]);
									    mysql_query(query);
									    mysql_store_result();
									    new smoney = mysql_fetch_int();
									    mysql_free_result();
									    smoney=smoney+PVInfo[EditingVehicle[playerid]][vpPrice];
									    format(query,sizeof(query),"UPDATE users SET money='%d' WHERE username='%s'", smoney, PVInfo[EditingVehicle[playerid]][vpOwnedBy]);
									    mysql_query(query);
									    format(query,sizeof(query),"UPDATE pvehicles SET OwnedBy='%s' WHERE VehicleID='%d'", PlayerName(playerid), EditingVehicle[playerid]);
										format(query,sizeof(query),"You have purchased a %s for $%d from %s.", GetVehicleFriendlyName(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned]), PVInfo[EditingVehicle[playerid]][vpPrice], PVInfo[EditingVehicle[playerid]][vpOwnedBy]);
										SendClientMessage(playerid, COLOR_WHITE, query);
										PayLog(PlayerName(playerid), PVInfo[EditingVehicle[playerid]][vpPrice], "Bought Vehicle", PVInfo[EditingVehicle[playerid]][vpOwnedBy], PVInfo[EditingVehicle[playerid]][vpOwnedBy]);
										PayLog(PVInfo[EditingVehicle[playerid]][vpOwnedBy], PVInfo[EditingVehicle[playerid]][vpPrice], "Sold Vehicle", PVInfo[EditingVehicle[playerid]][vpOwnedBy], PlayerName(playerid));
  										format(string,sizeof(string),"%s",PlayerName(playerid));
										strmid(PVInfo[EditingVehicle[playerid]][vpOwnedBy], string, 0, strlen(string), 128);
									    PInfo[playerid][Money]=PInfo[playerid][Money]-PVInfo[EditingVehicle[playerid]][vpPrice];
									    GivePlayerMoney(playerid, -PVInfo[EditingVehicle[playerid]][vpPrice]);
									    PVInfo[EditingVehicle[playerid]][vpForSale] = 0;
									    PVInfo[EditingVehicle[playerid]][vpPrice] = 0;
									    SaveVehicle(EditingVehicle[playerid]);
									    ReloadVehicle(EditingVehicle[playerid]);
									    return 1;
									}
								}
								else
								{
								    SendClientMessage(playerid, COLOR_ERROR, "You do not have any spare vehicle slots left!");
								    ShowMarketplace(playerid);
								    return 1;
								}
					        }
					    }
					    else
					    {
					        SendClientMessage(playerid, COLOR_ERROR, "You cannot afford to purchase this vehicle!");
					        ShowMarketplace(playerid);
					        return 1;
					    }
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "This vehicle is not for sale!");
					    ShowMarketplace(playerid);
					    return 1;
					}
			    }
			    case 1: //Locate
			    {
       				if(StartedMission[playerid] == 1) { SendClientMessage(playerid, COLOR_ERROR, "You cannot use this feature until you have finished your mission!"); return 1; }
			        if(IsLocatingVehicle[playerid] == 1) { DisablePlayerCheckpoint(playerid); SendClientMessage(playerid, COLOR_WHITE, "You have stopped tracing the vehicle."); IsLocatingVehicle[playerid] = 0; return 1; }
			        new Float:CarX, Float:CarY, Float:CarZ;
			        GetVehiclePos(PVInfo[EditingVehicle[playerid]][vpVehicleSpawned], CarX, CarY, CarZ);
			        SetPlayerCheckpoint(playerid, CarX, CarY, CarZ, 15.0);
			        SendClientMessage(playerid, COLOR_WHITE, "You have started tracing the vehicle. (Go to the red checkpoint on your minimap!)");
			        IsLocatingVehicle[playerid] = 1;
			        return 1;
			    }
			}
	    }
	    ShowMarketplace(playerid);
	}
	if(dialogid == myvehicles1)
	{
	    if(response)
	    {
     		if(!strcmp(inputtext, "Next Page"))
	        {
				new query[128],results[400],title[64];
				format(title,sizeof(title),"{FF4500}My Vehicles");
				Num1[playerid] += 12;
				Num2[playerid] += 12;
				format(query,sizeof(query),"SELECT VehicleID, VehicleModel FROM `pvehicles` WHERE `OwnedBy`='%s' ORDER BY `VehicleID` DESC LIMIT %d, 12", PlayerName(playerid),Num1[playerid]);
				mysql_query(query);
				mysql_store_result();
				new tRows = mysql_num_rows();
				if(tRows == 0) { SendClientMessage(playerid, COLOR_ERROR, "You do not own any vehicles!"); return 1; }
				new vID, vModel;
				while(mysql_fetch_row(query))
				{
				    sscanf(query, "p<|>dd", vID, vModel);
				    format(results,sizeof(results),"%s%d | %s\n", results,vID,VehicleFriendlyNames[vModel-400]);
				}
				if(tRows >= 12) { format(results,sizeof(results), "%sNext Page", results); }
				ShowPlayerDialog(playerid, myvehicles1, DIALOG_STYLE_LIST,title,results,"Select", "Back");
				mysql_free_result();
	        }
	        else
	        {
		   	 	new vID, Shit[10], vName[64];
				sscanf(inputtext, "ds[10]s[64]", vID, Shit, vName);
				EditingVehicle[playerid] = vID;
				new msg[64];
				new title[64];
				format(title,sizeof(title),"{FF4500}Managing vehicleID: %d", vID);
				format(msg,sizeof(msg),"Locate vehicle\nLock/unlock vehicle\nSelling options");
		        ShowPlayerDialog(playerid, myvehicles2, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
				return 1;
			}
	    }
	    return 1;
	}
	if(dialogid == marketplace1)
	{
	    if(response)
	    {
     		if(!strcmp(inputtext, "Next Page"))
	        {
				new query[250],results[500],title[64];
				format(title,sizeof(title),"{FF4500}Vehicle Marketplace");
				Num1[playerid] += 10;
				Num2[playerid] += 10;
				format(query,sizeof(query),"SELECT VehicleID, VehicleModel, VehiclePrice, OwnedBy FROM `pvehicles` WHERE `VehicleForSale`='1' ORDER BY `VehiclePrice` DESC LIMIT %d, 10", Num1[playerid]);
				mysql_query(query);
				mysql_store_result();
				new tRows = mysql_num_rows();
				if(tRows == 0) { SendClientMessage(playerid, COLOR_ERROR, "There are no more vehicles for sale!"); return 1; }
				new vID, vModel, vOwnedBy[24], vPrice;
				while(mysql_fetch_row(query))
				{
				    sscanf(query, "p<|>ddds[24]", vID, vModel, vPrice, vOwnedBy);
				    format(results,sizeof(results),"%s%d | %s($%d) | Seller: %s\n", results,vID,VehicleFriendlyNames[vModel-400],vPrice,vOwnedBy);
				}
				if(tRows >= 10) { format(results,sizeof(results), "%sNext Page", results); }
				ShowPlayerDialog(playerid, marketplace1, DIALOG_STYLE_LIST,title,results,"Select", "Close");
				mysql_free_result();
	        }
	        else
	        {
		   	 	new vID;
				sscanf(inputtext, "d", vID);
				EditingVehicle[playerid] = vID;
				new msg[64];
				new title[64];
				format(title,sizeof(title),"{FF4500}Marketplace Vehicle: [%d]", vID);
				format(msg,sizeof(msg),"Purchase vehicle ($%d)\nLocate vehicle", PVInfo[EditingVehicle[playerid]][vpPrice]);
		        ShowPlayerDialog(playerid, marketplace2, DIALOG_STYLE_LIST, title, msg, "Select", "Close");
				return 1;
			}
	    }
	}
	if(dialogid == afleet1)
	{
	    if(response)
	    {
     		if(!strcmp(inputtext, "Next Page"))
	        {
	        	if(LookingAtAirline[playerid] == 0 || LookingAtAirline[playerid] > MAX_AIRLINES) { SendClientMessage(playerid, COLOR_ERROR, "An unknown error occured."); return 1; }
				new query[128],results[250],title[64];
				Num1[playerid] += 12;
				Num2[playerid] += 12;
				format(title,sizeof(title),"{FF4500}Airline Fleet List (%d/%d)", AInfo[LookingAtAirline[playerid]][aFleetTotal],AInfo[LookingAtAirline[playerid]][aFleetSlots]);
				format(query,sizeof(query),"SELECT `VehicleModel`,`VehicleID` FROM `avehicles` WHERE `Airline`='%d' DESC LIMIT %d, 12", LookingAtAirline[playerid],Num1[playerid]);
				mysql_query(query);
				mysql_store_result();
				new vModel, vID;
				new tRows = mysql_num_rows();
				while(mysql_fetch_row(query))
				{
				    sscanf(query, "p<|>dd", vModel, vID);
				    format(results,sizeof(results),"%s%d | %d | %s\n", results, vID,vModel,VehicleFriendlyNames[vModel-400]);
				}
				if(tRows >= 12) { format(results,sizeof(results), "%sNext Page", results); }
				ShowPlayerDialog(playerid, afleet1, DIALOG_STYLE_LIST,title,results,"Select", "Back");
				mysql_free_result();
				return 1;
	        }
	        else
	        {
		   	 	new vid, vrest,shit[10];
				sscanf(inputtext, "ds[10]d", vid, shit, vrest);
				EditingVehicle[playerid] = vid;
				EditingVehicleModel[playerid] = vrest;
				new msg[64];
				new title[64];
				format(title,sizeof(title),"{FF4500}Managing vehicleID: %d(%d)", vid,vrest);
				format(msg,sizeof(msg),"Force respawn vehicle\nSell vehicle");
		        ShowPlayerDialog(playerid, afleet2, DIALOG_STYLE_LIST, title, msg, "Edit", "Back");
				return 1;
			}
	    }
	    DisplayDialogForPlayer(playerid, showit2);
	    return 1;
	}
	if(dialogid == afleet2)
	{
	    if(response)
	    {
			 if(PInfo[playerid][Airline] != LookingAtAirline[playerid])
			 {
			    SendClientMessage(playerid, COLOR_ERROR, "You are not in this airline!");
			    return 1;
			 }
  			 if(!strcmp(inputtext, "Force respawn vehicle")) //Force respawn vehicle
       	     {
	  			 	if(PInfo[playerid][AirlineRank] < 4)
				 	{
				    	SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to use this feature!");
				    	ShowFleet(playerid);
				    	return 1;
				 	}
			    	for(new i = 0; i < MAX_VEHICLES; i++)
			    	{
						if(aVInfo[i][AID] > 0)
						{
	    					if(aVInfo[i][ID] == EditingVehicle[playerid])
					    	{
	        					AddAirlineVehicle(EditingVehicle[playerid]);
				        		DestroyVehicle(i);
					        	Delete3DTextLabel(AirlineText[i]);
					    	}
						}
	    			}
		    		new msg[128];
		    		format(msg,sizeof(msg),"* %s(%d) has forced a respawn on vehicle ID %d.", PlayerName(playerid),playerid,EditingVehicle[playerid]);
					SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]);
					ShowFleet(playerid);
					return 1;
  			  	}
       			else
    			{
  			 		if(PInfo[playerid][AirlineRank] < 6)
				 	{
				    	SendClientMessage(playerid, COLOR_ERROR, "You are not a high enough rank to use this feature!");
				    	ShowFleet(playerid);
				    	return 1;
				 	}
                 	new model = EditingVehicleModel[playerid];
	                new money = 0;
	                if(EditingVehicleModel[playerid] == 577) //at-400
					{
						money = 1250000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
     				if(EditingVehicleModel[playerid] == 592) //andro
					{
						money = 500000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 519) //shamal
					{
						money = 400000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 593) //dodo
					{
						money = 225000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 553) //nevada
					{
						money = 750000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 511) //beagle
					{
						money = 700000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 460) //skimmer
					{
						money = 250000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 476) //rustler
					{
						money = 325000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 512) //cropduster
					{
						money = 150000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 513) //stuntplane
					{
						money = 250000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
						return 1;
       				}
					if(EditingVehicleModel[playerid] == 520) //hydra
					{
						money = 500000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 487) //maverick
					{
						money = 275000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 488) //news maverick
					{
						money = 250000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 497) //police maverick
					{
						money = 275000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 548) //cargobob
					{
						money = 350000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 425) //hunter
					{
						money = 400000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 417) //leviathan
					{
						money = 275000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 563) //raindance
					{
						money = 300000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 447) //seasparrow
					{
						money = 325000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					if(EditingVehicleModel[playerid] == 469) //sparrow
					{
						money = 300000;
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has sold the airlines %s for $%d.", PlayerName(playerid), playerid, VehicleFriendlyNames[model-400], money);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, PInfo[playerid][Airline]);
						AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]+money;
						format(msg,sizeof(msg),"DELETE FROM avehicles WHERE VehicleID = '%d'", EditingVehicle[playerid]);
						mysql_reconnect();
						mysql_query(msg);
						AInfo[LookingAtAirline[playerid]][aFleetTotal] = AInfo[LookingAtAirline[playerid]][aFleetTotal]-1;
						SaveAirline(LookingAtAirline[playerid]);
						for(new i = 0; i < MAX_VEHICLES; i++)
						{
		    				if(aVInfo[i][AID] > 0)
						    {
		        				if(aVInfo[i][ID] == EditingVehicle[playerid])
					        	{
		            				Delete3DTextLabel(AirlineText[i]); DestroyVehicle(i);
						        }
						    }
						}
					}
					return 1;
 				}
	    }
		ShowFleet(playerid);
		return 1;
	}
	if(dialogid == buyfleet1)
	{
	    if(response)
	    {
	        new msg[250], query[250], msg22[150];
			new HighestNumber;
	        switch(listitem)
	        {
	            case 0: // at-400
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 577;
		                BuyingFleetPrice[playerid] = 2500000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 1: // andro
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 592;
		                BuyingFleetPrice[playerid] = 1000000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 2: // Shamal
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 519;
		                BuyingFleetPrice[playerid] = 800000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 3: // andro
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 593;
		                BuyingFleetPrice[playerid] = 450000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 4: // andro
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 553;
		                BuyingFleetPrice[playerid] = 750000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 5: // beagle
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 511;
		                BuyingFleetPrice[playerid] = 700000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 6: // skimer
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 460;
		                BuyingFleetPrice[playerid] = 500000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 7: // andro
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 476;
		                BuyingFleetPrice[playerid] = 650000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 8: // cropduster
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 512;
		                BuyingFleetPrice[playerid] = 300000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 9: // stuntplane
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 513;
		                BuyingFleetPrice[playerid] = 500000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 10: // hydra
	            {
	                if(AInfo[PInfo[playerid][Airline]][aFleetSlots] > AInfo[PInfo[playerid][Airline]][aFleetTotal])
	                {
		                BuyingFleet[playerid] = 520;
		                BuyingFleetPrice[playerid] = 1000000;
		           		if(BuyingFleetPrice[playerid] > AInfo[LookingAtAirline[playerid]][aBalance])
		       			{
		         			SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have the funds to purchase the chosen vehicle.");
		         			ShowSettings(playerid);
		           			return 1;
		           		}
		           		format(msg22,sizeof(msg22),"SELECT VehicleID FROM avehicles ORDER BY VehicleID DESC LIMIT 1");
	           			mysql_query(msg22);
						mysql_store_result();
						HighestNumber = mysql_fetch_int();
						mysql_free_result();
						HighestNumber = HighestNumber+1;
		           		format(msg,sizeof(msg),"* %s(%d) has purchased a %s($%d) for %s.", PlayerName(playerid),playerid,VehicleFriendlyNames[BuyingFleet[playerid]-400],BuyingFleetPrice[playerid],AInfo[PInfo[playerid][Airline]][aName]);
		           		SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
		           		format(query,sizeof(query),"INSERT INTO `avehicles` (VehicleModel, VehicleX, VehicleY, VehicleZ, VehicleAngle, VehicleID, VehicleColor1, VehicleColor2, Airline) VALUES(%d, '397.1760','2502.8445','17.4059','90.1643','%d','-1', '-1', %d)",
			   			BuyingFleet[playerid],
			   			HighestNumber,
			   			PInfo[playerid][Airline]);
			   			mysql_reconnect();
			   			mysql_query(query);
			   			AInfo[PInfo[playerid][Airline]][aBalance] = AInfo[PInfo[playerid][Airline]][aBalance]-BuyingFleetPrice[playerid];
			   			AInfo[PInfo[playerid][Airline]][aFleetTotal] = AInfo[PInfo[playerid][Airline]][aFleetTotal]+1;
			   			SaveAirline(PInfo[playerid][Airline]);
			   			AddAirlineVehicle(HighestNumber);
			   			SendClientMessage(playerid, COLOR_WHITE, "The vehicle has been parked at verdeant meadows. Type /parkfleet to park it in wanted destination.");
		           		return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Your airline does not have any fleet slots available! Either purchase one or sell an old vehicle!");
					    return 1;
					}
				}
				case 11: //Next Page
				{
    				new msg5[250],title[64];
			        format(title,sizeof(title),"{FF4500}Purchase fleet [2/2]");
					format(msg5,sizeof(msg5),"Maverick	$550,000\nNews Maverick		$500,000\nPolice Maverick	$550,000\nRaindance		$600,000\nSeasparrow	$650,000\nSparrow	$600,000\nLeviathan		$550,000\nHunter	$800,000\nCargobob	$700,000");
					ShowPlayerDialog(playerid, buyfleet2, DIALOG_STYLE_LIST, title, msg5, "Purchase", "Back");
					return 1;
				}
	        }
	    }
	    ShowSettings(playerid);
	    return 1;
	}
	if(dialogid == afleet5)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0: //Buy new slot
	            {
	                if(AInfo[LookingAtAirline[playerid]][aBalance] > 4999999)
	                {
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has just bought a fleet slot for %s!", PlayerName(playerid), playerid, AInfo[LookingAtAirline[playerid]][aName]);
						SendClientMessageToAll(COLOR_AIRLINECHAT, msg);
						AInfo[LookingAtAirline[playerid]][aFleetSlots]++;
						AInfo[LookingAtAirline[playerid]][aBalance] = AInfo[LookingAtAirline[playerid]][aBalance]-5000000;
						SaveAirline(LookingAtAirline[playerid]);
						ShowSettings(playerid);
						return 1;
					}
					else
					{
					    SendClientMessage(playerid, COLOR_ERROR, "Not enough money in the airline's balance!");
					    return 1;
					}
	            }
	            case 1: //Sell slot
	            {
	                if(AInfo[LookingAtAirline[playerid]][aFleetSlots] == AInfo[LookingAtAirline[playerid]][aFleetTotal])
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "No empty fleet slots available to sell!");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	                if(AInfo[LookingAtAirline[playerid]][aFleetSlots] < 6)
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "Cannot sell the default airline slots.");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	                if(AInfo[LookingAtAirline[playerid]][aFleetSlots] > AInfo[LookingAtAirline[playerid]][aFleetTotal])
	                {
						new msg[128];
						format(msg,sizeof(msg),"* %s(%d) has just sold a fleet spot for $2,500,000. It has been put into the airline's bank.", PlayerName(playerid), playerid);
						SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]);
						AInfo[LookingAtAirline[playerid]][aFleetSlots]--;
						AInfo[LookingAtAirline[playerid]][aBalance] = AInfo[LookingAtAirline[playerid]][aBalance]+2500000;
						SaveAirline(LookingAtAirline[playerid]);
						ShowSettings(playerid);
						return 1;
	                }
	                else
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "No empty fleet slots available to sell!");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	            }
	        }
	    }
	    ShowSettings(playerid);
	    return 1;
	}
    if(dialogid == asettings5)
	{
	    if(response)
	    {
	        if(strlen(inputtext))
		    {
		        new amount = strval(inputtext);
		        if(amount < 50 || amount > 100 || amount == 0)
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Payrate percentage must be 50 or over, and no more than 100.");
		            ShowSettings(playerid);
		            return 1;
		        }
				AInfo[LookingAtAirline[playerid]][aPayrate] = amount;
				SaveAirline(LookingAtAirline[playerid]);
				new msg[128];
				format(msg,sizeof(msg),"You have set the payrate to %d percent!", amount);
				PlayerNotice(playerid, msg);
				format(msg,sizeof(msg),"* %s(%d) has set the airline's payrate to %d percent.", PlayerName(playerid), playerid, amount);
				SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]);
				ShowAirlines(playerid);
				return 1;
		    }
		    else
		    {
				SendClientMessage(playerid, COLOR_ERROR, "An error occured. Please try again.");
				ShowSettings(playerid);
		        return 1;
		    }
	    }
	    else
	    {
	        ShowSettings(playerid);
	        return 1;
	    }
	}
    if(dialogid == asettings4)
	{
	    if(response)
	    {
	        if(strlen(inputtext))
		    {
		        new amount = strval(inputtext);
		        if(amount < 0 || amount > 299 || amount == 0)
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Uniform ID must be over 0, and under 300!");
		            ShowSettings(playerid);
		            return 1;
		        }
				AInfo[LookingAtAirline[playerid]][aUniform] = amount;
				SaveAirline(LookingAtAirline[playerid]);
				new msg[128];
				format(msg,sizeof(msg),"You have set the uniform to skin ID %d!", amount);
				PlayerNotice(playerid, msg);
				ShowAirlines(playerid);
				return 1;
		    }
		    else
		    {
				SendClientMessage(playerid, COLOR_ERROR, "An error occured. Please try again.");
				ShowSettings(playerid);
		        return 1;
		    }
	    }
	    else
	    {
	        ShowSettings(playerid);
	        return 1;
	    }
	}
	if(dialogid == asettings3) //change rank name
    {
		if(response)
		{
		    if(PInfo[playerid][Airline] == LookingAtAirline[playerid] && PInfo[playerid][AirlineRank] == 6)
		    {
			    if(!strlen(inputtext))
			    {
					SendClientMessage(playerid, COLOR_YELLOW, "You must enter a name for the rank!");
					ShowSettings(playerid);
					return 1;
				}
				if(strlen(inputtext) >= 50)
				{
				    ShowSettings(playerid);
					SendClientMessage(playerid, COLOR_YELLOW, "Rank name is too long !");
					return 1;
				}
				if(EditingRank[playerid] == 1)
				{
    				strmid(AInfo[LookingAtAirline[playerid]][aRank1], inputtext, 0, strlen(inputtext), 128);
				}
				else if(EditingRank[playerid] == 2)
				{
    				strmid(AInfo[LookingAtAirline[playerid]][aRank2], inputtext, 0, strlen(inputtext), 128);
				}
				else if(EditingRank[playerid] == 3)
				{
    				strmid(AInfo[LookingAtAirline[playerid]][aRank3], inputtext, 0, strlen(inputtext), 128);
				}
				else if(EditingRank[playerid] == 4)
				{
    				strmid(AInfo[LookingAtAirline[playerid]][aRank4], inputtext, 0, strlen(inputtext), 128);
				}
				else if(EditingRank[playerid] == 5)
				{
    				strmid(AInfo[LookingAtAirline[playerid]][aRank5], inputtext, 0, strlen(inputtext), 128);
				}
				else if(EditingRank[playerid] == 6)
				{
    				strmid(AInfo[LookingAtAirline[playerid]][aRank6], inputtext, 0, strlen(inputtext), 128);
				}
		        SaveAirline(LookingAtAirline[playerid]);
		        ShowSettings(playerid);
		        return 1;
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not the owner of this airline!");
       			DisplayDialogForPlayer(playerid, showit2);
			    return 1;
			}
		}
        else
        {
			ShowSettings(playerid);
			return 1;
        }
    }
	if(dialogid == asettings2) //change airline name
    {
		if(response)
		{
		    if(PInfo[playerid][Airline] == LookingAtAirline[playerid] && PInfo[playerid][AirlineRank] == 6)
		    {
			    if(!strlen(inputtext))
			    {
					SendClientMessage(playerid, COLOR_YELLOW, "You must enter a name !");
					ShowSettings(playerid);
					return 1;
				}
				if(strlen(inputtext) >= 50)
				{
				    ShowSettings(playerid);
					SendClientMessage(playerid, COLOR_YELLOW, "Airline name too long !");
					return 1;
				}
				new anmsg[156];
				format(anmsg,sizeof(anmsg),"* %s(%d) has renamed %s to %s!", PlayerName(playerid),playerid,AInfo[LookingAtAirline[playerid]][aName],inputtext);
			 	strmid(AInfo[LookingAtAirline[playerid]][aName], inputtext, 0, strlen(inputtext), 128);
				SendClientMessageToAll(COLOR_AIRLINECHAT, anmsg);
		        SaveAirline(LookingAtAirline[playerid]);
		        ShowSettings(playerid);
          		for(new i; i<MAX_VEHICLES; i++)
				{
					if(aVInfo[i][AID] == LookingAtAirline[playerid])
					{
					    new vid;
					    vid = aVInfo[i][ID];
					    Delete3DTextLabel(AirlineText[i]);
						DestroyVehicle(i);
						AddAirlineVehicle(vid);
					}
				}
				//AddAirlineVehicles();
		        return 1;
			}
			else
			{
			    SendClientMessage(playerid, COLOR_ERROR, "You are not the owner of this airline!");
       			DisplayDialogForPlayer(playerid, showit2);
			    return 1;
			}
		}
        else
        {
			ShowSettings(playerid);
			return 1;
        }
    }
	if(dialogid == asettings1)
	{
	    if(response)
	    {
			switch(listitem)
			{
			    case 0: //airline name
			    {
					ShowPlayerDialog(playerid, asettings2, DIALOG_STYLE_INPUT, "{FF4500}Edit Airline Name", "To edit your airline's name, please enter the new name below.", "Edit", "Back");
					return 1;
			    }
			    case 1: //ALL BELOW RANKS 1-6.
			    {
			        new msg[64], title[64];
  					EditingRank[playerid] = 1;
			        format(msg,sizeof(msg),"Type the new name for Rank%d below:", EditingRank[playerid]);
			        format(title,sizeof(title),"{FFFFFF}Editing Rank: {FF4500}%d", EditingRank[playerid]);
			        ShowPlayerDialog(playerid, asettings3, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			    case 2:
			    {
			        new msg[64], title[64];
  					EditingRank[playerid] = 2;
			        format(msg,sizeof(msg),"Type the new name for Rank%d below:", EditingRank[playerid]);
			        format(title,sizeof(title),"{FFFFFF}Editing Rank: {FF4500}%d", EditingRank[playerid]);
			        ShowPlayerDialog(playerid, asettings3, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			    case 3:
			    {
			        new msg[64], title[64];
  					EditingRank[playerid] = 3;
			        format(msg,sizeof(msg),"Type the new name for Rank%d below:", EditingRank[playerid]);
			        format(title,sizeof(title),"{FFFFFF}Editing Rank: {FF4500}%d", EditingRank[playerid]);
			        ShowPlayerDialog(playerid, asettings3, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			    case 4:
			    {
			        new msg[64], title[64];
  					EditingRank[playerid] = 4;
			        format(msg,sizeof(msg),"Type the new name for Rank%d below:", EditingRank[playerid]);
			        format(title,sizeof(title),"{FFFFFF}Editing Rank: {FF4500}%d", EditingRank[playerid]);
			        ShowPlayerDialog(playerid, asettings3, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			    case 5:
			    {
			        new msg[64], title[64];
  					EditingRank[playerid] = 5;
			        format(msg,sizeof(msg),"Type the new name for Rank%d below:", EditingRank[playerid]);
			        format(title,sizeof(title),"{FFFFFF}Editing Rank: {FF4500}%d", EditingRank[playerid]);
			        ShowPlayerDialog(playerid, asettings3, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			    case 6: //END OF RANKS
			    {
			        new msg[64], title[64];
  					EditingRank[playerid] = 6;
			        format(msg,sizeof(msg),"Type the new name for Rank%d below:", EditingRank[playerid]);
			        format(title,sizeof(title),"{FFFFFF}Editing Rank: {FF4500}%d", EditingRank[playerid]);
			        ShowPlayerDialog(playerid, asettings3, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			    case 7: //UNIFORM
			    {
			        new msg[64], title[64];
			        format(msg,sizeof(msg),"Type the uniform in which your airline has below(Skin ID):");
			        format(title,sizeof(title),"{FF4500}Editing Uniform ID");
			        ShowPlayerDialog(playerid, asettings4, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			    case 8: //PAYRATE
			    {
			        new msg[64], title[64];
			        format(msg,sizeof(msg),"Type the new payrate you would like to pay your airline members:");
			        format(title,sizeof(title),"{FF4500}Editing Payrate");
			        ShowPlayerDialog(playerid, asettings5, DIALOG_STYLE_INPUT, title, msg, "Edit", "Back");
			        return 1;
			    }
			    case 9: //Fleet Slot
			    {
			        new msg[156], title[64];
			        format(title,sizeof(title),"{FF4500}Manage fleet");
			        format(msg,sizeof(msg),"{FF4500}Purchase new fleet slot ($5,000,000)\n{FFFFFF}Sell fleet slot ($2,500,000)");
			        ShowPlayerDialog(playerid, afleet5, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
			        return 1;
			    }
			    case 10:
			    {
			        new msg[250], title[64];
			        format(title,sizeof(title),"{FF4500}Purchase fleet [1/2]");
					format(msg,sizeof(msg),"AT-400  $2,500,000\nAndromada   $1,000,000\nShamal	$800,000\nDodo	$450,000\nNevada	$750,000\nBeagle	$700,000\nSkimmer	$500,000\nRustler	$650,000\nCropduster	$300,000\nStuntplane	$500,000\nHydra	$1,000,000\nNext Page");
					ShowPlayerDialog(playerid, buyfleet1, DIALOG_STYLE_LIST, title, msg, "Purchase", "Back");
					return 1;
			    }
			    case 11: //MOTD
			    {
			        new msg[250], title[64];
			        format(title,sizeof(title),"{FF4500}Manage MOTD");
			        format(msg,sizeof(msg),"{FFFFFF}View current MOTD\n{FF4500}Set new MOTD");
			        ShowPlayerDialog(playerid, motd1, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
			        return 1;
			    }
			    case 12: //rank permissions
			    {
			        new msg[250], title[64];
			        format(title,sizeof(title),"{FF4500}Manage Rank Permissions");
			        format(msg,sizeof(msg),"{FFFFFF}Invite Members: {FF4500}%d+\n{FFFFFF}Remove Members: {FF4500}%d+\n{FFFFFF}Promote Members: {FF4500}%d+\n{FFFFFF}Park Fleet: {FF4500}%d+\n{FFFFFF}Colour Fleet: {FF4500}%d+\n{FFFFFF}Bank Permissions: {FF4500}%d+\n{FFFFFF}Respawn Fleet: {FF4500}%d+",
					AInfo[LookingAtAirline[playerid]][pInvMembers],
					AInfo[LookingAtAirline[playerid]][pRmvMembers],
					AInfo[LookingAtAirline[playerid]][pPrmMembers],
					AInfo[LookingAtAirline[playerid]][pPrkFleet],
					AInfo[LookingAtAirline[playerid]][pClrFleet],
					AInfo[LookingAtAirline[playerid]][pBnkPerm],
					AInfo[LookingAtAirline[playerid]][pRspFleet]);
					ShowPlayerDialog(playerid, rankperm1, DIALOG_STYLE_LIST, title, msg, "Edit", "Back");
					return 1;
			    }
			}
	    }
    	DisplayDialogForPlayer(playerid, showit2);
     	return 1;
	}
	if(dialogid == rankperm2)
	{
	    if(response)
	    {
	        new msg[128];
	        switch(listitem)
	        {
	            case 0: //Rank1+
	            {
	                if(EditingPermissions[playerid] == 1) { AInfo[LookingAtAirline[playerid]][pInvMembers] = 1; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 2) { AInfo[LookingAtAirline[playerid]][pRmvMembers] = 1; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 3) { AInfo[LookingAtAirline[playerid]][pPrmMembers] = 1; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 4) { AInfo[LookingAtAirline[playerid]][pPrkFleet] = 1; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 5) { AInfo[LookingAtAirline[playerid]][pClrFleet] = 1; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 6) { AInfo[LookingAtAirline[playerid]][pBnkPerm] = 1; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 7) { AInfo[LookingAtAirline[playerid]][pRspFleet] = 1; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                else
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "An error occured.");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	            }
	            case 1: //Rank2+
	            {
	                if(EditingPermissions[playerid] == 1) { AInfo[LookingAtAirline[playerid]][pInvMembers] = 2; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 2) { AInfo[LookingAtAirline[playerid]][pRmvMembers] = 2; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 3) { AInfo[LookingAtAirline[playerid]][pPrmMembers] = 2; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 4) { AInfo[LookingAtAirline[playerid]][pPrkFleet] = 2; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 5) { AInfo[LookingAtAirline[playerid]][pClrFleet] = 2; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 6) { AInfo[LookingAtAirline[playerid]][pBnkPerm] = 2; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 7) { AInfo[LookingAtAirline[playerid]][pRspFleet] = 2; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                else
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "An error occured.");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	            }
	            case 2: //Rank3+
	            {
	                if(EditingPermissions[playerid] == 1) { AInfo[LookingAtAirline[playerid]][pInvMembers] = 3; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 2) { AInfo[LookingAtAirline[playerid]][pRmvMembers] = 3; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 3) { AInfo[LookingAtAirline[playerid]][pPrmMembers] = 3; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 4) { AInfo[LookingAtAirline[playerid]][pPrkFleet] = 3; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 5) { AInfo[LookingAtAirline[playerid]][pClrFleet] = 3; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 6) { AInfo[LookingAtAirline[playerid]][pBnkPerm] = 3; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
 	                if(EditingPermissions[playerid] == 7) { AInfo[LookingAtAirline[playerid]][pRspFleet] = 3; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                else
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "An error occured.");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	            }
	            case 3: //Rank4+
	            {
	                if(EditingPermissions[playerid] == 1) { AInfo[LookingAtAirline[playerid]][pInvMembers] = 4; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 2) { AInfo[LookingAtAirline[playerid]][pRmvMembers] = 4; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 3) { AInfo[LookingAtAirline[playerid]][pPrmMembers] = 4; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 4) { AInfo[LookingAtAirline[playerid]][pPrkFleet] = 4; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 5) { AInfo[LookingAtAirline[playerid]][pClrFleet] = 4; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 6) { AInfo[LookingAtAirline[playerid]][pBnkPerm] = 4; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
 	                if(EditingPermissions[playerid] == 7) { AInfo[LookingAtAirline[playerid]][pRspFleet] = 4; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                else
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "An error occured.");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	            }
	            case 4: //Rank5+
	            {
	                if(EditingPermissions[playerid] == 1) { AInfo[LookingAtAirline[playerid]][pInvMembers] = 5; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 2) { AInfo[LookingAtAirline[playerid]][pRmvMembers] = 5; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 3) { AInfo[LookingAtAirline[playerid]][pPrmMembers] = 5; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 4) { AInfo[LookingAtAirline[playerid]][pPrkFleet] = 5; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 5) { AInfo[LookingAtAirline[playerid]][pClrFleet] = 5; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 6) { AInfo[LookingAtAirline[playerid]][pBnkPerm] = 5; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
 	                if(EditingPermissions[playerid] == 7) { AInfo[LookingAtAirline[playerid]][pRspFleet] = 5; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                else
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "An error occured.");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	            }
	            case 5: //Rank6+
	            {
	                if(EditingPermissions[playerid] == 1) { AInfo[LookingAtAirline[playerid]][pInvMembers] = 6; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 2) { AInfo[LookingAtAirline[playerid]][pRmvMembers] = 6; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 3) { AInfo[LookingAtAirline[playerid]][pPrmMembers] = 6; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 4) { AInfo[LookingAtAirline[playerid]][pPrkFleet] = 6; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 5) { AInfo[LookingAtAirline[playerid]][pClrFleet] = 6; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                if(EditingPermissions[playerid] == 6) { AInfo[LookingAtAirline[playerid]][pBnkPerm] = 6; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
 	                if(EditingPermissions[playerid] == 7) { AInfo[LookingAtAirline[playerid]][pRspFleet] = 6; SaveAirline(LookingAtAirline[playerid]); format(msg,sizeof(msg),"* %s(%d) has updated the rank permissions.", PlayerName(playerid),playerid); SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]); return 1; }
	                else
	                {
	                    SendClientMessage(playerid, COLOR_ERROR, "An error occured.");
	                    ShowSettings(playerid);
	                    return 1;
	                }
	            }
	        }
	    }
		ShowSettings(playerid);
		return 1;
	}
	if(dialogid == rankperm1)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0: //Invite members
	            {
					new msg[250], title[64];
					EditingPermissions[playerid] = 1; //Invite members
					format(msg,sizeof(msg),"{FFFFFF}Set to rank1+\n{FF4500}Set to rank2+\n{FFFFFF}Set to rank3+\n{FF4500}Set to rank4+\n{FFFFFF}Set to rank5+\n{FF4500}Set to rank6+");
					format(title,sizeof(title),"{FF4500}Editing Rank Permissions");
					ShowPlayerDialog(playerid, rankperm2, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
					return 1;
	            }
				case 1: //Remove Members
				{
					new msg[250], title[64];
					EditingPermissions[playerid] = 2; //remove members
					format(msg,sizeof(msg),"{FFFFFF}Set to rank1+\n{FF4500}Set to rank2+\n{FFFFFF}Set to rank3+\n{FF4500}Set to rank4+\n{FFFFFF}Set to rank5+\n{FF4500}Set to rank6+");
					format(title,sizeof(title),"{FF4500}Editing Rank Permissions");
					ShowPlayerDialog(playerid, rankperm2, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
					return 1;
				}
				case 2: //Promote Members
				{
					new msg[250], title[64];
					EditingPermissions[playerid] = 3; //promote members
					format(msg,sizeof(msg),"{FFFFFF}Set to rank1+\n{FF4500}Set to rank2+\n{FFFFFF}Set to rank3+\n{FF4500}Set to rank4+\n{FFFFFF}Set to rank5+\n{FF4500}Set to rank6+");
					format(title,sizeof(title),"{FF4500}Editing Rank Permissions");
					ShowPlayerDialog(playerid, rankperm2, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
					return 1;
				}
				case 3: //Park Fleet
				{
					new msg[250], title[64];
					EditingPermissions[playerid] = 4; //park fleet
					format(msg,sizeof(msg),"{FFFFFF}Set to rank1+\n{FF4500}Set to rank2+\n{FFFFFF}Set to rank3+\n{FF4500}Set to rank4+\n{FFFFFF}Set to rank5+\n{FF4500}Set to rank6+");
					format(title,sizeof(title),"{FF4500}Editing Rank Permissions");
					ShowPlayerDialog(playerid, rankperm2, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
					return 1;
				}
				case 4: //Colour fleet
				{
					new msg[250], title[64];
					EditingPermissions[playerid] = 5; //colour fleet
					format(msg,sizeof(msg),"{FFFFFF}Set to rank1+\n{FF4500}Set to rank2+\n{FFFFFF}Set to rank3+\n{FF4500}Set to rank4+\n{FFFFFF}Set to rank5+\n{FF4500}Set to rank6+");
					format(title,sizeof(title),"{FF4500}Editing Rank Permissions");
					ShowPlayerDialog(playerid, rankperm2, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
					return 1;
				}
				case 5: //Bank Permission
				{
					new msg[250], title[64];
					EditingPermissions[playerid] = 6; //bank permission
					format(msg,sizeof(msg),"{FFFFFF}Set to rank1+\n{FF4500}Set to rank2+\n{FFFFFF}Set to rank3+\n{FF4500}Set to rank4+\n{FFFFFF}Set to rank5+\n{FF4500}Set to rank6+");
					format(title,sizeof(title),"{FF4500}Editing Rank Permissions");
					ShowPlayerDialog(playerid, rankperm2, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
					return 1;
				}
				case 6: //Respawn fleet
				{
					new msg[250], title[64];
					EditingPermissions[playerid] = 7; //respawn fleet
					format(msg,sizeof(msg),"{FFFFFF}Set to rank1+\n{FF4500}Set to rank2+\n{FFFFFF}Set to rank3+\n{FF4500}Set to rank4+\n{FFFFFF}Set to rank5+\n{FF4500}Set to rank6+");
					format(title,sizeof(title),"{FF4500}Editing Rank Permissions");
					ShowPlayerDialog(playerid, rankperm2, DIALOG_STYLE_LIST, title, msg, "Select", "Back");
					return 1;
				}
	        }
	    }
	    ShowSettings(playerid);
	    return 1;
	}
	if(dialogid == abank4)
	{
	    if(response)
	    {
	        if(strlen(inputtext))
		    {
		        new amount = strval(inputtext);
		        if(amount < 100000 || amount > 50000000 || amount == 0)
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Deposit amount must be over $1,00,000, and under $50,000,000!");
		            ShowBank(playerid);
		            return 1;
		        }
		        if(amount > PInfo[playerid][Money])
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "You do not have that much money!");
					ShowBank(playerid);
					return 1;
		        }
				PInfo[playerid][Money]=PInfo[playerid][Money]-amount;
				AInfo[LookingAtAirline[playerid]][aBalance] = AInfo[LookingAtAirline[playerid]][aBalance]+amount;
				GivePlayerMoney(playerid, -amount);
				SaveAccount(playerid);
				SaveAirline(LookingAtAirline[playerid]);
				new msg[156];
				format(msg,sizeof(msg),"* %s(%d) has deposited $%d into the airline's bank.", PlayerName(playerid),playerid,amount);
				SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]);
				format(msg,sizeof(msg),"Your deposit of $%d was successful!", amount);
				PlayerNotice(playerid, msg);
				ShowAirlines(playerid);
				PayLog(PlayerName(playerid), amount, "Deposited into Airline", AInfo[LookingAtAirline[playerid]][aName], "N/A");
				return 1;
		    }
		    else
		    {
				SendClientMessage(playerid, COLOR_ERROR, "An error occured. Please try again.");
				ShowBank(playerid);
		        return 1;
		    }
	    }
	    else
	    {
	        ShowBank(playerid);
	        return 1;
	    }
	}
	if(dialogid == abank3)
	{
	    if(response)
	    {
	        if(strlen(inputtext))
		    {
		        new amount = strval(inputtext);
		        if(amount < 0 || amount > 5000000 || amount == 0)
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Withdraw amount must be over $1, and under $5,000,000!");
		            ShowBank(playerid);
		            return 1;
		        }
		        if(amount > AInfo[LookingAtAirline[playerid]][aBalance])
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "The airline doesn't have enough money in it's bank account!");
					ShowBank(playerid);
					return 1;
		        }
				PInfo[playerid][Money]=PInfo[playerid][Money]+amount;
				AInfo[LookingAtAirline[playerid]][aBalance] = AInfo[LookingAtAirline[playerid]][aBalance]-amount;
				GivePlayerMoney(playerid, amount);
				SaveAccount(playerid);
				SaveAirline(LookingAtAirline[playerid]);
				new msg[156];
				format(msg,sizeof(msg),"* %s(%d) has withdrawn $%d from the airline's bank.", PlayerName(playerid),playerid,amount);
				SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]);
				format(msg,sizeof(msg),"Your withdrawal of $%d was successful!", amount);
				PlayerNotice(playerid, msg);
				ShowAirlines(playerid);
				PayLog(PlayerName(playerid), amount, "Withdrawn from Airline", PlayerName(playerid), AInfo[LookingAtAirline[playerid]][aName]);
				return 1;
		    }
		    else
		    {
				SendClientMessage(playerid, COLOR_ERROR, "An error occured. Please try again.");
				ShowBank(playerid);
		        return 1;
		    }
	    }
	    else
	    {
	        ShowBank(playerid);
	        return 1;
	    }
	}
	if(dialogid == abank2)
	{
	    if(response)
	    {
	        ShowBank(playerid);
	        return 1;
	    }
	    else
	    {
	        ShowBank(playerid);
	        return 1;
	    }
	}
	if(dialogid == abank1)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
				case 0://View balance
				{
				    new title[64], msg[128];
				    format(title,sizeof(title),"{FF4500}%s's Bank Account", AInfo[LookingAtAirline[playerid]][aName]);
				    format(msg,sizeof(msg),"%s has a total of $%d in their airline bank account.", AInfo[LookingAtAirline[playerid]][aName], AInfo[LookingAtAirline[playerid]][aBalance]);
				    ShowPlayerDialog(playerid, abank2, DIALOG_STYLE_MSGBOX, title, msg, "Back", "");
				    return 1;
				}
				case 1://Withdraw
				{
				    if(PInfo[playerid][Airline] == LookingAtAirline[playerid] && PInfo[playerid][AirlineRank] >= AInfo[PInfo[playerid][Airline]][pBnkPerm])
				    {
				        new msg[128];
				        format(msg,sizeof(msg),"Type the amount you wish to withdraw from the airline's bank account. (Balance: $%d)", AInfo[LookingAtAirline[playerid]][aBalance]);
						ShowPlayerDialog(playerid, abank3, DIALOG_STYLE_INPUT, "{FF4500}Withdraw from bank", msg, "Withdraw", "Back");
						return 1;
				    }
				    else
				    {
						SendClientMessage(playerid, COLOR_ERROR, "Either this is not your airline, or your rank is not high enough!");
						ShowBank(playerid);
						return 1;
				    }
				}
				case 2://Deposit
				{
				    if(PInfo[playerid][Airline] == LookingAtAirline[playerid] && PInfo[playerid][AirlineRank] >= AInfo[PInfo[playerid][Airline]][pBnkPerm])
				    {
				        new msg[128];
				        format(msg,sizeof(msg),"Type the amount you wish to deposit into the airline's bank account. (Balance: $%d)", AInfo[LookingAtAirline[playerid]][aBalance]);
						ShowPlayerDialog(playerid, abank4, DIALOG_STYLE_INPUT, "{FF4500}Deposit into bank", msg, "Deposit", "Back");
						return 1;
				    }
				    else
				    {
						SendClientMessage(playerid, COLOR_ERROR, "If you wish to give money to this airline, please use the donation feature instead.");
						ShowBank(playerid);
						return 1;
				    }
				}
	        }
	    }
		else
		{
		    DisplayDialogForPlayer(playerid, showit2);
		    return 1;
		}
	}
	if(dialogid == radio1)
	{
	    if(response)
	    {
	        if(!strcmp(inputtext, "Next Page"))
	        {
       			new	query[200],title[64];
       			Num1[playerid] += 11;
       			Num2[playerid] += 11;
				format(title,sizeof(title),"{FF4500}Radio Stations");
                format(query, sizeof(query), "SELECT `Name`, `ID`, `Hits` FROM `radio` ORDER BY `Hits` DESC LIMIT %d, 11", Num1[playerid]);
		        mysql_query(query);
		        mysql_store_result();
		        new tRows = mysql_num_rows();

		        new
		            szMessageString[1500], // 32 * 15 = 480, 1 extra character for \n
					sName[128],
					sHits,
					sID;

		        while(mysql_fetch_row(query))
		        {
		            sscanf(query, "p<|>s[128]dd", sName, sID, sHits);
		            //format(szMessageString, sizeof(szMessageString), "\n");
					format(szMessageString, sizeof(szMessageString), "%s[ID:%d] %s \t\t(%d Hits)\n", szMessageString, sID, sName, sHits);
		        }
				if(tRows > 11) { format(szMessageString,sizeof(szMessageString), "%sNext Page", szMessageString); }
				ShowPlayerDialog(playerid, radio1, DIALOG_STYLE_LIST, title, szMessageString, "Select", "Close");
 				mysql_free_result();
				return 1;
			}
	        else
	        {
				Num1[playerid] = 0;
				Num2[playerid] = 0;
				new name[128], shit[64], shit2[64];
				sscanf(inputtext, "s[64]s[128]s[64]", shit,name,shit2);
				ListeningToRadio[playerid] = 1;
				new query[256];
				format(query,sizeof(query),"SELECT URL FROM radio WHERE Name = '%s'", name);
				mysql_reconnect();
				mysql_query(query);
				mysql_store_result();
				mysql_retrieve_row();
				new url[256];
				mysql_get_field("URL",url);
				PlayAudioStreamForPlayer(playerid, url);
				mysql_free_result();
				format(query,sizeof(query),"You are now listening to: {FF4500}%s. {FFFFFF}[/cancelradio to turn off.]", name);
				SendClientMessage(playerid, COLOR_WHITE, query);
				format(query,sizeof(query),"UPDATE radio SET Hits = Hits + 1 WHERE Name = '%s'", name);
				mysql_query(query);
				return 1;
	        }
	    }
		Num1[playerid] = 0;
		Num2[playerid] = 0;
  		return 1;
	}
	if(dialogid == vipsounds1)
	{
	    if(response)
	    {
	        if(!strcmp(inputtext, "Next Page"))
	        {
       			new	query[200],title[64];
       			Num1[playerid] += 11;
       			Num2[playerid] += 11;
				format(title,sizeof(title),"{FF4500}VIP Sounds");
                format(query, sizeof(query), "SELECT `Name`, `ID`, `Hits` FROM `vipsounds` ORDER BY `Hits` DESC LIMIT %d, 11", Num1[playerid]);
		        mysql_query(query);
		        mysql_store_result();
		        new tRows = mysql_num_rows();

		        new
		            szMessageString[1500], // 32 * 15 = 480, 1 extra character for \n
					sName[128],
					sHits,
					sID;

		        while(mysql_fetch_row(query))
		        {
		            sscanf(query, "p<|>s[128]dd", sName, sID, sHits);
		            //format(szMessageString, sizeof(szMessageString), "\n");
					format(szMessageString, sizeof(szMessageString), "%s[ID:%d] %s \t\t(%d Hits)\n", szMessageString, sID, sName, sHits);
		        }
				if(tRows > 11) { format(szMessageString,sizeof(szMessageString), "%sNext Page", szMessageString); }
				ShowPlayerDialog(playerid, vipsounds1, DIALOG_STYLE_LIST, title, szMessageString, "Select", "Close");
 				mysql_free_result();
				return 1;
			}
	        else
	        {
				Num1[playerid] = 0;
				Num2[playerid] = 0;
				new name[128], shit[64], shit2[64];
				sscanf(inputtext, "s[64]s[128]s[64]", shit,name,shit2);
				ListeningToRadio[playerid] = 1;
				new query[256];
				format(query,sizeof(query),"SELECT URL,Message FROM vipsounds WHERE Name = '%s'", name);
				mysql_reconnect();
				mysql_query(query);
				mysql_store_result();
				mysql_retrieve_row();
				new url[256];
				new message[256];
				mysql_get_field("URL",url);
				mysql_get_field("Message",message);
    			for(new i = 0; i <MAX_PLAYERS; i++)
				{
					if(IsPlayerConnected(i))
					{
					    if(PInfo[i][sVIPSounds] == 0)
					    {
						    if(VIPSoundWarning[i] == 0) { SendClientMessage(i, COLOR_IRC, "[VIPSounds] If you do not want to hear these sounds, edit 'VIP Sounds' in your /preferences."); VIPSoundWarning[i] = 1; }
	                    	PlayAudioStreamForPlayer(i, url);
						}
						if(PInfo[i][sVIPSounds] == 2)
						{
						    if(ListeningToRadio[i] != 1)
						    {
						        PlayAudioStreamForPlayer(i, url);
						    }
						}
					}
				}
				format(query,sizeof(query),"*([VIP]%s(%d)) %s", PlayerName(playerid), playerid, GiveNameSpace(message)); //RemoveUnderScore
				SendClientMessageToAll(COLOR_VIP, query);
				mysql_free_result();
				format(query,sizeof(query),"UPDATE vipsounds SET Hits = Hits + 1 WHERE Name = '%s'", name);
				mysql_query(query);
				return 1;
	        }
	    }
		Num1[playerid] = 0;
		Num2[playerid] = 0;
  		return 1;
	}
	if(dialogid == namerequests1)
	{
	    if(response)
	    {
	        if(!strcmp(inputtext, "Next Page"))
	        {
       			new	query[200],title[64];
				format(title,sizeof(title),"{FF4500}Namechange Requests");
				format(query, sizeof(query), "SELECT NULL FROM namechanges");
				mysql_query(query);
				mysql_store_result();
				new tRows = mysql_num_rows();
				if(mysql_num_rows() > 0) {
			 		mysql_free_result();
					Num1[playerid]+= 12;
					Num2[playerid]+= 12;
		   			mysql_free_result();
		      		format(query, sizeof(query), "SELECT `cUsername`, `wUsername`, `ncID` FROM `namechanges` WHERE `Processed`=0 ORDER BY `ncID` DESC LIMIT %d, %d", Num1[playerid], Num2[playerid]);
		        	mysql_query(query);
		        	mysql_store_result();
			        new
		         		szMessageString[850], // 32 * 15 = 480, 1 extra character for \n
						ncID,
						wUsername[MAX_PLAYER_NAME],
						cUsername[MAX_PLAYER_NAME];
		        	while(mysql_fetch_row(query))
			        {
		         		sscanf(query, "p<|>s[128]s[128]d", cUsername, wUsername, ncID);
		           		//format(szMessageString, sizeof(szMessageString), "\n");
						format(szMessageString, sizeof(szMessageString), "%s%d | %s (Wants: %s)\n", szMessageString, ncID, cUsername, wUsername);
					}
					if(tRows >= 12) { format(szMessageString,sizeof(szMessageString), "%sNext Page", szMessageString); }
					ShowPlayerDialog(playerid, namerequests1, DIALOG_STYLE_LIST, title, szMessageString, "Select", "Back");
					mysql_free_result();
					return 1;
		        }
		        else
		        {
		            mysql_free_result();
		            SendClientMessage(playerid, COLOR_ERROR, "There are no active namechange requests!");
		            return 1;
		        }
	        }
	        else
	        {
 				new title[64];
				new msg[250];
				format(title,sizeof(title),"{FF4500}Select an option..");
				format(msg,sizeof(msg),"{FF4500}Reject application\n{FFFFFF}Approve application");
	            ShowPlayerDialog(playerid, namerequests2, DIALOG_STYLE_LIST, title, msg, "Submit", "Back");
				Num1[playerid] = 0;
				Num2[playerid] = 0;
				sscanf(inputtext, "d", NameChangeRequest[playerid]);
				return 1;
	        }
	    }
	}
	if(dialogid == amembers1)
	{
	    if(response)
	    {
	        if(!strcmp(inputtext, "Next Page"))
	        {
       			new	query[200],title[64];
       			Num1[playerid] += 12;
       			Num2[playerid] += 12;
				format(title,sizeof(title),"{FF4500}Airline Member List");
                format(query, sizeof(query), "SELECT `airlinerank`, `username`, `earntforairline`, `airlineflights` FROM `users` WHERE `airline`='%d' ORDER BY `airlinerank` DESC LIMIT %d, 12", LookingAtAirline[playerid], Num1[playerid]);
		        mysql_query(query);
		        mysql_store_result();
		        new tRows = mysql_num_rows();

		        new
		            szMessageString[850], // 32 * 15 = 480, 1 extra character for \n
		            iAirlineRank,
		            iEarnAmount,
		            iMissions,
		            szUsername[MAX_PLAYER_NAME];

		        while(mysql_fetch_row(query))
		        {
		            sscanf(query, "p<|>ds[24]dd", iAirlineRank, szUsername, iEarnAmount, iMissions);
		            //format(szMessageString, sizeof(szMessageString), "\n");
		            switch(iAirlineRank) {
						case 1: {
						    format(szMessageString, sizeof(szMessageString), "%s{FCF804}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissions);
						}
						case 2: {
						    format(szMessageString, sizeof(szMessageString), "%s{04FC3E}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissions);
						}
						case 3: {
						    format(szMessageString, sizeof(szMessageString), "%s{04EFFC}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissions);
						}
						case 4: {
						    format(szMessageString, sizeof(szMessageString), "%s{0404FC}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissions);
						}
						case 5: {
						    format(szMessageString, sizeof(szMessageString), "%s{FC04F3}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissions);
						}
						case 6: {
						    format(szMessageString, sizeof(szMessageString), "%s{FC0404}%s (earnt $%d for airline) (%d flights)\n", szMessageString, szUsername, iEarnAmount, iMissions);
						}
					}
		        }
				if(tRows >= 12) { format(szMessageString,sizeof(szMessageString), "%sNext Page", szMessageString); }
				ShowPlayerDialog(playerid, amembers1, DIALOG_STYLE_LIST, title, szMessageString, "Select", "Back");
 				mysql_free_result();
				return 1;
			}
	        if(PInfo[playerid][Airline] == LookingAtAirline[playerid] && PInfo[playerid][AirlineRank] >= AInfo[PInfo[playerid][Airline]][pRmvMembers])
	        {
				new title[64];
				new msg[250];
				format(title,sizeof(title),"{FF4500}Select an option..");
				format(msg,sizeof(msg),"{FF4500}Remove member\n{FFFFFF}Set rank to 1\n{FF4500}Set rank to 2\n{FFFFFF}Set rank to 3\n{FF4500}Set rank to 4\n{FFFFFF}Set rank to 5");
	            ShowPlayerDialog(playerid, editmember1, DIALOG_STYLE_LIST, title, msg, "Edit", "Back");
				Num1[playerid] = 0;
				Num2[playerid] = 0;
				new name[24], rest[64];
				sscanf(inputtext, "s[24]s[64]", name, rest);
				strmid(EditingMember[playerid], name, 0, strlen(name), 24); //Who am i editing?
				return 1;
	        }
	        else
	        {
	            ShowMembers(playerid);
				Num1[playerid] = 0;
				Num2[playerid] = 0;
	            return 1;
	        }
	    }
	    else
	    {
			Num1[playerid] = 0;
			Num2[playerid] = 0;
	    	DisplayDialogForPlayer(playerid, showit2);
	        return 1;
	    }
	}
	if(dialogid == adonation1) // Check the donation amount
	{
	    if(response)
	    {
	    	if(strlen(inputtext))
		    {
		        new amount = strval(inputtext);
		        if(amount < 0 || amount > 5000000 || amount == 0)
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "Donation must be over $1 and below $5,000,000!");
		            ShowDonations(playerid);
		            return 1;
		        }
		        if(amount > PInfo[playerid][Money])
		        {
		            SendClientMessage(playerid, COLOR_ERROR, "You do not have that much money to donate !");
					ShowDonations(playerid);
					return 1;
		        }
				PInfo[playerid][Money]=PInfo[playerid][Money]-amount;
				AInfo[LookingAtAirline[playerid]][aBalance] = AInfo[LookingAtAirline[playerid]][aBalance]+amount;
				GivePlayerMoney(playerid, -amount);
				SaveAccount(playerid);
				SaveAirline(LookingAtAirline[playerid]);
				new msg[156];
				format(msg,sizeof(msg),"* %s(%d) has donated $%d to the airline!", PlayerName(playerid),playerid,amount);
				SendAirlineMessage(COLOR_AIRLINECHAT, msg, LookingAtAirline[playerid]);
				format(msg,sizeof(msg),"Your donation of $%d was successful!", amount);
				PlayerNotice(playerid, msg);
				PayLog(PlayerName(playerid), amount, "Donated to Airline", AInfo[LookingAtAirline[playerid]][aName], "N/A");
				return 1;
		    }
		    else
		    {
				SendClientMessage(playerid, COLOR_ERROR, "An error occured. Please try again.");
				ShowDonations(playerid);
		        return 1;
		    }
	    }
	    else
	    {
	        DisplayDialogForPlayer(playerid, showit2);
	        return 1;
	    }
	}
	if(dialogid == astats)
	{
	    if(response)
	    {
	        //Do nothing
	    }
	    else
	    {
			DisplayDialogForPlayer(playerid, showit2);
			return 1;
	    }
	}
	if(dialogid == showit2)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
				case 0: //information and stats
				{
				    ShowAirlineStats(playerid);
				    return 1;
				}
				case 1:
				{
				    ShowDonations(playerid);
				    return 1;
				}
				case 2:
				{
				    ShowMembers(playerid);
				    return 1;
				}
				case 3://fleet
				{
				    ShowFleet(playerid);
				    return 1;
				}
				case 4://bank account
				{
				    ShowBank(playerid);
				    return 1;
				}
				case 5://airline settings
				{
				    ShowSettings(playerid);
					return 1;
				}
	        }
	    }
	    else
	    {
	        ShowAirlines(playerid);
	        return 1;
	    }
	}
	if(dialogid == aselect) //Airline list - Dialog style_list
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0: //Airline 1.
	            {
	                LookingAtAirline[playerid] = 1;
					DisplayDialogForPlayer(playerid, showit2);
					return 1;
	            }
	            case 1: //Airline 2.
	            {
	            	LookingAtAirline[playerid] = 2;
					DisplayDialogForPlayer(playerid, showit2);
					return 1;
	            }
	            case 2: //Airline 3.
	            {
	                LookingAtAirline[playerid] = 3;
					DisplayDialogForPlayer(playerid, showit2);
					return 1;
	            }
	            case 3: //Airline 4.
	            {
	                LookingAtAirline[playerid] = 4;
					DisplayDialogForPlayer(playerid, showit2);
					return 1;
	            }
	            case 4: //Airline 5.
	            {
	                LookingAtAirline[playerid] = 5;
					DisplayDialogForPlayer(playerid, showit2);
					return 1;
	            }
	        }
	    }
	    else
	    {
	        return 1;
	    }
	}
    if(dialogid == 1) //LOGIN
    {
		if(PlayerLogged[playerid] == 1)
		{
			SendClientMessage(playerid, COLOR_YELLOW, "You are already logged in !");
			return 1;
		}
		if(response)
		{
		    if(!strlen(inputtext))
		    {
		        DisplayDialogForPlayer(playerid, 1); //login
				SendClientMessage(playerid, COLOR_YELLOW, "You must enter a password !");
				return 1;
			}
			if(strlen(inputtext) >= 50)
			{
			    DisplayDialogForPlayer(playerid, 1); //login
				SendClientMessage(playerid, COLOR_YELLOW, "That password is too long !");
				return 0;
			}
	        new tmppass[64];
	        //Store Player ID & TMP pass in echo to find string used to crash server
	        strmid(tmppass, inputtext, 0, strlen(inputtext), 255);
	        PlayerLogin(playerid,tmppass);
		}
        else
        {
            SessionStatus[playerid] = 3;
            SendClientMessage(playerid, COLOR_SECURITY, "You have decided to quit. You have been kicked."); //login
            Kick(playerid);
        }
    }
    if(dialogid == 2) //REGISTER
    {
        if(PlayerLogged[playerid] == 1)
		{
			SendClientMessage(playerid, COLOR_ERROR, "You are already logged in !");
			return 1;
		}
		if(response)
		{
		    if(strlen(inputtext) >= 50)
			{
			    DisplayDialogForPlayer(playerid, 2); //register
				SendClientMessage(playerid, COLOR_ERROR, "Password is too long !");
				return 0;
			}
		    new sendername[MAX_PLAYER_NAME];
			GetPlayerName(playerid, sendername, sizeof(sendername));
			{
			    if(!strlen(inputtext))
		    	{
			        DisplayDialogForPlayer(playerid, 2); //register
					SendClientMessage(playerid, COLOR_ERROR, "Please enter a password for your account !");
					return 1;
				}
   				mysql_reconnect();
				new Query[90], EscName[MAX_PLAYER_NAME];
				mysql_real_escape_string(PlayerName(playerid), EscName);
				format(Query, sizeof(Query), "SELECT * FROM `users` WHERE `username` = '%s'", EscName);
				mysql_query(Query);
				mysql_store_result();
				if(mysql_num_rows() != 0)
				{
	    			mysql_free_result();
					SendClientMessage(playerid, COLOR_ERROR, "Name already registered. Please choose a different name !");
					return 1;
				}
				else
				{
					RegisterAccount(playerid,inputtext);
					JustRegistered[playerid] = 1;
					new tPlayers = 0;
					mysql_query("SELECT NULL from `users`");
					mysql_store_result();
					tPlayers = mysql_num_rows();
					mysql_free_result();
					new login[156];
					format(login, sizeof(login), "{FF4500}%s (%d) {FFFFFF}has created an account. (%d total accounts)", PlayerName(playerid), playerid, tPlayers);
					for(new i = 0; i <MAX_PLAYERS; i++)
					{
						if(IsPlayerConnected(i))
						{
						    if(PInfo[i][sConnectionMessages] == 0)
						    {
								SendClientMessage(i, COLOR_YELLOW, login);
							}
						}
					}
					SendClientMessage(playerid, COLOR_MESSAGE, "Your account has been successfully registered.");
					PlayerLogin(playerid,inputtext);
				    SetPlayerVirtualWorld(playerid, 0);
                	mysql_free_result();
				}
			}
		}
		else
		{
		    DisplayDialogForPlayer(playerid, 2); //register
		}
    }
    if(dialogid == 55)
    {
        if(response == 1)
        {
            switch(listitem)
            {
                case 0: //Area 51
                {
                    PurelySpawned[playerid] = 1;
                    PlayerSpawned[playerid] = 1;
                    SetPlayerPos(playerid, 284.7716,2006.5258,17.6406);
                    SetPlayerVirtualWorld(playerid, 0);
                    SetCameraBehindPlayer(playerid);
                    UpdatePlayerColour(playerid);
                }
                case 1: //SF Carrier
                {
                    PurelySpawned[playerid] = 1;
                    PlayerSpawned[playerid] = 1;
                    SetPlayerPos(playerid, -1347.7432,496.9248,18.2344);
                    SetPlayerVirtualWorld(playerid, 0);
                    SetCameraBehindPlayer(playerid);
                    UpdatePlayerColour(playerid);
                }
            }
        }
    }
    if(dialogid == 3)
    {
        if(response == 1)
        {
            switch(listitem)
            {
                case 0: //LS
                {
                    PurelySpawned[playerid] = 1;
                    PlayerSpawned[playerid] = 1;
                    SetPlayerPos(playerid, 1995.8832,-2404.4670,13.5469);
                    SetPlayerInterior(playerid, 0);
                    SetPlayerVirtualWorld(playerid, 0);
                   	PlayerSpawned[playerid] = 1;
         			SetCameraBehindPlayer(playerid);
         			SelectedSpawn[playerid] = 1;
         			UpdatePlayerColour(playerid);
                }
                case 1: //SF
                {
                    PurelySpawned[playerid] = 1;
                    PlayerSpawned[playerid] = 1;
                    SetPlayerPos(playerid, -1271.2513,27.9126,14.1484);
                    SetPlayerInterior(playerid, 0);
                    SetPlayerVirtualWorld(playerid, 0);
                   	PlayerSpawned[playerid] = 1;
         			SetCameraBehindPlayer(playerid);
         			SelectedSpawn[playerid] = 2;
         			UpdatePlayerColour(playerid);
                }
                case 2: //LV
                {
                    PurelySpawned[playerid] = 1;
                    PlayerSpawned[playerid] = 1;
                	SetPlayerPos(playerid, 1319.0020,1256.3958,10.8436);
                    SetPlayerInterior(playerid, 0);
                    SetPlayerVirtualWorld(playerid, 0);
                   	PlayerSpawned[playerid] = 1;
               		SetCameraBehindPlayer(playerid);
               		SelectedSpawn[playerid] = 3;
               		UpdatePlayerColour(playerid);
                }
            }
        }
        else
        {
            SendClientMessage(playerid, COLOR_ERROR, "You must select a spawn area to start playing!");
			DisplayDialogForPlayer(playerid, 3);
			return 1;
        }
    }
    if(dialogid == 4)
    {
        if(response == 1)
        {
            switch(listitem)
            {
                case 0://pilot
                {
                    ShowPlayerDialog(playerid,5030,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location", "{FF4500}Los Santos\n{FFFFFF}San Fierro\n{FF4500}Las Venturas", "Spawn", "Cancel");
                    gTeam[playerid] = TEAM_CPILOT;
                    SetCameraBehindPlayer(playerid);
					TogglePlayerControllable(playerid, 1);
					PlayerSpawned[playerid] = 1;
					UpdateSkin(playerid);
					UpdatePlayerColour(playerid);
					SetPlayerColor(playerid, TEAM_CPILOT);
					ChosenClass[playerid] = 1; //PILOT
					//PlayerTextDrawShow(playerid, fuel000);
					return 1;
                }
                case 1://trucker
                {
                    PlayerSpawned[playerid] = 1;
                    ChosenClass[playerid] = 1;
                    SetCameraBehindPlayer(playerid);
                    gTeam[playerid] = TEAM_CTRUCK;
                    UpdateSkin(playerid);
                    UpdatePlayerColour(playerid);
                    SetPlayerColor(playerid, TEAM_CTRUCK);
                    ShowPlayerDialog(playerid,10000,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location", "{FF4500}Los Santos\n{FFFFFF}San Fierro\n{FF4500}Las Venturas", "Spawn", "Cancel");
                    return 1;
                }
               	case 2://military
                {
                    if(GetPlayerScore(playerid) >= 50)
                    {
                    ShowPlayerDialog(playerid,5555,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location.", "{FF4500}Area 51\n{FFFFFF}San Fierro Carrier", "Spawn", "Cancel");
                    gTeam[playerid] = TEAM_MILITARY;
					PlayerSpawned[playerid] = 1;
					SetCameraBehindPlayer(playerid);
                    ChosenClass[playerid] = 1;
                    UpdateSkin(playerid);
                    UpdatePlayerColour(playerid);
                    //PlayerTextDrawShow(playerid, fuel000);
                    SetPlayerColor(playerid, TEAM_MILITARY);
					return 1;
					}
                    else
                    {
                    DisplayDialogForPlayer(playerid, 4);
                    SendClientMessage(playerid,COLOR_ERROR,"* You does not meet required score");
                    return 1;
                    }
                }
            }
        }
        else
        {
            SendClientMessage(playerid, COLOR_ERROR, "You must select a class before playing!");
			DisplayDialogForPlayer(playerid, 4);
            return 1;
        }
    }
    if(dialogid == 6) // Select statistics
    {
        if(response == 1)
        {
            switch(listitem)
            {
                case 0://Account stats
                {
                    new title[128], text[512], VIPSTATUS[50], pIP[52], pEMAIL[52];
					if(PInfo[LookingAtStats[playerid]][Vip] == 0) { VIPSTATUS = "Not VIP"; }
					else if(PInfo[LookingAtStats[playerid]][Vip] == 1) { VIPSTATUS = "VIP Member"; }
					if(LookingAtStats[playerid] == playerid) { format(pIP,sizeof(pIP),"%s",PInfo[playerid][IP]); } else { format(pIP,sizeof(pIP), "- Error -"); }
					if(LookingAtStats[playerid] == playerid) { format(pEMAIL,sizeof(pEMAIL),"%s",PInfo[playerid][Email]); } else { format(pEMAIL,sizeof(pEMAIL),"- Error -"); }
				    format(title,sizeof(title),"{FF4500}Account Statistics(%s(%d))", PlayerName(LookingAtStats[playerid]), LookingAtStats[playerid]);
				    format(text,sizeof(text),"{FF4500}[Account]\n{FFFFFF}Username: {FF4500}%s\n{FFFFFF}Register Date: {FF4500}%s\n{FFFFFF}Online Time: {FF4500}%d hours and %d minutes\n{FFFFFF}Last Login: {FF4500}%s\n{FFFFFF}IP Address: {FF4500}%s\n{FFFFFF}Email Address: {FF4500}%s\n{FFFFFF}VIP Status: {FF4500}%s",
					PlayerName(LookingAtStats[playerid]),PInfo[LookingAtStats[playerid]][RegisterDate],PInfo[LookingAtStats[playerid]][HoursPlayed],PInfo[LookingAtStats[playerid]][MinsPlayed],PInfo[LookingAtStats[playerid]][LastLogin],pIP,pEMAIL,VIPSTATUS);
				    ShowPlayerDialog(playerid, 7, DIALOG_STYLE_MSGBOX, title, text, "Done", "");
                }
                case 1://General stats
                {
					new title[128], text[512];
				    format(title,sizeof(title),"{FF4500}General Statistics(%s(%d))", PlayerName(LookingAtStats[playerid]), LookingAtStats[playerid]);
				    format(text,sizeof(text),"{FF4500}[Statistics]\n{FFFFFF}Callsign: {FF4500}%s\n{FFFFFF}Total Money: {FF4500}$%d\n{FFFFFF}Flights completed: {FF4500}%d\n{FFFFFF}Total earned from working: {FF4500}$%d\n{FFFFFF}Total earned for airline: {FF4500}$%d\n{FFFFFF}Total flights for airline: {FF4500}%d\n{FFFFFF}Total distance flown: {FF4500}%d miles",
					PInfo[LookingAtStats[playerid]][Callsign],PInfo[LookingAtStats[playerid]][Money],PInfo[LookingAtStats[playerid]][TotalJobs],PInfo[LookingAtStats[playerid]][EarntFromWorking],PInfo[LookingAtStats[playerid]][EarntForAirline],PInfo[LookingAtStats[playerid]][AirlineFlights],PInfo[LookingAtStats[playerid]][FlownDistance]);
				    ShowPlayerDialog(playerid, 8, DIALOG_STYLE_MSGBOX, title, text, "Done", "");
                }
                case 2://Vehicle stats
                {
                	new title[128], text[1024];
				    format(title,sizeof(title),"{FF4500}Vehicle Statistics(%s(%d)) [1/2]", PlayerName(LookingAtStats[playerid]), LookingAtStats[playerid]);
				    format(text,sizeof(text),"{FF4500}[Vehicle Statistics]\n{FFFFFF}AT400: {FF4500}%d\n{FFFFFF}Andromada: {FF4500}%d\n{FFFFFF}Shamal: {FF4500}%d\n{FFFFFF}Dodo: {FF4500}%d\n{FFFFFF}Beagle: {FF4500}%d\n{FFFFFF}Nevada: {FF4500}%d\n{FFFFFF}Cropduster: {FF4500}%d\n{FFFFFF}Hydra: {FF4500}%d\n{FFFFFF}Hunter: {FF4500}%d\n{FFFFFF}Cargobob: {FF4500}%d",
					PInfo[LookingAtStats[playerid]][AT400F],PInfo[LookingAtStats[playerid]][ANDROF],PInfo[LookingAtStats[playerid]][SHAMALF],PInfo[LookingAtStats[playerid]][DODOF],PInfo[LookingAtStats[playerid]][BEAGLEF],PInfo[LookingAtStats[playerid]][NEVADAF],PInfo[LookingAtStats[playerid]][CROPDUSTERF],
					PInfo[LookingAtStats[playerid]][HYDRAF],PInfo[LookingAtStats[playerid]][HUNTERF],PInfo[LookingAtStats[playerid]][CARGOBOBF],PInfo[LookingAtStats[playerid]][SKIMMERF],PInfo[LookingAtStats[playerid]][STUNTF],PInfo[LookingAtStats[playerid]][MAVERICKF],PInfo[LookingAtStats[playerid]][NMAVERICKF],PInfo[LookingAtStats[playerid]][RAINDANCEF]);
				    ShowPlayerDialog(playerid, 9, DIALOG_STYLE_MSGBOX, title, text, "Next Page", "Cancel");
                }
            }
        }
        else
        {
            return 1;
        }
    }
    // Classes
    if(dialogid == 5555)
    {
        if(response == 1)
        {
            switch(listitem)
            {
                case 0: //Area 51
                {
                    //PurelySpawned[playerid] = 1;
                    //PlayerSpawned[playerid] = 1;
                    SetPlayerPos(playerid, 284.7716,2006.5258,17.6406);
                    SetPlayerFacingAngle( playerid, 270 ); //Player faces north
                    SetCameraBehindPlayer(playerid);
                    //UpdatePlayerColour(playerid);
                }
                case 1: //SF Carrier
                {
                    //PurelySpawned[playerid] = 1;
                    //PlayerSpawned[playerid] = 1;
                    SetPlayerPos(playerid, -1347.7432,496.9248,18.2344);
                    SetPlayerFacingAngle( playerid, 0 ); //Player faces north
                    SetCameraBehindPlayer(playerid);
                    //UpdatePlayerColour(playerid);
                }
            }
        }
        else
		{
		    SendClientMessage(playerid, COLOR_ERROR, "You must select a spawn area to start playing!");
			ShowPlayerDialog(playerid,5555,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location.", "{FF4500}Area 51\n{FFFFFF}San Fierro Carrier", "Spawn", "Cancel");
			return 1;
		}
    }
    if(dialogid == 5030)
    {
        if(response == 1)
        {
            switch(listitem)
            {
                case 0: //LS
                {
                    SetPlayerPos(playerid, 1995.8832,-2404.4670,13.5469);
                    SetPlayerFacingAngle( playerid, 90 );
         			SetCameraBehindPlayer(playerid);
         			//SelectedSpawn[playerid] = 1;
                }
                case 1: //SF
                {
                    //PurelySpawned[playerid] = 1;
                    //PlayerSpawned[playerid] = 1;
                    SetPlayerPos(playerid, -1271.2513,27.9126,14.1484);
                    SetPlayerFacingAngle( playerid, 180 ); //Player faces north
                    //SetPlayerInterior(playerid, 0);
                    //SetPlayerVirtualWorld(playerid, 0);
                   	//PlayerSpawned[playerid] = 1;
         			SetCameraBehindPlayer(playerid);
         			//SelectedSpawn[playerid] = 2;
         			//UpdatePlayerColour(playerid);
                }
                case 2: //LV
                {
                    //PurelySpawned[playerid] = 1;
                    //PlayerSpawned[playerid] = 1;
                    SetPlayerPos(playerid, 1319.0020,1256.3958,10.8436);
                	SetPlayerFacingAngle( playerid, 0 ); //Player faces north
                    //SetPlayerInterior(playerid, 0);
                    //SetPlayerVirtualWorld(playerid, 0);
                   	//PlayerSpawned[playerid] = 1;
               		SetCameraBehindPlayer(playerid);
               		//SelectedSpawn[playerid] = 3;
               		//UpdatePlayerColour(playerid);
                }
            }
        }
        else
        {
            SendClientMessage(playerid, COLOR_ERROR, "You must select a spawn area to start playing!");
			ShowPlayerDialog(playerid,5030,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location", "{FF4500}Los Santos\n{FFFFFF}San Fierro\n{FF4500}Las Venturas", "Spawn", "Cancel");
			return 1;
        }
    }
    if(dialogid == 10000) // Select statistics
    {
        if(response == 1)
        {
            switch(listitem)
            {
                case 0:
                {
                    SetPlayerPos(playerid, 2166.3354,-2305.2957,13.5469);
                    SetPlayerFacingAngle( playerid, 0 ); //Player faces north
                    SetCameraBehindPlayer(playerid);
                }
                case 1:
                {
					SetPlayerPos(playerid, -1840.7343,146.1161,15.1172);
					SetPlayerFacingAngle( playerid, 180 ); //Player faces north
					SetCameraBehindPlayer(playerid);

                }
                case 2:
                {
                	SetPlayerPos(playerid, 1077.9312,1876.2749,10.8203);
                    SetPlayerFacingAngle( playerid, 0 ); //Player faces north
                    SetCameraBehindPlayer(playerid);
                }
            }
        }
        else
        {
            SendClientMessage(playerid, COLOR_ERROR, "You must select a spawn area to start playing!");
			ShowPlayerDialog(playerid,10000,DIALOG_STYLE_LIST,"{FFFFFF}Select Spawn Location", "{FF4500}Los Santos\n{FFFFFF}San Fierro\n{FF4500}Las Venturas", "Spawn", "Cancel");
			return 1;
        }
    }
    if(dialogid == 9)//page 1/2 vehicle stats
    {
        if(response == 1)
        {
            new title[128], text[512];
            format(title,sizeof(title),"{FF4500}Vehicle Statistics(%s(%d)) [2/2]", PlayerName(LookingAtStats[playerid]), LookingAtStats[playerid]);
            format(text,sizeof(text),"{FFFFFF}Skimmer: {FF4500}%d\n{FFFFFF}Stuntplane: {FF4500}%d\n{FFFFFF}Maverick: {FF4500}%d\n{FFFFFF}News Maverick: {FF4500}%d\n{FFFFFF}Raindance: {FF4500}%d\n{FFFFFF}Trucking: {FF4500}%d",
            PInfo[LookingAtStats[playerid]][SKIMMERF],PInfo[LookingAtStats[playerid]][STUNTF],PInfo[LookingAtStats[playerid]][MAVERICKF],PInfo[LookingAtStats[playerid]][NMAVERICKF],PInfo[LookingAtStats[playerid]][RAINDANCEF],PInfo[LookingAtStats[playerid]][TRUCKERF]);
            ShowPlayerDialog(playerid, 10, DIALOG_STYLE_MSGBOX, title, text, "Done", "");
        }
        else
        {
		}
    }
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	LookingAtStats[playerid] = clickedplayerid;
 	ShowPlayerDialog(playerid, 6, DIALOG_STYLE_LIST, "Select statistics to show ..", "{FF4500}Account Statistics\n{FFFFFF}General Statistics\n{FF4500}Vehicle Statistics", "Choose", "Cancel");
	return 1;
}
