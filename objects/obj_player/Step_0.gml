// Step Event
var _input = rollback_get_input();

var move_x = 0;
var move_y = 0;

// Movimiento horizontal
if (_input.left) {
    move_x = -speedPlayer;
} else if (_input.right) {
    move_x = speedPlayer;
}

// Verificar colisión horizontal
if (!place_meeting(x + move_x, y, obj_wall)) {
    x += move_x;
}

// Movimiento vertical
if (_input.up) {
    move_y = -speedPlayer;
} else if (_input.down) {
    move_y = speedPlayer;
}

// Verificar colisión vertical
if (!place_meeting(x, y + move_y, obj_wall)) {
    y += move_y;
}

// Manejar colisión con el arma
if (place_meeting(x, y, obj_weapon)) {
    has_weapon = true;
    sprite_index = spr_player_with_weapon; // Cambia el sprite del jugador al que tiene el arma
    with (obj_weapon) {
        instance_destroy(); // Destruye el objeto del arma
    }
}

image_angle = point_direction(x, y, _input.mb_x, _input.mb_y);

// Crear bala solo si el jugador tiene el arma
if (has_weapon && _input.fire_pressed) {
    var _proj = instance_create_layer(x, y, layer, obj_projectile);
    _proj.speed = 10;
    _proj.direction = image_angle;
    _proj.image_angle = image_angle;
    _proj.player = self;
}

// Soltar el arma al presionar la tecla 'G'
if (has_weapon && keyboard_check_pressed(ord("G"))) {
    has_weapon = false;
    sprite_index = spr_player; // Cambia el sprite del jugador al original

    // Calcula la posición enfrente del jugador
    var drop_x = x + lengthdir_x(32, image_angle); // 32 es la distancia enfrente del jugador
    var drop_y = y + lengthdir_y(32, image_angle);

    // Crea el arma enfrente del jugador
    instance_create_layer(drop_x, drop_y, layer, obj_weapon);
}