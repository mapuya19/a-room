/// @description Go to bomb

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_bomb)) {

	audio_play_sound(sound_good_click, 12, 0); 
	room_goto(room_bomb);
}



