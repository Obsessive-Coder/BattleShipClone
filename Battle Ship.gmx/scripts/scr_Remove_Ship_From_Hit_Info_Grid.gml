///scr_Remove_Ship_From_Hit_Info_Grid(player);


//TODO: rewrite this so the ship is removed from the grid. it can be achieved by changing all cells to a value (-1), then
//      sort so that value is the last in the grid, then resize removing 1 row from the bottom
//this script doesnt remove the ship from the grid but it changes the ships id value to -1.
//when picking a ship to target from this list, all rows with a -1 values in the first cell will be ignored

var player = argument0;

//TODO: this embedded loop structure can be changed using a 'ds_grid_value_...' function;
//iterate through all rows in the grid and find the ship's id in the first cell of the row
for (var i = 0; i < ds_grid_height(player.grd_ship_hit_info); i += 1){
    if(ds_grid_get(player.grd_ship_hit_info, 0, i) == player.last_ship_hit){
        //iterate through each cell in the row and set it to -1
        for (var j = 0; j < ds_grid_width(player.grd_ship_hit_info); j += 1)
        {
            //set the cell to -1
            ds_grid_set(player.grd_ship_hit_info, j, i, -1);
        };
    }
};
