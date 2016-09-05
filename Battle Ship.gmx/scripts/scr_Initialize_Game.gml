//initialize global variables
///Global Variables
global.int_grid_square_size = 32; //the size of each grid sqare
global.str_game_phase = "placement";
global.bol_is_ship_selected = false;
global.int_ships_placed = 0;

//initialize player's game board as a grid with 10 rows and 10 columns
global.grd_game_board_player = scr_Initialize_Game_Board();

//initialize npc's game board as a grid with 10 rows and 10 columns
global.grd_game_board_npc = scr_Initialize_Game_Board();

randomize();
