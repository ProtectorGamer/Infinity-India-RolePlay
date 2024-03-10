new PlayerText: ZennINFOTD[MAX_PLAYERS][11];
new PlayerText: ErrorZennTD[MAX_PLAYERS][11];
new PlayerText: ZennSuccesTd[MAX_PLAYERS][11];

stock CreateNotifyTD(playerid)
{
	ZennINFOTD[playerid][0] = CreatePlayerTextDraw(playerid, 525.000, 213.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ZennINFOTD[playerid][0], 12.000, 31.000);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][0], 1250749951);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][0], 1);

	ZennINFOTD[playerid][1] = CreatePlayerTextDraw(playerid, 523.000, 203.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennINFOTD[playerid][1], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][1], 1250749951);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][1], 1);

	ZennINFOTD[playerid][2] = CreatePlayerTextDraw(playerid, 523.000, 234.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennINFOTD[playerid][2], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][2], 1250749951);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][2], 1);

	ZennINFOTD[playerid][3] = CreatePlayerTextDraw(playerid, 530.000, 206.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ZennINFOTD[playerid][3], 98.000, 43.000);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][3], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][3], 1);

	ZennINFOTD[playerid][4] = CreatePlayerTextDraw(playerid, 621.000, 203.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennINFOTD[playerid][4], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][4], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][4], 1);

	ZennINFOTD[playerid][5] = CreatePlayerTextDraw(playerid, 621.000, 234.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennINFOTD[playerid][5], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][5], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][5], 1);

	ZennINFOTD[playerid][6] = CreatePlayerTextDraw(playerid, 620.000, 212.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ZennINFOTD[playerid][6], 12.000, 31.000);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][6], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][6], 1);

	ZennINFOTD[playerid][7] = CreatePlayerTextDraw(playerid, 530.000, 214.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennINFOTD[playerid][7], 20.000, 27.000);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][7], 1250749951);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][7], 1);

	ZennINFOTD[playerid][8] = CreatePlayerTextDraw(playerid, 540.000, 215.000, "i");
	PlayerTextDrawLetterSize(playerid, ZennINFOTD[playerid][8], 0.509, 2.499);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][8], 2);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][8], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][8], 150);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][8], 1);

	ZennINFOTD[playerid][9] = CreatePlayerTextDraw(playerid, 550.000, 213.000, "INFO");
	PlayerTextDrawLetterSize(playerid, ZennINFOTD[playerid][9], 0.180, 1.600);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][9], 150);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][9], 2);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][9], 1);

	ZennINFOTD[playerid][10] = CreatePlayerTextDraw(playerid, 550.000, 229.000, "The Lounge has opened!");
	PlayerTextDrawLetterSize(playerid, ZennINFOTD[playerid][10], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, ZennINFOTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, ZennINFOTD[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, ZennINFOTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, ZennINFOTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennINFOTD[playerid][10], 150);
	PlayerTextDrawFont(playerid, ZennINFOTD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, ZennINFOTD[playerid][10], 1);
}

stock HideInfo(playerid)
{
	for (new i = 0; i < 11; i ++)
    {
        PlayerTextDrawHide(playerid, ZennINFOTD[playerid][i]);
	}
	return 1;
}

stock ShowInfo(playerid, text[], time)
{
	PlayerTextDrawSetString(playerid, ZennINFOTD[playerid][10], text);
    for (new i = 0; i < 11; i ++)
    {
        PlayerTextDrawShow(playerid, ZennINFOTD[playerid][i]);
	}
	SetTimer("HideInfot", time, true);
	return 1;
}

forward HideInfot(playerid);
public HideInfot(playerid)
{
 	HideInfo(playerid);
	return 1;
}

//EROR NOTIFY
stock CreateErrorZenn(playerid)
{
	ErrorZennTD[playerid][0] = CreatePlayerTextDraw(playerid, 525.000, 161.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ErrorZennTD[playerid][0], 12.000, 31.000);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][0], -834974721);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][0], 1);

	ErrorZennTD[playerid][1] = CreatePlayerTextDraw(playerid, 523.000, 151.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ErrorZennTD[playerid][1], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][1], -834974721);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][1], 1);

	ErrorZennTD[playerid][2] = CreatePlayerTextDraw(playerid, 523.000, 182.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ErrorZennTD[playerid][2], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][2], -834974721);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][2], 1);

	ErrorZennTD[playerid][3] = CreatePlayerTextDraw(playerid, 530.000, 154.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ErrorZennTD[playerid][3], 98.000, 43.000);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][3], 639639807);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][3], 1);

	ErrorZennTD[playerid][4] = CreatePlayerTextDraw(playerid, 621.000, 151.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ErrorZennTD[playerid][4], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][4], 639639807);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][4], 1);

	ErrorZennTD[playerid][5] = CreatePlayerTextDraw(playerid, 621.000, 182.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ErrorZennTD[playerid][5], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][5], 639639807);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][5], 1);

	ErrorZennTD[playerid][6] = CreatePlayerTextDraw(playerid, 620.000, 160.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ErrorZennTD[playerid][6], 12.000, 31.000);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][6], 639639807);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][6], 1);

	ErrorZennTD[playerid][7] = CreatePlayerTextDraw(playerid, 530.000, 162.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ErrorZennTD[playerid][7], 20.000, 27.000);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][7], -834974721);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][7], 1);

	ErrorZennTD[playerid][8] = CreatePlayerTextDraw(playerid, 543.000, 164.000, "!");
	PlayerTextDrawLetterSize(playerid, ErrorZennTD[playerid][8], 0.488, 2.299);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][8], 2);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][8], 639639807);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][8], 150);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][8], 0);

	ErrorZennTD[playerid][9] = CreatePlayerTextDraw(playerid, 550.000, 161.000, "ERROR");
	PlayerTextDrawLetterSize(playerid, ErrorZennTD[playerid][9], 0.180, 1.600);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][9], 150);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][9], 2);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][9], 1);

	ErrorZennTD[playerid][10] = CreatePlayerTextDraw(playerid, 550.000, 177.000, "Please wait a few minutes");
	PlayerTextDrawLetterSize(playerid, ErrorZennTD[playerid][10], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, ErrorZennTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, ErrorZennTD[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, ErrorZennTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, ErrorZennTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, ErrorZennTD[playerid][10], 150);
	PlayerTextDrawFont(playerid, ErrorZennTD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, ErrorZennTD[playerid][10], 1);
}

stock HideError(playerid)
{
	for (new i = 0; i < 11; i ++)
    {
        PlayerTextDrawHide(playerid, ErrorZennTD[playerid][i]);
	}
	return 1;
}

stock ShowError(playerid, text[], time)
{
	PlayerTextDrawSetString(playerid, ErrorZennTD[playerid][10], text);
    for (new i = 0; i < 11; i ++)
    {
        PlayerTextDrawShow(playerid, ErrorZennTD[playerid][i]);
	}
	SetTimer("HideElor", time, true);
	return 1;
}

forward HideElor(playerid);
public HideElor(playerid)
{
 	HideError(playerid);
	return 1;
}

//SUSKES TD
stock CreateSuccesTD(playerid)
{
	ZennSuccesTd[playerid][0] = CreatePlayerTextDraw(playerid, 525.000, 110.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ZennSuccesTd[playerid][0], 12.000, 31.000);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][0], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][0], 1137867007);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][0], 255);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][0], 1);

	ZennSuccesTd[playerid][1] = CreatePlayerTextDraw(playerid, 523.000, 100.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennSuccesTd[playerid][1], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][1], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][1], 1137867007);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][1], 255);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][1], 1);

	ZennSuccesTd[playerid][2] = CreatePlayerTextDraw(playerid, 523.000, 131.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennSuccesTd[playerid][2], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][2], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][2], 1137867007);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][2], 255);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][2], 1);

	ZennSuccesTd[playerid][3] = CreatePlayerTextDraw(playerid, 530.000, 103.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ZennSuccesTd[playerid][3], 98.000, 43.000);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][3], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][3], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][3], 255);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][3], 1);

	ZennSuccesTd[playerid][4] = CreatePlayerTextDraw(playerid, 621.000, 100.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennSuccesTd[playerid][4], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][4], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][4], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][4], 255);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][4], 1);

	ZennSuccesTd[playerid][5] = CreatePlayerTextDraw(playerid, 621.000, 131.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennSuccesTd[playerid][5], 13.000, 18.000);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][5], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][5], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][5], 255);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][5], 1);

	ZennSuccesTd[playerid][6] = CreatePlayerTextDraw(playerid, 620.000, 109.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, ZennSuccesTd[playerid][6], 12.000, 31.000);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][6], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][6], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][6], 255);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][6], 1);

	ZennSuccesTd[playerid][7] = CreatePlayerTextDraw(playerid, 530.000, 111.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, ZennSuccesTd[playerid][7], 20.000, 27.000);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][7], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][7], 1137867007);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][7], 255);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][7], 1);

	ZennSuccesTd[playerid][8] = CreatePlayerTextDraw(playerid, 536.000, 113.000, "S");
	PlayerTextDrawLetterSize(playerid, ZennSuccesTd[playerid][8], 0.488, 2.299);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][8], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][8], 639639807);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][8], 150);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][8], 1);

	ZennSuccesTd[playerid][9] = CreatePlayerTextDraw(playerid, 550.000, 110.000, "SUCCESS");
	PlayerTextDrawLetterSize(playerid, ZennSuccesTd[playerid][9], 0.180, 1.600);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][9], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][9], 150);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][9], 2);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][9], 1);

	ZennSuccesTd[playerid][10] = CreatePlayerTextDraw(playerid, 550.000, 126.000, "You have sent $420 to Zenn!");
	PlayerTextDrawLetterSize(playerid, ZennSuccesTd[playerid][10], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, ZennSuccesTd[playerid][10], 1);
	PlayerTextDrawColor(playerid, ZennSuccesTd[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, ZennSuccesTd[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, ZennSuccesTd[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, ZennSuccesTd[playerid][10], 150);
	PlayerTextDrawFont(playerid, ZennSuccesTd[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, ZennSuccesTd[playerid][10], 1);
}

stock HideSukses(playerid)
{
	for (new i = 0; i < 11; i ++)
    {
        PlayerTextDrawHide(playerid, ZennSuccesTd[playerid][i]);
	}
	return 1;
}

stock ShowSukses(playerid, text[], time)
{
	PlayerTextDrawSetString(playerid, ZennSuccesTd[playerid][10], text);
    for (new i = 0; i < 11; i ++)
    {
        PlayerTextDrawShow(playerid, ZennSuccesTd[playerid][i]);
	}
	SetTimer("HideSuksess", time, true);
	return 1;
}

forward HideSuksess(playerid);
public HideSuksess(playerid)
{
 	HideSukses(playerid);
	return 1;
}
