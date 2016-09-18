///scr_Add_To_Called_Coords(player, ary_coords);

var player = argument0;
var ary_coords = argument1;

var width = ds_grid_width(player.grd_called_coords);
var height = ds_grid_height(player.grd_called_coords);

//add a new row to the grid
ds_grid_resize(player.grd_called_coords, width, height + 1);

//if errors occur with adding coords to grid its probably here. this code will work if the new row is added to the bottom of the grid
//add each coord to the grid of called coords
for (var i=0; i<2; i+=1){
  ds_grid_set(player.grd_called_coords, i, height, ary_coords[i]);
};
