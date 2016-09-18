///scr_Get_Ship_Region_Coords(ship_direction, ship_size, ary_coords);

var ship_direction = argument0;
var ship_size = argument1; 
var ary_coords = argument2;


var int_size = ship_size - 1;

var ary_region_coords;
ary_region_coords[0] = ary_coords[0];
ary_region_coords[1] = ary_coords[1];

switch (argument0)
{
    case 0://right
        ary_region_coords[2] = ary_region_coords[0] + int_size;
        ary_region_coords[3] = ary_region_coords[1];
        break;
    case 1://up
        ary_region_coords[2] = ary_region_coords[0];
        ary_region_coords[3] = ary_region_coords[1] - int_size;
        break;
    case 2://left
        ary_region_coords[2] = ary_region_coords[0] - int_size;
        ary_region_coords[3] = ary_region_coords[1];
        break;
    case 3://down
        ary_region_coords[2] = ary_region_coords[0];
        ary_region_coords[3] = ary_region_coords[1] + int_size;
        break;
}

return ary_region_coords;
