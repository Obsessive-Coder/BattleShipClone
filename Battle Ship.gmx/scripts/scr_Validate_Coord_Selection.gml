//argument0 = the game board
//argument1 = the array of coords to check

var cell_value = ds_grid_get(argument0, argument1[0], argument1[1])
if(cell_value == 0 || cell_value == 1){
    return true;
}
else{
    return false;
}
