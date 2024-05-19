/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(other)) {
    instance_destroy(other); // Destruir el jugador
	instance_destroy(obj_projectile);
}
instance_destroy(); // Destruir el proyectil del enemigo