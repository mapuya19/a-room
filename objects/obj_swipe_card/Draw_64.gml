/// @description Display score

if (global.swipe_discovered) { 
	x = 470; 
	// display 3rd digit (7)
	draw_text_transformed_color(170, 300, "The 3rd digit is:", 1.5, 1.5, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color(240, 355, "7", 2, 2, 0, c_black, c_black, c_black, c_black, 1);
}
