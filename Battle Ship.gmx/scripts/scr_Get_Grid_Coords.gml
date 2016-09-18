///scr_Get_Grid_Coords(x_pos, y_pos);
//Returns an array of game board coordinates (1-10) for the row and column under the mouse

var x_pos = argument0;
var y_pos = argument1;

var ary_coords;
//x_pos and y_pos divided by the size of grid square
//the -1 and minus 7 are adjustments used for finding the game board on the screen
ary_coords[0] = floor(x_pos / global.int_grid_square_size) - 1;
ary_coords[1] = floor(y_pos / global.int_grid_square_size) - 7;

return ary_coords;
