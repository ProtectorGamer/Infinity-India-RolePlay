#include <a_samp>
//Created specifically The Trushed Company!
//Scripts: Vip_Uzer (vk)
// Rope System
new Float:tempx[MAX_PLAYERS],Float:tempy[MAX_PLAYERS],Float:tempz[MAX_PLAYERS];
new seile[58][MAX_PLAYERS];

#define COLOR_GREY 0xAFAFAFAA // Grey
#define r_maxping 130
public OnFilterScriptInit()
{
    
	print("\n------------------------------------");
	print(" Rope System  v1 by Vip_Uzer");
	print(" Special for The Trusded Company");
	print(" (c) 2018");
	print("--------------------------------------\n");
    
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    if(GetPVarInt(playerid,"rappelling") == 1)//rope system
	{
		for(new i; i < 58; i++) DestroyObject(seile[i][playerid]);
		DeletePVar(playerid,"rappelling");
		ClearAnimations(playerid);
		SetPlayerHealth(playerid, GetPVarFloat(playerid, "AntiCheat_Health"));
		SendClientMessage(playerid, COLOR_GREY,"You have removed your cable!");
	}
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if(GetPVarInt(playerid,"rappelling") == 1)//rope system
	{
		for(new i; i < 58; i++) DestroyObject(seile[i][playerid]);
		DeletePVar(playerid,"rappelling");
		ClearAnimations(playerid);
		SetPlayerHealth(playerid, GetPVarFloat(playerid, "AntiCheat_Health"));
		SendClientMessage(playerid, COLOR_GREY, "Вы убрали Ваш трос!");
	}
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys == KEY_ACTION && GetPVarInt(playerid,"rappelling") == 1)
	{
	    if(GetPlayerPing(playerid) > r_maxping) return GameTextForPlayer(playerid,"Error: MAX Ping!",1000,1);
		if(GetPVarInt(playerid,"rappelling") == 1)
		{
			for(new i; i < 58; i++) DestroyObject(seile[i][playerid]);
			DeletePVar(playerid,"rappelling");
			ClearAnimations(playerid);
			SetPlayerHealth(playerid, GetPVarFloat(playerid, "AntiCheat_Health"));
			SendClientMessage(playerid, COLOR_GREY, "Вы убрали Ваш трос!");
			return 1;
		}
		if(GetPlayerSkin(playerid) != 285) return SendClientMessage(playerid, COLOR_GREY, "Спускаться можно только в специальном костюме! (SWAT)");
		new Float:health1;
        GetPlayerHealth(playerid, health1);
		SetPlayerHealth(playerid, health1);
		SetPVarFloat(playerid, "AntiCheat_Health", health1);
		SetPVarInt(playerid,"rappelling",1);
		new Float:X, Float:Y, Float:Z,Float:Angle;
		GetPlayerFacingAngle(playerid, Angle);
		if(!IsPlayerInAnyVehicle(playerid))
		{
			GetPlayerPos(playerid, X, Y, Z);
			GetXYInBackOfPlayer(playerid, X, Y, 5.0);
			seile[1][playerid] = CreateObject(19089, X, Y, Z+5, 0, 0, Angle, 100.0);
			seile[2][playerid] = CreateObject(19089, X, Y, Z+3, 0, 0, Angle, 100.0);
			seile[3][playerid] = CreateObject(19089, X, Y, Z+1, 0, 0, Angle, 100.0);
			seile[4][playerid] = CreateObject(19089, X, Y, Z-2, 0, 0, Angle, 100.0);
			seile[5][playerid] = CreateObject(19089, X, Y, Z-5, 0, 0, Angle, 100.0);
			seile[6][playerid] = CreateObject(19089, X, Y, Z-7, 0, 0, Angle, 100.0);
			seile[7][playerid] = CreateObject(19089, X, Y, Z-9, 0, 0, Angle, 100.0);
			seile[8][playerid] = CreateObject(19089, X, Y, Z-10, 0, 0, Angle, 100.0);
			seile[9][playerid] = CreateObject(19089, X, Y, Z-12, 0, 0, Angle, 100.0);
			seile[10][playerid] = CreateObject(19089, X, Y, Z-17, 0, 0, Angle, 100.0);
			seile[11][playerid] = CreateObject(19089, X, Y, Z-25, 0, 0, Angle, 100.0);
			seile[12][playerid] = CreateObject(19089, X, Y, Z-28, 0, 0, Angle, 100.0);
			seile[13][playerid] = CreateObject(19089, X, Y, Z-31, 0, 0, Angle, 100.0);
			seile[14][playerid] = CreateObject(19089, X, Y, Z-34, 0, 0, Angle, 100.0);
			seile[15][playerid] = CreateObject(19089, X, Y, Z-38, 0, 0, Angle, 100.0);
			seile[16][playerid] = CreateObject(19089, X, Y, Z-41, 0, 0, Angle, 100.0);
			seile[17][playerid] = CreateObject(19089, X, Y, Z-45, 0, 0, Angle, 100.0);
			seile[18][playerid] = CreateObject(19089, X, Y, Z-49, 0, 0, Angle, 100.0);
			seile[19][playerid] = CreateObject(19089, X, Y, Z-51, 0, 0, Angle, 100.0);
			seile[20][playerid] = CreateObject(19089, X, Y, Z-57, 0, 0, Angle, 100.0);
			seile[21][playerid] = CreateObject(19089, X, Y, Z-61, 0, 0, Angle, 100.0);
			seile[22][playerid] = CreateObject(19089, X, Y, Z-65, 0, 0, Angle, 100.0);
			seile[23][playerid] = CreateObject(19089, X, Y, Z-69, 0, 0, Angle, 100.0);
			seile[24][playerid] = CreateObject(19089, X, Y, Z-73, 0, 0, Angle, 100.0);
			seile[25][playerid] = CreateObject(19089, X, Y, Z-77, 0, 0, Angle, 100.0);
			seile[26][playerid] = CreateObject(19089, X, Y, Z-80, 0, 0, Angle, 100.0);
			seile[27][playerid] = CreateObject(19089, X, Y, Z-85, 0, 0, Angle, 100.0);
			seile[28][playerid] = CreateObject(19089, X, Y, Z-89, 0, 0, Angle, 100.0);
			seile[29][playerid] = CreateObject(19089, X, Y, Z-90, 0, 0, Angle, 100.0);
			seile[30][playerid] = CreateObject(19089, X, Y, Z-95, 0, 0, Angle, 100.0);
			seile[31][playerid] = CreateObject(19089, X, Y, Z-87, 0, 0, Angle, 100.0);
			seile[32][playerid] = CreateObject(19089, X, Y, Z-100, 0, 0, Angle, 100.0);
			seile[33][playerid] = CreateObject(19089, X, Y, Z-105, 0, 0, Angle, 100.0);
			seile[34][playerid] = CreateObject(19089, X, Y, Z-110, 0, 0, Angle, 100.0);
			seile[35][playerid] = CreateObject(19089, X, Y, Z-115, 0, 0, Angle, 100.0);
			seile[36][playerid] = CreateObject(19089, X, Y, Z-120, 0, 0, Angle, 100.0);
			seile[37][playerid] = CreateObject(19089, X, Y, Z-125, 0, 0, Angle, 100.0);
			seile[38][playerid] = CreateObject(19089, X, Y, Z-130, 0, 0, Angle, 100.0);
			seile[39][playerid] = CreateObject(19089, X, Y, Z-135, 0, 0, Angle, 100.0);
			seile[40][playerid] = CreateObject(19089, X, Y, Z-140, 0, 0, Angle, 100.0);
			seile[41][playerid] = CreateObject(19089, X, Y, Z-145, 0, 0, Angle, 100.0);
			seile[42][playerid] = CreateObject(19089, X, Y, Z-150, 0, 0, Angle, 100.0);
			seile[43][playerid] = CreateObject(19089, X, Y, Z-155, 0, 0, Angle, 100.0);
			seile[45][playerid] = CreateObject(19089, X, Y, Z-160, 0, 0, Angle, 100.0);
			seile[46][playerid] = CreateObject(19089, X, Y, Z-165, 0, 0, Angle, 100.0);
			seile[47][playerid] = CreateObject(19089, X, Y, Z-170, 0, 0, Angle, 100.0);
			seile[48][playerid] = CreateObject(19089, X, Y, Z-175, 0, 0, Angle, 100.0);
			seile[49][playerid] = CreateObject(19089, X, Y, Z-180, 0, 0, Angle, 100.0);
			seile[50][playerid] = CreateObject(19089, X, Y, Z-185, 0, 0, Angle, 100.0);
			seile[51][playerid] = CreateObject(19089, X, Y, Z-190, 0, 0, Angle, 100.0);
			seile[52][playerid] = CreateObject(19089, X, Y, Z-195, 0, 0, Angle, 100.0);
			seile[53][playerid] = CreateObject(19089, X, Y, Z-200, 0, 0, Angle, 100.0);
			seile[54][playerid] = CreateObject(19089, X, Y, Z-205, 0, 0, Angle, 100.0);
			seile[55][playerid] = CreateObject(19089, X, Y, Z-210, 0, 0, Angle, 100.0);
			seile[56][playerid] = CreateObject(19089, X, Y, Z-215, 0, 0, Angle, 100.0);
			seile[57][playerid] = CreateObject(19089, X, Y, Z-220, 0, 0, Angle, 100.0);
			SetPlayerPosFindZ(playerid, X, Y, Z);
			SetTimerEx("SetPosTimer2",100,0,"ifff", playerid, X, Y, Z);
		}
		else
		{
			if(GetVehicleModel(GetPlayerVehicleID(playerid)) != 497) return SendClientMessage(playerid, COLOR_GREY, "Вы должны быть в полицейском вертолете!");
			if(GetPlayerState(playerid) == 2) return SendClientMessage(playerid, COLOR_GREY, "Вы не должны находиться за рулем вертолёта!");
			RemovePlayerFromVehicle(playerid);
			GetPlayerPos(playerid, X, Y, Z);
			seile[1][playerid] = CreateObject(19089, X, Y, Z+5, 0, 0, Angle, 100.0);
			seile[2][playerid] = CreateObject(19089, X, Y, Z+3, 0, 0, Angle, 100.0);
			seile[3][playerid] = CreateObject(19089, X, Y, Z+1, 0, 0, Angle, 100.0);
			seile[4][playerid] = CreateObject(19089, X, Y, Z-2, 0, 0, Angle, 100.0);
			seile[5][playerid] = CreateObject(19089, X, Y, Z-5, 0, 0, Angle, 100.0);
			seile[6][playerid] = CreateObject(19089, X, Y, Z-7, 0, 0, Angle, 100.0);
			seile[7][playerid] = CreateObject(19089, X, Y, Z-9, 0, 0, Angle, 100.0);
			seile[8][playerid] = CreateObject(19089, X, Y, Z-10, 0, 0, Angle, 100.0);
			seile[9][playerid] = CreateObject(19089, X, Y, Z-12, 0, 0, Angle, 100.0);
			seile[10][playerid] = CreateObject(19089, X, Y, Z-17, 0, 0, Angle, 100.0);
			seile[11][playerid] = CreateObject(19089, X, Y, Z-25, 0, 0, Angle, 100.0);
			seile[12][playerid] = CreateObject(19089, X, Y, Z-28, 0, 0, Angle, 100.0);
			seile[13][playerid] = CreateObject(19089, X, Y, Z-31, 0, 0, Angle, 100.0);
			seile[14][playerid] = CreateObject(19089, X, Y, Z-34, 0, 0, Angle, 100.0);
			seile[15][playerid] = CreateObject(19089, X, Y, Z-38, 0, 0, Angle, 100.0);
			seile[16][playerid] = CreateObject(19089, X, Y, Z-41, 0, 0, Angle, 100.0);
			seile[17][playerid] = CreateObject(19089, X, Y, Z-45, 0, 0, Angle, 100.0);
			seile[18][playerid] = CreateObject(19089, X, Y, Z-49, 0, 0, Angle, 100.0);
			seile[19][playerid] = CreateObject(19089, X, Y, Z-51, 0, 0, Angle, 100.0);
			seile[20][playerid] = CreateObject(19089, X, Y, Z-57, 0, 0, Angle, 100.0);
			seile[21][playerid] = CreateObject(19089, X, Y, Z-61, 0, 0, Angle, 100.0);
			seile[22][playerid] = CreateObject(19089, X, Y, Z-65, 0, 0, Angle, 100.0);
			seile[23][playerid] = CreateObject(19089, X, Y, Z-69, 0, 0, Angle, 100.0);
			seile[24][playerid] = CreateObject(19089, X, Y, Z-73, 0, 0, Angle, 100.0);
			seile[25][playerid] = CreateObject(19089, X, Y, Z-77, 0, 0, Angle, 100.0);
			seile[26][playerid] = CreateObject(19089, X, Y, Z-80, 0, 0, Angle, 100.0);
			seile[27][playerid] = CreateObject(19089, X, Y, Z-85, 0, 0, Angle, 100.0);
			seile[28][playerid] = CreateObject(19089, X, Y, Z-89, 0, 0, Angle, 100.0);
			seile[29][playerid] = CreateObject(19089, X, Y, Z-90, 0, 0, Angle, 100.0);
			seile[30][playerid] = CreateObject(19089, X, Y, Z-95, 0, 0, Angle, 100.0);
			seile[31][playerid] = CreateObject(19089, X, Y, Z-87, 0, 0, Angle, 100.0);
			seile[32][playerid] = CreateObject(19089, X, Y, Z-100, 0, 0, Angle, 100.0);
			seile[33][playerid] = CreateObject(19089, X, Y, Z-105, 0, 0, Angle, 100.0);
			seile[34][playerid] = CreateObject(19089, X, Y, Z-110, 0, 0, Angle, 100.0);
			seile[35][playerid] = CreateObject(19089, X, Y, Z-115, 0, 0, Angle, 100.0);
			seile[36][playerid] = CreateObject(19089, X, Y, Z-120, 0, 0, Angle, 100.0);
			seile[37][playerid] = CreateObject(19089, X, Y, Z-125, 0, 0, Angle, 100.0);
			seile[38][playerid] = CreateObject(19089, X, Y, Z-130, 0, 0, Angle, 100.0);
			seile[39][playerid] = CreateObject(19089, X, Y, Z-135, 0, 0, Angle, 100.0);
			seile[40][playerid] = CreateObject(19089, X, Y, Z-140, 0, 0, Angle, 100.0);
			seile[41][playerid] = CreateObject(19089, X, Y, Z-145, 0, 0, Angle, 100.0);
			seile[42][playerid] = CreateObject(19089, X, Y, Z-150, 0, 0, Angle, 100.0);
			seile[43][playerid] = CreateObject(19089, X, Y, Z-155, 0, 0, Angle, 100.0);
			seile[45][playerid] = CreateObject(19089, X, Y, Z-160, 0, 0, Angle, 100.0);
			seile[46][playerid] = CreateObject(19089, X, Y, Z-165, 0, 0, Angle, 100.0);
			seile[47][playerid] = CreateObject(19089, X, Y, Z-170, 0, 0, Angle, 100.0);
			seile[48][playerid] = CreateObject(19089, X, Y, Z-175, 0, 0, Angle, 100.0);
			seile[49][playerid] = CreateObject(19089, X, Y, Z-180, 0, 0, Angle, 100.0);
			seile[50][playerid] = CreateObject(19089, X, Y, Z-185, 0, 0, Angle, 100.0);
			seile[51][playerid] = CreateObject(19089, X, Y, Z-190, 0, 0, Angle, 100.0);
			seile[52][playerid] = CreateObject(19089, X, Y, Z-195, 0, 0, Angle, 100.0);
			seile[53][playerid] = CreateObject(19089, X, Y, Z-200, 0, 0, Angle, 100.0);
			seile[54][playerid] = CreateObject(19089, X, Y, Z-205, 0, 0, Angle, 100.0);
			seile[55][playerid] = CreateObject(19089, X, Y, Z-210, 0, 0, Angle, 100.0);
			seile[56][playerid] = CreateObject(19089, X, Y, Z-215, 0, 0, Angle, 100.0);
			seile[57][playerid] = CreateObject(19089, X, Y, Z-220, 0, 0, Angle, 100.0);
			SetPlayerPosFindZ(playerid, X, Y, Z);
			SetTimerEx("SetPosTimer2",100,0,"ifff", playerid, X, Y, Z-5);
		}
		SetTimerEx("SetPosTimer",1000,0,"i",playerid);
		return 1;
	}
	return 1;
}
public OnPlayerCommandText(playerid, cmdtext[])
{
	return 0;
}


forward SetPosTimer2(playerid, Float:X, Float:Y, Float:Z);
public SetPosTimer2(playerid, Float:X, Float:Y, Float:Z)
{
	GetPlayerPos(playerid,tempx[playerid],tempy[playerid],tempz[playerid]);
	SetPlayerPos(playerid, X, Y, Z);
	if(VectorSize(tempx[playerid]-X, tempy[playerid]-Y, tempz[playerid]-Z) < 6)
	{
	    for(new i; i < 58; i++) DestroyObject(seile[i][playerid]);
		DeletePVar(playerid,"rappelling");
		ClearAnimations(playerid);
		SetPlayerHealth(playerid, GetPVarFloat(playerid, "AntiCheat_Health"));
		SendClientMessage(playerid, COLOR_GREY, "Невозможно расположить здесь трос!");
		SetPlayerPosFindZ(playerid,tempx[playerid],tempy[playerid],tempz[playerid]);
		return true;
 	}
	OnePlayAnim(playerid,"ped","abseil",4.0,0,0,0,1,0);
	return true;
}
forward SetPosTimer(playerid);
public SetPosTimer(playerid)
{
	if(GetPVarInt(playerid,"rappelling") == 1)
	{
	    if(IsPlayerInRangeOfPoint(playerid,5.0,tempx[playerid],tempy[playerid],tempz[playerid]))
	    {
		  	for(new i; i < 58; i++) DestroyObject(seile[i][playerid]);
		   	DeletePVar(playerid,"rappelling");
		   	ClearAnimations(playerid);
		   	SetPlayerHealth(playerid, GetPVarFloat(playerid, "AntiCheat_Health"));
		   	SendClientMessage(playerid,COLOR_GREY,  "Вы убрали Ваш трос!");
		   	SetPlayerPosFindZ(playerid,tempx[playerid],tempy[playerid],tempz[playerid]);
			return true;
		}
		OnePlayAnim(playerid,"ped","abseil",4.0,0,0,0,1,0);
		SetTimerEx("SetPosTimer",25,0,"i",playerid);
	}
	return true;
}

stock GetXYInBackOfPlayer(const playerid, &Float:x, &Float:y, const Float:distance)
{
	new Float:a; GetPlayerPos(playerid, x, y, a);
 	GetPlayerFacingAngle(playerid, a);
 	if (IsPlayerInAnyVehicle(playerid)) {
	  	if (GetPlayerVehicleID(playerid) > 0 && GetPlayerVehicleID(playerid) <= MAX_VEHICLES) GetVehicleZAngle(GetPlayerVehicleID(playerid), a);
  	}
	x -= (distance * floatsin(-a, degrees));
	y -= (distance * floatcos(-a, degrees));
}
OnePlayAnim(playerid,animlib[],animname[], Float:Speed_anim, looping, lockx, locky, lockz, lp,ddds = 1)//
{
	if(IsPlayerInAnyVehicle(playerid)) return true;
	if(strfind(animname,"null",true) != -1) return true;
	ApplyAnimation(playerid, animlib, animname, Speed_anim, looping, lockx, locky, lockz, lp,ddds);
	SetPVarString(playerid, "animlib", animlib);
	SetPVarString(playerid, "animname", animname);
	return SetTimerEx("UpdateAnimation", 200, 0, "ifiiiii", playerid, Speed_anim, looping, lockx, locky, lockz, lp);
}
forward UpdateAnimation(playerid, Float:p1, p2, p3, p4, p5, p6);
public UpdateAnimation(playerid, Float:p1, p2, p3, p4, p5, p6)
{
	new animl[30], animn[30], animlib[30], animname[30];
	GetPVarString(playerid, "animlib", animlib, sizeof(animlib));
	GetPVarString(playerid, "animname", animname, sizeof(animname));
	GetAnimationName(GetPlayerAnimationIndex(playerid), animl, sizeof(animl), animn, sizeof(animn));
	if(strcmp(animl, animlib, true) != 0 && strcmp(animn, animname, true) != 0) ApplyAnimation(playerid, animlib, animname, p1, p2, p3, p4, p5, p6,1);
	return true;
}
