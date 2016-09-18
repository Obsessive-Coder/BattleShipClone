///scr_Take_Turn(player, other_player, ary_grid_coords);

//TODO: consider refactoring this script into 'hit' and 'miss' scripts
//      a 'hit ship' script exists, this one should be expanded with the code here for a 'hit'
var player = argument0;
var other_player = argument1;
var ary_grid_coords = argument2;//0-9

//check if the guessed coords are a hit or not
var str_hit_status = scr_Hit_Status(other_player.grd_game_board, ary_grid_coords);

//convert the coords array to screen position coordinates
var ary_screen_coords = scr_Convert_To_Screen_Coords(other_player, ary_grid_coords);

switch (str_hit_status)
{
    case "hit":
        //hit the ship
        var ship_hit = scr_Hit_Ship(other_player.grd_game_board, ary_grid_coords, ary_screen_coords);        
        
        with(player){
          //change the last hit ship to this ship
          last_ship_hit = ship_hit;
          
          //store last hit coords
          ary_last_hit_coords = ary_grid_coords;
        };
        
        //update the hit coords on this ship if it exists
        //or create it in the hit info grid if it does not exist
        if(scr_Is_Ship_In_Info_Grid(player)){
          //update the hit postion in the grid of hit info
          scr_Update_Ship_Hit_Info_Grid(player);
        }
        else{
          //add the last ship hit to grid of ships hit IF IT DOES NOT EXIST
          scr_Add_Ship_To_Hit_Info_Grid(player);            
        }
            
        //create the hit object
        instance_create(ary_screen_coords[0] - 1, ary_screen_coords[1] - 1, obj_hit);
        
        //check if the ship is sunk
        if(scr_Is_Ship_Sunk(ship_hit)){
            
            //shin the ship
            scr_Sink_Ship(player, other_player, ship_hit);
            
            //check for game over
            if(scr_Is_Game_Over(other_player.int_ships_left)){                    
                //inform the user that he has lost
                show_message("Game Over!");
                
                //end the game
                scr_End_Game();
            }
            else{
                //the ship is sunk but the game is not over
                //inform the user that the npc has sunk his ship
                show_message("SHIP SUNK " + string(player.last_ship_hit) + " at postion" + string(ary_screen_coords[0]) + " " + string(ary_screen_coords[1]));
            }
        }
        else{
            //the ship is hit but not sunk
            //inform user of hit, what ship, how many hits it has left, and its location
        }
        
        //return true because a legal cell was guessed
        return true;
    
    case "miss":
        //the the game board cell to 2(miss)
        ds_grid_set(other_player.grd_game_board, ary_grid_coords[0], ary_grid_coords[1], 2);
        
        //create the miss object
        instance_create(ary_screen_coords[0] - 1, ary_screen_coords[1] - 1, obj_miss);
        
        //inform user
        
        //return true becaue a legal cell was guessed
        return true;
        
    default:
        //inform user
        
        //return false  because legal cell has been guessed
        return false;
}
