///scr_Validate_Player_Grid_Coord_Selection(game_board, ary_coords);

/*
  validate that the coords are between 0 and 9
  and that the cell hasnt been called already
*/

//TODO: refactor and divide this script into multiple scripts
//      another script exists that does what the first part of this script does(scr_Is_Ship_Inbounds)

var game_board = argument0;
var ary_coords = argument1;

//iterate through each coord and check if it is legal(between 0 and 9)
//return false if its not a legal cell(between 0 and 9)
for (var i = 0; i < array_length_1d(ary_coords); i += 1)
{
  //if any of the coords are less than 0 or greater than 9, its not a legal cell
  if(ary_coords[i] < 0 || ary_coords[i] > 9){
    //return false because one of the coords are out of the game board bounderies(0-9)
    return false;
  };
};

//this section should only run if all coords are between 0 and 9
//get the value of the cell 
var cell_value = ds_grid_get(game_board, ary_coords[0], ary_coords[1]);
//if the cell value is not 0 or 1 then it is not a legal cell
if(cell_value > 1){
  //return false because this cell has already been called
  return false;
};

//this should only execute if the coords are between 0-9 and the cell is not previously called
return true;

