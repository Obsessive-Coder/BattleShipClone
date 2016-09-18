///scr_End_Game();

global.str_game_phase = "game over";

if(instance_exists(obj_button)){
  with(obj_button){
    instance_destroy();
  };
};
