#define scr_Rotate_Ship_Left
if(!self.bol_is_placed){
    self.image_angle += 90
    if(self.image_angle >= 360){
        self.image_angle = 0;
    }
    
    if(self.str_direction = "horizontal"){
        self.str_direction = "vertical";
    }
    else{
        self.str_direction = "horizontal";
    }
}

#define scr_Rotate_Ship_Right
if(!self.bol_is_placed){
    if(self.image_angle = 0){
        self.image_angle = 360;
    }
    self.image_angle -= 90
    
    if(self.str_direction = "horizontal"){
        self.str_direction = "vertical";
    }
    else{
        self.str_direction = "horizontal";
    }
}