/// @description Insert description here

rollback_define_player(obj_player);

rollback_define_input({
    left: ord("A"),
    right: ord("D"),
    up: ord("W"),
    down: ord("S"),
    mb_x: m_axisx,
    mb_y: m_axisy,
    fire: mb_left
});

global.game_started = true;

if (!rollback_join_game()) {
    rollback_create_game(1, false); // Cuantos jugadores son (maximo 4)
    global.game_started = true;
}

