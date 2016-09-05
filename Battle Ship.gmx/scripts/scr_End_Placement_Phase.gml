//prevent ships from being moved by changing the game phase variable
global.str_game_phase = "player 1 turn";

//place npc ships
//list of ship sizes to choose from
lst_ship_choices = scr_Get_Ship_Choices();

do
{
    //choose a ship size
    var int_ship_size = scr_Choose_Ship_Size(lst_ship_choices);
    
    //place ship
    scr_Place_NPC_Ship(int_ship_size);
    
    
}
until (ds_list_empty(lst_ship_choices));

//destroy the button
instance_destroy();
