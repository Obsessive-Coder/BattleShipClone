//Returns an array of game board coordinates (1-10) for the row and column under the mouse

//mouse_x and mouse_y divided by the size of grid square
ary_grid_coords[0] = floor(mouse_x / global.int_grid_square_size);
ary_grid_coords[1] = floor(mouse_y / global.int_grid_square_size);


//limit the coords to the board(0-9)
//used to place ship and keep ship on board
for(var i = 0; i < 2; i += 1){
    //if n is less than 0 then it equals 0
    if(ary_grid_coords[i] < 1){
        ary_grid_coords[i] = 1;
    }
    
    //if n is more than 9 then it equals 9
    if(ary_grid_coords[i] > 10){
        ary_grid_coords[i] = 10;
    }
}

return ary_grid_coords;
