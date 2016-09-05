// if the ship is selected it will follow the mouse but stay within the game board
with(self){
    if(bol_is_selected){
        //get the grid coordinates of the mouse
        ary_grid_coords[] = scr_Get_Grid_Coords();
        
        //make ship object follow the mouse and snap to a grid
        //multiply grid coords by grid square size and assign this to the x and y of the ship
        x = (ary_grid_coords[0] * global.int_grid_square_size) + 16;
        y = (ary_grid_coords[1] * global.int_grid_square_size) + 16;
    }
}
