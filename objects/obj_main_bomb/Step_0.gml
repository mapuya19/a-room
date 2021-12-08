/// @description Insert description here
// You can write your code in this editor
//x = lerp(target_x, x, 0.9);
//y = lerp(target_y, y, 0.9);

if (position_meeting(mouse_x, mouse_y, obj_main_bomb)) {
//	global.hover_bomb = instance_nearest(mouse_x, mouse_y, obj_main_bomb);
	//show_debug_message("BOMB HOVERING");
} else {
//	global.hover_bomb = noone;
}

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_bomb)) {
	room_goto(room_bomb);
}



