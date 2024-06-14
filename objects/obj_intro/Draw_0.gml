// Evento Draw para obj_intro

// Fondo para el texto
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

// Dibujar el texto primera escena
if(room == Room1)
{
	draw_set_color(c_white); 
	draw_text(10, 10, "Hay un pinche party en el"); 
	draw_text(10, 30, "Mushroom Kingdom"); 
	draw_text(10, 60, "Todos estan invitados!"); 
	draw_text(10, 80, "Incluso un mediocre como tu"); 
	draw_text(10, 100, "Asi que habla con ellos"); 
	draw_text(10, 120, "para hacerte su amix"); 
	draw_text(10, 150, "uwu"); 
}
// Dibujar el texto segunda escena
if(room == Room2)
{
	draw_set_color(c_white); 
	draw_text(10, 10, "Pasando a la segunda escena..."); 
	draw_text(10, 30, "No"); 
	draw_text(10, 60, "Se"); 
	draw_text(10, 80, "que"); 
	draw_text(10, 100, "poner"); 
	draw_text(10, 120, "ayuda"); 
	draw_text(10, 150, "a"); 
}