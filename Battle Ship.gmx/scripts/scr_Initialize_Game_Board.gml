///scr_Initialize_Game_Board();

//create a grid with 10 rows and 10 columns and
//set all of its cells to 0(empty)

//possible values:
//0 = "empty",
//1 = "occupied",
//2 = "miss",
//3 = "hit"

//create grid for game board
var game_board = ds_grid_create(10,10);

//set all cells to a value of "empty"
ds_grid_clear(game_board, 0);

return game_board;
