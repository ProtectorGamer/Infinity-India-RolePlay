#include <a_samp>
#include <sampvoice>

#define GLOBAL_CHANNEL 0
#define  LOCAL_CHANNEL 1

new SV_UINT:gstream = SV_NONE;
new SV_UINT:lstream[MAX_PLAYERS] = { SV_NONE, ... };

public OnPlayerConnect(playerid)
{
    if (SvGetVersion(playerid) == 0) // Checking for plugin availability
    {
        SendClientMessage(playerid, -1, "Failed to find plugin.");
    }
    else if (SvHasMicro(playerid) == SV_FALSE) // Checking for microphone availability
    {
        SendClientMessage(playerid, -1, "Failed to find microphone.");
    }
    else
    {
        if (gstream != SV_NONE)
        {
            SvSetKey(playerid, 0x5A, GLOBAL_CHANNEL); // Z key
            SvAttachStream(playerid, gstream, GLOBAL_CHANNEL);
            SvAttachListener(gstream, playerid);
            SvSetIcon(gstream, "speaker");

            SendClientMessage(playerid, -1, "Press Z to talk to global chat.");
        }
        if ((lstream[playerid] = SvCreateStream(40.0)) != SV_NONE)
        {
            SvSetKey(playerid, 0x42, LOCAL_CHANNEL); // B key
            SvAttachStream(playerid, lstream[playerid], LOCAL_CHANNEL);
            SvSetTarget(lstream[playerid], SvMakePlayer(playerid));
            SvSetIcon(lstream[playerid], "speaker");

            SendClientMessage(playerid, -1, "Press B to talk to local chat.");
        }
    }
}

public OnPlayerDisconnect(playerid, reason)
{
    // Removing the player's local stream after disconnecting
    if (lstream[playerid] != SV_NONE)
    {
        SvDeleteStream(lstream[playerid]);
        lstream[playerid] = SV_NONE;
    }
}

public OnGameModeInit()
{
    // Uncomment the line to enable debug mode
    // SvEnableDebug();

    gstream = SvCreateStream();
}

public OnGameModeExit()
{
    if (gstream != SV_NONE)
    {
        SvDeleteStream(gstream);
        gstream = SV_NONE;
    }
}
