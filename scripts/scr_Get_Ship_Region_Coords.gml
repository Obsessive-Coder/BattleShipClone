//argument0 = direction
//argument1 = size
//argument2[] = x1 and y1 coords

var int_size = argument1 - 1;

var ary_ship_coords;
ary_ship_coords[0] = argument2[0];
ary_ship_coords[1] = argument2[1];

switch (argument0)
{
    case 0://right
        ary_ship_coords[2] = ary_ship_coords[0] + int_size;
        ary_ship_coords[3] = ary_ship_coords[1];
        break;
    case 1://up
        ary_ship_coords[2] = ary_ship_coords[0];
        ary_ship_coords[3] = ary_ship_coords[1] - int_size;
        break;
    case 2://left
        ary_ship_coords[2] = ary_ship_coords[0] - int_size;
        ary_ship_coords[3] = ary_ship_coords[1];
        break;
    case 3://down
        ary_ship_coords[2] = ary_ship_coords[0];
        ary_ship_coords[3] = ary_ship_coords[1] + int_size;
        break;
}

return ary_ship_coords;
