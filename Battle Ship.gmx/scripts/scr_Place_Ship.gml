///scr_Place_Ship();

self.bol_is_selected = false;
obj_player_human.bol_is_ship_selected = false;
obj_player_human.int_ships_placed += 1;

var ary_ship_coords = scr_Get_Ship_Region_Coords(self.int_direction, self.int_ship_size, self.ary_grid_coords);

//save the ships full position in the game board grid
scr_Update_Ship_Position(obj_player_human.grd_game_board, ary_ship_coords, 1);
