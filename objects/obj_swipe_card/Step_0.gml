/// @description Card click and move

//show_debug_message("X" + string(x));

if (!instance_exists(obj_dark) && !global.swipe_discovered) {
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
				x = 470;
				global.visibleswipe = 5;
				global.swipe_discovered = true;
				
			} else if (time_counter < 30) {
				//too fast message
				show_debug_message("too fast");
				global.visibleswipe = 4;
				audio_play_sound(sound_bad_card_swipe, 8, 0);
				x = 114;
			} else {
				//too slow message
				show_debug_message("too slow");
				global.visibleswipe = 3;
				audio_play_sound(sound_bad_card_swipe, 8, 0);
				x = 114;
			}
	   
			drag = false;
			time_counter = 0;
	   }
	}
}
else if (global.swipe_discovered) { 
	x = 470; 
	// display 3rd digit (7)
	draw_text_transformed(240, 370, "7", 3, 3, 0);
}