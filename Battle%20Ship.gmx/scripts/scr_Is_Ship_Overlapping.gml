//argument0 = the gameboard to check
//argument1[] = the array that holds the region coords for the ship

//if the highest value in the region is 0 then return false because no ships are there
if(ds_grid_get_max(argument0, argument1[0], argument1[1], argument1[2], argument1[3]) >= 1){
    return true;
}
else{
    return false;
}
