//return the first ship that isnt placed

//sort the list so that the unplaced ships are on top
ds_grid_sort(global.grd_npc_ships, 2, true);

var ary_indexes;

for (var i = 0; i < ds_grid_height(global.grd_npc_ships); i += 1)
{
    //if the ship is not placed
    if(ds_grid_get(global.grd_npc_ships, 2, i) = false){
        ary_indexes[i] = i;      
    };
};

//randomly pick the ship
var j = irandom_range(0, array_length_1d(ary_indexes) - 1 );

//set the ship to placed in the grid
ds_grid_set(global.grd_npc_ships, 2, j, true);

//return the size of the ship to place
return ds_grid_get(global.grd_npc_ships, 1, j);


