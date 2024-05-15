/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


//Dibujar al enemigo
draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, image_angle_, c_white, image_alpha);


draw_line_width_color(x,y, x + lengthdir_x(sightMAX, image_angle_), y + lengthdir_y(sightMAX, image_angle_), 1.5, c_purple, c_purple);

draw_sprite(spr_state, emote_index, x,y -17);



//Dibujar distancia del player
var totalAngle = point_direction(x,y, obj_player.x, obj_player.y);

var text2 = angle_difference(totalAngle, image_angle_);

draw_text(x,y+40,text2);