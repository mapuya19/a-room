/// @description Go to light switch

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_lightswitch) {
	room_goto(room_light);
}