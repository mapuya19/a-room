/// @description Card click and move

//show_debug_message("X" + string(x));

if (!drag) {
   if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
      drag = true;
      mx = x - mouse_x;
   }
} else {
   if (mouse_x > 0 && mouse_x < 600) {
	    x = mouse_x + mx;
		time_counter++;
   }
  
   if (!mouse_check_button(mb_left)) {
		show_debug_message("TIME" + string(time_counter));
	   
		if (time_counter >= 30 && time_counter <= 40) {
			audio_play_sound(sound_good_card_swipe, 8, 0);
		} else if (time_counter < 30) {
			//too fast message
			audio_play_sound(sound_bad_card_swipe, 8, 0)
		} else {
			//too slow message
			audio_play_sound(sound_bad_card_swipe, 8, 0)
		}
	   
		drag = false;
		x = 114
		time_counter = 0;
   }
}