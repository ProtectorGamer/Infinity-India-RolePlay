#include <a_samp>
#include <core>
#include <float>
#include <sampvoice>
#include <sscanf2>

new glob8[2448];

new glob2648[62];

new glob2740;

new glob2744[1000];

new glob36E4[150];

new glob393C[1000];

new glob48DC[1000];


public OnFilterScriptInit()
{
	new var0[24];
	SSCANF_Init(GetMaxPlayers(), 65535, 24);
	glob8 = 1;
	for(new var1 = 0; var1 < 1000; var1++)
	{
		if(IsPlayerConnected(var1) && !SSCANF_IsConnected(var1))
		{
			GetPlayerName(var1, var0, 24);
			SSCANF_Join(var1, var0, IsPlayerNPC(var1));
		}
	}
	SSCANF_OnFilterScriptInit();
	return 1;
}

public OnGameModeInit()
{
	if(!glob8)
	{
		new var0[24];
		SSCANF_Init(GetMaxPlayers(), 65535, 24);
		glob8 = 1;
		for(new var1 = 0; var1 < 1000; var1++)
		{
			if(IsPlayerConnected(var1) && !SSCANF_IsConnected(var1))
			{
				GetPlayerName(var1, var0, 24);
				SSCANF_Join(var1, var0, IsPlayerNPC(var1));
			}
		}
	}
	SSCANF_OnGameModeInit();
	return 1;
}

public OnPlayerConnect(playerid)
{
	new var0[24];
	GetPlayerName(playerid, var0, 24);
	SSCANF_Join(playerid, var0, IsPlayerNPC(playerid));
	SSCANF_OnPlayerConnect(playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	SSCANF_OnPlayerDisconnect(playerid, reason);
	SSCANF_Leave(playerid);
	return 1;
}

public sscanf_weapon(arg0)
{
	if((57 >= arg0) & (48 <= arg0))
	{
		new var0 = strval(arg0);
		if((var0 <= 18) & (0 <= var0) || (var0 <= 46) & (22 <= var0))
		{
			return var0;
		}
	}
	else
	{
		if(!strcmp(arg0, "Unarmed"))
		{
			return 0;
		}
		if(!strcmp(arg0, "Brass Knuckles"))
		{
			return 1;
		}
		if(!strcmp(arg0, "Golf Club"))
		{
			return 2;
		}
		if(!strcmp(arg0, "Night Stick"))
		{
			return 3;
		}
		if(!strcmp(arg0, "Knife"))
		{
			return 4;
		}
		if(!strcmp(arg0, "Baseball Bat"))
		{
			return 5;
		}
		if(!strcmp(arg0, "Shovel"))
		{
			return 6;
		}
		if(!strcmp(arg0, "Pool cue"))
		{
			return 7;
		}
		if(!strcmp(arg0, "Katana"))
		{
			return 8;
		}
		if(!strcmp(arg0, "Chainsaw"))
		{
			return 9;
		}
		if(!strcmp(arg0, "Purple Dildo"))
		{
			return 10;
		}
		if(!strcmp(arg0, "White Dildo"))
		{
			return 11;
		}
		if(!strcmp(arg0, "Long White Dildo"))
		{
			return 12;
		}
		if(!strcmp(arg0, "White Dildo 2"))
		{
			return 13;
		}
		if(!strcmp(arg0, "Flowers"))
		{
			return 14;
		}
		if(!strcmp(arg0, "Cane"))
		{
			return 15;
		}
		if(!strcmp(arg0, "Grenades"))
		{
			return 16;
		}
		if(!strcmp(arg0, "Tear Gas"))
		{
			return 17;
		}
		if(!strcmp(arg0, "Molotovs"))
		{
			return 18;
		}
		if(!strcmp(arg0, "Pistol"))
		{
			return 22;
		}
		if(!strcmp(arg0, "Silenced Pistol"))
		{
			return 23;
		}
		if(!strcmp(arg0, "Desert Eagle"))
		{
			return 24;
		}
		if(!strcmp(arg0, "Shotgun"))
		{
			return 25;
		}
		if(!strcmp(arg0, "Sawn Off Shotgun"))
		{
			return 26;
		}
		if(!strcmp(arg0, "Combat Shotgun"))
		{
			return 27;
		}
		if(!strcmp(arg0, "Micro Uzi"))
		{
			return 28;
		}
		if(!strcmp(arg0, "Mac 10"))
		{
			return 28;
		}
		if(!strcmp(arg0, "MP5"))
		{
			return 29;
		}
		if(!strcmp(arg0, "AK47"))
		{
			return 30;
		}
		if(!strcmp(arg0, "M4"))
		{
			return 31;
		}
		if(!strcmp(arg0, "Tec9"))
		{
			return 32;
		}
		if(!strcmp(arg0, "Rifle"))
		{
			return 33;
		}
		if(!strcmp(arg0, "Sniper Rifle"))
		{
			return 34;
		}
		if(!strcmp(arg0, "RPG"))
		{
			return 35;
		}
		if(!strcmp(arg0, "Missile Launcher"))
		{
			return 36;
		}
		if(!strcmp(arg0, "Flame Thrower"))
		{
			return 37;
		}
		if(!strcmp(arg0, "Minigun"))
		{
			return 38;
		}
		if(!strcmp(arg0, "Sachel Charges"))
		{
			return 39;
		}
		if(!strcmp(arg0, "Detonator"))
		{
			return 40;
		}
		if(!strcmp(arg0, "Spray Paint"))
		{
			return 41;
		}
		if(!strcmp(arg0, "Fire Extinguisher"))
		{
			return 42;
		}
		if(!strcmp(arg0, "Camera"))
		{
			return 43;
		}
		if(!strcmp(arg0, "Nightvision Goggles"))
		{
			return 44;
		}
		if(!strcmp(arg0, "Thermal Goggles"))
		{
			return 45;
		}
		if(!strcmp(arg0, "Parachute"))
		{
			return 46;
		}
	}
	return -1;
}

public sscanf_vehicle(arg0)
{
	if((57 >= arg0) & (48 <= arg0))
	{
		new var0 = strval(arg0);
		if((611 >= var0) & (400 <= var0))
		{
			return var0;
		}
	}
	else
	{
		if(!strcmp(arg0, "Landstalker"))
		{
			return 400;
		}
		if(!strcmp(arg0, "Bravura"))
		{
			return 401;
		}
		if(!strcmp(arg0, "Buffalo"))
		{
			return 402;
		}
		if(!strcmp(arg0, "Linerunner"))
		{
			return 403;
		}
		if(!strcmp(arg0, "Perenniel"))
		{
			return 404;
		}
		if(!strcmp(arg0, "Sentinel"))
		{
			return 405;
		}
		if(!strcmp(arg0, "Dumper"))
		{
			return 406;
		}
		if(!strcmp(arg0, "Firetruck"))
		{
			return 407;
		}
		if(!strcmp(arg0, "Trashmaster"))
		{
			return 408;
		}
		if(!strcmp(arg0, "Stretch"))
		{
			return 409;
		}
		if(!strcmp(arg0, "Manana"))
		{
			return 410;
		}
		if(!strcmp(arg0, "Infernus"))
		{
			return 411;
		}
		if(!strcmp(arg0, "Voodoo"))
		{
			return 412;
		}
		if(!strcmp(arg0, "Pony"))
		{
			return 413;
		}
		if(!strcmp(arg0, "Mule"))
		{
			return 414;
		}
		if(!strcmp(arg0, "Cheetah"))
		{
			return 415;
		}
		if(!strcmp(arg0, "Ambulance"))
		{
			return 416;
		}
		if(!strcmp(arg0, "Leviathan"))
		{
			return 417;
		}
		if(!strcmp(arg0, "Moonbeam"))
		{
			return 418;
		}
		if(!strcmp(arg0, "Esperanto"))
		{
			return 419;
		}
		if(!strcmp(arg0, "Taxi"))
		{
			return 420;
		}
		if(!strcmp(arg0, "Washington"))
		{
			return 421;
		}
		if(!strcmp(arg0, "Bobcat"))
		{
			return 422;
		}
		if(!strcmp(arg0, "Mr Whoopee"))
		{
			return 423;
		}
		if(!strcmp(arg0, "BF Injection"))
		{
			return 424;
		}
		if(!strcmp(arg0, "Hunter"))
		{
			return 425;
		}
		if(!strcmp(arg0, "Premier"))
		{
			return 426;
		}
		if(!strcmp(arg0, "Enforcer"))
		{
			return 427;
		}
		if(!strcmp(arg0, "Securicar"))
		{
			return 428;
		}
		if(!strcmp(arg0, "Banshee"))
		{
			return 429;
		}
		if(!strcmp(arg0, "Predator"))
		{
			return 430;
		}
		if(!strcmp(arg0, "Bus"))
		{
			return 431;
		}
		if(!strcmp(arg0, "Rhino"))
		{
			return 432;
		}
		if(!strcmp(arg0, "Barracks"))
		{
			return 433;
		}
		if(!strcmp(arg0, "Hotknife"))
		{
			return 434;
		}
		if(!strcmp(arg0, "Article Trailer"))
		{
			return 435;
		}
		if(!strcmp(arg0, "Previon"))
		{
			return 436;
		}
		if(!strcmp(arg0, "Coach"))
		{
			return 437;
		}
		if(!strcmp(arg0, "Cabbie"))
		{
			return 438;
		}
		if(!strcmp(arg0, "Stallion"))
		{
			return 439;
		}
		if(!strcmp(arg0, "Rumpo"))
		{
			return 440;
		}
		if(!strcmp(arg0, "RC Bandit"))
		{
			return 441;
		}
		if(!strcmp(arg0, "Romero"))
		{
			return 442;
		}
		if(!strcmp(arg0, "Packer"))
		{
			return 443;
		}
		if(!strcmp(arg0, "Monster"))
		{
			return 444;
		}
		if(!strcmp(arg0, "Admiral"))
		{
			return 445;
		}
		if(!strcmp(arg0, "Squallo"))
		{
			return 446;
		}
		if(!strcmp(arg0, "Seasparrow"))
		{
			return 447;
		}
		if(!strcmp(arg0, "Pizzaboy"))
		{
			return 448;
		}
		if(!strcmp(arg0, "Tram"))
		{
			return 449;
		}
		if(!strcmp(arg0, "Article Trailer 2"))
		{
			return 450;
		}
		if(!strcmp(arg0, "Turismo"))
		{
			return 451;
		}
		if(!strcmp(arg0, "Speeder"))
		{
			return 452;
		}
		if(!strcmp(arg0, "Reefer"))
		{
			return 453;
		}
		if(!strcmp(arg0, "Tropic"))
		{
			return 454;
		}
		if(!strcmp(arg0, "Flatbed"))
		{
			return 455;
		}
		if(!strcmp(arg0, "Yankee"))
		{
			return 456;
		}
		if(!strcmp(arg0, "Caddy"))
		{
			return 457;
		}
		if(!strcmp(arg0, "Solair"))
		{
			return 458;
		}
		if(!strcmp(arg0, "Berkley's RC Van"))
		{
			return 459;
		}
		if(!strcmp(arg0, "Skimmer"))
		{
			return 460;
		}
		if(!strcmp(arg0, "PCJ-600"))
		{
			return 461;
		}
		if(!strcmp(arg0, "Faggio"))
		{
			return 462;
		}
		if(!strcmp(arg0, "Freeway"))
		{
			return 463;
		}
		if(!strcmp(arg0, "RC Baron"))
		{
			return 464;
		}
		if(!strcmp(arg0, "RC Raider"))
		{
			return 465;
		}
		if(!strcmp(arg0, "Glendale"))
		{
			return 466;
		}
		if(!strcmp(arg0, "Oceanic"))
		{
			return 467;
		}
		if(!strcmp(arg0, "Sanchez"))
		{
			return 468;
		}
		if(!strcmp(arg0, "Sparrow"))
		{
			return 469;
		}
		if(!strcmp(arg0, "Patriot"))
		{
			return 470;
		}
		if(!strcmp(arg0, "Quad"))
		{
			return 471;
		}
		if(!strcmp(arg0, "Coastguard"))
		{
			return 472;
		}
		if(!strcmp(arg0, "Dinghy"))
		{
			return 473;
		}
		if(!strcmp(arg0, "Hermes"))
		{
			return 474;
		}
		if(!strcmp(arg0, "Sabre"))
		{
			return 475;
		}
		if(!strcmp(arg0, "Rustler"))
		{
			return 476;
		}
		if(!strcmp(arg0, "ZR-350"))
		{
			return 477;
		}
		if(!strcmp(arg0, "Walton"))
		{
			return 478;
		}
		if(!strcmp(arg0, "Regina"))
		{
			return 479;
		}
		if(!strcmp(arg0, "Comet"))
		{
			return 480;
		}
		if(!strcmp(arg0, "BMX"))
		{
			return 481;
		}
		if(!strcmp(arg0, "Burrito"))
		{
			return 482;
		}
		if(!strcmp(arg0, "Camper"))
		{
			return 483;
		}
		if(!strcmp(arg0, "Marquis"))
		{
			return 484;
		}
		if(!strcmp(arg0, "Baggage"))
		{
			return 485;
		}
		if(!strcmp(arg0, "Dozer"))
		{
			return 486;
		}
		if(!strcmp(arg0, "Maverick"))
		{
			return 487;
		}
		if(!strcmp(arg0, "SAN News Maverick"))
		{
			return 488;
		}
		if(!strcmp(arg0, "Rancher"))
		{
			return 489;
		}
		if(!strcmp(arg0, "FBI Rancher"))
		{
			return 490;
		}
		if(!strcmp(arg0, "Virgo"))
		{
			return 491;
		}
		if(!strcmp(arg0, "Greenwood"))
		{
			return 492;
		}
		if(!strcmp(arg0, "Jetmax"))
		{
			return 493;
		}
		if(!strcmp(arg0, "Hotring Racer"))
		{
			return 494;
		}
		if(!strcmp(arg0, "Sandking"))
		{
			return 495;
		}
		if(!strcmp(arg0, "Blista Compact"))
		{
			return 496;
		}
		if(!strcmp(arg0, "Police Maverick"))
		{
			return 497;
		}
		if(!strcmp(arg0, "Boxville"))
		{
			return 498;
		}
		if(!strcmp(arg0, "Benson"))
		{
			return 499;
		}
		if(!strcmp(arg0, "Mesa"))
		{
			return 500;
		}
		if(!strcmp(arg0, "RC Goblin"))
		{
			return 501;
		}
		if(!strcmp(arg0, "Hotring Racer"))
		{
			return 502;
		}
		if(!strcmp(arg0, "Hotring Racer"))
		{
			return 503;
		}
		if(!strcmp(arg0, "Bloodring Banger"))
		{
			return 504;
		}
		if(!strcmp(arg0, "Rancher"))
		{
			return 505;
		}
		if(!strcmp(arg0, "Super GT"))
		{
			return 506;
		}
		if(!strcmp(arg0, "Elegant"))
		{
			return 507;
		}
		if(!strcmp(arg0, "Journey"))
		{
			return 508;
		}
		if(!strcmp(arg0, "Bike"))
		{
			return 509;
		}
		if(!strcmp(arg0, "Mountain Bike"))
		{
			return 510;
		}
		if(!strcmp(arg0, "Beagle"))
		{
			return 511;
		}
		if(!strcmp(arg0, "Cropduster"))
		{
			return 512;
		}
		if(!strcmp(arg0, "Stuntplane"))
		{
			return 513;
		}
		if(!strcmp(arg0, "Tanker"))
		{
			return 514;
		}
		if(!strcmp(arg0, "Roadtrain"))
		{
			return 515;
		}
		if(!strcmp(arg0, "Nebula"))
		{
			return 516;
		}
		if(!strcmp(arg0, "Majestic"))
		{
			return 517;
		}
		if(!strcmp(arg0, "Buccaneer"))
		{
			return 518;
		}
		if(!strcmp(arg0, "Shamal"))
		{
			return 519;
		}
		if(!strcmp(arg0, "Hydra"))
		{
			return 520;
		}
		if(!strcmp(arg0, "FCR-900"))
		{
			return 521;
		}
		if(!strcmp(arg0, "NRG-500"))
		{
			return 522;
		}
		if(!strcmp(arg0, "HPV1000"))
		{
			return 523;
		}
		if(!strcmp(arg0, "Cement Truck"))
		{
			return 524;
		}
		if(!strcmp(arg0, "Towtruck"))
		{
			return 525;
		}
		if(!strcmp(arg0, "Fortune"))
		{
			return 526;
		}
		if(!strcmp(arg0, "Cadrona"))
		{
			return 527;
		}
		if(!strcmp(arg0, "FBI Truck"))
		{
			return 528;
		}
		if(!strcmp(arg0, "Willard"))
		{
			return 529;
		}
		if(!strcmp(arg0, "Forklift"))
		{
			return 530;
		}
		if(!strcmp(arg0, "Tractor"))
		{
			return 531;
		}
		if(!strcmp(arg0, "Combine Harvester"))
		{
			return 532;
		}
		if(!strcmp(arg0, "Feltzer"))
		{
			return 533;
		}
		if(!strcmp(arg0, "Remington"))
		{
			return 534;
		}
		if(!strcmp(arg0, "Slamvan"))
		{
			return 535;
		}
		if(!strcmp(arg0, "Blade"))
		{
			return 536;
		}
		if(!strcmp(arg0, "Freight (Train)"))
		{
			return 537;
		}
		if(!strcmp(arg0, "Brownstreak (Train)"))
		{
			return 538;
		}
		if(!strcmp(arg0, "Vortex"))
		{
			return 539;
		}
		if(!strcmp(arg0, "Vincent"))
		{
			return 540;
		}
		if(!strcmp(arg0, "Bullet"))
		{
			return 541;
		}
		if(!strcmp(arg0, "Clover"))
		{
			return 542;
		}
		if(!strcmp(arg0, "Sadler"))
		{
			return 543;
		}
		if(!strcmp(arg0, "Firetruck LA"))
		{
			return 544;
		}
		if(!strcmp(arg0, "Hustler"))
		{
			return 545;
		}
		if(!strcmp(arg0, "Intruder"))
		{
			return 546;
		}
		if(!strcmp(arg0, "Primo"))
		{
			return 547;
		}
		if(!strcmp(arg0, "Cargobob"))
		{
			return 548;
		}
		if(!strcmp(arg0, "Tampa"))
		{
			return 549;
		}
		if(!strcmp(arg0, "Sunrise"))
		{
			return 550;
		}
		if(!strcmp(arg0, "Merit"))
		{
			return 551;
		}
		if(!strcmp(arg0, "Utility Van"))
		{
			return 552;
		}
		if(!strcmp(arg0, "Nevada"))
		{
			return 553;
		}
		if(!strcmp(arg0, "Yosemite"))
		{
			return 554;
		}
		if(!strcmp(arg0, "Windsor"))
		{
			return 555;
		}
		if(!strcmp(arg0, "Monster \"A\""))
		{
			return 556;
		}
		if(!strcmp(arg0, "Monster \"B\""))
		{
			return 557;
		}
		if(!strcmp(arg0, "Uranus"))
		{
			return 558;
		}
		if(!strcmp(arg0, "Jester"))
		{
			return 559;
		}
		if(!strcmp(arg0, "Sultan"))
		{
			return 560;
		}
		if(!strcmp(arg0, "Stratum"))
		{
			return 561;
		}
		if(!strcmp(arg0, "Elegy"))
		{
			return 562;
		}
		if(!strcmp(arg0, "Raindance"))
		{
			return 563;
		}
		if(!strcmp(arg0, "RC Tiger"))
		{
			return 564;
		}
		if(!strcmp(arg0, "Flash"))
		{
			return 565;
		}
		if(!strcmp(arg0, "Tahoma"))
		{
			return 566;
		}
		if(!strcmp(arg0, "Savanna"))
		{
			return 567;
		}
		if(!strcmp(arg0, "Bandito"))
		{
			return 568;
		}
		if(!strcmp(arg0, "Freight Flat Trailer (Train)"))
		{
			return 569;
		}
		if(!strcmp(arg0, "Streak Trailer (Train)"))
		{
			return 570;
		}
		if(!strcmp(arg0, "Kart"))
		{
			return 571;
		}
		if(!strcmp(arg0, "Mower"))
		{
			return 572;
		}
		if(!strcmp(arg0, "Dune"))
		{
			return 573;
		}
		if(!strcmp(arg0, "Sweeper"))
		{
			return 574;
		}
		if(!strcmp(arg0, "Broadway"))
		{
			return 575;
		}
		if(!strcmp(arg0, "Tornado"))
		{
			return 576;
		}
		if(!strcmp(arg0, "AT400"))
		{
			return 577;
		}
		if(!strcmp(arg0, "DFT-30"))
		{
			return 578;
		}
		if(!strcmp(arg0, "Huntley"))
		{
			return 579;
		}
		if(!strcmp(arg0, "Stafford"))
		{
			return 580;
		}
		if(!strcmp(arg0, "BF-400"))
		{
			return 581;
		}
		if(!strcmp(arg0, "Newsvan"))
		{
			return 582;
		}
		if(!strcmp(arg0, "Tug"))
		{
			return 583;
		}
		if(!strcmp(arg0, "Petrol Trailer"))
		{
			return 584;
		}
		if(!strcmp(arg0, "Emperor"))
		{
			return 585;
		}
		if(!strcmp(arg0, "Wayfarer"))
		{
			return 586;
		}
		if(!strcmp(arg0, "Euros"))
		{
			return 587;
		}
		if(!strcmp(arg0, "Hotdog"))
		{
			return 588;
		}
		if(!strcmp(arg0, "Club"))
		{
			return 589;
		}
		if(!strcmp(arg0, "Freight Box Trailer (Train)"))
		{
			return 590;
		}
		if(!strcmp(arg0, "Article Trailer 3"))
		{
			return 591;
		}
		if(!strcmp(arg0, "Andromada"))
		{
			return 592;
		}
		if(!strcmp(arg0, "Dodo"))
		{
			return 593;
		}
		if(!strcmp(arg0, "RC Cam"))
		{
			return 594;
		}
		if(!strcmp(arg0, "Launch"))
		{
			return 595;
		}
		if(!strcmp(arg0, "Police Car (LSPD)"))
		{
			return 596;
		}
		if(!strcmp(arg0, "Police Car (SFPD)"))
		{
			return 597;
		}
		if(!strcmp(arg0, "Police Car (LVPD)"))
		{
			return 598;
		}
		if(!strcmp(arg0, "Police Ranger"))
		{
			return 599;
		}
		if(!strcmp(arg0, "Picador"))
		{
			return 600;
		}
		if(!strcmp(arg0, "S.W.A.T."))
		{
			return 601;
		}
		if(!strcmp(arg0, "Alpha"))
		{
			return 602;
		}
		if(!strcmp(arg0, "Phoenix"))
		{
			return 603;
		}
		if(!strcmp(arg0, "Glendale Shit"))
		{
			return 604;
		}
		if(!strcmp(arg0, "Sadler Shit"))
		{
			return 605;
		}
		if(!strcmp(arg0, "Baggage Trailer \"A\""))
		{
			return 606;
		}
		if(!strcmp(arg0, "Baggage Trailer \"B\""))
		{
			return 607;
		}
		if(!strcmp(arg0, "Tug Stairs Trailer"))
		{
			return 608;
		}
		if(!strcmp(arg0, "Boxville"))
		{
			return 609;
		}
		if(!strcmp(arg0, "Farm Trailer"))
		{
			return 610;
		}
		if(!strcmp(arg0, "Utility Trailer"))
		{
			return 611;
		}
	}
	return -1;
}

main()
{
	return 0;
}

public SSCANF_OnFilterScriptInit()
{
	printf(glob2648);
	printf("// -------- Voice System & Radio System Loaded! -------- // ");
	printf(glob2740);
	return 0;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerActivationKeyPress(playerid, arg1)
{
	if(arg1 == 66 && glob48DC[playerid] == 1 && glob36E4[glob393C[playerid]] >= 1)
	{
		ApplyAnimation(playerid, "ped", "phone_talk", 4.0999, 1, 1, 1, 0, 0, 0);
		if(!IsPlayerAttachedObjectSlotUsed(playerid, 9))
		{
			SetPlayerAttachedObject(playerid, 9, 19942, 2, 1022739087, 1040583334, 3185120903, 1122880691, 1100532836, 1126452422, 1065353216, 1065353216, 1065353216, 0, 0);
		}
		SvAttachSpeakerToStream(glob36E4[glob393C[playerid]], playerid);
	}
	if(arg1 == 66 && !glob48DC[playerid] && glob2744[playerid])
	{
		SvAttachSpeakerToStream(glob2744[playerid], playerid);
	}
	return 0;
}

public OnPlayerActivationKeyRelease(playerid, arg1)
{
	if(arg1 == 66 && glob48DC[playerid] == 1 && glob36E4[glob393C[playerid]] >= 1)
	{
		SvDetachSpeakerFromStream(glob36E4[glob393C[playerid]], playerid);
		ClearAnimations(playerid, 0);
		if(IsPlayerAttachedObjectSlotUsed(playerid, 9))
		{
			RemovePlayerAttachedObject(playerid, 9);
		}
	}
	if(arg1 == 66 && !glob48DC[playerid] && glob2744[playerid])
	{
		SvDetachSpeakerFromStream(glob2744[playerid], playerid);
	}
	return 0;
}

public SSCANF_OnPlayerConnect(playerid)
{
	glob393C[playerid] = 0;
	glob48DC[playerid] = 0;
	if(!SvGetVersion(playerid))
	{
		SendClientMessage(playerid, 0xFFFFFFFF, "Could not find plugin sampvoice.");
	}
	else if(!SvHasMicro(playerid))
	{
		SendClientMessage(playerid, 0xFFFFFFFF, "The microphone could not be found.");
	}
	else if(glob2744[playerid] = SvCreateDLStreamAtPlayer(1097859072, 4294967295, playerid, 4278190335, 22984))
	{
		SendClientMessage(playerid, 0xFFFFFFFF, "Voice Only System");
		SvAddKey(playerid, 66);
	}
	return 0;
}

public SSCANF_OnPlayerDisconnect(arg0)
{
	glob393C[arg0] = 0;
	glob48DC[arg0] = 0;
	if(glob2744[arg0])
	{
		SvDeleteStream(glob2744[arg0]);
		glob2744[arg0] = 0;
	}
	return 0;
}

public SSCANF_OnGameModeInit()
{
	for(new var0 = 0; var0 < 150; var0++)
	{
		glob36E4[var0] = SvCreateGStream(4294901760, 23080);
	}
	return 0;
}

public OnGameModeExit()
{
	return 0;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & 512 || newkeys & 1024)
	{
		if(glob48DC[playerid] == 1)
		{
			SvDetachListenerFromStream(glob36E4[glob393C[playerid]], playerid);
			new var0[168];
			format(var0, 168, "{FFFF00}[RADIO]: {ffffff}%s disconnected to the frequency (%d Khz)", function6D38(playerid), 14652);
			SendClientMessage(playerid, 0xFF0000FF, var0);
			glob48DC[playerid] = 0;
		}
		else if(!glob48DC[playerid])
		{
			SvAttachListenerToStream(glob36E4[glob393C[playerid]], playerid);
			new var0[168];
			format(var0, 168, "{FFFF00}[RADIO]: {ffffff}%s connected to the frequency (%d Khz)", function6D38(playerid), 14652);
			SendClientMessage(playerid, 0xFF0000FF, var0);
			glob48DC[playerid] = 1;
		}
	}
	return 0;
}

function6D38(playerid)
{
	new var0[25];
	GetPlayerName(playerid, var0, 25);
	return var0;
}

public pc_cmd_vr(playerid, arg1)
{
	new var0 = 0;
	if(sscanf(arg1, 23628, var0))
	{
		return SendClientMessage(playerid, 0xFFFFFFFF, "USAGE: /vr [1 - 150]");
	}
	if(var0 > 150 || var0 < 1)
	{
		return SendClientMessage(playerid, 0xFF0000FF, "Invalid Frequency!");
	}
	new var1[168];
	glob393C[playerid] = var0;
	format(var1, 128, "{FFFF00}[RADIO]: {ffffff}set your freq to (%d Khz)", 14652);
	SendClientMessage(playerid, 0x00AE00FF, var1);
	glob48DC[playerid] = 1;
	SvAttachListenerToStream(glob36E4[glob393C[playerid]], playerid);
	return 1;
}

