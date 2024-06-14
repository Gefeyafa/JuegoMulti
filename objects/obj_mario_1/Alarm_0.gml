if (sprite_index == Mario_Walk_Right) {
    sprite_index = Mario_Walk_Left;
} else {
    sprite_index = Mario_Walk_Right;
}

alarm[0] = room_speed * 1/2;
