///scr_Choose_Start_X_Y_Coords();

//TODO: this script and the script for choosing a random cell to guess(scr_Get_Random_Coords) are similar if not the same.

//choose starting x and y position of the ship
var ary_coords;
for(var i = 0; i < 2; i += 1){
    ary_coords[i] = irandom_range(0, 9);
}

return ary_coords;
