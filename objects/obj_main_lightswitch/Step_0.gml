/// @description Go to light switch

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_lightswitch) {
	if (global.lighton == 1) { 
		global.counter = 1;
	} else {
		global.counter = 0;
	}

	audio_play_sound(sound_good_click, 12, 0); 
	room_goto(room_light);
}