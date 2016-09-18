///scr_Offset_Sprite(dir);

var dir = argument0;
//adjust sprite origin based on its direction so it aligns with the grid
var x_off, y_off;

switch (dir)
{
    case 0:
        x_off = 15;
        y_off = 15;
        break;
    case 1:
        x_off = 16;
        y_off = 15;
        break;
    case 2:
        x_off = 16;
        y_off = 16;
        break;
    case 3:
        x_off = 15;
        y_off = 16;
        break;
}
    
sprite_set_offset(self.sprite_index, x_off, y_off);                  
