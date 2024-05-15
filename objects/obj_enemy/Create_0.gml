/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_speed = 0;//en caso de querer personajes con animacion de caminar



image_angle_ = 0;


//ai state machine
sightMAX = 120;

state = "idle";
emote_index = 0;

//ai
emote = instance_create_layer(x,y -17, layer, obj_enemy_State_emote);
emote.instanceToFollow = id;

path = path_add();

position_Start_X = x;
position_Start_Y = y;

position_Target_X = x;
position_Target_Y = y;

walkSpeed_Checking = 0.5;
walkSpeed_Aggro = 0.75;


ai_NothingHere_time = 180;
ai_NothingHere_timer = ai_NothingHere_time;


