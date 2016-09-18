///scr_Convert_To_Screen_Coords(player, ary_coords);

//converts the zero based grid coords to its screen coords relevent to the players game board

var player = argument0;
var ary_coords = argument1;

var ary_screen_coords;

//loop through each item in ary_coords and convert to screen coords
for (var i = 0; i < array_length_1d(ary_coords); i += 1)
{
  //convert zero based grid coords to their respective screen positions
  ary_screen_coords[i] = ((ary_coords[i] + player.cell_adjustment[i]) * global.int_grid_square_size) + 1;
};


return ary_screen_coords;
