///scr_Initialize_Icon_Child_Ship(ship_size, ship_sprite, y_pos);

var ship_size = argument0;
var ship_sprite = argument1;
var y_pos = argument2;

//call the parent create event
event_inherited();

//with the instance set its properties
with(self){
    int_ship_size = ship_size;
    int_index_sprite = ship_sprite;
    
    x = 540;
    y = y_pos;
}
