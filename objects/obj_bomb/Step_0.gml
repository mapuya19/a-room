/// @description Handle keypad inputs

// keypad
// types as much as screen can fit
if (string_length(keys_typed) < 9) {
	if (obj_button_pound.pressed) {
		keys_typed = keys_typed + "#";
		audio_play_sound(sound_button_press, 3, 0);
		obj_button_pound.pressed = false;
	}
	if (obj_button_star.pressed) {
		keys_typed = keys_typed + "*";
		audio_play_sound(sound_button_press, 3, 0);
		obj_button_star.pressed = false;
	}
	if (obj_button0.pressed) {
		keys_typed = keys_typed + string(0);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button0.pressed = false;
	}
	if (obj_button1.pressed) {
		keys_typed = keys_typed + string(1);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button1.pressed = false;
	}
	if (obj_button2.pressed) {
		keys_typed = keys_typed + string(2);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button2.pressed = false;
	}
	if (obj_button3.pressed) {
		keys_typed = keys_typed + string(3);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button3.pressed = false;
	}
	if (obj_button4.pressed) {
		keys_typed = keys_typed + string(4);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button4.pressed = false;
	}
	if (obj_button5.pressed) {
		keys_typed = keys_typed + string(5);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button5.pressed = false;
	}
	if (obj_button6.pressed) {
		keys_typed = keys_typed + string(6);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button6.pressed = false;
	}
	if (obj_button7.pressed) {
		keys_typed = keys_typed + string(7);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button7.pressed = false;
	}
	if (obj_button8.pressed) {
		keys_typed = keys_typed + string(8);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button8.pressed = false;
	}
	if (obj_button9.pressed) {
		keys_typed = keys_typed + string(9);
		audio_play_sound(sound_button_press, 3, 0);
		obj_button9.pressed = false;
	}
}