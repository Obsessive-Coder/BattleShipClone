//Initialize the child icon ship
/*
argument0 = the size of the ship
argument1 = the sprite for the ship
argument2 = the y position of the icon ship
*/

//call the parent create event
event_inherited();

//with the instance set its properties
with(self){
    int_ship_size = argument0;
    int_index_sprite = argument1;
    
    x = 360;
    y = argument2;
}
