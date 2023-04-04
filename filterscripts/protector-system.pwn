#include <a_samp>
#include <a_mysql>
#include <sscanf2>
#define MAX_INTERIORS 10

new
    Interiors[MAX_INTERIORS][2] =
    {
        // {interior id, store entrance position}
        {1, 174.0238, -11.3392, 1001.3438},
        {2, 123.0438, -22.3192, 1001.3438},
        {3, 74.1238, -33.2992, 1001.3438},
        // add more interiors here
    };

new Thread:db_thread;

forward DBThread();
forward mysql_fetch_row();
forward mysql_fetch_int();
forward mysql_fetch_float();

#if defined FILTERSCRIPT
public OnFilterScriptInit()
{
    // Start the thread
    db_thread = Thread_Create(DBThread);
    Thread_Start(db_thread);
}
#endif

public DBThread()
{
    // Connect to the MySQL database
    new mysql = mysql_connect("localhost", "username", "password", "database");

    // Check if the connection was successful
    if (mysql_errno(mysql) != 0)
    {
        printf("Error connecting to database: %s", mysql_error());
        return;
    }

    // Prepare the query
    new query[128];
    format(query, sizeof(query), "SELECT * FROM store_interiors");

    // Execute the query
    mysql_query(mysql, query);

    // Loop through the results
    new row[64];
    new cols = mysql_num_fields(mysql);
    while (mysql_fetch_row(mysql, row))
    {
        // Get the values from the row
        new interior_id = mysql_fetch_int(row, 0);
        new x = mysql_fetch_float(row, 1);
        new y = mysql_fetch_float(row, 2);
        new z = mysql_fetch_float(row, 3);

        // Do something with the values
        printf("Loaded interior %d at position (%f, %f, %f)", interior_id, x, y, z);
    }

    // Close the MySQL connection
    mysql_close(mysql);
}

public mysql_fetch_row(mysql, row[])
{
    return mysql_fetch_row(mysql, row, sizeof(row));
}

public mysql_fetch_int(row[], col)
{
    return strval(row[col]);
}

public mysql_fetch_float(row[], col)
{
    new Float:result;
    sscanf(row[col], "%f", result);
    return 1;
}

CMD:createstore(playerid, params[])
{
    if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, -1, "You do not have permission to use this command.");
    if(!strlen(params)) return SendClientMessage(playerid, -1, "Usage: /createstore [interior id]");

    new interior_id = strval(params);
    if(interior_id < 1 || interior_id > MAX_INTERIORS) return SendClientMessage(playerid, -1, "Invalid interior id.");

    new Float:pos[3];
    pos[0] = Interiors[interior_id - 1][1];
    pos[1] = Interiors[interior_id - 1][2];
    pos[2] = 1001.3438;

    new store_id = CreateDynamicPickup(1272, 23, pos[0], pos[1], pos[2]);
    SetDynamicPickupAsInteractable(store_id, 1);
    SendClientMessage(playerid, -1, "Store entrance created for interior id %d.", interior_id);

    // Insert the interior id and store position into the MySQL table
    new query[128];
    format(query, sizeof(query), "INSERT INTO store_interiors (interior_id, x, y, z) VALUES (%d, %f, %f, %f)", interior_id, pos[0], pos[1], pos[2]);
    mysql_query(gMySQL, query);
    
    return 1;
}

