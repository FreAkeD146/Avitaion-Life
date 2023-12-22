// Textdraws

new TDLoaded[MAX_PLAYERS];
//Panel..
new Text:gpsloc[MAX_PLAYERS];
new Text:gpsbox[MAX_PLAYERS];
new Text:destloc[MAX_PLAYERS];
new Text:gpshead[MAX_PLAYERS];
new Text:desthead[MAX_PLAYERS];
new Text:destbox[MAX_PLAYERS];
new Text:fuelcount[MAX_PLAYERS];
new Text:fuel[MAX_PLAYERS];
new Text:vhealthcount1[MAX_PLAYERS];
new Text:vhealthcount[MAX_PLAYERS];
new Text:speedcount[MAX_PLAYERS];
new Text:speedbox[MAX_PLAYERS];
new Text:speedhead[MAX_PLAYERS];
new Text:altcount[MAX_PLAYERS];
new Text:altitude[MAX_PLAYERS];
new Text:fuelbox[MAX_PLAYERS];
new Text:TextdrawNotice[MAX_PLAYERS];
new Text:TextdrawNoticeText[MAX_PLAYERS];

//forwards
forward LoadTextdraws();
forward UnloadTextdraws(playerid);
forward PlayerNotice(playerid,notice[]);
forward HideNotice(playerid);

public UnloadTextdraws(playerid)
{
	TextDrawHideForPlayer(playerid, destloc[playerid]);
	TextDrawHideForPlayer(playerid, gpshead[playerid]);
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
public LoadTextdraws()
{
	for(new playerid = 0; playerid <MAX_PLAYERS; playerid++)
	{
		TDLoaded[playerid] = 1;
		TextdrawNotice[playerid] = TextDrawCreate(28.000000, 176.000000, "NOTICE");
		TextDrawFont(TextdrawNotice[playerid], 3);
		TextDrawLetterSize(TextdrawNotice[playerid], 0.508331, 1.649999);
		TextDrawTextSize(TextdrawNotice[playerid], 54.000000, 18.000000);
		TextDrawSetOutline(TextdrawNotice[playerid], 0);
		TextDrawSetShadow(TextdrawNotice[playerid], 2);
		TextDrawAlignment(TextdrawNotice[playerid], 1);
		TextDrawColor(TextdrawNotice[playerid], -16776961);
		TextDrawBackgroundColor(TextdrawNotice[playerid], 255);
		TextDrawBoxColor(TextdrawNotice[playerid], 70);
		TextDrawUseBox(TextdrawNotice[playerid], 0);
		TextDrawSetProportional(TextdrawNotice[playerid], 1);
		TextDrawSetSelectable(TextdrawNotice[playerid], 0);
		//Create second one
		TextdrawNoticeText[playerid] = TextDrawCreate(27.000000, 191.000000, "Empty");
		TextDrawFont(TextdrawNoticeText[playerid], 2);
		TextDrawLetterSize(TextdrawNoticeText[playerid], 0.208333, 1.249997);
		TextDrawTextSize(TextdrawNoticeText[playerid], 143.000000, 127.500000);
		TextDrawSetOutline(TextdrawNoticeText[playerid], 1);
		TextDrawSetShadow(TextdrawNoticeText[playerid], 0);
		TextDrawAlignment(TextdrawNoticeText[playerid], 1);
		TextDrawColor(TextdrawNoticeText[playerid], -1);
		TextDrawBackgroundColor(TextdrawNoticeText[playerid], 255);
		TextDrawBoxColor(TextdrawNoticeText[playerid], 150);
		TextDrawUseBox(TextdrawNoticeText[playerid], 1);
		TextDrawSetProportional(TextdrawNoticeText[playerid], 1);
		TextDrawSetSelectable(TextdrawNoticeText[playerid], 0);
		//PANEL.
		gpsloc[playerid] = TextDrawCreate(210.000000, 358.000000, "Los Santos Airport Gate A");
		TextDrawFont(gpsloc[playerid], 2);
		TextDrawLetterSize(gpsloc[playerid], 0.174998, 0.949999);
		TextDrawTextSize(gpsloc[playerid], 242.500000, 72.000000);
		TextDrawSetOutline(gpsloc[playerid], 0);
		TextDrawSetShadow(gpsloc[playerid], 1);
		TextDrawAlignment(gpsloc[playerid], 2);
		TextDrawColor(gpsloc[playerid], -1);
		TextDrawBackgroundColor(gpsloc[playerid], 255);
		TextDrawBoxColor(gpsloc[playerid], 190);
		TextDrawUseBox(gpsloc[playerid], 0);
		TextDrawSetProportional(gpsloc[playerid], 1);
		TextDrawSetSelectable(gpsloc[playerid], 0);

		gpsbox[playerid] = TextDrawCreate(210.000000, 340.000000, "_");
		TextDrawFont(gpsbox[playerid], 1);
		TextDrawLetterSize(gpsbox[playerid], 0.600000, 4.599997);
		TextDrawTextSize(gpsbox[playerid], 298.500000, 75.000000);
		TextDrawSetOutline(gpsbox[playerid], 1);
		TextDrawSetShadow(gpsbox[playerid], 0);
		TextDrawAlignment(gpsbox[playerid], 2);
		TextDrawColor(gpsbox[playerid], -1);
		TextDrawBackgroundColor(gpsbox[playerid], 255);
		TextDrawBoxColor(gpsbox[playerid], 205);
		TextDrawUseBox(gpsbox[playerid], 1);
		TextDrawSetProportional(gpsbox[playerid], 1);
		TextDrawSetSelectable(gpsbox[playerid], 0);

		gpshead[playerid] = TextDrawCreate(210.000000, 338.000000, "GPS");
		TextDrawFont(gpshead[playerid], 2);
		TextDrawLetterSize(gpshead[playerid], 0.366665, 1.649999);
		TextDrawTextSize(gpshead[playerid], 54.000000, 18.000000);
		TextDrawSetOutline(gpshead[playerid], 0);
		TextDrawSetShadow(gpshead[playerid], 0);
		TextDrawAlignment(gpshead[playerid], 2);
		TextDrawColor(gpshead[playerid], -16776961);
		TextDrawBackgroundColor(gpshead[playerid], 255);
		TextDrawBoxColor(gpshead[playerid], 70);
		TextDrawUseBox(gpshead[playerid], 0);
		TextDrawSetProportional(gpshead[playerid], 1);
		TextDrawSetSelectable(gpshead[playerid], 0);

		destbox[playerid] = TextDrawCreate(324.000000, 394.000000, "_");
		TextDrawFont(destbox[playerid], 1);
		TextDrawLetterSize(destbox[playerid], 0.720833, 1.399996);
		TextDrawTextSize(destbox[playerid], 343.500000, 302.500000);
		TextDrawSetOutline(destbox[playerid], 1);
		TextDrawSetShadow(destbox[playerid], 0);
		TextDrawAlignment(destbox[playerid], 2);
		TextDrawColor(destbox[playerid], -1);
		TextDrawBackgroundColor(destbox[playerid], 255);
		TextDrawBoxColor(destbox[playerid], 205);
		TextDrawUseBox(destbox[playerid], 1);
		TextDrawSetProportional(destbox[playerid], 1);
		TextDrawSetSelectable(destbox[playerid], 0);

		desthead[playerid] = TextDrawCreate(224.000000, 393.000000, "Destination:");
		TextDrawFont(desthead[playerid], 2);
		TextDrawLetterSize(desthead[playerid], 0.366665, 1.649999);
		TextDrawTextSize(desthead[playerid], 54.000000, 18.000000);
		TextDrawSetOutline(desthead[playerid], 0);
		TextDrawSetShadow(desthead[playerid], 0);
		TextDrawAlignment(desthead[playerid], 2);
		TextDrawColor(desthead[playerid], -16776961);
		TextDrawBackgroundColor(desthead[playerid], 255);
		TextDrawBoxColor(desthead[playerid], 70);
		TextDrawUseBox(desthead[playerid], 0);
		TextDrawSetProportional(desthead[playerid], 1);
		TextDrawSetSelectable(desthead[playerid], 0);

		destloc[playerid] = TextDrawCreate(277.000000, 395.000000, "Palomino Creek Airport Gate 5");
		TextDrawFont(destloc[playerid], 2);
		TextDrawLetterSize(destloc[playerid], 0.212497, 1.249998);
		TextDrawTextSize(destloc[playerid], 470.000000, 248.500000);
		TextDrawSetOutline(destloc[playerid], 0);
		TextDrawSetShadow(destloc[playerid], 1);
		TextDrawAlignment(destloc[playerid], 1);
		TextDrawColor(destloc[playerid], -1);
		TextDrawBackgroundColor(destloc[playerid], 255);
		TextDrawBoxColor(destloc[playerid], 190);
		TextDrawUseBox(destloc[playerid], 0);
		TextDrawSetProportional(destloc[playerid], 1);
		TextDrawSetSelectable(destloc[playerid], 0);

		fuelbox[playerid] = TextDrawCreate(436.000000, 340.000000, "_");
		TextDrawFont(fuelbox[playerid], 1);
		TextDrawLetterSize(fuelbox[playerid], 0.608332, 4.599997);
		TextDrawTextSize(fuelbox[playerid], 298.500000, 79.000000);
		TextDrawSetOutline(fuelbox[playerid], 1);
		TextDrawSetShadow(fuelbox[playerid], 0);
		TextDrawAlignment(fuelbox[playerid], 2);
		TextDrawColor(fuelbox[playerid], -1);
		TextDrawBackgroundColor(fuelbox[playerid], 255);
		TextDrawBoxColor(fuelbox[playerid], 205);
		TextDrawUseBox(fuelbox[playerid], 1);
		TextDrawSetProportional(fuelbox[playerid], 1);
		TextDrawSetSelectable(fuelbox[playerid], 0);

	    fuel[playerid] = TextDrawCreate(400.000000, 347.000000, "Fuel:");
		TextDrawFont(fuel[playerid], 2);
		TextDrawLetterSize(fuel[playerid], 0.279166, 1.500000);
		TextDrawTextSize(fuel[playerid], 49.000000, 18.000000);
		TextDrawSetOutline(fuel[playerid], 0);
		TextDrawSetShadow(fuel[playerid], 0);
		TextDrawAlignment(fuel[playerid], 1);
		TextDrawColor(fuel[playerid], -16776961);
		TextDrawBackgroundColor(fuel[playerid], 255);
		TextDrawBoxColor(fuel[playerid], 70);
		TextDrawUseBox(fuel[playerid], 0);
		TextDrawSetProportional(fuel[playerid], 1);
		TextDrawSetSelectable(fuel[playerid], 0);

		vhealthcount[playerid] = TextDrawCreate(400.000000, 364.000000, "Health:");
		TextDrawFont(vhealthcount[playerid], 2);
		TextDrawLetterSize(vhealthcount[playerid], 0.279166, 1.500000);
		TextDrawTextSize(vhealthcount[playerid], 49.000000, 18.000000);
		TextDrawSetOutline(vhealthcount[playerid], 0);
		TextDrawSetShadow(vhealthcount[playerid], 0);
		TextDrawAlignment(vhealthcount[playerid], 1);
		TextDrawColor(vhealthcount[playerid], -16776961);
		TextDrawBackgroundColor(vhealthcount[playerid], 255);
		TextDrawBoxColor(vhealthcount[playerid], 70);
		TextDrawUseBox(vhealthcount[playerid], 0);
		TextDrawSetProportional(vhealthcount[playerid], 1);
		TextDrawSetSelectable(vhealthcount[playerid], 0);

		fuelcount[playerid] = TextDrawCreate(436.000000, 347.000000, "100");
		TextDrawFont(fuelcount[playerid], 2);
		TextDrawLetterSize(fuelcount[playerid], 0.262499, 1.499999);
		TextDrawTextSize(fuelcount[playerid], 471.000000, 152.000000);
		TextDrawSetOutline(fuelcount[playerid], 0);
		TextDrawSetShadow(fuelcount[playerid], 1);
		TextDrawAlignment(fuelcount[playerid], 1);
		TextDrawColor(fuelcount[playerid], -1);
		TextDrawBackgroundColor(fuelcount[playerid], 255);
		TextDrawBoxColor(fuelcount[playerid], 190);
		TextDrawUseBox(fuelcount[playerid], 0);
		TextDrawSetProportional(fuelcount[playerid], 1);
		TextDrawSetSelectable(fuelcount[playerid], 0);

		vhealthcount1[playerid] = TextDrawCreate(452.000000, 364.000000, "100");
		TextDrawFont(vhealthcount1[playerid], 2);
		TextDrawLetterSize(vhealthcount1[playerid], 0.262499, 1.499999);
		TextDrawTextSize(vhealthcount1[playerid], 473.500000, 152.000000);
		TextDrawSetOutline(vhealthcount1[playerid], 0);
		TextDrawSetShadow(vhealthcount1[playerid], 1);
		TextDrawAlignment(vhealthcount1[playerid], 1);
		TextDrawColor(vhealthcount1[playerid], -1);
		TextDrawBackgroundColor(vhealthcount1[playerid], 255);
		TextDrawBoxColor(vhealthcount1[playerid], 190);
		TextDrawUseBox(vhealthcount1[playerid], 0);
		TextDrawSetProportional(vhealthcount1[playerid], 1);
		TextDrawSetSelectable(vhealthcount1[playerid], 0);

		speedbox[playerid] = TextDrawCreate(322.000000, 340.000000, "_");
		TextDrawFont(speedbox[playerid], 1);
		TextDrawLetterSize(speedbox[playerid], 0.566666, 4.599997);
		TextDrawTextSize(speedbox[playerid], 293.500000, 127.500000);
		TextDrawSetOutline(speedbox[playerid], 1);
		TextDrawSetShadow(speedbox[playerid], 0);
		TextDrawAlignment(speedbox[playerid], 2);
		TextDrawColor(speedbox[playerid], -1);
		TextDrawBackgroundColor(speedbox[playerid], 255);
		TextDrawBoxColor(speedbox[playerid], 205);
		TextDrawUseBox(speedbox[playerid], 1);
		TextDrawSetProportional(speedbox[playerid], 1);
		TextDrawSetSelectable(speedbox[playerid], 0);

	  	speedhead[playerid] = TextDrawCreate(259.000000, 341.000000, "Speed:");
		TextDrawFont(speedhead[playerid], 2);
		TextDrawLetterSize(speedhead[playerid], 0.366665, 2.049998);
		TextDrawTextSize(speedhead[playerid], 54.000000, 18.000000);
		TextDrawSetOutline(speedhead[playerid], 0);
		TextDrawSetShadow(speedhead[playerid], 0);
		TextDrawAlignment(speedhead[playerid], 1);
		TextDrawColor(speedhead[playerid], -16776961);
		TextDrawBackgroundColor(speedhead[playerid], 255);
		TextDrawBoxColor(speedhead[playerid], 115);
		TextDrawUseBox(speedhead[playerid], 0);
		TextDrawSetProportional(speedhead[playerid], 1);
		TextDrawSetSelectable(speedhead[playerid], 0);

		speedcount[playerid] = TextDrawCreate(317.000000, 341.000000, "100 KM/H");
		TextDrawFont(speedcount[playerid], 2);
		TextDrawLetterSize(speedcount[playerid], 0.279166, 2.049998);
		TextDrawTextSize(speedcount[playerid], 383.000000, 236.500000);
		TextDrawSetOutline(speedcount[playerid], 0);
		TextDrawSetShadow(speedcount[playerid], 1);
		TextDrawAlignment(speedcount[playerid], 1);
		TextDrawColor(speedcount[playerid], -1);
		TextDrawBackgroundColor(speedcount[playerid], 255);
		TextDrawBoxColor(speedcount[playerid], 190);
		TextDrawUseBox(speedcount[playerid], 0);
		TextDrawSetProportional(speedcount[playerid], 1);
		TextDrawSetSelectable(speedcount[playerid], 0);

		altitude[playerid] = TextDrawCreate(259.000000, 364.000000, "Altitude:");
		TextDrawFont(altitude[playerid], 2);
		TextDrawLetterSize(altitude[playerid], 0.366665, 2.049998);
		TextDrawTextSize(altitude[playerid], 54.000000, 18.000000);
		TextDrawSetOutline(altitude[playerid], 0);
		TextDrawSetShadow(altitude[playerid], 0);
		TextDrawAlignment(altitude[playerid], 1);
		TextDrawColor(altitude[playerid], -16776961);
		TextDrawBackgroundColor(altitude[playerid], 255);
		TextDrawBoxColor(altitude[playerid], 115);
		TextDrawUseBox(altitude[playerid], 0);
		TextDrawSetProportional(altitude[playerid], 1);
		TextDrawSetSelectable(altitude[playerid], 0);

		altcount[playerid] = TextDrawCreate(341.000000, 364.000000, "100");
		TextDrawFont(altcount[playerid], 2);
		TextDrawLetterSize(altcount[playerid], 0.279166, 2.049998);
		TextDrawTextSize(altcount[playerid], 373.000000, 231.000000);
		TextDrawSetOutline(altcount[playerid], 0);
		TextDrawSetShadow(altcount[playerid], 1);
		TextDrawAlignment(altcount[playerid], 1);
		TextDrawColor(altcount[playerid], -1);
		TextDrawBackgroundColor(altcount[playerid], 255);
		TextDrawBoxColor(altcount[playerid], 190);
		TextDrawUseBox(altcount[playerid], 0);
		TextDrawSetProportional(altcount[playerid], 1);
		TextDrawSetSelectable(altcount[playerid], 0);
	}

}
public PlayerNotice(playerid,notice[])
{
	TextDrawSetString(TextdrawNoticeText[playerid], notice);
	TextDrawShowForPlayer(playerid, TextdrawNotice[playerid]);
	TextDrawShowForPlayer(playerid, TextdrawNoticeText[playerid]);
	SetTimerEx("HideNotice", 7500, false, "i", playerid);
}
public HideNotice(playerid)
{
	TextDrawHideForPlayer(playerid, TextdrawNotice[playerid]);
	TextDrawHideForPlayer(playerid, TextdrawNoticeText[playerid]);
}

