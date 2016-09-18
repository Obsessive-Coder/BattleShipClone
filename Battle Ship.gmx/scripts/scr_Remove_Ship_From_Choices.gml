///scr_Remove_Ship_From_Choices(ary_ships, ship_size);

//TODO: refactor. instead of the ship size being searched, the id of the ship should have been stored, and that should
//      should be passed in here instead

var ary_ships = argument0;
var ship_size = argument1;

//remove the ship from list of possible ships to place by changing its value to 0
//a value of 0 is ignored by the script that chooses a value from this array
for(var i = 0; i < array_length_1d(ary_ships); i += 1){
    if(ary_ships[i] = ship_size){
        ary_ships[i] = 0;
        return ary_ship_list;
    }
}
