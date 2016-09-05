//snap the calling object(should be a ship) to a grid
with(self){
    if(!place_snapped(global.int_grid_square_size,global.int_grid_square_size)){
       move_snap(global.int_grid_square_size,global.int_grid_square_size);
    }
}
