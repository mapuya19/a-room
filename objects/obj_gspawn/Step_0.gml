/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left)){
if (position_meeting(mouse_x,mouse_y,obj_gspawn)){
if (held = false && maze_stop = false) {
if (g_remaining > 0){
    var picked_guider = instance_create_depth(mouse_x,mouse_y,1,obj_guider);
    with (picked_guider){
	set = false
	}
    held = true
    g_remaining -= 1;
}    
}
} 
}