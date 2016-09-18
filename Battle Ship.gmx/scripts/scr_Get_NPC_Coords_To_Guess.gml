//argument0 = the player
//argument1 = the other player

var player = argument0;
var other_player = argument1;

//check for previous hit info
if(player.ary_last_hit_coords == noone){
  //if there is no previous hit info then take a random guess
  return scr_Get_Random_Coords(player);
  show_message("Random Cell");
}
//previous hit info is stored
else if(player.last_ship_hit != noone &&  !player.last_ship_hit.bol_is_sunken){
  //if the hits on the target ship is 2 or greater then get the next cell in the diretion
  var ary_coords;
  if(player.last_ship_hit.int_hits_taken >= 2){
    //get the adjacent cell coords
    ary_coords = scr_Get_Adjacent_Coords(player.ary_last_hit_coords, player.str_last_direction_attempt);
    
    //return the array of grid coords if they are legal
    if(scr_Validate_Player_Grid_Coord_Selection(other_player.grd_game_board, ary_coords)){
        show_message("Adjacent Cell");
        return ary_coords;
    }
    else{//the end of the ship has been reached and passed. choose first cell at opposite direction that is open
        
        //change direction to opposite of last called direction
        player.str_last_direction_attempt = scr_Switch_Direction(player.str_last_direction_attempt);
        
        //the do loop moves one cell in the new direction until a legal cell is found or a miss cell is found
        //if a miss cell is found this indicates that the last hits have been 2+ ships. this will be addressed later
        ary_coords = player.ary_last_hit_coords;
        do
        {
            //move one cell in the new direction
            ary_coords = scr_Get_Adjacent_Coords(ary_coords, player.str_last_direction_attempt);
            
            //get the value of the next cell. its used to back out of the loop in case the previous hits are on multiple ships
            var int_cell_value = ds_grid_get(other_player.grd_game_board, ary_coords[0], ary_coords[1]);
        }//exit the loop if the cell is a legal cell or its a miss
        until (scr_Validate_Player_Grid_Coord_Selection(other_player.grd_game_board, ary_coords) || int_cell_value == 2);
        
        //return the array of coords if the cell value IS NOT a miss
        if(int_cell_value != 2){
            show_message("Opposite Direction Cell");
            return ary_coords;
        }
        else{
            //do something to get cooords. decide which ship to target and store info on the other(s)
            show_message("code something to keep track of hit ship spots");
        }
             
    }
  }
  else{
    //find a random legal adjacent cell
    do
    {
        //get a random adjacent cell
        ary_coords = scr_Get_Random_Adjacent_Coords(other_player.grd_game_board, player.ary_last_hit_coords);
    }
    until(scr_Validate_Player_Grid_Coord_Selection(other_player.grd_game_board, ary_coords));
    
    show_message("Random Adjacent Cell");
    return ary_coords;
  }
}
