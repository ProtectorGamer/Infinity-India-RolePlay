/*This Code is developed and Produced by [TPG]Protector#3155*/

#include <a_samp>
#include <zcmd>
#include <sampvoice>
#include <sscanf2>

#define MAX_RADIOS 999

#define COLOR_SYNTAX        0xAFAFAFFF
#define COLOR_CYAN 			0x40FFFFFF
#define COLOR_TYkE          0x67USQBWQ
#define SERVER_COLOR  		0xFFFF00FF
#define COLOR_AQUA          0x00FFFFFF
#define COLOR_GREEN         0x32CD32FF
#define RED                 {#FF0000}
#define SCM 	SendClientMessage
#define SCMA 	SendClientMessageToAll
#define SM 		SendMessage // SendClientMessage with string formats

enum pEnum
{
   pVoiceRadio,
   pPrRadio
}
enum
{
	DIALOG_VOICECHAT
}

new SV_GSTREAM:StreamFreq[MAX_RADIOS] = SV_NULL;
new IDStream[MAX_PLAYERS];
new SV_LSTREAM:lstream[MAX_PLAYERS] = { SV_NULL, ... };

new PlayerInfo[MAX_PLAYERS+1][pEnum];


public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}

public SV_VOID:OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid)
{
	if(PlayerInfo[playerid][pPrRadio] == 1)
	{
	    if(keyid == 0x5A && IDStream[playerid] >= 1) SvAttachSpeakerToStream(StreamFreq[IDStream[playerid]], playerid);
	}
    if (keyid == 0x5A && lstream[playerid]) SvAttachSpeakerToStream(lstream[playerid], playerid);
}

public SV_VOID:OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid)
{

	if(PlayerInfo[playerid][pPrRadio] == 1)
	{
         if(keyid == 0x5A && IDStream[playerid] >= 1) SvDetachSpeakerFromStream(StreamFreq[IDStream[playerid]], playerid);
	}

    // Detach the player from the local stream if the 'z' key is released
    if (keyid == 0x5A && lstream[playerid]) SvDetachSpeakerFromStream(lstream[playerid], playerid);
    // Detach the player from the global stream if the 'b' key is released
    //if (keyid == 0x5A && vstream[vehicleid]) SvDetachSpeakerFromStream(vstream[vehicleid], vehicleid);
}
public OnPlayerConnect(playerid)
{
	// Checking for plugin availability
    if (SvGetVersion(playerid) == SV_NULL)
    {
        SendClientMessage(playerid, -1, "Could not find plugin sampvoice.");
    }
    // Checking for a microphone
    else if (SvHasMicro(playerid) == SV_FALSE)
    {
        SendClientMessage(playerid, -1, "The microphone could not be found.");
    }

    else if ((lstream[playerid] = SvCreateDLStreamAtPlayer(15.0, SV_INFINITY, playerid, SERVER_COLOR, "TALKING")))
    {
        SendClientMessage(playerid, COLOR_AQUA, "Press 'Z'to talk");

        // Attach the player to the global stream as a listener
        //if (gstream) SvAttachListenerToStream(gstream, playerid);

        // Assign microphone activation keys to the player
        SvAddKey(playerid, 0x5A);
    }
    PlayerInfo[playerid][pVoiceRadio] = 0;
	SendClientMessage(playerid, COLOR_AQUA, "Voice System By Protector");
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    PlayerInfo[playerid][pVoiceRadio] = 0;
    if (lstream[playerid])
    {
        SvDeleteStream(lstream[playerid]);
        lstream[playerid] = SV_NULL;
    }
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

public OnPlayerUpdate(playerid)
{
	return 1;
}
