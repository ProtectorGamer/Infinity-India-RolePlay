enum
{
	DIALOG_BETTING,
	DIALOG_BETBLUE,
	DIALOG_BETRED
}

new PlayerBetRed[MAX_PLAYERS],
    PlayerBetBlue[MAX_PLAYERS],
    bool:PlayerJoinedBetting[MAX_PLAYERS];

new PlayerText:BettingPTD[MAX_PLAYERS][17];

enum Betting_Info
{
    bool:Started,
    bool:Closed,
    Time,
    RedTotalBet,
    BlueTotalBet,
    PlayerBlueID,
    PlayerRedID,
    RedPercentage,
    BluePercentage
}
new BettingInfo[Betting_Info];


/*public OnGameModeInit()
{
    print("Betting System");
    SetTimer("BettingTimer", 1000, true);
    CreatePlayerBoxingCage();
    return 1;
}

public OnPlayerConnect(playerid){
    PlayerBetRed[playerid] = 0;
    PlayerBetBlue[playerid] = 0;
    PlayerJoinedBetting[playerid] = false;
    CreateBettingPTD(playerid);
    return 1;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid){
    if(playertextid == BettingPTD[playerid][9]){
        return ShowPlayerDialog(playerid, DIALOG_BETRED, DIALOG_STYLE_INPUT, "Betting System - Drizzy", "Please input your desired amount of bet in player Red\n\nAmount:", "Bet", "Cancel");
    }
    if(playertextid == BettingPTD[playerid][10]){
        return ShowPlayerDialog(playerid, DIALOG_BETBLUE, DIALOG_STYLE_INPUT, "Betting System - Drizzy", "Please input your desired amount of bet in player Blue\n\nAmount:", "Bet", "Cancel");
    }
    return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(BettingInfo[Closed] == false){
        if(dialogid == DIALOG_BETRED){
            if(response){
                if(strval(inputtext) > GetPlayerMoney(playerid)) return SendMessage(playerid, -1, "Error: You don't have that enough money to place a bet.");
                BettingInfo[RedTotalBet] += strval(inputtext);
                PlayerBetRed[playerid] += strval(inputtext);
                GivePlayerMoney(playerid, -strval(inputtext));
            }
        }
        else if(dialogid == DIALOG_BETBLUE){
            if(response){
                if(strval(inputtext) > GetPlayerMoney(playerid)) return SendMessage(playerid, -1, "Error: You don't have that enough money to place a bet.");
                BettingInfo[BlueTotalBet] += strval(inputtext);
                PlayerBetBlue[playerid] += strval(inputtext);
                GivePlayerMoney(playerid, -strval(inputtext));
            }
        }
    }
    return 1;
}

public OnPlayerDeath(playerid, killerid, reason){
    if(BettingInfo[Started] == true)
    {
        if(BettingInfo[PlayerRedID] == playerid)
        {
            foreach(new i: Player){
                if(PlayerBetBlue[i]){
                    new payout = ((PlayerBetBlue[i] * BettingInfo[RedPercentage]) / 100) + PlayerBetBlue[i];
                    GivePlayerMoney(i, payout);
                    SendMessage(i, -1, "You have won %i from that match [BLUE WINS].", payout);
                }
            }
        }
        if(BettingInfo[PlayerBlueID] == playerid)
        {
            foreach(new i: Player){
                if(PlayerBetRed[i]){
                    new payout = ((PlayerBetRed[i] * BettingInfo[BluePercentage]) / 100) + PlayerBetRed[i];
                    GivePlayerMoney(i, payout);
                    SendMessage(i, -1, "You have won %i from that match [RED WINS].", payout);
                }
            }
        }
        foreach(new i: Player){
            ResetBettingVariables(i);
        }
    }
    return 1;
}*/

forward BettingTimer();
public BettingTimer()
{
    foreach(new i: Player)
    {
        if(BettingInfo[Started] == true){
            if(PlayerJoinedBetting[i] == true){
                if(BettingInfo[Time] > 0){
                    BettingInfo[Time] --;

                    UpdateBettingTime(i);
                    UpdateTotalBets(i);
                    UpdateGamblerName(i);
                    UpdatePercentage(i);
                    UpdateTotalPayout(i);
                    if(BettingInfo[Time] == 0){
                        UpdateBettingStatus(i);
                    }
                }
            }
        }
    }
    return 1;
}

UpdateBettingStatus(playerid){
    BettingInfo[Closed] = true;
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][6], "Closed");
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][6], -16777166);
    PlayerTextDrawShow(playerid, BettingPTD[playerid][6]);
}

UpdateBettingTime(playerid){
    new string[128];
    format(string, sizeof(string), "%s", ConvertSecond(BettingInfo[Time]));
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][5], string);
}

UpdateTotalBets(playerid){
    // Red
    new string[128];

    format(string, sizeof(string), "%i", BettingInfo[RedTotalBet]);
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][11], string);
    // Blue
    format(string, sizeof(string), "%i", BettingInfo[BlueTotalBet]);
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][12], string);
}

UpdatePercentage(playerid)
{
    new string[128], string2[128];
    new bluepercent = GetPercentage(BettingInfo[RedTotalBet], BettingInfo[BlueTotalBet]);
    new redpercent = GetPercentage(BettingInfo[BlueTotalBet], BettingInfo[RedTotalBet]);

    BettingInfo[RedPercentage] = floatround(redpercent, floatround_ceil);
    BettingInfo[BluePercentage] = floatround(bluepercent, floatround_ceil);

    format(string, sizeof(string), "%i%", floatround(redpercent, floatround_ceil));
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][13], string);

    format(string2, sizeof(string2), "%i%", floatround(bluepercent, floatround_ceil));
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][14], string2);
    return 1;
}

UpdateBettingSkin(playerid){
    // Red
    PlayerTextDrawSetPreviewModel(playerid, BettingPTD[playerid][2], GetPlayerSkin(BettingInfo[PlayerRedID]));
    PlayerTextDrawShow(playerid, BettingPTD[playerid][2]);
    // Blue
    PlayerTextDrawSetPreviewModel(playerid, BettingPTD[playerid][3], GetPlayerSkin(BettingInfo[PlayerBlueID]));
    PlayerTextDrawShow(playerid, BettingPTD[playerid][3]);
}

UpdateGamblerName(playerid){
    // Red
    new string[128];
    format(string, sizeof(string), "%s", GetRolePlayName(BettingInfo[PlayerRedID]));
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][7], string);
    // Blue
    format(string, sizeof(string), "%s", GetRolePlayName(BettingInfo[PlayerBlueID]));
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][8], string);
}

UpdateTotalPayout(playerid){
    new string[128];

    format(string, sizeof(string), "%i", ((PlayerBetRed[playerid] * BettingInfo[RedPercentage]) / 100) + PlayerBetRed[playerid]);
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][15], string);

    format(string, sizeof(string), "%i", ((PlayerBetBlue[playerid] * BettingInfo[BluePercentage]) / 100) + PlayerBetBlue[playerid]);
    PlayerTextDrawSetString(playerid, BettingPTD[playerid][16], string);
    return 1;
}

GetRolePlayName(playerid)
{
	new
		name[MAX_PLAYER_NAME];

	GetPlayerName(playerid, name, sizeof(name));

	for(new i = 0, l = strlen(name); i < l; i ++)
	{
	    if(name[i] == '_')
	    {
	        name[i] = ' ';
		}
	}

	return name;
}

ConvertSecond(time)
{
	new mes[9];

	if (time < 60) format(mes, sizeof(mes), "00:%02i", time);
	else if (time == 60) mes = "01:00";
	else if (time > 60 && time < 3600)
	{
		new Float: minutes = time / 60, seconds = time % 60;

		format(mes, sizeof(mes), "%02.0f:%02i", minutes, seconds);
	}
	else if (time == 3600) mes = "01:00:00";
	else if (time > 3600)
	{
		new Float: hours = time / 3600, minutes_int = time % 3600, Float: minutes = minutes_int / 60, seconds = minutes_int % 60;

		format(mes, sizeof(mes), "%02.0f:%02.0f:%02i", hours, minutes, seconds);
	}
	return mes;
}

GetPercentage(value, tvalue)
{
	return floatround(floatmul(float(value) / float(tvalue) , 100.0));
}

ShowBettingTD(playerid)
{
    /*if(playerid != BettingInfo[PlayerBlueID] || playerid != BettingInfo[PlayerRedID])
    {
        for( new i = 0; i < 17; i ++) PlayerTextDrawShow(playerid, BettingPTD[playerid][i]);
    }*/
    SelectTextDraw(playerid, -1);
    for( new i = 0; i < 17; i ++) PlayerTextDrawShow(playerid, BettingPTD[playerid][i]);
    return 1;
}

ResetBettingVariables(playerid)
{
    PlayerBetRed[playerid] = 0;
    PlayerBetBlue[playerid] = 0;

    BettingInfo[Started] = false;
    BettingInfo[Closed] = false;
    BettingInfo[Time] = 0;
    BettingInfo[RedTotalBet] = 0;
    BettingInfo[BlueTotalBet] = 0;
    BettingInfo[PlayerBlueID] = 0;
    BettingInfo[PlayerRedID] = 0;
    BettingInfo[RedPercentage] = 0;
    BettingInfo[BluePercentage] = 0;
    for( new i = 0; i < 17; i ++) PlayerTextDrawHide(playerid, BettingPTD[playerid][i]);
    return 1;

}

// Commands
CMD:setsabong(playerid, params[])
{
    new time, player1, player2;
    if(sscanf(params, "iii", time, player1, player2))
    {
        return SendMessage(playerid, -1, "Usage: /setsabong [bet time] [player 1] [player 2]");
    }
    if(!IsPlayerConnected(player1))
    {
        return SendMessage(playerid, -1, "The player you chose as a participant in player 1  is not active.");
    }
    if(!IsPlayerConnected(player2))
    {
        return SendMessage(playerid, -1, "The player you chose as a participant in player 2  is not active.");
    }

    BettingInfo[Time] = time;
    BettingInfo[PlayerRedID] = player1;
    BettingInfo[PlayerBlueID] = player2;
    BettingInfo[Started] = true;
    BettingInfo[Closed] = false;
    BettingInfo[RedTotalBet] = 0;
    BettingInfo[BlueTotalBet] = 0;

    SetPlayerPos(player1, 2318.7344,-1646.2113,-96.0253);
    SetPlayerFacingAngle(player1, 35.9910);

    SetPlayerPos(player2, 2314.7217,-1641.2227,-96.0269);
    SetPlayerFacingAngle(player2, 222.5043);

    SendMessage(player1, -1, "You have been selected in betting system as a player of Red");
    SendMessage(player2, -1, "You have been selected in betting system as a player of Blue");
    return 1;
}

CMD:bet(playerid, params[])
{
    if(BettingInfo[Started] == false) return SendMessage(playerid, -1, "There is no currently active betting. Please wait for further announcement");
    if(BettingInfo[Closed] == true) return SendMessage(playerid, -1, "There is currently on-going fight. Please wait until the current fight is done.");

    SetPlayerPos(playerid, 2329.1946,-1667.1776,-96.9041);
    SetPlayerFacingAngle(playerid, 356.8029);

    PlayerJoinedBetting[playerid] = true;
    PlayerBetBlue[playerid] = 0;
    PlayerBetRed[playerid] = 0;

    UpdateBettingSkin(playerid);

    SendMessage(playerid, -1, "You have joined the current active betting event. You may now place your bets");
    ShowBettingTD(playerid);
    return 1;
}

CreatePlayerBoxingCage()
{
    CreateDynamicObject(5187, 2357.50000, -1648.89941, -96.30000,   359.74731, 179.99451, 268.98926);
    CreateDynamicObject(9303, 2329.69922, -1677.09961, -92.60000,   359.98901, 359.48914, 86.72607);
    CreateDynamicObject(10369, 2343.09961, -1670.69922, -93.70000,   0.70862, 0.23071, 44.45618);
    CreateDynamicObject(5187, 2357.50000, -1647.59998, -89.80000,   0.49988, 359.74731, 268.98926);
    CreateDynamicObject(5187, 2340.29980, -1615.19922, -89.90000,   0.49988, 359.74731, 324.98657);
    CreateDynamicObject(5187, 2341.89990, -1616.30005, -96.30000,   359.99731, 180.23917, 324.98880);
    CreateDynamicObject(5187, 2307.89941, -1607.89941, -89.90000,   0.49988, 359.97803, 7.23450);
    CreateDynamicObject(5187, 2309.69995, -1607.69995, -96.40000,   359.50012, 179.99451, 7.22900);
    CreateDynamicObject(5187, 2279.89941, -1630.09961, -96.40000,   359.48914, 179.99451, 68.98865);
    CreateDynamicObject(5187, 2279.29980, -1631.59961, -89.70000,   0.73059, 0.00000, 68.99414);
    CreateDynamicObject(5187, 2278.29980, -1661.69922, -96.50000,   359.24194, 179.99451, 108.98438);
    CreateDynamicObject(5187, 2278.89941, -1663.39941, -89.60000,   0.97229, 0.23621, 108.97339);
    CreateDynamicObject(9623, 2317.89941, -1663.19922, -100.70000,   0.00000, 0.00000, 355.98450);
    CreateDynamicObject(10429, 2356.69995, -1650.30005, -85.50000,   0.00000, 0.00000, 358.99475);
    CreateDynamicObject(17915, 2312.19922, -1677.39941, -89.70000,   359.00574, 358.99475, 321.00403);
    CreateDynamicObject(13607, 2316.50000, -1647.59961, -94.50000,   0.00000, 0.00000, 355.71533);
    CreateDynamicObject(10429, 2348.09961, -1603.29980, -86.20000,   0.00000, 0.00000, 97.22351);
    CreateDynamicObject(10999, 2284.60010, -1638.69995, -94.10000,   0.24719, 0.00000, 338.99414);
    CreateDynamicObject(12946, 2345.19995, -1651.19995, -94.90000,   0.00000, 0.00000, 358.99475);
    CreateDynamicObject(12843, 2317.69922, -1672.59961, -98.00000,   0.00000, 0.24719, 355.98450);
    CreateDynamicObject(12844, 2314.69922, -1672.39941, -96.00000,   0.49988, 359.74731, 355.74280);
    CreateDynamicObject(17915, 2293.89941, -1676.19922, -96.20000,   359.21997, 180.01648, 31.01440);
    CreateDynamicObject(12949, 2292.60010, -1665.30005, -97.90000,   0.00000, 0.00000, 266.48438);
    CreateDynamicObject(18266, 2305.29980, -1675.29980, -94.30000,   0.00000, 0.00000, 86.98975);
    CreateDynamicObject(14399, 2308.59961, -1664.00000, -98.10000,   359.74731, 0.00000, 355.98450);
    CreateDynamicObject(3965, 2298.39990, -1659.69995, -96.50000,   0.00000, 0.00000, 176.24817);
    CreateDynamicObject(14399, 2296.50000, -1667.19995, -100.10000,   88.49487, 0.00000, 175.98999);
    CreateDynamicObject(2902, 2308.00000, -1675.09998, -97.90000,   15.99060, 0.00000, 254.24170);
    CreateDynamicObject(8663, 2334.39990, -1752.59998, -73.30000,   359.74731, 359.74731, 311.47339);
    CreateDynamicObject(14414, 2329.89941, -1665.79980, -101.00000,   1.99951, 359.98901, 356.24268);
    CreateDynamicObject(3858, 2314.69922, -1677.29980, -98.50000,   359.73633, 0.24719, 40.98450);
    CreateDynamicObject(7418, 2308.39941, -1622.29980, -91.40000,   0.00000, 0.00000, 41.74255);
    CreateDynamicObject(7418, 2293.30005, -1619.19995, -90.80000,   0.73608, 359.98352, 356.98425);
    CreateDynamicObject(16037, 2331.89990, -1668.59998, -137.89999,   0.15381, 314.74731, 176.17676);
    CreateDynamicObject(5152, 2307.00000, -1667.00000, -96.50000,   0.06592, 112.73624, 85.97607);
    CreateDynamicObject(5152, 2305.00000, -1666.89941, -96.50000,   0.36255, 113.98868, 84.66064);
    CreateDynamicObject(5152, 2302.89941, -1666.69922, -96.50000,   0.26367, 113.74146, 84.68262);
    CreateDynamicObject(9345, 2303.89941, -1671.39941, -98.20000,   0.00000, 0.00000, 281.74438);
    CreateDynamicObject(17547, 2279.09961, -1661.79980, -101.70000,   0.00000, 359.24194, 199.24805);
    CreateDynamicObject(6364, 2253.69922, -1669.79980, -81.50000,   0.00000, 0.00000, 321.74011);
    CreateDynamicObject(3077, 2312.69922, -1669.09961, -93.60000,   0.00000, 179.99451, 176.23718);
    CreateDynamicObject(3409, 2305.19995, -1674.90002, -98.20000,   0.00000, 0.00000, 266.49536);
    CreateDynamicObject(3409, 2305.50000, -1671.19922, -98.20000,   0.00000, 0.00000, 87.98401);
    CreateDynamicObject(1649, 2307.69995, -1674.19995, -97.30000,   0.00000, 0.00000, 85.99243);
    CreateDynamicObject(14742, 2294.69995, -1665.00000, -93.60000,   0.74707, 0.24719, 267.23145);
    CreateDynamicObject(12845, 2323.39941, -1677.50000, -95.90000,   0.98328, 0.00000, 356.24268);
    CreateDynamicObject(17915, 2330.89990, -1678.90002, -89.80000,   358.76392, 358.99463, 319.74280);
    CreateDynamicObject(16780, 2313.59961, -1672.79980, -94.30000,   0.00000, 0.00000, 265.74829);
    CreateDynamicObject(2066, 2319.00000, -1676.50000, -98.00000,   0.00000, 0.00000, 177.24243);
    CreateDynamicObject(2157, 2318.09961, -1669.69922, -97.90000,   359.74731, 0.00000, 355.24841);
    CreateDynamicObject(2156, 2319.39990, -1669.80005, -97.90000,   0.00000, 0.00000, 355.24292);
    CreateDynamicObject(2160, 2320.69922, -1669.89941, -97.90000,   0.24719, 0.00000, 356.23169);
    CreateDynamicObject(14633, 2288.59961, -1666.09961, -96.50000,   0.00000, 0.00000, 85.74829);
    CreateDynamicObject(14524, 2308.00000, -1679.29980, -97.50000,   0.00000, 0.00000, 84.99573);
    CreateDynamicObject(1709, 2315.39941, -1675.69922, -98.00000,   0.00000, 0.24719, 176.48438);
    CreateDynamicObject(1710, 2312.00000, -1672.00000, -98.00000,   0.00000, 0.00000, 355.24841);
    CreateDynamicObject(14638, 2310.50000, -1667.09961, -98.00000,   0.00000, 0.00000, 85.74829);
    CreateDynamicObject(14638, 2310.19922, -1667.50000, -98.00000,   0.00000, 0.00000, 86.74805);
    CreateDynamicObject(2706, 2307.80005, -1675.69995, -95.10000,   0.00000, 0.00000, 85.99548);
    CreateDynamicObject(5021, 2407.69922, -1698.59961, -99.10000,   0.24719, 180.24170, 254.24561);
    CreateDynamicObject(14397, 2318.09961, -1668.50000, -84.90000,   0.00000, 269.74182, 32.72827);
    CreateDynamicObject(1786, 2307.89941, -1672.29980, -97.60000,   0.00000, 0.00000, 86.23718);
    CreateDynamicObject(2028, 2308.30005, -1673.09998, -97.40000,   0.00000, 0.00000, 80.50000);
    CreateDynamicObject(2206, 2313.00000, -1673.79980, -98.40000,   359.48914, 0.24719, 355.74280);
    CreateDynamicObject(2206, 2314.79980, -1674.89941, -98.40000,   0.71960, 359.73633, 175.74280);
    CreateDynamicObject(2182, 2314.00000, -1674.90002, -99.40000,   1.74960, 1.25058, 85.21185);
    CreateDynamicObject(2825, 2316.00000, -1675.90002, -97.50000,   358.25244, 356.99854, 235.40836);
    CreateDynamicObject(2356, 2320.19995, -1675.59998, -98.00000,   0.00000, 0.00000, 143.74512);
    CreateDynamicObject(2313, 2308.19922, -1672.89941, -98.00000,   0.00000, 0.00000, 86.49536);
    CreateDynamicObject(14791, 2316.60010, -1643.50000, -95.90000,   0.00000, 359.97803, 355.71558);
    CreateDynamicObject(2383, 2307.69995, -1674.59998, -95.10000,   0.00000, 0.00000, 176.48438);
    CreateDynamicObject(2401, 2307.80005, -1673.50000, -95.00000,   0.00000, 0.00000, 85.99548);
    CreateDynamicObject(3119, 2301.50000, -1667.00000, -95.30000,   1.98303, 0.48889, 12.96936);
    CreateDynamicObject(2663, 2319.89990, -1669.80005, -96.60000,   0.00000, 0.00000, 336.99438);
    CreateDynamicObject(2814, 2313.09961, -1674.09961, -97.50000,   0.24673, 356.24487, 282.01227);
    CreateDynamicObject(955, 2321.09961, -1667.59961, -97.50000,   0.00000, 0.00000, 174.74854);
    CreateDynamicObject(1776, 2318.69995, -1667.30005, -96.90000,   0.00000, 0.00000, 174.24316);
    CreateDynamicObject(1209, 2319.89941, -1667.39941, -97.90000,   0.00000, 0.00000, 174.99573);
    CreateDynamicObject(4106, 2329.10010, -1666.30005, -94.50000,   0.00000, 0.00000, 86.23718);
    CreateDynamicObject(1712, 2317.39941, -1674.50000, -98.00000,   0.00000, 0.00000, 85.49011);
    CreateDynamicObject(18061, 2325.00000, -1670.09961, -96.70000,   0.00000, 0.00000, 176.24817);
    CreateDynamicObject(14650, 2296.10010, -1663.00000, -95.80000,   0.00000, 0.00000, 86.74255);
    CreateDynamicObject(2601, 2318.89941, -1676.59961, -96.50000,   0.00000, 0.00000, 319.99329);
    CreateDynamicObject(2538, 2307.79980, -1671.39941, -99.10000,   0.00000, 0.00000, 175.49561);
    CreateDynamicObject(5788, 2340.19995, -1670.19995, -93.30000,   0.00000, 0.00000, 314.48914);
    CreateDynamicObject(9440, 2479.69922, -1646.79980, -84.50000,   357.98950, 179.99451, 3.24646);
    CreateDynamicObject(14811, 2297.39990, -1671.80005, -94.60000,   359.74731, 359.75000, 264.72549);
    CreateDynamicObject(5152, 2298.69922, -1664.09961, -95.50000,   1.11511, 23.74695, 85.96252);
    CreateDynamicObject(3882, 2302.89941, -1668.39941, -96.70000,   0.49438, 359.74731, 356.75073);
    CreateDynamicObject(5153, 2299.19922, -1664.29980, -96.70000,   270.54932, 63.64929, 126.39221);
    CreateDynamicObject(5152, 2299.79980, -1666.39941, -96.70000,   270.24719, 359.94507, 332.44629);
    CreateDynamicObject(17915, 2294.00000, -1663.69922, -108.00000,   54.73938, 90.70313, 85.13306);
    CreateDynamicObject(13360, 2299.50000, -1664.09961, -96.70000,   0.00000, 359.74731, 85.99548);
    CreateDynamicObject(5152, 2298.50000, -1663.29980, -97.80000,   359.59204, 293.74170, 264.57843);
    CreateDynamicObject(5152, 2298.39941, -1664.59961, -97.70000,   0.00000, 113.74146, 259.99976);
    CreateDynamicObject(1455, 2300.60010, -1666.30005, -95.50000,   0.00000, 0.00000, 251.99890);
    CreateDynamicObject(14394, 2309.00000, -1668.19995, -98.60000,   0.49982, 1.50006, 174.48688);
    CreateDynamicObject(5152, 2298.39941, -1661.89941, -97.70000,   359.78027, 114.74670, 263.54553);
    CreateDynamicObject(8302, 2298.00000, -1666.79980, -98.50000,   335.89050, 6.55884, 191.68945);
    CreateDynamicObject(14882, 2299.89990, -1669.69995, -96.40000,   0.00000, 0.00000, 269.75000);
    CreateDynamicObject(17915, 2300.89990, -1661.19995, -103.00000,   54.73389, 90.00000, 86.26184);
    CreateDynamicObject(17915, 2319.00000, -1662.40002, -103.00000,   54.73938, 90.06592, 86.20703);
    CreateDynamicObject(17915, 2337.89990, -1663.59998, -103.00000,   54.74164, 90.30371, 85.55722);
    CreateDynamicObject(5152, 2303.79980, -1667.39941, -94.30000,   0.42847, 23.48877, 174.76855);
    CreateDynamicObject(5153, 2306.00000, -1667.59961, -94.30000,   359.74182, 23.74146, 355.31897);
    CreateDynamicObject(17915, 2323.60010, -1663.30005, -82.80000,   305.24963, 270.05493, 86.11633);
    CreateDynamicObject(17915, 2304.69995, -1662.00000, -82.80000,   305.24963, 270.05493, 86.36084);
    CreateDynamicObject(5130, 2301.50000, -1652.59961, -95.80000,   0.00000, 0.24719, 41.49536);
    CreateDynamicObject(11000, 2340.09961, -1605.69922, -82.40000,   0.00000, 0.00000, 324.73938);
    CreateDynamicObject(982, 2315.69922, -1659.29980, -92.20000,   0.00000, 180.24170, 86.23718);
    CreateDynamicObject(982, 2341.30005, -1661.00000, -92.20000,   0.00000, 180.24170, 86.23718);
    CreateDynamicObject(982, 2286.39990, -1657.40002, -92.20000,   0.00000, 181.24695, 86.23169);
    CreateDynamicObject(12947, 2334.39990, -1626.00000, -93.00000,   359.75000, 0.00000, 145.00000);
    CreateDynamicObject(2958, 2308.19995, -1671.30005, -97.40000,   0.48004, 343.74939, 320.13989);
    CreateDynamicObject(14830, 2297.00000, -1676.80005, -94.80000,   0.00000, 0.00000, 357.00000);
    CreateDynamicObject(6337, 2323.50000, -1638.09961, -106.10000,   0.00000, 0.00000, 265.74280);
    CreateDynamicObject(11420, 2302.59961, -1630.29980, -98.30000,   0.00000, 0.00000, 187.24548);
    CreateDynamicObject(11086, 2318.80005, -1646.09998, -89.40000,   0.00000, 0.00000, 178.75000);
    CreateDynamicObject(11089, 2287.10010, -1650.19995, -134.80000,   270.24945, 180.00745, 357.00305);
    CreateDynamicObject(11089, 2294.39990, -1627.09998, -134.80000,   270.24719, 180.00549, 331.50073);
    CreateDynamicObject(11089, 2318.00000, -1619.80005, -134.80000,   270.24719, 180.00549, 281.49597);
    CreateDynamicObject(11089, 2342.50000, -1631.50000, -134.80000,   270.24719, 180.00549, 211.99170);
    CreateDynamicObject(11089, 2345.10010, -1657.90002, -137.50000,   270.56030, 63.17688, 39.15527);
    CreateDynamicObject(14827, 2301.30005, -1682.50000, -97.50000,   0.00000, 0.00000, 87.25000);
    CreateDynamicObject(14885, 2353.80005, -1647.09998, -96.60000,   0.00000, 0.00000, 176.75000);
    CreateDynamicObject(14898, 2314.89990, -1665.00000, -84.50000,   322.50061, 0.00027, 177.24945);
    CreateDynamicObject(18099, 2314.39990, -1674.50000, -97.40000,   0.99426, 358.49487, 97.77295);
    CreateDynamicObject(2857, 2313.39990, -1674.09998, -97.40000,   1.49887, 357.74924, 10.55887);
    CreateDynamicObject(1775, 2317.50000, -1667.19995, -96.80000,   0.00000, 0.00000, 177.25000);
    CreateDynamicObject(6357, 2311.69995, -1565.90002, -91.10000,   0.00000, 0.00000, 252.25000);
    CreateDynamicObject(2801, 2319.50000, -1669.69922, -97.20000,   0.00000, 0.24719, 260.49683);
    CreateDynamicObject(2125, 2303.10010, -1660.80005, -97.60000,   0.00000, 0.00000, 240.00000);
    CreateDynamicObject(2125, 2301.89990, -1660.69995, -97.60000,   0.00000, 0.00000, 20.00000);
    CreateDynamicObject(2125, 2304.30005, -1660.90002, -97.60000,   0.00000, 0.00000, 326.00000);
    CreateDynamicObject(2125, 2305.60010, -1661.00000, -97.60000,   0.00000, 0.00000, 199.00000);
    CreateDynamicObject(2125, 2306.80005, -1661.09998, -97.60000,   0.00000, 0.00000, 26.00000);
    CreateDynamicObject(2125, 2308.00000, -1661.19995, -97.60000,   0.00000, 0.00000, 0.00000);
    CreateDynamicObject(2647, 2313.80005, -1674.80005, -97.30000,   0.00000, 0.00000, 170.00000);
    CreateDynamicObject(9043, 2335.10010, -1759.50000, -92.00000,   0.00000, 180.00000, 86.00000);
    CreateDynamicObject(18059, 2300.30005, -1673.00000, -95.90000,   0.25000, 0.50000, 85.74774);
    CreateDynamicObject(1670, 2314.69995, -1674.00000, -97.40000,   0.50000, 359.75000, 141.75208);
    CreateDynamicObject(14391, 2340.60010, -1661.30005, -92.70000,   359.24988, 180.00000, 143.50000);
    CreateDynamicObject(14391, 2290.19995, -1646.00000, -89.10000,   0.00000, 181.74994, 349.50000);
    CreateDynamicObject(1541, 2299.50000, -1662.69995, -96.20000,   0.00000, 0.00000, 267.25000);
    CreateDynamicObject(14792, 2291.19995, -1667.00000, -90.50000,   0.01312, 88.99994, 86.25034);
    CreateDynamicObject(16022, 2286.30005, -1657.50000, -84.20000,   0.00436, 269.49994, 266.24817);
    CreateDynamicObject(2419, 2318.39990, -1669.69995, -97.80000,   0.00000, 0.00000, 84.25000);
    CreateDynamicObject(1484, 2299.89990, -1666.30005, -95.40000,   348.82300, 32.95166, 47.16162);
    CreateDynamicObject(1486, 2301.30005, -1666.19995, -96.60000,   0.00000, 0.00000, 300.00000);
    CreateDynamicObject(1510, 2314.10010, -1674.80005, -97.40000,   0.00000, 0.00000, 0.00000);
    CreateDynamicObject(1665, 2302.50000, -1661.69995, -96.70000,   0.00000, 0.00000, 230.00000);
    CreateDynamicObject(1666, 2302.80005, -1661.50000, -96.70000,   0.00000, 0.00000, 0.00000);
    CreateDynamicObject(1551, 2314.10010, -1674.59998, -97.20000,   0.00000, 0.00000, 110.00000);
    CreateDynamicObject(10228, 2327.30005, -1668.80005, -93.50000,   1.25500, 0.00000, 356.24823);
    CreateDynamicObject(1670, 2306.19922, -1661.89941, -96.70000,   0.00000, 0.00000, 169.99695);
    CreateDynamicObject(9589, 2333.09961, -1684.69922, -96.40000,   1.49963, 359.74731, 356.00647);
    CreateDynamicObject(7240, 2327.60010, -1572.59998, -95.90000,   0.00000, 0.00000, 7.00000);
    CreateDynamicObject(1964, 2299.50000, -1661.30005, -96.60000,   0.00000, 0.00000, 353.25000);
    CreateDynamicObject(1898, 2302.80005, -1661.80005, -96.70000,   359.93042, 82.00040, 220.49524);
    CreateDynamicObject(3026, 2315.39990, -1676.80005, -97.60000,   322.49243, 265.37280, 173.42822);
    CreateDynamicObject(14587, 2293.50000, -1656.50000, -136.30000,   271.76794, 171.86902, 167.87274);
    CreateDynamicObject(14587, 2319.10010, -1661.40002, -136.39999,   270.89874, 213.79321, 30.54062);
    CreateDynamicObject(14587, 2305.89990, -1657.00000, -136.39999,   271.34332, 201.84674, 198.34200);
    CreateDynamicObject(14587, 2331.19995, -1662.50000, -136.30000,   270.49695, 179.97870, 355.97961);
    CreateDynamicObject(14587, 2317.10010, -1658.19995, -136.30000,   271.76791, 171.86926, 168.62396);
    CreateDynamicObject(14587, 2343.10010, -1661.69995, -136.39999,   272.51270, 185.71204, 2.20749);
    CreateDynamicObject(2670, 2302.19995, -1660.90002, -97.80000,   359.25003, 359.49997, 327.49347);
    CreateDynamicObject(2673, 2317.10010, -1666.80005, -97.80000,   1.00000, 0.00000, 169.25000);
    CreateDynamicObject(2676, 2306.00000, -1627.90002, -97.90000,   2.24924, 1.50116, 106.19107);
    CreateDynamicObject(1825, 2310.50000, -1662.00000, -92.80000,   0.00000, 0.00000, 60.00000);
    CreateDynamicObject(1825, 2316.10010, -1662.30005, -92.80000,   0.00000, 0.00000, 30.00000);
    CreateDynamicObject(1825, 2321.30005, -1662.80005, -92.80000,   0.00000, 0.00000, 350.00000);
    CreateDynamicObject(1825, 2325.80005, -1663.19995, -92.80000,   0.00000, 0.00000, 290.00000);
    CreateDynamicObject(1825, 2325.69995, -1663.19995, -92.80000,   0.00000, 359.75000, 226.50000);
    CreateDynamicObject(11086, 2308.69995, -1624.69995, -84.40000,   359.75000, 180.00000, 358.75000);
    CreateDynamicObject(16101, 2298.69995, -1665.90002, -92.90000,   0.00000, 0.00000, 38.50000);
    return 1;
}

CreateBettingPTD(playerid)
{
    BettingPTD[playerid][0] = CreatePlayerTextDraw(playerid, 325.000000, 265.000000, "_");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][0], 0.600000, 14.250002);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][0], 283.500000, 205.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][0], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][0], 255);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][0], 0);

    BettingPTD[playerid][1] = CreatePlayerTextDraw(playerid, 325.000000, 267.000000, "_");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][1], 0.600000, 13.800001);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][1], 283.500000, 202.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][1], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][1], 1296911871);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][1], 0);

    BettingPTD[playerid][2] = CreatePlayerTextDraw(playerid, 213.000000, 262.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][2], 5);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][2], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][2], 91.500000, 118.500000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][2], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][2], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][2], 0);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][2], 255);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][2], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][2], 0);
    PlayerTextDrawSetPreviewModel(playerid, BettingPTD[playerid][2], 0);
    PlayerTextDrawSetPreviewRot(playerid, BettingPTD[playerid][2], -10.000000, -2.000000, -5.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, BettingPTD[playerid][2], 1, 1);

    BettingPTD[playerid][3] = CreatePlayerTextDraw(playerid, 346.000000, 262.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][3], 5);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][3], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][3], 91.500000, 118.500000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][3], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][3], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][3], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][3], 0);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][3], 255);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][3], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][3], 0);
    PlayerTextDrawSetPreviewModel(playerid, BettingPTD[playerid][3], 0);
    PlayerTextDrawSetPreviewRot(playerid, BettingPTD[playerid][3], -10.000000, -2.000000, -5.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, BettingPTD[playerid][3], 1, 1);

    BettingPTD[playerid][4] = CreatePlayerTextDraw(playerid, 325.000000, 307.000000, "_");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][4], 1);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][4], 0.600000, 8.550002);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][4], 283.500000, 202.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][4], 1);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][4], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][4], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][4], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][4], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][4], 1296911871);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][4], 0);

    BettingPTD[playerid][5] = CreatePlayerTextDraw(playerid, 327.000000, 312.000000, "00:00");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][5], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][5], 0.241666, 1.149999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][5], 400.000000, 27.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][5], 1);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][5], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][5], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][5], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][5], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][5], 50);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][5], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][5], 0);

    BettingPTD[playerid][6] = CreatePlayerTextDraw(playerid, 327.000000, 330.000000, "Open");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][6], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][6], 0.187500, 0.849999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][6], 398.000000, 21.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][6], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][6], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][6], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][6], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][6], 16711730);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][6], 0);

    BettingPTD[playerid][7] = CreatePlayerTextDraw(playerid, 260.000000, 307.000000, "Player 1");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][7], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][7], 0.112500, 0.799999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][7], 398.000000, 70.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][7], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][7], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][7], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][7], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][7], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][7], 16711730);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][7], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][7], 0);

    BettingPTD[playerid][8] = CreatePlayerTextDraw(playerid, 393.000000, 307.000000, "Player 2");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][8], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][8], 0.112500, 0.799999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][8], 398.000000, 70.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][8], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][8], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][8], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][8], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][8], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][8], 16711730);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][8], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][8], 0);

    BettingPTD[playerid][9] = CreatePlayerTextDraw(playerid, 259.000000, 332.000000, "Red");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][9], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][9], 0.187500, 0.849999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][9], 398.000000, 21.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][9], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][9], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][9], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][9], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][9], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][9], -16777166);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][9], 1);

    BettingPTD[playerid][10] = CreatePlayerTextDraw(playerid, 392.000000, 332.000000, "Blue");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][10], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][10], 0.187500, 0.849999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][10], 398.000000, 21.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][10], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][10], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][10], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][10], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][10], 65330);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][10], 1);

    BettingPTD[playerid][11] = CreatePlayerTextDraw(playerid, 259.000000, 353.000000, "1,000,000");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][11], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][11], 0.137500, 0.899999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][11], 400.000000, 68.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][11], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][11], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][11], -65281);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][11], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][11], 50);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][11], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][11], 0);

    BettingPTD[playerid][12] = CreatePlayerTextDraw(playerid, 393.000000, 353.000000, "1,000,000");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][12], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][12], 0.137500, 0.899999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][12], 400.000000, 66.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][12], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][12], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][12], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][12], -65281);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][12], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][12], 50);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][12], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][12], 0);

    BettingPTD[playerid][13] = CreatePlayerTextDraw(playerid, 259.000000, 364.000000, "200%");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][13], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][13], 0.137500, 0.899999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][13], 400.000000, 27.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][13], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][13], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][13], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][13], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][13], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][13], 50);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][13], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][13], 0);

    BettingPTD[playerid][14] = CreatePlayerTextDraw(playerid, 393.000000, 364.000000, "200%");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][14], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][14], 0.137500, 0.899999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][14], 400.000000, 27.000000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][14], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][14], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][14], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][14], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][14], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][14], 50);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][14], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][14], 0);

    BettingPTD[playerid][15] = CreatePlayerTextDraw(playerid, 260.000000, 378.000000, "Player 1 Bet Money");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][15], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][15], 0.137500, 0.899999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][15], 405.000000, 64.500000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][15], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][15], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][15], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][15], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][15], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][15], 50);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][15], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][15], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][15], 0);

    BettingPTD[playerid][16] = CreatePlayerTextDraw(playerid, 393.000000, 378.000000, "Player 2 Bet money");
    PlayerTextDrawFont(playerid, BettingPTD[playerid][16], 2);
    PlayerTextDrawLetterSize(playerid, BettingPTD[playerid][16], 0.137500, 0.899999);
    PlayerTextDrawTextSize(playerid, BettingPTD[playerid][16], 405.000000, 64.500000);
    PlayerTextDrawSetOutline(playerid, BettingPTD[playerid][16], 0);
    PlayerTextDrawSetShadow(playerid, BettingPTD[playerid][16], 0);
    PlayerTextDrawAlignment(playerid, BettingPTD[playerid][16], 2);
    PlayerTextDrawColor(playerid, BettingPTD[playerid][16], -1);
    PlayerTextDrawBackgroundColor(playerid, BettingPTD[playerid][16], 255);
    PlayerTextDrawBoxColor(playerid, BettingPTD[playerid][16], 50);
    PlayerTextDrawUseBox(playerid, BettingPTD[playerid][16], 0);
    PlayerTextDrawSetProportional(playerid, BettingPTD[playerid][16], 1);
    PlayerTextDrawSetSelectable(playerid, BettingPTD[playerid][16], 0);
    return 1;
}
