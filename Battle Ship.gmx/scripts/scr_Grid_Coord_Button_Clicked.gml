if(global.str_game_phase = "player 1 turn"){
    var ary_coords = scr_Get_Grid_Coords(mouse_x, mouse_y);
    
    if(ary_coords[0] >= 0 && ary_coords[0] <= 9 && ary_coords[1] >= 0 && ary_coords[1] <= 9){
        scr_Take_Turn(obj_player_human, obj_player_npc, ary_coords);
        
        global.str_game_phase = "npc player turn";
    }    
}

var ary_coords;
switch (global.str_game_phase)
{
    case "player 1 turn":
        //get grid coords for mouse x and y(0-9)
        ary_coords = scr_Get_Grid_Coords(mouse_x, mouse_y);
        
        //validate that the coords are between 0 and 9
        if(ary_coords[0] >= 0 && ary_coords[0] <= 9 && ary_coords[1] >= 0 && ary_coords[1] <= 9){
        
        }  
        break;
        
    case "player npc turn":
        
}
 
