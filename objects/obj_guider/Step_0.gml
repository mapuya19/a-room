/// @description Insert description here
// You can write your code in this editor
if (set = false) {

if (keyboard_check_pressed(ord("Q"))){
if (direct = 4) {
direct = 1
} else {
    direct += 1
    }
audio_play_sound(sound_good_click, 12, 0);
}

if (keyboard_check_pressed(ord("E"))){
if (direct = 1) {
direct = 4
} else {
    direct -= 1
    }
audio_play_sound(sound_good_click, 13, 0);
}

if (mouse_check_button_released(mb_left))
{
	set = true
	obj_gspawn.held = false
	audio_play_sound(sound_bad_click, 14, 0);
}
}

if (mouse_check_button(mb_left)){
if (point_in_rectangle(mouse_x,mouse_y,x -10,y-10,x+10,y+10) && obj_mazerunner.is_running = false && obj_gspawn.held = false){
	set = false
	obj_gspawn.held = true
}
}

image_angle = (90 * direct) - 90