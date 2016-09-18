///scr_Step_Ship();

//if its placement phase and the ship is selected, follow the mouse with the ship
//and check for collisions. the follow mouse script snaps the object to a 32x32 grid
//the collision checker changes the subimage
if(global.str_game_phase = "placement" && self.bol_is_selected){
    //make ship follow mouse
    self.x = mouse_x;
    self.y = mouse_y;
    
    //snap the mouse to a grid
    scr_Snap_Ship_To_Grid();
    
    //store the ships coords in the instance variable
    self.ary_grid_coords = scr_Get_Grid_Coords(self.x, self.y);
    self.ary_grid_coords[0] -= 17;
    
    //validate the placement of the ship
    scr_Validate_Ship_Placement();
}
