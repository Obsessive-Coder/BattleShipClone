//return an integer representation of which direction the ship is pointed from its origin
//argument0 = the instance's image_angle variable
switch (argument0)
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
