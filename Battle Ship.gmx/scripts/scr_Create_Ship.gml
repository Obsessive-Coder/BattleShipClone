///scr_Create_Ship(x_pos, y_pos, ship_size, dir, icon_ship, ship_sprite);

var x_pos = argument0;
var y_pos = argument1;
var ship_size = argument2;
var dir = argument3;
var icon_ship = argument4;
var ship_sprite = argument5;

new_ship = instance_create(x_pos, y_pos, obj_ship);

//assign the arguments to the instance variables
with(new_ship){
    int_ship_size = ship_size;
    image_angle = dir * 90;
    obj_icon_ship = icon_ship;
    sprite_index = ship_sprite;
}

return new_ship;
