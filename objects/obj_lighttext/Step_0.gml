// @description Insert description here
// You can write your code in this editor

if (global.visiblelight = 0) {
	sprite_index = spr_text_empty;
}

if (global.visiblelight = 1) { // looks like the power is out
	sprite_index = spr_text_lookslike;
}

if (global.visiblelight = 2) { // we should keep the light on
	sprite_index = spr_text_ishouldkeep;
}

draw_self();