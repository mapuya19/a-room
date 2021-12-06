/// @description Insert description here
// You can write your code in this editor
if (direct = 1){
h_speed = 5
y_speed = 0
}

if (direct = 2){
h_speed = 0
y_speed = -5
}

if (direct = 3){
h_speed = -5
y_speed = 0
}

if (direct = 4){
h_speed = 0
y_speed = 5
}

if (is_running = false && keyboard_check(vk_space)){
x = spawn_x
y = spawn_y
direct = 1
is_running = true
}

if (is_running) {
x += h_speed
y += y_speed
}

if (keyboard_check(vk_escape)){
is_running = false
}