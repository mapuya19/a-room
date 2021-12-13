/// @description Go to swipe card

if global.poweron == 1 && global.lighton == 1 && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_swipe_card) {
	room_goto(room_swipe);
}