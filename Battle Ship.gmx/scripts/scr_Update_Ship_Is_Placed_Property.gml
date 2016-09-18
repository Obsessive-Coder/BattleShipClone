///scr_Update_Ship_Is_Placed_Property(ship_size);

//TODO: this script should be refactored so that it takes the ship id as the argument and uses the id to find the ship.

var ship_size = argument0;

//find the ship size in the list of ships
//TODO: this is done elsewhere and a script should be created for it
do
{
    //get the y index of the value for size of ship
    var int_y_index = ds_grid_value_y(global.grd_npc_ships, 1, 0, 1, 4, argument0);
}
until (ds_grid_get(global.grd_npc_ships, 3, int_y_index) = false);

ds_grid_set(global.grd_npc_ships, 3, int_y_index, true);
