var grd_ships = ds_grid_create(8, 5);

//air craft carrier 5 hits
ds_grid_set(grd_ships, 0, 0, "Aircraft Carrier");
ds_grid_set(grd_ships, 1, 0, 5);

//battleship 4 hits
ds_grid_set(grd_ships, 0, 1, "Battleship");
ds_grid_set(grd_ships, 1, 1, 4);

//submarine 3 hits
ds_grid_set(grd_ships, 0, 2, "Submarine");
ds_grid_set(grd_ships, 1, 2, 3);

//destroyer 3 hits
ds_grid_set(grd_ships, 0, 3, "Destroyer");
ds_grid_set(grd_ships, 1, 3, 3);

//patrol boat 2 hits
ds_grid_set(grd_ships, 0, 4, "Patrol Boat");
ds_grid_set(grd_ships, 1, 4, 2);

return grd_ships;
