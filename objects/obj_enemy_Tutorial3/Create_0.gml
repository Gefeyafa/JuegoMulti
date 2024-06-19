/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_speed = 0;
image_angle_ = 0;

// Estado inicial de la máquina de estados
sightMAX = 180;
state = "idle";
emote_index = 0;

// Velocidad del enemigo
move_speed = 2; // Ajusta esta velocidad según sea necesario

// Inicializar emote como una instancia vacía para evitar errores
emote = noone;

// Inicializar el cooldown de disparo
shoot_cooldown = 0;

// Iniciar el recorrido del path
path_start(path_enemyTutorial3, move_speed, path_action_continue, false);

// Inicializar target_player como noone
target_player = noone;
//ai
//emote = instance_create_layer(x,y -17, layer, obj_enemy_State_emote);
//emote.instanceToFollow = id;


/*
path = noone;

position_Start_X = x;
position_Start_Y = y;

position_Target_X = x;
position_Target_Y = y;

walkSpeed_Checking = 0.5;
walkSpeed_Aggro = 0.75;


ai_NothingHere_time = 180;
ai_NothingHere_timer = ai_NothingHere_time;


ai_I_See_you = 6;

