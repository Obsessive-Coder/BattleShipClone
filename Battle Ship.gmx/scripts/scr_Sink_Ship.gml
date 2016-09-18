///scr_Sink_Ship(player, other_player, ship_hit);

var player = argument0;
var other_player = argument1;
var ship_hit = argument2;

//set the ship's 'is sunken' variable to true
ship_hit.bol_is_sunken = true;

//remove 1 ship from the players's ships left
other_player.int_ships_left -= 1;

//remove ship from grid of ship info
scr_Remove_Ship_From_Hit_Info_Grid(player);

//clear last hit info
with(player){
  //clear last hit coords
  ary_last_hit_coords = noone;
  
  //clear last ship hit
  last_ship_hit = noone;
  
  //clear direction
  str_last_direction_attempt = "";
};
