#define scr_Left_Click
if(global.bol_is_placement_phase){
    if(global.bol_is_ship_selected){
        if(self.image_index = 0){
            //Place ship
            scr_Place_Ship();
        }
    }
    else{
        //Pick up ship
        scr_Pickup_Ship();
    }
}

#define scr_Place_Ship
///Place Ship
self.bol_is_placed = true;
global.bol_is_ship_selected = false;

#define scr_Pickup_Ship
///Pickup Ship
self.bol_is_placed = false;
global.bol_is_ship_selected = true;