//delete the ship and create an icon ship
if(global.str_game_phase = "placement" && self.bol_is_selected){
    global.bol_is_ship_selected = false;
    
    //create the icon ship
    scr_Create_Icon_Ship(self.obj_icon_ship);
    
    instance_destroy();
}
