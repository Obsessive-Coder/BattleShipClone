///scr_Ship_Click();

//place or pick up a ship if it is still placement phase
if(global.str_game_phase = "placement"){
    //if a ship is selected, the selected ship will be placed
    if(obj_player_human.bol_is_ship_selected && self.bol_is_selected){
        //place the ship if image_index = 0(no collision)
        if(self.image_index = 0){
            //place ship
            scr_Place_Ship();
            
            //check if all ships are placed
            if(scr_Check_All_Ships_Placed() && !instance_exists(obj_button)){
                //create the end phase button if it does not exist
                instance_create(464, 336, obj_button);
            }
        }
    }
    else if(!obj_player_human.bol_is_ship_selected){
        //pick up the ship
        scr_Pick_Up_Ship();
        
        //destroy the end phase button if it exists
        if(instance_exists(obj_button)){
            with(obj_button){
                instance_destroy();
            }
        }
    }
}
