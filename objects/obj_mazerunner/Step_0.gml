/// @description Insert description here
// You can write your code in this editor

if (direct = 1){
h_speed = 16
y_speed = 0
}

if (direct = 2){
h_speed = 0
y_speed = -16
}

if (direct = 3){
h_speed = -16
y_speed = 0
}

if (direct = 4){
h_speed = 0
y_speed = 16
}

if (is_running = false && keyboard_check(vk_space) && obj_gspawn.maze_stop = false){
p_x = spawn_x
p_y = spawn_y
sprite_index = spr_mazeball
ds_list_clear(trail_x)
ds_list_clear(trail_y)
ds_list_add(trail_x, p_x);
ds_list_add(trail_y, p_y);
direct = 1
is_running = true
}

x = p_x
y = p_y

if (keyboard_check(vk_escape) && obj_gspawn.maze_stop = false){
is_running = false
p_x = spawn_x
p_y = spawn_y
ds_list_clear(trail_x)
ds_list_clear(trail_y)
ds_list_add(trail_x, p_x);
ds_list_add(trail_y, p_y);
sprite_index = spr_mazeball
}
