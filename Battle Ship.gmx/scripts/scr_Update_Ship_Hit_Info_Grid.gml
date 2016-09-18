///scr_Update_Ship_Hit_Info_Grid(player);

var player = argument0;

//get the y index of the ship in the grid
var y_index = ds_grid_value_y(player.grd_ship_hit_info, 0, 0, 0, ds_grid_height(player.grd_ship_hit_info) - 1, player.last_ship_hit);

//update the x and y coords in the grid
for(var i = 0; i < 2; i += 1){
  ds_grid_set(player.grd_ship_hit_info, i + 1, y_index, player.ary_last_hit_coords[i]);
};

//update the last attempted direction
ds_grid_set(player.grd_ship_hit_info, 3, y_index, player.str_last_direction_attempt);
