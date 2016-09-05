///Get Grid Coordinate
//an array to hold 1-10
var i;
for (i = 0; i < 10; i += 1){
   ary_numbers[i] = i + 1;
}//end for

var int_x_coord = mouse_x / global.int_grid_square_size;
var i;
for(i = 0; i < 10; i += 1){
    if(int_x_coord > i){
        if(int_x_coord < i + 1){
            int_x_coord = i + 1;
            break;
        }
    }
}


return int_x_coord;
