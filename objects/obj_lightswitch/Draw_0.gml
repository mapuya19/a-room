/// @description Insert description here
// You can write your code in this editor

if (counter % 2 == 1) { //odd
	sprite_index = spr_lighton;
	global.lighton = 1;
}

if (counter % 2 == 0) { //even
	sprite_index = spr_lightoff;
	global.lighton = 0;
}

draw_self();