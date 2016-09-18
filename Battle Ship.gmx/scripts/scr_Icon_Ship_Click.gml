///scr_Icon_Ship_Click();

//if the game is in placement phase and no ship is selected then
//create a ship that is a larger representation of the icon ship.
if(global.str_game_phase = "placement" && !obj_player_human.bol_is_ship_selected){
    //create the ship object that represents the selected ship icon
    scr_Create_Ship(mouse_x, mouse_y, self.int_ship_size, 0, self.object_index, self.int_index_sprite);
    
    //destroy the icon ship
    instance_destroy();
}
