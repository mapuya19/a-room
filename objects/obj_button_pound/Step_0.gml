/// @description Check if button is pressed

if (position_meeting(mouse_x, mouse_y, id) && (obj_bomb.keys_typed != "ERR INCORRECT") && (obj_bomb.keys_typed != "BOMB DEFUSED")) {
	if (mouse_check_button_pressed(mb_left)) {
		pressed = true;
	}
}