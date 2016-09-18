///scr_Intitialize_Player_Human();

//call the parent's create event
event_inherited();

with(self){
    str_player_type = "human";
    
    //the amount needed to adjust when getting the 0 
    //based index of which cell a ship is on and which cell was guessed
    cell_adjustment[0] = 18;
    cell_adjustment[1] = 7;
}
