//list of ship sizes to choose from
global.lst_ship_choices = ds_list_create();
ds_list_add(global.lst_ship_choices, 5, 4, 3, 3, 2);

ds_list_shuffle(global.lst_ship_choices);

return global.lst_ship_choices;
