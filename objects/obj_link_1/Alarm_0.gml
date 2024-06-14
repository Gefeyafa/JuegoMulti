// Alternate between Link_Walk_Right and Link_Walk_Left
if (sprite_index == Link_Walk_Right) {
    sprite_index = Link_Walk_Left;
} else {
    sprite_index = Link_Walk_Right;
}

// Reset the alarm to trigger again after 3 seconds
alarm[0] = room_speed * 1;
