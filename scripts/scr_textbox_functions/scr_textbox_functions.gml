function scr_set_defaults_for_text()
{
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_spr[page_number] = spr_textbox_black;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = snd_voice;
}

function scr_text(_text)
{
	scr_set_defaults_for_text();
	
	text[page_number] = _text;
	
	
	if argument_count > 1
	{
		switch(argument[1])
		{
			//LINK
			case "Link":
			speaker_sprite[page_number] = spr_text_link;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = snd_animal_crossing_effect;
			break;
			
			case "Link-happy":
			speaker_sprite[page_number] = spr_text_link_happy;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = snd_animal_crossing_effect;
			break;
			
			//MARIO
			case "Mario":
			speaker_sprite[page_number] = spr_text_mario;
			txtb_spr[page_number] = spr_textbox_red;
			snd[page_number] = snd_animal_crossing_effect;
			break;
			
			//KIRBY
			case "Kirby":
			speaker_sprite[page_number] = spr_text_kirby;
			txtb_spr[page_number] = spr_textbox_pink;
			snd[page_number] = snd_animal_crossing_effect;
			break;
			//MEGAMAN
			case "Megaman":
			speaker_sprite[page_number] = spr_text_megaman;
			txtb_spr[page_number] = spr_textbox_blue;
			snd[page_number] = snd_animal_crossing_effect;
			break;
		}
	}
	
	if argument_count > 2
	{
		speaker_side[page_number] = argument[2];
	}
	
	page_number++;
}


function scr_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}


function create_textbox(_text_id)
{
	with (instance_create_depth(0, 0, -9999, obj_textbox))
	{
		scr_game_text(_text_id);
	}
}