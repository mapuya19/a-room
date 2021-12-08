/// @description Insert description here
// You can write your code in this editor

if (global.counter % 2 == 1) { //odd and on
	sprite_index = spr_lighton;
	global.lighton = 1;
}

if (global.counter % 2 == 0) { //even and off
	if(global.poweron == 0) {
		global.lighton = 0;
		sprite_index = spr_lightoff;
	}
	else {
		global.visiblelight = 0;
		if (global.counter == 0) {
			sprite_index = spr_lightoff;
		} else {
			sprite_index = spr_lighton
			global.lighton = 1;
			global.visiblelight = 2;
		}
	}
}

draw_self();