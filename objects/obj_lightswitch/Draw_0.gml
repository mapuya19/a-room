/// @description Insert description here
// You can write your code in this editor

if (global.counter % 2 == 1) { //odd and on
	sprite_index = spr_lighton;
	global.lighton = 1;
	//if (global.poweron == 1) {
	//	global.visiblelight = 2;
	//	show_debug_message("working");
	//	global.visiblebomb = 2;
	//}
}

if (global.counter % 2 == 0) { //even and off
	if(global.poweron == 0) {
		global.lighton = 0;
		sprite_index = spr_lightoff;
	} else {
		show_debug_message("power is on");
		if (global.counter == 0) {
			show_debug_message("lights are off");
			global.visiblelight = 0;
			sprite_index = spr_lightoff;
		} else {
			sprite_index = spr_lighton;
			global.lighton = 1;
			global.visiblelight = 2;
			show_debug_message("working");
			global.visiblebomb = 2;
		}
	}
}

draw_self();