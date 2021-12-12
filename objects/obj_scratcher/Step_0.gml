/// @description Erase cover where user clicks

if (mouse_check_button(mb_left)) {
	
	if (surface_exists(cover_surface)){
		
		surface_set_target(cover_surface);
		gpu_set_blendmode(bm_subtract);	// erase wherever you click
		draw_set_color(c_black);
		draw_circle(mouse_x-x, mouse_y-y, 25, false);	// use circle as eraser
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
		
	}
	
}