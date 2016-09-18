///scr_Get_Previous_Hit_Direction(player, ship);

var player = argument0;
var ship = argument1;

for (var i=0; i<ds_grid_height(player.grd_ship_hit_info); i+=1)
{
  var cell_value = ds_grid_get(player.grd_ship_hit_info, 0, i);
  if(cell_value == ship){
    return ds_grid_get(player.grd_ship_hit_info, 3, i);
  };
};
