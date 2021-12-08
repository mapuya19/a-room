/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_lightswitch)) {
	global.counter++;
	if(global.poweron == 0) {
		global.visiblelight = 1;
	}
	var str_print = string_format(global.counter, 1, 3);
	show_debug_message(str_print);
}

