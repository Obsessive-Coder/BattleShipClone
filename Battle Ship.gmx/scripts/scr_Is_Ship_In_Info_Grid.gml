///scr_Is_Ship_In_Info_Grid(player);

var player = argument0;

//the index of the last row in the grid(height of grid - 1)
var height_index = ds_grid_height(player.grd_ship_hit_info) - 1;

//return true if the ship exists; false if not
return ds_grid_value_exists(player.grd_ship_hit_info, 0, 0, 0, height_index, player.last_ship_hit);
