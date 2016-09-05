//argument0 = the ship size

do
{
    //choose the direction of the ship
    var int_ship_direction = irandom_range(0, 3);
    
    //choose starting x and y position of the ship
    var ary_npc_grid_coords = scr_Choose_Start_X_Y_Coords();
    
    //get the region coord of the ship
    ary_npc_ship_coords = scr_Get_Ship_Region_Coords(int_ship_direction, argument0, ary_npc_grid_coords);
    
    //check and store if the ship is within the 10x10 grid
    var bol_is_inbounds = scr_Is_Ship_Inbounds(ary_npc_ship_coords);
    
    //check and store if the ship is overlapping another ship
    var bol_is_overlapping = scr_Is_Ship_Overlapping(global.grd_game_board_npc, ary_npc_ship_coords);
}
until (bol_is_inbounds && !bol_is_overlapping);

//place ship if inbounds and NOT overlapping
ds_grid_set_region(global.grd_game_board_npc, ary_npc_ship_coords[0], ary_npc_ship_coords[1], ary_npc_ship_coords[2], ary_npc_ship_coords[3], 1);

return ary_npc_ship_coords;
