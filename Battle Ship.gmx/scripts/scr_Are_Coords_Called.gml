///scr_Check_Coords_Called(player, ary_coords);

var player = argument0;
var ary_coords = argument1;

//iterate though each row of the grid for called coords
for (var i=0; i<ds_grid_height(player.grd_called_coords); i+=1){
  //check if the x coord matches
  if(ds_grid_get(player.grd_called_coords, 0, i) == ary_coords[0]){
    //check if the y coord matches
    if(ds_grid_get(player.grd_called_coords, 1, i) == ary_coords[1]){
      //both coords exist in the same row of the grid meaning this grid cell has been called before
      return true;
    };
  };
};

//both coords dont exist in the same row meaning these coords have not been called yet
return false;
