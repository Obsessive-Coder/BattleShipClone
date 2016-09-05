//if the game is in placement phase and no ship is selected then
//create a ship that is a larger representation of the icon ship.
//the create_ship script takes three arguments
//argument0 = the size of the ship to be created
//argument1 = the object of this instance so the icon can be created again if the ship is destroyed
//argument2 = the sprite to use for the ship
if(global.str_game_phase = "placement" && !global.bol_is_ship_selected){
    //create the ship object that represents the selected ship icon
    scr_Create_Ship(self.int_ship_size, self.object_index, self.int_index_sprite);
    instance_destroy();
}
