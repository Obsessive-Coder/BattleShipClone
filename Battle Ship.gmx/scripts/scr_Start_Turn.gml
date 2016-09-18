///scr_Start_Turn();

/*
  this script runs at the begining of the turn for each player. it looks for whose turn it is,
  and then sets the player and other player variables as well as the grid cells the player guesses.
  if its the human player's turn his coords will be based on where he clicks. if its the npc player's turn
  a series of scripts will be ran to determine the most logical grid cell to guess.
*/

if(global.str_game_phase == "player 1 turn" || global.str_game_phase == "player npc turn"){
  var player;
  var other_player;
  var ary_coords;
  
  switch (global.str_game_phase)
  {
    //human player 1 turn
    case "player 1 turn":
      //assign player and other player variables 
      player = obj_player_human;
      other_player = obj_player_npc;
      
      //get grid coords for mouse x and y(0-9)
      ary_coords = scr_Get_Grid_Coords(mouse_x, mouse_y); 
      break;
        
    //npc player turn
    case "player npc turn":
      //assign player and other player variables
      player = obj_player_npc;
      other_player = obj_player_human;
      
      //get the grid coords for the npc player to guess
      ary_coords = scr_Determine_NPC_Coords(obj_player_npc, obj_player_human);
      break;
  }
    
  //take the turn
  if(scr_Validate_Player_Grid_Coord_Selection(other_player.grd_game_board, ary_coords)){
    //take the turn
    var turn_finished = scr_Take_Turn(player, other_player, ary_coords);
    //end the turn if a legal cell was guessed
    if(turn_finished == true){
    
      //add the coords to the player's grid of called coords
      scr_Add_To_Called_Coords(player, ary_coords);
      
      scr_End_Turn();
    }
  }
}
