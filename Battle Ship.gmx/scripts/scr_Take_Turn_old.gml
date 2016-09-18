//check for previous hit info
if(global.str_game_phase = "npc player turn"){

    var is_previous_hit_info = false;
    if(!is_previous_hit_info){
        //if there is no random hit info then take a random guess
        var ary_random_coords = scr_Get_Random_Coords();
    
        scr_Take_Turn(obj_player_npc, obj_player_human, ary_random_coords);
        
        global.str_game_phase = "player 1 turn";
    }
}
