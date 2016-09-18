///scr_Get_Adjacent_Coords(ary_coords, direction);

var ary_coords = argument0;
var dir = argument1;

//add or subtract 1 to the x or y coord based on the direction
switch (dir)
{
    case "up":
        ary_coords[0] = ary_coords[0];
        ary_coords[1] = ary_coords[1] - 1;
        break;
        
    case "down":
        ary_coords[0] = ary_coords[0];
        ary_coords[1] = ary_coords[1] + 1;
        break;
    
    case "left":
        ary_coords[0] = ary_coords[0] - 1;
        ary_coords[1] = ary_coords[1];
        break;
        
    case "right":
        ary_coords[0] = ary_coords[0] + 1;
        ary_coords[1] = ary_coords[1];
        break;
}

return ary_coords;

