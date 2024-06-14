var _s = id;

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
	with (instance_create_depth(0, 0, -9999, obj_textbox))
	{
		scr_game_text(_s.text_id);
	}
}


/*
if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, self))
{
    if (!instance_exists(oDialogParent))
    {

        var dialog_instance = instance_create_layer(x, y, "Instances", oDialogParent);
        

        dialog_instance.dialog.reset(mario_dialogs);
    }
    else
    {

        oDialogParent.dialog.reset(mario_dialogs);
    }
}
*/