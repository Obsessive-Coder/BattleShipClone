//create a new ship
new_ship = instance_create(mouse_x, mouse_y, obj_ship);

//assign the arguments to the instance variables
//argument0 = ship size
//argument1 = the icon to create if/when this instance is destroyed
//argument2 = the sprite to use for this instance
with(new_ship){
    int_ship_size = argument0;
    obj_icon_ship = argument1;
    sprite_index = argument2;
}

return new_ship;
