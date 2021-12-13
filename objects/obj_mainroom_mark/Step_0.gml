/// @description Go to light switch

if (global.poweron == 1 && global.lighton == 1 && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_mainroom_mark)) {

	audio_play_sound(sound_good_click, 12, 0); 
	room_goto(room_screen_wipe);
}