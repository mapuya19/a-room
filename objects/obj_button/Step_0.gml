/// @description Check if button is pressed

if (!instance_exists(obj_dark)) {
	if (position_meeting(mouse_x, mouse_y, id)) {
	
		if (mouse_check_button_pressed(mb_left) && global.num_filled == false) {
			if (alarm[0] == -1) {
				pressed = true;
				y += 5;
				alarm[0] = room_speed * 0.25;
			}
		}
	}
}