//prevent ships from being moved by changing the game phase variable
global.str_game_phase = "player 1 turn";

//place npc ships
//the list of npc game pieces
//a 2d array for all ship info
global.grd_npc_ships = scr_Get_NPC_Ships();
var int_ships_left_to_place;

do
{
    //choose a ship to place
    var int_ship_size = scr_Choose_Ship_To_Place();
    
    //place ship
    var ary_npc_ship_coords = scr_Place_NPC_Ship(int_ship_size);
    
    //update the npc ships grid with the ship's region coords
    scr_Update_NPC_Ship_Coords(int_ship_size, ary_npc_ship_coords);
    
    int_ships_left_to_place = scr_Get_NPC_Ships_Left_To_Place();
}
until (int_ships_left_to_place = 0);

for (i=0; i<ds_grid_height(global.grd_npc_ships); i+=1)
{
    show_debug_message(string(ds_grid_get(global.grd_npc_ships,0, i)));
    show_debug_message(string(ds_grid_get(global.grd_npc_ships,4, i)));
    show_debug_message(string(ds_grid_get(global.grd_npc_ships,5, i)));
    show_debug_message("");    
};


//destroy the button
instance_destroy();
