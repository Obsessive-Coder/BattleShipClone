///scr_Position_NPC_Ship(ship_info);

var ship_info = argument0;


//position the ship on the board. the loop repeats until the ship lies entirely in the game board and
//the ship is not on top of another ship
do
{    
    //choose starting x and y position of the ship
    var ary_npc_grid_coords = scr_Choose_Start_X_Y_Coords();
    
    //get the region coord of the ship
    var ary_npc_ship_coords = scr_Get_Ship_Region_Coords(ship_info[2], ship_info[1], ary_npc_grid_coords);
    
    //check and store if the ship is within the 10x10 grid
    var bol_is_inbounds = scr_Is_Ship_Inbounds(ary_npc_ship_coords);
    //bol_is_inbounds = true;
    
    //check and store if the ship is overlapping another ship
    //TODO: refactor this script to pass in the player
    var bol_is_overlapping = scr_Is_Ship_Overlapping(obj_player_npc.grd_game_board, ary_npc_ship_coords);
}
until (bol_is_inbounds && !bol_is_overlapping);

//place ship if inbounds and NOT overlapping
ds_grid_set_region(obj_player_npc.grd_game_board, ary_npc_ship_coords[0], ary_npc_ship_coords[1], ary_npc_ship_coords[2], ary_npc_ship_coords[3], 1);

return ary_npc_ship_coords;
