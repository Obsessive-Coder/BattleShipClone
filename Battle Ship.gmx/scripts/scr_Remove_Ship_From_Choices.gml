//argument0 = the array of ship choices
//argument1 = ship size to remove

var ary_ship_list = argument0;
//remove ship from list of possible ships to place by changing its value to 0
//a value of 0 is ignored by the script that chooses a value from this array
for(var i = 0; i < array_length_1d(ary_ship_list); i += 1){
    if(ary_ship_list[i] = argument1){
        ary_ship_list[i] = 0;
        return ary_ship_list;
    }
}
