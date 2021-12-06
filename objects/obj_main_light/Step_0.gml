/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_light) {
	room_goto(room_light);
}
