///scr_Update_Ship_Position(game_board, ary_region_coords, value);

var game_board = argument0;
var ary_region_coords = argument1;
var value = argument2;

//set the cells of the ships region to the value passed in. used for picking up and placing ships
ds_grid_set_region(game_board, ary_region_coords[0], ary_region_coords[1], ary_region_coords[2], ary_region_coords[3], value);
