var x_coord = get_integer("x coord", 0);
var y_coord = get_integer("y coord", 0);

if(scr_Check_Hit(x_coord, y_coord)){
    show_message("HIT");
}
else{
    show_message("MISS");
}
