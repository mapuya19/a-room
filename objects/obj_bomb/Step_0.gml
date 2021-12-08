/// @description Handle keypad inputs

// keypad
// types as much as screen can fit
if (string_length(keys_typed) < global.num_total) {
	if (obj_button_pound.pressed) {
		audio_play_sound(sound_button_press, 3, 0);
		
		if (keys_typed == global.correct) {
			keys_typed = "BOMB DEFUSED";
		} else {
			keys_typed = "ERR INCORRECT";
		}
		
		obj_button_pound.pressed = false;
	} else if (obj_button_star.pressed) {
		keys_typed = "";
		audio_play_sound(sound_button_press, 3, 0);
		obj_button_star.pressed = false;
	} else if (obj_button0.pressed) {
		keys_typed = keys_typed + string(0);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button0.pressed = false;
	} else if (obj_button1.pressed) {
		keys_typed = keys_typed + string(1);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button1.pressed = false;
	} else if (obj_button2.pressed) {
		keys_typed = keys_typed + string(2);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button2.pressed = false;
	} else if (obj_button3.pressed) {
		keys_typed = keys_typed + string(3);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button3.pressed = false;
	} else if (obj_button4.pressed) {
		keys_typed = keys_typed + string(4);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button4.pressed = false;
	} else if (obj_button5.pressed) {
		keys_typed = keys_typed + string(5);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button5.pressed = false;
	} else if (obj_button6.pressed) {
		keys_typed = keys_typed + string(6);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button6.pressed = false;
	} else if (obj_button7.pressed) {
		keys_typed = keys_typed + string(7);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button7.pressed = false;
	} else if (obj_button8.pressed) {
		keys_typed = keys_typed + string(8);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button8.pressed = false;
	} else if (obj_button9.pressed) {
		keys_typed = keys_typed + string(9);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button9.pressed = false;
	}
} else {
	global.num_filled = true;
	keys_typed = "ERR INCORRECT";
	
	if (obj_button_star.pressed) {
		keys_typed = "";
		global.num_filled = false;
		audio_play_sound(sound_button_press, 3, 0);
		obj_button_star.pressed = false;
	}
}