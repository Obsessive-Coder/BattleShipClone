//pick up ship by setting is_selected to true
self.bol_is_selected = true;
global.bol_is_ship_selected = true;
global.int_ships_placed -= 1;

var ary_ship_coords = scr_Get_Ship_Region_Coords(self.int_direction, self.int_ship_size, self.ary_grid_coords[])

//remove the ships full position from the grid
scr_Update_Ship_Position(global.grd_game_board_player, ary_ship_coords, 0);
