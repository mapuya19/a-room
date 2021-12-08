/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left)){
if (position_meeting(mouse_x,mouse_y,obj_info)){
if (obj_gspawn.maze_stop = false) 
{
obj_maze_instruct.image_speed = -2
obj_maze_instruct.image_alpha = 1
obj_maze_instruct.i_state = 2
obj_gspawn.maze_stop = true
image_alpha = 0
}
}
}