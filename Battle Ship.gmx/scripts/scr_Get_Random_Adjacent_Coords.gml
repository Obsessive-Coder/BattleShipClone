///scr_Get_Random_Adjacent_Coords(game_board, ary_coords);

var game_board = argument0;
var ary_coords = argument1;

//the do loop repeats until it finds a legal adjacent cell
do
{
    //choose a random direction
    var str_direction = choose("up", "down", "left", "right");
    
    //get the cell based off direction and last hit cell
    var ary_adjacent_cell = scr_Get_Adjacent_Coords(ary_coords, str_direction);
}
until (scr_Validate_Player_Grid_Coord_Selection(game_board, ary_adjacent_cell));

//TODO: this is a bad place for this line of code to be. find a better solution
//change players last direction attempt to new direction
obj_player_npc.str_last_direction_attempt = str_direction;

return ary_adjacent_cell;

