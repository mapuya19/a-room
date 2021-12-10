/// @description Check if button is pressed

if (!instance_exists(obj_dark)) {
	if (position_meeting(mouse_x, mouse_y, id) && (obj_bomb.keys_typed != "ERR INCORRECT") && (obj_bomb.keys_typed != "BOMB DEFUSED")) {
		if (mouse_check_button_pressed(mb_left)) {
			pressed = true;
			y += 5;
			alarm[0] = room_speed * 0.25;
		}
	}
}