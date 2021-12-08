/// @description Go to maze

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_maze) {
	room_goto(room_maze);
}