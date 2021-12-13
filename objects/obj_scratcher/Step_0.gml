/// @description Erase cover where user clicks

if (mouse_check_button(mb_left)) {
	
	if (surface_exists(cover_surface)){
		
		surface_set_target(cover_surface);
		gpu_set_blendmode(bm_subtract);	// erase wherever you click
		draw_set_color(c_black);
		draw_circle(mouse_x-x, mouse_y-y, 25, false);	// use circle as eraser
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
		
		if !(audio_is_playing(sound_scrub)) {
			audio_play_sound(sound_scrub, 14, 1);
		}
		
		if (audio_is_paused(sound_scrub)) {
			audio_resume_sound(sound_scrub);
		}
	}
	
}
else if (mouse_check_button_released(mb_left)){
	if (audio_is_playing(sound_scrub)) {
		audio_pause_sound(sound_scrub);
	}
}