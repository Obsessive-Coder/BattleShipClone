///scr_Hit_Ship(game_board, ary_board_coords, ary_hit_coords);

var game_board = argument0;
var ary_board_coords = argument1;
var ary_hit_coords = argument2;

//change the value of the cell in the game board
ds_grid_set(game_board, ary_board_coords[0], ary_board_coords[1], 3);

//get the ship that was hit
var ship_hit = instance_position(ary_hit_coords[0], ary_hit_coords[1], obj_ship);

//remove 1 hit from the ship
ship_hit.int_hits_taken += 1;

return ship_hit;
