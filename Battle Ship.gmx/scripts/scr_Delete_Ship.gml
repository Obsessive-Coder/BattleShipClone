///scr_Delete_Ship();

//delete the ship and create an icon ship
if(global.str_game_phase = "placement" && self.bol_is_selected){
    obj_player_human.bol_is_ship_selected = false;
    
    //create the icon ship
    scr_Create_Icon_Ship(self.obj_icon_ship);
    
    //destroy the ship
    instance_destroy();
}
