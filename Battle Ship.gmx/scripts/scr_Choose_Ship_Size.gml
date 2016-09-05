//argument0[] = the list of ships to choose from
var lst_ship_list = argument0;

//choose a random range from 0 and one less than the number of items in the list
var i = irandom_range(0, (ds_list_size(lst_ship_list) - 1));

return ds_list_find_value(lst_ship_list, i);
