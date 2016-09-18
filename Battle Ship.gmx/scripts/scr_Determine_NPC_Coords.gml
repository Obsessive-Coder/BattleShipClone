///scr_Determine_NPC_Coords(player, other_player);

var player = argument0;
var other_player = argument1;  

var target_ship;
var target_coords;
var target_direction;

//target the last ship hit if it exists or
//target a ship in the grid of hit info or
//target a random cell

//if there is a last ship hit
if(player.last_ship_hit != noone){
  //the target ship is the last ship hit
  target_ship = player.last_ship_hit;
  target_coords = player.ary_last_hit_coords;
  target_direction = player.str_last_direction_attempt;
}//if there is not a last ship hit but there is a previous hit ship
else if(scr_Does_Hit_Info_Exist(player)){
  //pick a ship to target
  target_ship = scr_Get_Previous_Hit_Ship(player);
  target_coords = scr_Get_Previous_Hit_Coords(player, target_ship);
  target_direction = scr_Get_Previous_Hit_Direction(player, target_ship);
}
else{
  //if there is no previous hit info, return random x and y coords
  return scr_Get_Random_Coords(player);
};

    
//if the ship has more than 1 hit on it
if(target_ship.int_hits_taken >= 2){
  //try adjacent cell in direction
  var new_coords = scr_Get_Adjacent_Coords(target_coords, target_direction);
  //if the adjacent cell in direction is legal
  if(scr_Validate_Player_Grid_Coord_Selection(other_player.grd_game_board, new_coords)){
    //guess adjacent cell in direction
    return new_coords;
  }
  else{//if the adjacent cell in the direction is not legal
    //switch direction
    var dir = scr_Switch_Direction(target_direction);
    
    //try adjacent cell until a legal one is found or a previously missed cell is reached
    do
    {
        new_coords = scr_Get_Adjacent_Coords(new_coords, dir);
        
        var int_cell_value = ds_grid_get(other_player.grd_game_board, new_coords[0], new_coords[1]);
    }
    until (scr_Validate_Player_Grid_Coord_Selection(other_player.grd_game_board, new_coords) || int_cell_value == 2);
    
    //if cell is legal
    if(scr_Validate_Player_Grid_Coord_Selection(other_player.grd_game_board, new_coords)){
      //guess the cell
      return new_coords;
    }
    else{//if cell is not legal
      //shouldnt happen but code something to prevent an error just in case
      show_message("UNINTENTED RESULTS: This error occured in script: scr_Determine_NPC_Coords at line 64");
      return noone;
    };          
  };
    
}
else{
  //if the ship only has 1 hit on it
    //guess random adjacent cell
    return scr_Get_Random_Adjacent_Coords(other_player.grd_game_board, target_coords);
};
