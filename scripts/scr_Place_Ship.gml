//place the the ship
self.bol_is_selected = false;
global.bol_is_ship_selected = false;
global.int_ships_placed += 1;

var ary_ship_coords = scr_Get_Ship_Region_Coords(self.int_direction, self.int_ship_size, self.ary_grid_coords)

//save the ships full position in the game board grid
global.grd_game_board_player = scr_Update_Ship_Position(global.grd_game_board_player, ary_ship_coords, 1);
