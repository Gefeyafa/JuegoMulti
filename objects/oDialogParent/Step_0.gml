if (!showing_dialog && dialog.count() > 0)
{
    current_dialog = dialog.pop();
    showing_dialog = true;
}
else if (showing_dialog && keyboard_check_released(key_next))
{
    showing_dialog = false;
    alpha = 0;
}
