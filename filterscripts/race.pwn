#include <a_samp>
#include <core>
#include <float>

new glob5A98[1001];

new glob6A3C;

new glob6A40[200001];

new globC9F44;

new Text:globC9F48;


public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Local Race Filterscript by Nek.");
	print(" LOADED");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid, 0x33CCFFAA, "This server uses 'Local Race Filterscript', created by Nek");
	3184 + (playerid << 2) = 0;
	15192 + (playerid << 2) = 0;
	19192 + (playerid << 2) = 0;
	23196 + (playerid << 2) = 0;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text)
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext)
{
	if(strcmp("/racecp", cmdtext, true, 10) == 0)
	{
		if((7184 + (playerid << 2) + 7184 + (playerid << 2)) < 2)
		{
			if((3184 + (playerid << 2)) == 0)
			{
				if(glob6A3C >= 1)
				{
					return SendClientMessage(playerid, 0x33CCFFAA, "Use /racedelete before creating a new race!");
				}
				SendClientMessage(playerid, 0x33CCFFAA, "Press FIRE key to take coordinates of a checkpoint");
				SendClientMessage(playerid, 0x33CCFFAA, "Repeat the command to finish the race or");
				SendClientMessage(playerid, 0x33CCFFAA, "/racedelete to delete it");
				3184 + (playerid << 2) = 1;
				return 1;
			}
			SendClientMessage(playerid, 0x33CCFFAA, "Type /startrace to start the race!");
			3184 + (playerid << 2) = 0;
			return 1;
		}
		return SendClientMessage(playerid, 0x33CCFFAA, "You are not an admin!");
	}
	if(strcmp("/startrace", cmdtext, true, 10) == 0)
	{
		if((7184 + (playerid << 2) + 7184 + (playerid << 2)) < 2)
		{
			if((3184 + (playerid << 2)) == 1)
			{
				return SendClientMessage(playerid, 0x33CCFFAA, "You need to end the race first with /lracefs");
			}
			if(glob6A3C <= 1)
			{
				return SendClientMessage(playerid, 0x33CCFFAA, "You need to plant 2 or more checkpoints");
			}
			SendClientMessageToAll(0x33CCFFAA, "The race will start soon!");
			glob6A40 = 1;
			for(new var0, var0 = 0; var0 < 1000; )
			{
				TogglePlayerControllable(var0, false);
				15192 + (var0 << 2) = 0;
				SetTimer("Five", 1000, false);
				SetTimer("Four", 2000, false);
				SetTimer("Three", 3000, false);
				SetTimer("Two", 4000, false);
				SetTimer("One", 5000, false);
				SetTimer("GoGoGo", 6000, false);
				Gara(var0);
			}
			return 1;
		}
		return SendClientMessage(playerid, 0x33CCFFAA, "You are not an admin!");
	}
	if(strcmp("/racedelete", cmdtext, true, 10) == 0)
	{
		if((7184 + (playerid << 2) + 7184 + (playerid << 2)) < 2)
		{
			SendClientMessage(playerid, 0x33CCFFAA, "Race deleted!");
			3184 + (playerid << 2) = 0;
			return DestroyRace();
		}
	}
	return 0;
}

public Gara(playerid)
{
	if((glob6A3C - 1) == (15192 + (playerid << 2)))
	{
		SetPlayerRaceCheckpoint(playerid, 1, 0 + ((15192 + (playerid << 2)) << 2) + 0 + ((15192 + (playerid << 2)) << 2), 4 + 0 + ((15192 + (playerid << 2)) << 2) + 0 + ((15192 + (playerid << 2)) << 2), 8 + 0 + ((15192 + (playerid << 2)) << 2) + 0 + ((15192 + (playerid << 2)) << 2), 0.0, 0.0, 0.0, 8.0);
	}
	else
	{
		SetPlayerRaceCheckpoint(playerid, 0, 0 + ((15192 + (playerid << 2)) << 2) + 0 + ((15192 + (playerid << 2)) << 2), 4 + 0 + ((15192 + (playerid << 2)) << 2) + 0 + ((15192 + (playerid << 2)) << 2), 8 + 0 + ((15192 + (playerid << 2)) << 2) + 0 + ((15192 + (playerid << 2)) << 2), 0 + ((1 + 15192 + (playerid << 2)) << 2) + 0 + ((1 + 15192 + (playerid << 2)) << 2), 4 + 0 + ((1 + 15192 + (playerid << 2)) << 2) + 0 + ((1 + 15192 + (playerid << 2)) << 2), 8 + 0 + ((1 + 15192 + (playerid << 2)) << 2) + 0 + ((1 + 15192 + (playerid << 2)) << 2), 8.0);
	}
	new var0 = 0;
	for(new var1, var1 = 0; var1 < 1000; )
	{
		if((15192 + (var1 << 2)) >= (15192 + (playerid << 2)))
		{
		}
	}
	return 1;
}

public Distacco(playerid)
{
	new var0 = 0;
	new var1[24];
	new var2[24];
	new var3[256];
	for(new var4, var4 = 0; var4 < 1000; )
	{
		if(((23196 + (playerid << 2)) - 1) == (23196 + (var4 << 2)))
		{
			var0 = var4;
		}
	}
	new var4 = (27204 + (var0 << 2) + 27204 + (var0 << 2) + ((15192 + (var0 << 2)) << 2)) - (27204 + (playerid << 2) + 27204 + (playerid << 2) + ((15192 + (playerid << 2)) << 2));
	new var5 = 0, var6 = 0, var7 = 0;
	function3344(var4, var5, var6, var7);
	TextDrawHideForPlayer(playerid, globC9F44);
	TextDrawHideForPlayer(var0, globC9F48);
	GetPlayerName(var0, var1, 24);
	GetPlayerName(playerid, var2, 24);
	format(var3, 256, "~r~Gap to %s: +%02d:%02d.%03d", var1, var5, var6);
	globC9F44 = TextDrawCreate(320.0, 380.0, var3);
	TextDrawSetOutline(globC9F44, 0);
	TextDrawFont(globC9F44, 3);
	TextDrawSetProportional(globC9F44, false);
	TextDrawAlignment(globC9F44, 2);
	TextDrawShowForPlayer(playerid, globC9F44);
	format(var3, 256, "~n~~g~Gap to %s: -%02d:%02d.%03d", var2, var5, var6);
	globC9F48 = TextDrawCreate(320.0, 380.0, var3);
	TextDrawSetOutline(globC9F48, 0);
	TextDrawFont(globC9F48, 3);
	TextDrawSetProportional(globC9F48, false);
	TextDrawAlignment(globC9F48, 2);
	TextDrawShowForPlayer(var0, globC9F48);
	return 1;
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
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	new var0[24];
	new var1[200];
	new var2 = 0;
	for(new var3, var3 = 0; var3 < 1000; )
	{
		if(((23196 + (playerid << 2)) - 1) == (23196 + (var3 << 2)))
		{
			var2 = var3;
		}
	}
	DisablePlayerRaceCheckpoint(playerid);
	new var3 = 0, var4 = 0, var5 = 0;
	if((glob6A3C - 1) == (15192 + (playerid << 2)))
	{
		GetPlayerName(playerid, var0, 24);
		if(glob6A40 == 1)
		{
			19192 + (playerid << 2) = GetTickCount() - (19192 + (playerid << 2));
			function3344(19192 + (playerid << 2), var3, var4, var5);
			format(var1, 200, "%s has won the race! %02d:%02d.%03d", var0, var3, var4);
			SendClientMessageToAll(0x33CCFFAA, var1);
			PlayerPlaySound(playerid, 1058, 0.0, 0.0, 0.0);
			TextDrawHideForPlayer(playerid, globC9F44);
			TextDrawHideForPlayer(var2, globC9F48);
			TextDrawHideForPlayer(playerid, globC9F44);
			TextDrawHideForPlayer(var2, globC9F48);
			if(glob5A98 == 0)
			{
				glob5A98 = 19192 + (playerid << 2);
			}
			if((19192 + (playerid << 2)) < glob5A98)
			{
				glob5A98 = 19192 + (playerid << 2);
				format(var1, 200, "New record by %s!!! %02d:%02d.%03d", var0, var3, var4);
				SendClientMessageToAll(0x7CFC00AA, var1);
			}
		}
		else
		{
			19192 + (playerid << 2) = GetTickCount() - (19192 + (playerid << 2));
			function3344(19192 + (playerid << 2), var3, var4, var5);
			format(var1, 200, "%s is arrived in %d° position in %02d:%02d.%03d", var0, 27200, var3, var4);
			SendClientMessageToAll(0x33CCFFAA, var1);
			PlayerPlaySound(playerid, 1169, 0.0, 0.0, 0.0);
			TextDrawHideForPlayer(playerid, globC9F44);
			TextDrawHideForPlayer(var2, globC9F48);
			TextDrawHideForPlayer(playerid, globC9F44);
			TextDrawHideForPlayer(var2, globC9F48);
		}
		SendClientMessageToAll(0x33CCFFAA, var1);
		return 1;
	}
	if((15192 + (playerid << 2)) < glob6A3C)
	{
		(15192 + (playerid << 2))++;
		PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
		27204 + (playerid << 2) + 27204 + (playerid << 2) + ((15192 + (playerid << 2)) << 2) = GetTickCount() - (19192 + (playerid << 2));
		function3344(27204 + (playerid << 2) + 27204 + (playerid << 2) + ((15192 + (playerid << 2)) << 2), var3, var4, var5);
		new var6 = 0;
		for(new var7, var7 = 0; var7 < 1000; )
		{
			if((15192 + (var7 << 2)) >= (15192 + (playerid << 2)))
			{
			}
		}
		23196 + (playerid << 2) = var6;
		Distacco(playerid);
		Gara(playerid);
	}
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd)
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

public OnVehicleMod()
{
	return 1;
}

public OnVehiclePaintjob()
{
	return 1;
}

public OnVehicleRespray()
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

public OnPlayerInteriorChange()
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys == 4)
	{
		if((3184 + (playerid << 2)) > 0)
		{
			PiazzaCheckpoint(playerid);
		}
	}
	return 1;
}

public PiazzaCheckpoint(playerid)
{
	new Float:var0 = 0, Float:var1 = 0, Float:var2 = 0;
	GetPlayerPos(playerid, var0, var1, var2);
	new var3[199];
	format(var3, 199, "Checkpoint registered: %f, %f, %f", var0, var1, var2);
	SendClientMessage(playerid, 0x33CCFFAA, var3);
	new var4 = (3184 + (playerid << 2)) - 1;
	0 + (var4 << 2) + 0 + (var4 << 2) = var0;
	4 + 0 + (var4 << 2) + 0 + (var4 << 2) = var1;
	8 + 0 + (var4 << 2) + 0 + (var4 << 2) = var2;
	(3184 + (playerid << 2))++;
	PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
	return 1;
}

public DestroyRace()
{
	return glob6A3C = 0;
}

public OnRconLoginAttempt()
{
	return 1;
}

public OnPlayerUpdate()
{
	return 1;
}

public OnPlayerStreamIn()
{
	return 1;
}

public OnPlayerStreamOut()
{
	return 1;
}

public OnVehicleStreamIn()
{
	return 1;
}

public OnVehicleStreamOut()
{
	return 1;
}

public OnDialogResponse()
{
	return 1;
}

public OnPlayerClickPlayer()
{
	return 1;
}

public Five()
{
	GameTextForAll("~w~5", 2000, 3);
	return 1;
}

public Four()
{
	GameTextForAll("~w~5~n~~b~4", 2000, 3);
	return 1;
}

public Three()
{
	GameTextForAll("~w~5~n~~b~4~n~~y~3", 2000, 3);
	return 1;
}

public Two()
{
	GameTextForAll("~w~5~n~~b~4~n~~y~3~n~~p~2", 2000, 3);
	return 1;
}

public One()
{
	GameTextForAll("~w~5~n~~b~4~n~~y~3~n~~p~2~n~~r~1", 2000, 3);
	return 1;
}

public GoGoGo()
{
	GameTextForAll("~w~5~n~~b~4~n~~y~3~n~~p~2~n~~r~1~n~~g~GO!", 2000, 3);
	for(new var0, var0 = 0; var0 < 1000; )
	{
		TogglePlayerControllable(var0, true);
		19192 + (var0 << 2) = GetTickCount();
	}
	return 1;
}

function3344(arg0, &arg1, &arg2, &arg3)
{
	arg1 = arg0 / 60000;
	arg0 = arg0 - (60000 * arg1);
	arg2 = arg0 / 1000;
	arg0 = arg0 - (10 * arg2);
	arg3 = arg0;
	return 0;
}

