///scr_End_Placement_Phase();

//a grid to hold npc ships to place
//TODO: now that players are objects, this gird variable should be a player instance variable
global.grd_npc_ships = scr_Get_NPC_Ships();

//TODO: this loop should be put into its own script and/or combined with another script that handles ship placement
//this do loop places a ship and repeats itself until all ships are placed
do
{
    //choose a ship to place and store it in an array;    
    var ary_ship_to_place = scr_Choose_Ship_To_Place();
    
    //choose a random direction to place the ship
    ary_ship_to_place[2] = irandom_range(0, 3);    

    //place ship
    var ary_npc_ship_coords = scr_Position_NPC_Ship(ary_ship_to_place);
    
    //TODO: instance variables are assigned values 3 times when a ship is created. the first script to give values is the 
    //      ships initialize script(scr_Initialize_Ship). then again the the create ship script(scr_Create_Ship). and then here
    //      after the ship is returned. this cannot be a good solution
    //create the ship
    var new_ship =scr_Create_Ship(((ary_npc_ship_coords[0] + 1) * global.int_grid_square_size) + 16, ((ary_npc_ship_coords[1] + 7) * global.int_grid_square_size) + 16, ary_ship_to_place[1], ary_ship_to_place[2], noone, ary_ship_to_place[9]);
    
    //assign the ship's instance variables their appropriate values
    with(new_ship){
        bol_is_selected = false;
        ary_grid_coords[0] = ary_npc_ship_coords[0];
        ary_grid_coords[1] = ary_npc_ship_coords[1]; 
        int_direction = ary_ship_to_place[2];
        visible = false;
    }
    
    //update the npc ships grid with the ship's region coords
    scr_Update_NPC_Ship_Coords(new_ship.int_ship_size, ary_npc_ship_coords);
    
    //update game board with ship's postion
    scr_Update_Ship_Is_Placed_Property(new_ship.int_ship_size);
}//the loop ends when the number of ships left to place = 0
until (scr_Get_NPC_Ships_Left_To_Place() == 0);

//prevent ships from being moved by changing the game phase variable
global.str_game_phase = "player 1 turn";;
