if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
	create_textbox(text_id)
}


/*
if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, self))
{
    if (!instance_exists(oDialogParent))
    {

        var dialog_instance = instance_create_layer(x, y, "Instances", oDialogParent);
        

        dialog_instance.dialog.reset(obj_dialogo_link_1.link_dialogs);
    }
    else
    {

        oDialogParent.dialog.reset(obj_dialogo_link_1.link_dialogs);
    }
}
*/