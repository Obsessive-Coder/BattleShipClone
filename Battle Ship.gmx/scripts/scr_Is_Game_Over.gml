///scr_Is_Game_Over(ships_left);

var ships_left = argument0;

//if ships_left = 0 then the game over and the players whos turn it is when this script is called is the winner
if(ships_left >= 1){
    //at least one ship is left to sink
    return false;
}

//no ships left. game over
return true;
