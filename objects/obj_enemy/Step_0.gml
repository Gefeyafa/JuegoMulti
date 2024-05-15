/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
direction = point_direction(x,y, obj_player.x, obj_player.y);
//image_angle_ = direction;


image_angle_ = lerp(image_angle_, direction, 0.02);


//maquina de estados para los sprite de arriba del enemigo
switch (state)
{
	case "idle": emote_index = 0; break;
	case "alert": emote_index = 1; break;
	
}


//Dibujar la distancia del PLayer
switch(state)
{
	case "idle":
	
	if(instance_exists(obj_player))
	{
		if(point_distance(x,y, obj_player.x, obj_player.y) < sightMAX)
		{
			var totalAngle = point_direction(x,y, obj_player.x, obj_player.y);
			
			if(abs(angle_difference(totalAngle, image_angle_)) < 30)
			{
				//Se pone en alerta si no hay ninguna colision
				//var lineWall = collision_line(x,y, x +lengthdir_x(sightMAX, image_angle_), y + lengthdir_y(sightMAX, image_angle_), obj_camera, 0,0);
				//if(lineWall == noone){state = "alert";}
			}
		}
	}
	break;
}