/// @description Draw keypad and bomb timer

// keypad

draw_text_transformed_colour(480, 185, keys_typed, 3, 3, 0, c_black, c_black, c_black, c_black, 1);

// bomb timer

draw_text_transformed_colour(835, 370, global.time_str, 4.5, 4.5, 0, c_red, c_red, c_red, c_red, 1);