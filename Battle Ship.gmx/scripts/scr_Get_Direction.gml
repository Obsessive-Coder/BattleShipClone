///scr_Get_Direction(ship_image_angle);

var ship_image_angle = argument0;

//return an integer representation of which direction the ship is pointed from its origin
switch (ship_image_angle)
{
    case 0:
        return 0; //right
    case 90:
        return 1; //up
    case 180:
        return 2; //left
    case 270:
        return 3; //down
    case -270:
        return 1; //up
    case -180:
        return 2; //left
    case -90:
        return 3; //down
}
