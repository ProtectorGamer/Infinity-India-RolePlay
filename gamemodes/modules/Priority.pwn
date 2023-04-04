enum bindEnum
{
    bindType, // (1) /me (2) /do. ---- THIS IS FOR OPTION 1
    bindType2, // (1) /me (2) /do. ---- THIS IS FOR OPTION 2
    bindType3, // (1) /me (2) /do. ---- THIS IS FOR OPTION 3
    bindOption
};
new BindInfo[bindEnum];

//----------------------------[BINDS BY WYNN]-------------------------------------------------
/*SetBindType(playerid)
{
	if(BindInfo[bindOption] == 1)
	{
	    if(BindInfo[bindType] == 1)
	    {
	        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind]));
	    }
	    if(BindInfo[bindType] == 2)
	    {
	        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind]), GetRPName(playerid));
	    }
	    if(BindInfo[bindType] == 3)
	    {
	        if(PlayerInfo[playerid][pFaction == -1)
	    }
	}
	if(BindInfo[bindOption] == 2)
	{
	    if(BindInfo[bindType] == 1)
	    {
	        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind2]));
	    }
	    if(BindInfo[bindType] == 2)
	    {
	        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind2]), GetRPName(playerid));
	    }
	    if(BindInfo[bindType] == 3)
	    {
	        if(PlayerInfo[playerid][pFaction == -1)
	    }
	}
	if(BindInfo[bindOption] == 3)
	{
	    if(BindInfo[bindType] == 1)
	    {
	        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind3]));
	    }
	    if(BindInfo[bindType] == 2)
	    {
	        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind3]), GetRPName(playerid));
	    }
	    if(BindInfo[bindType] == 3)
	    {
	        if(PlayerInfo[playerid][pFaction == -1)
	    }
	}
	return 1;
}*/
GetBindType()
{
    new string[12];
	if(BindInfo[bindType] == 1)
	{
	    string = "/me";
	}
	if(BindInfo[bindType] == 2)
	{
	    string = "/do";
	}
	return 1;
}
GetBindType2()
{
    new string[12];

	if(BindInfo[bindType2] == 1)
	{
	    string = "/me";
	}
	if(BindInfo[bindType2] == 2)
	{
	    string = "/do";
	}
	return 1;
}
GetBindType3()
{
    new string[12];

	if(BindInfo[bindType3] == 1)
	{
	    string = "/me";
	}
	if(BindInfo[bindType3] == 2)
	{
	    string = "/do";
	}
	return 1;
}
Binds1(playerid)
{
    if(BindInfo[bindType] == 1)
    {
        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind]));
    }
    if(BindInfo[bindType] == 2)
    {
        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind]), GetRPName(playerid));
    }
    /*if(BindInfo[bindType] == 3)
    {
        if(PlayerInfo[playerid][pFaction == -1)
    }*/
}
Binds2(playerid)
{
    if(BindInfo[bindType2] == 1)
    {
        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind]));
    }
    if(BindInfo[bindType2] == 2)
    {
        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind]), GetRPName(playerid));
    }
    /*if(BindInfo[bindType2] == 3)
    {
        if(PlayerInfo[playerid][pFaction == -1)
    }*/
}
Binds3(playerid)
{
    if(BindInfo[bindType3] == 1)
    {
        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind]));
    }
    if(BindInfo[bindType3] == 2)
    {
        SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind]), GetRPName(playerid));
    }
    /*if(BindInfo[bindType3] == 3)
    {
        if(PlayerInfo[playerid][pFaction == -1)
    }*/
}

//Commands
//------------------------[BINDS BY WYNN]---------------------------------
CMD:setbind(playerid, params[])
{
    new level, option[8], newval[128];

    if(!(0 <= level <= 8))
	{
	    return SCM(playerid, COLOR_SYNTAX, "Invalid Slot. Bind Slot is 1 to 8 Only.");
    }
	if(sscanf(params, "s[8]s[128]", option, newval))
	{
	    SCM(playerid, COLOR_SYNTAX, "Usage: /setbind [slot] [text]");
	    SM(playerid, COLOR_GREY2, "[SLOT 1]: %s : %s", GetBindType(), (pData[playerid][pBind]));
        SM(playerid, COLOR_GREY2, "[SLOT 2]: %s : %s", GetBindType2(), (pData[playerid][pBind2]));
	    SM(playerid, COLOR_GREY2, "[SLOT 3]: %s : %s", GetBindType3(), (pData[playerid][pBind3]));
	    SM(playerid, COLOR_GREY2, "[SLOT 4]: /me : %s",(pData[playerid][pBind4]));
	    SM(playerid, COLOR_GREY2, "[SLOT 5]: /do : %s",(pData[playerid][pBind5]));
	    SM(playerid, COLOR_GREY2, "[SLOT 6]: /do : %s",(pData[playerid][pBind6]));
	    SM(playerid, COLOR_GREY2, "[SLOT 7]: /do : %s",(pData[playerid][pBind7]));
	    SM(playerid, COLOR_GREY2, "[SLOT 8]: /do : %s",(pData[playerid][pBind8]));
	    return 1;
	}
	/*if(pData[playerid][pFaction] != 0)
	{
	    SM(playerid, COLOR_YELLOW, "You can edit their type.");
	}*/
	if(!strcmp(option, "1", true))
	{
		{
		    BindInfo[bindOption] = 1;
	    	strcpy(pData[playerid][pBind], newval, 128);
	    	SM(playerid, COLOR_SYNTAX, "You set you bind slot 1 To '%s'.",(pData[playerid][pBind]));
	    	mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET bind1 = '%e' WHERE uid = %i", pData[playerid][pBind], pData[playerid][pID]);
			mysql_tquery(connectionID, queryBuffer);
		}
	}
	if(!strcmp(option, "2", true))
	{
		{
		    BindInfo[bindOption] = 2;
	    	strcpy(pData[playerid][pBind2], newval, 128);
	    	SM(playerid, COLOR_SYNTAX, "You set you bind slot 2 To '%s'.",(pData[playerid][pBind2]));
	    	mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET bind2 = '%e' WHERE uid = %i", pData[playerid][pBind2], pData[playerid][pID]);
			mysql_tquery(connectionID, queryBuffer);
		}
	}
	if(!strcmp(option, "3", true))
	{
		{
		    BindInfo[bindOption] = 3;
	    	strcpy(pData[playerid][pBind3], newval, 128);
	    	SM(playerid, COLOR_SYNTAX, "You set you bind slot 3 To '%s'.",(pData[playerid][pBind3]));
		}
	}
	if(!strcmp(option, "4", true))
	{
		{
	    	strcpy(pData[playerid][pBind4], newval, 128);
	    	SM(playerid, COLOR_SYNTAX, "You set you bind slot 4 To '%s'.",(pData[playerid][pBind4]));
		}
	}
	if(!strcmp(option, "5", true))
	{
		{
	    	strcpy(pData[playerid][pBind5], newval, 128);
	    	SM(playerid, COLOR_SYNTAX, "You set you bind slot 5 To '%s'.",(pData[playerid][pBind5]));
		}
	}
	if(!strcmp(option, "6", true))
	{
		{
	    	strcpy(pData[playerid][pBind6], newval, 128);
	    	SM(playerid, COLOR_SYNTAX, "You set you bind slot 6 To '%s'.",(pData[playerid][pBind6]));
		}
	}
	if(!strcmp(option, "7", true))
	{
		{
	    	strcpy(pData[playerid][pBind7], newval, 128);
	    	SM(playerid, COLOR_SYNTAX, "You set you bind slot 7 To '%s'.",(pData[playerid][pBind7]));
		}
	}
	if(!strcmp(option, "8", true))
	{
		{
	    	strcpy(pData[playerid][pBind8], newval, 128);
	    	SM(playerid, COLOR_SYNTAX, "You set you bind slot 8 To '%s'.",(pData[playerid][pBind8]));
		}
	}
	return 1;
}
CMD:setbindtype(playerid, params[])
{
    new level, option[8], type;

    if(!(0 <= level <= 8))
	{
	    return SCM(playerid, COLOR_SYNTAX, "Invalid Slot. Bind Slot is 1 to 8 Only.");
    }
	if(sscanf(params, "s[8]s[128]", option, type))
	{
	    SCM(playerid, COLOR_SYNTAX, "Usage: /setbindtype [slot] [type]");
	    SM(playerid, COLOR_WHITE, "Available Types: 1, 2");
	    return 1;
	}
	/*if(pData[playerid][pFaction] != 0)
	{
	    SM(playerid, COLOR_YELLOW, "You can edit their type.");
	}*/
	if(!strcmp(option, "1", true))
	{
		SCM(playerid, COLOR_SYNTAX, "Usage: /setbind 1 [type]");
	    SM(playerid, COLOR_WHITE, "Available Types: 1, 2");

	    BindInfo[bindType] = type;

	    switch(type)
	    {
	        case 1:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot 1's type to '/me'.");
	        }
	        case 2:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot 1's type to '/do'.");
	        }
	        /*case 3:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot 1's type to '/r'.");
	        }*/
		}
	}
	if(!strcmp(option, "2", true))
	{
		SCM(playerid, COLOR_SYNTAX, "Usage: /setbind 2 [type]");
	    SM(playerid, COLOR_WHITE, "Available Types: 1, 2");

	    BindInfo[bindType2] = type;

	    switch(type)
	    {
	        case 1:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot's type to '/me'.");
	        }
	        case 2:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot's type to '/do'.");
	        }
	        /*case 3:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot's type to '/r'.");
	        }*/
		}
	}
	if(!strcmp(option, "3", true))
	{
		SCM(playerid, COLOR_SYNTAX, "Usage: /setbind [slot] [type]");
	    SM(playerid, COLOR_WHITE, "Available Types: 1, 2");

	    BindInfo[bindType3] = type;

	    switch(type)
	    {
	        case 1:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot's type to '/me'.");
	        }
	        case 2:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot's type to '/do'.");
	        }
	        /*case 3:
	        {
	            SCM(playerid, COLOR_WHITE, "You have set slot's type to '/r'.");
	        }*/
		}
	}
	if(!strcmp(option, "4", true))
	{
		{
	    	//strcpy(pData[playerid][pBind4], newval, 128);
	    	//SM(playerid, COLOR_SYNTAX, "You set you bind slot 4 To '%s'.",(pData[playerid][pBind4]));
	        SCM(playerid, COLOR_WHITE, "Coming Soon.");
		}
	}
	if(!strcmp(option, "5", true))
	{
		{
	    	SCM(playerid, COLOR_WHITE, "Coming Soon.");
		}
	}
	if(!strcmp(option, "6", true))
	{
		{
	    	SCM(playerid, COLOR_WHITE, "Coming Soon.");
		}
	}
	if(!strcmp(option, "7", true))
	{
		{
	    	SCM(playerid, COLOR_WHITE, "Coming Soon.");
		}
	}
	if(!strcmp(option, "8", true))
	{
		{
	    	SCM(playerid, COLOR_WHITE, "Coming Soon.");
		}
	}
	return 1;
}
CMD:bind(playerid, params[])
{
    new level, option[8];

    if(!(0 <= level <= 8))
	{
	    return SCM(playerid, COLOR_SYNTAX, "Invalid Slot. Bind Slot is 1 to 8 Only.");
	}
	if(sscanf(params, "s[8]", option))
	{
	    SCM(playerid, COLOR_SYNTAX, "Usage: /bind [slot]");
        SM(playerid, COLOR_GREY2, "[SLOT 1]: %s : %s", GetBindType(), (pData[playerid][pBind]));
        SM(playerid, COLOR_GREY2, "[SLOT 2]: %s : %s", GetBindType2(), (pData[playerid][pBind2]));
	    SM(playerid, COLOR_GREY2, "[SLOT 3]: %s : %s", GetBindType3(), (pData[playerid][pBind3]));
	    SM(playerid, COLOR_GREY2, "[SLOT 4]: /me : %s",(pData[playerid][pBind4]));
	    SM(playerid, COLOR_GREY2, "[SLOT 5]: /do : %s",(pData[playerid][pBind5]));
	    SM(playerid, COLOR_GREY2, "[SLOT 6]: /do : %s",(pData[playerid][pBind6]));
	    SM(playerid, COLOR_GREY2, "[SLOT 7]: /do : %s",(pData[playerid][pBind7]));
	    SM(playerid, COLOR_GREY2, "[SLOT 8]: /do : %s",(pData[playerid][pBind8]));
	    return 1;
	}
	if(!strcmp(option, "1", true))
	{
		{
	    	//SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind]));
	    	//CallLocalFunction("OnPlayerText", "s", (pData[playerid][pBind]));
	        Binds1(playerid);
		}
	}
	if(!strcmp(option, "2", true))
	{
		{
	    	//SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind2]));
	        Binds2(playerid);
		}
	}
    if(!strcmp(option, "3", true))
	{
		{
	    	//SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind3]));
	        Binds3(playerid);
		}
	}
	if(!strcmp(option, "4", true))
	{
		{
	    	SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind4]));
		}
	}
	if(!strcmp(option, "5", true))
	{
		{
	    	SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind5]), GetRPName(playerid));
		}
	}
	if(!strcmp(option, "6", true))
	{
		{
	    	SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind6]), GetRPName(playerid));
		}
	}
	if(!strcmp(option, "7", true))
	{
		{
	    	SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind7]), GetRPName(playerid));
		}
	}
	if(!strcmp(option, "8", true))
	{
		{
	    	SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind8]), GetRPName(playerid));
		}
	}
	return 1;
}
// /b1-8
CMD:b1(playerid, params[])
{
    //SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind]));
    Binds1(playerid);
}

CMD:b2(playerid, params[])
{
    //SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind2]));
    Binds2(playerid);
}

CMD:b3(playerid, params[])
{
    //SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind3]));
    Binds3(playerid);
}

CMD:b4(playerid, params[])
{
    SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA}* %s %s", GetRPName(playerid), (pData[playerid][pBind4]));
}

CMD:b5(playerid, params[])
{
    SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind5]), GetRPName(playerid));
}

CMD:b6(playerid, params[])
{
    SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind6]), GetRPName(playerid));
}

CMD:b7(playerid, params[])
{
    SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind7]), GetRPName(playerid));
}

CMD:b8(playerid, params[])
{
    SendProximityMessage(playerid, 20.0, SERVER_COLOR, "{C2A2DA} %s (( %s ))", (pData[playerid][pBind8]), GetRPName(playerid));
}
//
