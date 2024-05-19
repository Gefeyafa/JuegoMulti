/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



// Función para obtener el jugador más cercano
function get_nearest_player() {
    var nearest_player = noone;
    var min_distance = -1;

    with (obj_player) {
        var distance = point_distance(x, y, other.x, other.y);
        if (nearest_player == noone || distance < min_distance) {
            nearest_player = id;
            min_distance = distance;
        }
    }

    return nearest_player;
}

target_player = get_nearest_player();

if (instance_exists(target_player)) {
    var player_direction = point_direction(x, y, target_player.x, target_player.y);
    var player_distance = point_distance(x, y, target_player.x, target_player.y);
    var angle_diff = angle_difference(player_direction, image_angle_);

    switch (state) {
        case "idle":
            // Actualizar la dirección en las curvas del path
            if (path_index != -1) { // Verifica que el path esté activo
                var next_position = path_position + move_speed / path_get_length(path_enemy2); // Posición siguiente en el path
                if (next_position >= 1) {
                    next_position = 0;
                }
                var next_x = path_get_x(path_enemy2, next_position);
                var next_y = path_get_y(path_enemy2, next_position);

                // Calcular la dirección hacia el próximo punto del path
                var target_angle = point_direction(x, y, next_x, next_y);

                // Apuntar hacia la dirección correcta
                if (abs(next_x - x) > abs(next_y - y)) {
                    if (next_x > x) {
                        image_angle_ = 0; // Derecha
                    } else {
                        image_angle_ = 180; // Izquierda
                    }
                } else {
                    if (next_y > y) {
                        image_angle_ = 270; // Abajo
                    } else {
                        image_angle_ = 90; // Arriba
                    }
                }
            }

            // Verificar si el jugador está en el rango de visión y no hay obstáculos
            if (player_distance < sightMAX && abs(angle_diff) < 90) {
                var lineWall = collision_line(x, y, target_player.x, target_player.y, obj_wall, true, true);
                if (lineWall == noone) {
                    path_end();
                    state = "alert";
                }
            }
            break;

        case "alert":
            // Verificar si el jugador sigue dentro del rango de visión y no hay obstáculos
            if (player_distance >= sightMAX || abs(angle_diff) >= 90 || collision_line(x, y, target_player.x, target_player.y, obj_wall, true, true) != noone) {
                var start_x = path_get_x(path_enemy2, 0);
                var start_y = path_get_y(path_enemy2, 0);
                var distance_to_start = point_distance(x, y, start_x, start_y);

                // Si la distancia al punto de inicio es grande, cambiar al estado de retorno
                if (distance_to_start > move_speed) {
                    state = "returning_to_start";
                } else {
                    state = "idle";
                    path_start(path_enemy2, move_speed, path_action_continue, false);
                }
            } else {
                // Apuntar drásticamente hacia el jugador
                image_angle_ = player_direction;

                // Disparar un proyectil
                if (shoot_cooldown <= 0) {
                    var projectile = instance_create_layer(x, y, "Instances", obj_projectile_enemy); // Usa la capa "Instances"
                    projectile.direction = image_angle_; // Ajusta la dirección del proyectil
                    projectile.image_angle = image_angle_; // Ajusta la rotación del sprite del proyectil
                    shoot_cooldown = 30; // Cooldown de 30 pasos antes de disparar nuevamente
                } else {
                    shoot_cooldown -= 1;
                }
            }
            break;

        case "returning_to_start":
            var start_x = path_get_x(path_enemy2, 0);
            var start_y = path_get_y(path_enemy2, 0);

            // Moverse hacia el punto de inicio a la velocidad del path
            move_towards_point(start_x, start_y, move_speed);

            // Si está cerca del punto de inicio, cambiar al estado idle y reiniciar el recorrido del path
            if (point_distance(x, y, start_x, start_y) < move_speed) {
                state = "idle";
                path_start(path_enemy2, move_speed, path_action_continue, false);
                image_angle_ = 0; // Apunta hacia la derecha cuando regresa al inicio
            }
            break;
    }
}

// Máquina de estados para los sprites de arriba del enemigo
switch (state) {
    case "idle":
        emote_index = 0;
        break;
    case "alert":
        emote_index = 2;
        break;
    case "returning_to_start":
        emote_index = 0; // Cambiar esto según sea necesario
        break;
}


//if(state == "idle"){exit;}
/*
//ai
if(state == "check out"){
	event_user(0); state = "checking out"; emote.sprite_index =spr_Emote_Enemy_State_Roaming;
}


if(state == "checking out")
{
	if(distance_to_point(position_Target_X, position_Target_Y) < 5)
	{
		state = "nothing here";
		emote.sprite_index =spr_Emote_Enemy_State_NothingThere;
	}
}

if(state == "nothing here")
{
	ai_NothingHere_timer--;
	if(ai_NothingHere_timer <=0)
	{
		ai_NothingHere_timer = ai_NothingHere_time;
		state = "going back"; event_user(1);
		emote.sprite_index =spr_Emote_Enemy_State_Roaming;
	}
}

if(state == "going back")
{
	if(distance_to_point(position_Start_X, position_Start_Y) < 5)
	{
		state = "idle";
		emote.sprite_index =spr_Emote_Enemy_State_Idle;
	}
}



*/