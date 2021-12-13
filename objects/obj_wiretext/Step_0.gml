// @description Insert description here
// You can write your code in this editor

if (global.poweron == 0) { // it's too dark
	sprite_index = spr_text_thankfully;
}

if (global.poweron = 1) { // i should be careful
	sprite_index = spr_thatshouldfix;
}

draw_self();