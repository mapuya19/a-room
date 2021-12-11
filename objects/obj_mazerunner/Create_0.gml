/// @description Insert description here
// You can write your code in this editor
spawn_x = 200
p_x = 200
spawn_y = 450
p_y = 450
is_running = false
direct = 1
alarm[0] = 0.2*room_speed

trail_x = ds_list_create();
trail_y = ds_list_create();
ds_list_add(trail_x, p_x);
ds_list_add(trail_y, p_y);
