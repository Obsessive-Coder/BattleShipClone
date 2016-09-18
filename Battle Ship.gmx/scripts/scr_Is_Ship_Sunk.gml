///scr_Is_Ship_Sunk(hit_ship);

//TODO: refactor this script to remove all the if else statements

var hit_ship = argument0;

if(object_get_name(hit_ship.object_index) == "obj_ship"){
    if(hit_ship.int_hits_taken == hit_ship.int_ship_size){
        //the ship is sunk
        return true;
    }
    else{
        //the ship is not sunk
        return false;
    }
}
//show error message
show_message("There was an error. The argument passed into this script was not a ship object. script = scr_Is_Ship_Sunk");
return noone;
