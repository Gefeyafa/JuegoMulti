/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(mouse_check_button_released(mb_right))
{
	obj_enemy.position_Target_X = mouse_x;
	obj_enemy.position_Target_Y = mouse_y;
	obj_enemy.state = "check out";
}