///scr_Get_Previous_Hit_Coords(player, ship);

var player = argument0;
var ship = argument1;

//the y_index in the grid where the ship is
var y_index = ds_grid_value_y(player.grd_ship_hit_info, 0, 0, 0, ds_grid_height(player.grd_ship_hit_info) - 1, ship);

var ary_coords;
for (var i=0; i<2; i+=1)
{
    ary_coords[i] = ds_grid_get(player.grd_ship_hit_info, i + 1, y_index);
};

return ary_coords;

