/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

/*
var _list = ds_list_create();
var _num = collision_circle_list(x, y, ai_Circle_Range, obj_enemy, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		var sight_line = collision_line(x,y, _list[| i].x, _list[| i].y, obj_wall, 0, 0);
        
		if(sight_line == noone){_list[| i].ai_I_See_you -=1;}
		
		else {_list[| i].ai_I_See_you = 6;}
		
		if(_list[| i].ai_I_See_you <= 0)
		{
			_list[| i].state = "check out";
			_list[| i].position_Target_X = x;
			_list[| i].position_Target_Y = y;
			
		}
    }
}
ds_list_destroy(_list);


alarm[0] = ai_refresh;