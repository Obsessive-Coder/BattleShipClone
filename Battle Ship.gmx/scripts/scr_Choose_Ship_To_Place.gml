///scr_Choose_Ship_To_Place();

//return the first ship that isnt placed

//TODO: refactor this script

//sort the list so that the unplaced ships are on top
ds_grid_sort(global.grd_npc_ships, 3, true);

//get the number of ships left to place
var int_ships_left = scr_Get_NPC_Ships_Left_To_Place();

if(int_ships_left >= 1){
    //choose a random number for the index of the ship to place
    var int_new_ship_index = irandom_range(0, int_ships_left - 1);
    
    //store the ship info in its own array to be returned
    var ary_ship_to_place;
    for (var i = 0; i < ds_grid_width(global.grd_npc_ships); i += 1)
    {
        ary_ship_to_place[i] = ds_grid_get(global.grd_npc_ships, i, int_new_ship_index);
    };
    
    //return all the info of the ship in an array
    return ary_ship_to_place;
    
}

//return noone if there are no ships left to place
return noone;
