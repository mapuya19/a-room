/// @description Insert description here
// You can write your code in this editor

depth = -100000

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_go_back) && (global.win == false)) {
	room_goto(room_main);
}
