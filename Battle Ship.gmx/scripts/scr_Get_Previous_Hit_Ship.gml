///scr_Get_Previous_Hit_Ship(player);

var player = argument0;

var ary_indexes;

if(ds_grid_height(player.grd_ship_hit_info) != 0){
  //iterate through each row in the ship info grid and find the ones where the 0x index DOES NOT equal -1
  for (var i = 0; i <ds_grid_height(player.grd_ship_hit_info); i += 1)
  {
    if(ds_grid_get(player.grd_ship_hit_info, 0, i) != -1){
      //return id of a ship to targer  
      return ds_grid_get(player.grd_ship_hit_info, 0, i);
    };
  };
};
