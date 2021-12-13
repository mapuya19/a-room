/// @description Insert description here
// You can write your code in this editor
if (global.visiblemain == 4) {
	sprite_index = spr_text_Ialready;
	draw_self();
}

if (global.poweron == 1) && (global.lighton == 1) {
	if (global.visiblemain == 1) { // bomb
		sprite_index = spr_text_abomb;
		draw_self();
	}

	if (global.visiblemain == 2) { // generator
		sprite_index = spr_text_agenerator;
		draw_self();
	}

	if (global.visiblemain == 3) { // light
		sprite_index = spr_text_alightswitch;
		draw_self();
	}
	if (global.visiblemain == 5) { // handprint
		sprite_index = spr_text_ahandprint;
		draw_self();
	}

} else {
	if (global.visiblemain != 0) && (global.visiblemain != 4) { 
		sprite_index = spr_text_question;
		draw_self();
	}
}
