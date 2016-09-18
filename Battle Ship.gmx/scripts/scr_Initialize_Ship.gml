///scr_Initialize_Ship();

int_ship_size = 0; // hits left until sunken
int_hits_taken = 0; //increments by 1 each time the ship is hit
obj_icon_ship = 0; //the icon ship to create if this is deleted
int_direction = 0; //0 = right, up = 1, 2 = left, 3 = down
bol_is_selected = true; //true if the ship is placed
bol_is_sunken = false; // true ONLY if 'int_hits_remaining' = 0
ary_grid_coords[] = 0; //; the coordinates of the ship

//set the image speed to zero
self.image_speed = 0;

//TODO: this script is called when the npc places his ship, this code needs to be adjusted
obj_player_human.bol_is_ship_selected = bol_is_selected;
