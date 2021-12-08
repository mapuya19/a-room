/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_lightswitch) {
	if (global.lighton == 1) { 
		global.counter = 1;
	} else {
		global.counter = 0;
	}
	room_goto(room_light);
}