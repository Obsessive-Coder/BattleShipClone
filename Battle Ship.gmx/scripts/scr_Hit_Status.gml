///scr_Hit_Status(game_board, ary_coords);

var game_board = argument0;
var ary_coords = argument1;
 
var cell_value = ds_grid_get(game_board, ary_coords[0], ary_coords[1]);
if(cell_value = 1){
    return "hit";
}

//return miss on any value other than 1(ship occupies cell)
return "miss";
