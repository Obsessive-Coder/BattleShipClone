///scr_Rotate_Ship();

//Rotate the ship 90 degrees if it is picked up and the game is in placement phase
with(self){
  if(global.str_game_phase = "placement" && self.bol_is_selected){
    //determine which direction to rotate based on input
    if(mouse_wheel_up()){
      image_angle += 90;
    }
    else if(mouse_wheel_down()){
      image_angle -= 90;        
    }

    //set the image_angle to 0 if it is greater than 360 degrees or less than -360 degrees
    if((image_angle >= 360) || (image_angle <= -360)){
      image_angle = 0
    }
    
    //get and set the instance's 'direction' variable
    int_direction = scr_Get_Direction(image_angle);
    
    //offset the ships sprite so it aligns with the visual game board
    scr_Offset_Sprite(int_direction);
  }
}
