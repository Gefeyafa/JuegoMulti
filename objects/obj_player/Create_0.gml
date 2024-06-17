/// @description Insert description here

// Create Event
speedPlayer = 3;
y = room_height / 2;

if (player_id == 0) {
    x = 50;
} else if (player_id == 1) {
    x = room_width - 50;
}

points = 0;
ai_Circle_Range = 100;
has_weapon = false; // Nueva variable para rastrear si el jugador tiene el arma
