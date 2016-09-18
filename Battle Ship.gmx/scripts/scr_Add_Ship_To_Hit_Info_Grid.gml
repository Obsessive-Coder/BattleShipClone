///scr_Add_Ship_To_Hit_Info_Grid(player);

var player = argument0;

//the width and height of the grid
var grid_width = ds_grid_width(player.grd_ship_hit_info);
var old_grid_height = ds_grid_height(player.grd_ship_hit_info);            

//add the last ship hit to grid of ships hit IF IT DOES NOT EXIST
if(!scr_Is_Ship_In_Info_Grid(player)){
    //resize the grid to store this hit info
    ds_grid_resize(player.grd_ship_hit_info, grid_width, (old_grid_height + 1));
   
    //store the ship in the grid of hit ships
    ds_grid_set(player.grd_ship_hit_info, 0, old_grid_height, player.last_ship_hit);
     
    //store the x y coords of this hit
    for (var i = 0; i < 2; i += 1)
    {
        ds_grid_set(player.grd_ship_hit_info, i + 1, old_grid_height, player.ary_last_hit_coords[i]);
    };
    
    //store the direction attempt of this ship
    ds_grid_set(player.grd_ship_hit_info, 3, old_grid_height, player.str_last_direction_attempt);
}
