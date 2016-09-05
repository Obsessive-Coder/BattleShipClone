/*
the game board is a 2d array with ten rows and ten columns
a value of 0 means the space is empty
a value of 1 means the space is occupied
*/
var row = 0;
var column = 0;

/* instaniate the 2d array with all values to 0 (empty)*/
repeat(10)
{
    repeat(10)
    {
        global.ary_game_board[row, column] = 0;
        column += 1;
    }    
    row += 1;
}
    


