/// @description Insert description here
// You can write your code in this editor
if (is_running) {
p_x += h_speed
p_y += y_speed
ds_list_add(trail_x, p_x);
ds_list_add(trail_y, p_y);
}

alarm[0] = 0.1*room_speed