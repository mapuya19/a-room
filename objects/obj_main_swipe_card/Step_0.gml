/// @description Insert description here
// You can write your code in this editor
x = lerp(target_x, x, 0.9);
y = lerp(target_y, y, 0.9);

if (position_meeting(mouse_x, mouse_y, obj_main_swipe_card)) {
	global.hover_swipe = instance_nearest(mouse_x, mouse_y, obj_main_swipe_card);
	//show_debug_message("SWIPE CARD HOVERING");
} else {
	global.hover_swipe = noone;
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_swipe_card) {
	room_goto(Room3);
}