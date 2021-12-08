/// @description Go to swipe card

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_swipe_card) {
	room_goto(room_swipe);
}