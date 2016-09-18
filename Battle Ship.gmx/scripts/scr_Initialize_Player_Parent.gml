///scr_Initialize_Player_Parent();

str_player_type = "";
int_ships_placed = 0;
bol_is_ship_selected = false;
int_ships_left = 5;
grd_game_board = scr_Initialize_Game_Board(); // the game board
grd_called_coords = ds_grid_create(2,0); //grid of called grid cells

grd_ship_hit_info = ds_grid_create(3,0);//grid that holds data of a hit ships that arent sunk

//TODO:hit info should be stored in an array or data structure
//last hit info
last_ship_hit = noone;
ary_last_hit_coords[] = noone;
str_last_direction_attempt = "";
