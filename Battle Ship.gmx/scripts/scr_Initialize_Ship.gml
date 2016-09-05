///Initializes the ship object
int_ship_size = 0; // hits left until sunken
obj_icon_ship = 0; //the icon ship to create if this is deleted
int_direction = 0; //0 = right, up = 1, 2 = left, 3 = down
bol_is_selected = true; //true if the ship is placed
bol_is_sunken = false; // true ONLY if 'int_hits_remaining' = 0
ary_grid_coords[] = 0; //; the coordinates of the ship

//set the image speed to zero
image_speed = 0;

global.bol_is_ship_selected = bol_is_selected;
