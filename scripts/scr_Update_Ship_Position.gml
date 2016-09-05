//argument0 = game board to update
//argument1[] = array of ship coords (x1, y1, x2, y2)
//argument2 = value to assign
var game_board = argument0;


//remove 1 from each coordinate so its a zero based index
var i;
for ( i = 0; i < array_length_1d(argument1[]); i += 1)
{
    argument1[i] -= 1;
};


//set the cells of the ships region to 1(occupied)
ds_grid_set_region(game_board, argument1[0], argument1[1], argument1[2], argument1[3], argument2);

return game_board;
