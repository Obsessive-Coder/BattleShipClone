///scr_Get_NPC_Ships_Left_To_Place();

//iterate through all ships in the npc ships grid and adds 1 to the counter variable(int_ships_left)
//each time a ships is_placed(x index = 3 in grid) value is false.
var int_ships_left = 0;
for (var i = 0; i < ds_grid_height(global.grd_npc_ships); i += 1)
{
    if(ds_grid_get(global.grd_npc_ships, 3, i) = false){
        int_ships_left += 1;
    };
};

return int_ships_left;
