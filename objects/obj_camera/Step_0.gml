/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


var grabCamera_Width = camera_get_view_width(view_camera[0]);
var grabCamera_Height = camera_get_view_height(view_camera[0]);

var grabCamera_X = camera_get_view_x(view_camera[0]);
var grabCamera_Y = camera_get_view_y(view_camera[0]);

//obtenga la posición x y del objetivo y no muestre nada fuera de la habitación

 var cameraX = clamp(obj_player.x - grabCamera_Width/2, 0, room_width - grabCamera_Width);
 var cameraY = clamp(obj_player.y - grabCamera_Height/2, 0, room_height - grabCamera_Height);
 
 
 var smooth = 0.1;
camera_set_view_pos(view_camera[0], 
		lerp(grabCamera_X, cameraX,smooth), 
		lerp(grabCamera_Y, cameraY, smooth));