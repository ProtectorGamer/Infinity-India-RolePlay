/*----------------------------------------------------------------------------------------------------*-

Автор:
	Fro он же Fro1sha
	
Описание:
	GMT время в SA:MP
 
Права: 
    Copyright © 2009-2011 TBG
	


                            ______              __________             
                            ___  /______  __    ___  ____/____________ 
                            __  __ \_  / / /    __  /_   __  ___/  __ \
                            _  /_/ /  /_/ /     _  __/   _  /   / /_/ /
                            /_.___/_\__, /      /_/      /_/    \____/ 
                                   /____/                              
                                                                              
																				
           _______________       _________                                              
           ___  __/__  __ )      __  ____/_____ _______ ________________ ___________  __
           __  /  __  __  |_______  / __ _  __ `/_  __ `__ \  _ \_  ___/ __  ___/  / / /
           _  /   _  /_/ /_/_____/ /_/ / / /_/ /_  / / / / /  __/(__  )___  /   / /_/ / 
           /_/    /_____/        \____/  \__,_/ /_/ /_/ /_/\___//____/_(_)_/    \__,_/  
                                                                                        

	http://tb-games.ru/
	
-*----------------------------------------------------------------------------------------------------*/

#if defined _gmtime_included
  #endinput
#endif
#define _gmtime_included
#pragma library gmtime

// -------------------------------------------------------------------------------------*-

native gm_SetTimeZone(hour = 0, minute = 0);
native gm_gettime(&hour = 0, &minute = 0, &second = 0);
native gm_getdate(&year=0, &month = 0, &day = 0, &wday = 0);

native gm_strftime(const string[], dest[], size = sizeof(dest));
native gm_timestamp();
native gm_mktime(hour, minute, second, year, month, day);
native gm_timestamp_to_date(timestamp, &hour = 0, &minute = 0, &second = 0, &year = 0, &month = 0, &day = 0);

native gm_GetMonthDay(month, year = 1990);
native gm_ConvertSeconds(time, &hour = 0, &minute = 0, &second = 0, &year = 0, &month = 0, &day = 0);

// -------------------------------------------------------------------------------------*-

#if defined AUTO_SETUP

#define SetTimeZone 		gm_SetTimeZone
#define gettime 			gm_gettime
#define getdate 			gm_getdate
#define strftime 			gm_strftime
#define timestamp 			gm_timestamp
#define mktime 				gm_mktime
#define timestamp_to_date 	gm_timestamp_to_date
#define GetMonthDay 		gm_GetMonthDay
#define ConvertSeconds 		gm_ConvertSeconds

#undef AUTO_SETUP

#endif

// -------------------------------------------------------------------------------------*-

#if !defined IsLeapYear

#define IsLeapYear(%0) \
    ((!((%0) & 0x03)) && (((%0) % 100) || !((%0) % 400)))
	
#endif
	
// -------------------------------------------------------------------------------------*-

stock NOW()
{
	new
		result[ 32 ],
		year,
		month,
		day,
		hour,
		minute,
		second
	;
	
	getdate(year, month, day);
	gettime(hour, minute, second);
	
	format(result, sizeof result, "%d-%02d-%02d %02d:%02d:%02d", year, month, day, hour, minute, second);
	
	return result;
}

// -------------------------------------------------------------------------------------*-

stock CURDATE()
{
	new
		result[ 20 ],
		year,
		month,
		day
	;
	
	getdate(year, month, day);
	
	format(result, sizeof result, "%d-%02d-%02d", year, month, day);
	
	return result;
}

// -------------------------------------------------------------------------------------*-

stock CURTIME()
{
	new
		result[ 20 ],
		hour,
		minute,
		second
	;
	
	gettime(hour, minute, second);
	
	format(result, sizeof result, "%02d:%02d:%02d", hour, minute, second);
	
	return result;
}

// -------------------------------------------------------------------------------------*-	
/*
stock GetMonthName(month)
{
	new 
		result[ 20 ]
	;
		
	switch ( month )
	{
		case 1: result = "Январь";
		case 2: result = "Февраль";
		case 3: result = "Март";
		case 4: result = "Апрель";
		case 5: result = "Май";
		case 6: result = "Июнь";
		case 7: result = "Июль";
		case 8: result = "Август";
		case 9: result = "Сентябрь";
		case 10: result = "Октябрь";
		case 11: result = "Ноябрь";
		case 12: result = "Декабрь";
		default: result = "Ошибка";
	}
	
 	return result;
}

// -------------------------------------------------------------------------------------*-

stock GetDayName(weekday)
{
	new 
		result[ 20 ]
	;
	
	switch ( weekday )
	{
		case 1:	result = "Понедельник";
		case 2:	result = "Вторник";
		case 3:	result = "Среда";
		case 4:	result = "Четверг";
		case 5:	result = "Пятница";
		case 6:	result = "Суббота";
		case 0:	result = "Воскресенье";
       	default: result = "Ошибка";
	}
	
	return result;
}
*/
// -------------------------------------------------------------------------------------*-