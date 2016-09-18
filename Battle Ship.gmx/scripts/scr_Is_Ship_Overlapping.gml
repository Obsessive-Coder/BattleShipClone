///scr_Is_Ship_Overlapping(game_board, ary_region_coords);

var game_board = argument0;
var ary_region_coords = argument1;

//if the highest value in the region is 0 then return false because no ships are overlapped
if(ds_grid_get_max(game_board, ary_region_coords[0], ary_region_coords[1], ary_region_coords[2], ary_region_coords[3]) >= 1){
  return true;
}

//the ship is not overlapping another ship
return false;
