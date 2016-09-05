//argument0 = the ship to update
//argument1 = the array of the ship's region coordinates

do
{
    //get the y index of the value for size of ship
    var int_y_index = ds_grid_value_y(global.grd_npc_ships, 1, 0, 1, 4, argument0);
}
until (ds_grid_get(global.grd_npc_ships, 4, int_y_index) = 0);


//set x1, y1, x2, and y2 for the placed ship in the grid of npc ships
for (var i = 0; i < 4 i += 1)
{
    ds_grid_set(global.grd_npc_ships, i + 4, int_y_index, argument1[i]);
};

