/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


// Solo proceder si el juego ha comenzado
if (global.game_started) {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle_, c_white, image_alpha);

    // Verificar que target_player aún exista antes de acceder a sus propiedades
    if (instance_exists(target_player)) {
        // Dibujar la línea de visión hacia el jugador
        draw_line_width_color(x, y, target_player.x, target_player.y, 1.5, c_purple, c_purple);
    }

    draw_sprite(Sprite15, emote_index, x, y - 17);
}



/*
draw_set_alpha(0.4);
draw_circle_color(position_Start_X, position_Start_Y,3, c_green,c_orange, 0);
draw_circle_color(position_Target_X, position_Target_Y,3, c_red,c_red, 0);
draw_set_alpha(1);
*/