depth = -9999;

textbox_width = 200;
textbox_height = 64;
border = 8;
line_sep = 12;
line_width = textbox_width - border * 2;
txtb_spr[0] = spr_textbox_black;
txtb_img = 0;
txtb_img_spd = 6/60;

page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
draw_char = 0;
text_spd = 1;

option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;

snd_delay = 4;
snd_count = snd_delay;

scr_set_defaults_for_text();
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 16;