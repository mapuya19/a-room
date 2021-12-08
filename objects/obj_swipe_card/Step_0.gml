/// @description Card click and move

if (!drag) {
   if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
      drag = true;
      mx = x - mouse_x;
   }
} else {
   x = mouse_x + mx;
   if (!mouse_check_button(mb_left)) {
      drag = false;
   }
}

if (hspeed > 10) {
	
}

// sound for when swipe is done correctly
//audio_play_sound(sound_good_card_swipe, 5, 0)

// sound for when swipe is done correctly
//audio_play_sound(sound_bad_card_swipe, 6, 0)