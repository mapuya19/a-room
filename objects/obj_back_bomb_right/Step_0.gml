/// @description Go back to bomb

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_back_bomb_right) {
	room_goto(room_bomb);
}