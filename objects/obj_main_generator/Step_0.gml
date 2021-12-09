/// @description Go to wire room

if (global.poweron == 0) {
	if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_generator) {
		room_goto(room_wires);
	}
} 