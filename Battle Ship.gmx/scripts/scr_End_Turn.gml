///scr_End_Turn();

//change game phase to the turn of the other player
if(global.str_game_phase = "player 1 turn"){
  global.str_game_phase = "player npc turn";
  // Set the alarm to fire the npc take turn script.
  // This is used to provide a delay between turns
  alarm[0] = room_speed * 0.1;  
}
else if(global.str_game_phase == "player npc turn"){
  global.str_game_phase = "start turn";
  //create the button
  instance_create(464, 336, obj_button);
}
