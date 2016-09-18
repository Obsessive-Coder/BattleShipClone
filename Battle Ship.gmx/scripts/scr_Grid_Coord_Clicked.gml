var ary_coords = scr_Get_Grid_Coords(mouse_x, mouse_y);

var ship_hit = instance_place(floor(mouse_x)/32, floor(mouse_y)/32, obj_ship);
if(ship_hit != noone){
    //get the ship object that was hit
    show_message(ship_hit);
    //remvove one hit from the ship
    
    //check if the ship is sunk
    
}
else{
    show_message("MISS");
}

instance_destroy();
