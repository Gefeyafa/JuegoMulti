/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
x += lengthdir_x(move_speed, direction);
y += lengthdir_y(move_speed, direction);

// Destruir el proyectil si sale de la room
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}