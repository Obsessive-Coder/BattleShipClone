///scr_Update_NPC_Ship_Coords(ship_size, ary_coords);

//TODO: this script is "ROUGH" and needs to be refactored

var ship_size = argument0;
var ary_coords = argument1;

do
{
    //get the y index of the value for size of ship
    var int_y_index = ds_grid_value_y(global.grd_npc_ships, 1, 0, 1, 4, ship_size);
}
until (ds_grid_get(global.grd_npc_ships, 3, int_y_index) = false);


//set x1, y1, x2, and y2 for the placed ship in the grid of npc ships
for (var i = 0; i < 4 i += 1)
{
    ds_grid_set(global.grd_npc_ships, i + 4, int_y_index, ary_coords[i]);
};

