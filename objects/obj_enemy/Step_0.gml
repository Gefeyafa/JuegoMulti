/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(state == "idle"){exit;}

direction = point_direction(x,y, obj_player.x, obj_player.y);
//image_angle_ = direction;

image_angle_ = lerp(image_angle_, direction, 0.02);


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

/*
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
				var lineWall = collision_line(x,y, x +lengthdir_x(sightMAX, image_angle_), y + lengthdir_y(sightMAX, image_angle_), obj_collision, 0,0);
				if(lineWall == noone){state = "alert";}
			}
		}
	}
	break;
}
*/
