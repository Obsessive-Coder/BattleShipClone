///scr_Step_Game_Controller();

if(global.str_game_phase == "player 1 turn"){
  window_set_cursor(cr_none);
  cursor_sprite = spr_cursor_cross_hair;
}
else{
  window_set_cursor(cr_default);
  cursor_sprite = -1;
};
