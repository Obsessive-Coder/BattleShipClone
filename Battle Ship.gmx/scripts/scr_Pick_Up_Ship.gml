///scr_Pick_Up_Ship();

//pick up ship by setting is_selected to true
self.bol_is_selected = true;
obj_player_human.bol_is_ship_selected = true;
obj_player_human.int_ships_placed -= 1;

var ary_ship_coords = scr_Get_Ship_Region_Coords(self.int_direction, self.int_ship_size, self.ary_grid_coords)

//remove the ships full position from the grid
scr_Update_Ship_Position(obj_player_human.grd_game_board, ary_ship_coords, 0);
