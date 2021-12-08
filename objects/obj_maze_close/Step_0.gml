/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left)){
if (position_meeting(mouse_x,mouse_y,obj_maze_close)){
obj_maze_instruct.image_speed = 1
instance_destroy()
}
}