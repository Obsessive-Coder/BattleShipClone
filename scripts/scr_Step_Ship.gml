//if its placement phase and the ship is selected, follow the mouse with the ship
//and check for collisions. the follow mouse script snaps the object to a 32x32 grid
//the collision checker changes the subimage
if(global.str_game_phase = "placement" && self.bol_is_selected){
    scr_Follow_Mouse();
    scr_Collision_Check();
}
