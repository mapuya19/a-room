/// @description Insert description here
// You can write your code in this editor
x = lerp(target_x, x, 0.9);
y = lerp(target_y, y, 0.9);

if (position_meeting(mouse_x, mouse_y, obj_main_lightswitch)) {
	global.hover_lightswitch = instance_nearest(mouse_x, mouse_y, obj_main_lightswitch);
	//show_debug_message("SWIPE CARD HOVERING");
} else {
	global.hover_lightswitch = noone;
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_main_lightswitch) {
	room_goto(room_light);
}