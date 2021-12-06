/// @description Erase whatever screen wiper comes across
draw_self()

if (place_meeting(x,y, obj_screen_wiper) && mouse_check_button_pressed(mb_left) && instance_exists(id)) {
	
	surface_set_target(id)
	gpu_set_blendmode(bm_subtract)
	
	draw_surface(obj_screen_wiper, mouse_x, mouse_y)
	
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
}