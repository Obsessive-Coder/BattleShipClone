///scr_Snap_Ship_To_Grid();

//snaps the ship the grid size
move_snap(global.int_grid_square_size, global.int_grid_square_size);

//TODO: develop a better method of doing this
//offests the ship to align it with the visual grid
self.x += 16;
self.y += 16;
