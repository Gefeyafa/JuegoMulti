/// @description Insert description here

var _input = rollback_get_input();

var move_x = 0;
var move_y = 0;

// Movimiento horizontal
if (_input.left) 
{
    move_x = -speedPlayer;
} else if (_input.right)
{
    move_x = speedPlayer;
}

// Verificar colisión horizontal
if (!place_meeting(x + move_x, y, obj_wall)) {
    x += move_x;
}

// Movimiento vertical
if (_input.up) 
{
    move_y = -speedPlayer;
} else if (_input.down) 
{
    move_y = speedPlayer;
}


// Verificar colisión vertical
if (!place_meeting(x, y + move_y, obj_wall)) {
    y += move_y;
}


image_angle = point_direction(x, y, _input.mb_x, _input.mb_y)


//crear bala 

if(_input.fire_pressed)
{
	var _proj = instance_create_layer(x, y, layer, obj_projectile);
	
	_proj.speed = 10;
	_proj.direction = image_angle;
	_proj.image_angle = image_angle;
	_proj.player = self;
	
}