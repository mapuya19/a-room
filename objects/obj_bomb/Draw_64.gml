/// @description Draw keypad

// types as much as screen can fit
if (string_length(keys_typed) < 10) {
	if (obj_button_pound.pressed) {
		keys_typed = keys_typed + "#";
		obj_button_pound.pressed = false;
	}
	if (obj_button_star.pressed) {
		keys_typed = keys_typed + "*";
		obj_button_star.pressed = false;
	}
	if (obj_button0.pressed) {
		keys_typed = keys_typed + string(0);
		obj_button0.pressed = false;
	}
	if (obj_button1.pressed) {
		keys_typed = keys_typed + string(1);
		obj_button1.pressed = false;
	}
	if (obj_button2.pressed) {
		keys_typed = keys_typed + string(2);
		obj_button2.pressed = false;
	}
	if (obj_button3.pressed) {
		keys_typed = keys_typed + string(3);
		obj_button3.pressed = false;
	}
	if (obj_button4.pressed) {
		keys_typed = keys_typed + string(4);
		obj_button4.pressed = false;
	}
	if (obj_button5.pressed) {
		keys_typed = keys_typed + string(5);
		obj_button5.pressed = false;
	}
	if (obj_button6.pressed) {
		keys_typed = keys_typed + string(6);
		obj_button6.pressed = false;
	}
	if (obj_button7.pressed) {
		keys_typed = keys_typed + string(7);
		obj_button7.pressed = false;
	}
	if (obj_button8.pressed) {
		keys_typed = keys_typed + string(8);
		obj_button8.pressed = false;
	}
	if (obj_button9.pressed) {
		keys_typed = keys_typed + string(9);
		obj_button9.pressed = false;
	}

}

draw_text_transformed_colour(480, 185, keys_typed, 3, 3, 0, c_black, c_black, c_black, c_black, 1);