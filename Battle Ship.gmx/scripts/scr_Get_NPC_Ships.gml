///scr_Get_NPC_Ships();

//TODO: refactor this script. i believe a loop can be used to assign the ships to the grid
var grd_ships = ds_grid_create(10, 5);

//air craft carrier 5 hits
ds_grid_set(grd_ships, 0, 0, "Aircraft Carrier");//the name of the ship
ds_grid_set(grd_ships, 1, 0, 5);//the size of the ship
ds_grid_set(grd_ships, 9, 0, spr_aircraft_carrier);//the sprite to use

//battleship 4 hits
ds_grid_set(grd_ships, 0, 1, "Battleship");
ds_grid_set(grd_ships, 1, 1, 4);
ds_grid_set(grd_ships, 9, 1, spr_battle_ship);

//submarine 3 hits
ds_grid_set(grd_ships, 0, 2, "Cruiser");
ds_grid_set(grd_ships, 1, 2, 3);
ds_grid_set(grd_ships, 9, 2, spr_cruiser);

//destroyer 3 hits
ds_grid_set(grd_ships, 0, 3, "Submarine");
ds_grid_set(grd_ships, 1, 3, 3);
ds_grid_set(grd_ships, 9, 3, spr_cruiser);

//patrol boat 2 hits
ds_grid_set(grd_ships, 0, 4, "Patrol Boat");
ds_grid_set(grd_ships, 1, 4, 2);
ds_grid_set(grd_ships, 9, 5, spr_patrol_boat);


//clear the rest of the cell that dont have a value yet
ds_grid_set_region(grd_ships, 2, 0, 8, 4, 0);


return grd_ships;
