/// @description Draw keypad

// keypad

image_speed = 0;

draw_text_transformed_colour(155, 70, keys_typed, 3, 3, 0, c_black, c_black, c_black, c_black, 1);

if (global.attempts == 3) { image_index = 0; }
else if (global.attempts == 2) { image_index = 1; }
else if (global.attempts == 1) { image_index = 2; }
else if (global.attempts <= 0) { image_index = 3; }