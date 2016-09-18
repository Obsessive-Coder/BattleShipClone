///scr_Button_Clicked();

switch (global.str_game_phase)
{    
    case "start turn":
      global.str_game_phase = "player 1 turn";      
      break;
      
    case "placement":
      scr_End_Placement_Phase();
      break;
}

instance_destroy();
 
