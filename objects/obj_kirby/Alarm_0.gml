if (sprite_index == Kirby_Walk_Left) {
    sprite_index = Kirby_Walk_Right;
} else {
    sprite_index = Kirby_Walk_Left;
}

alarm[0] = room_speed * 1/2;
