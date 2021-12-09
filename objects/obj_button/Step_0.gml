/// @description Check if button is pressed

if (position_meeting(mouse_x, mouse_y, id)) {
	
	if (mouse_check_button_pressed(mb_left) && global.num_filled == false) {
		pressed = true;
	}
}
