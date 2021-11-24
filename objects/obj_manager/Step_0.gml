/// @description Camera, game states

// makes camera follow player

var cwidth = camera_get_view_width(view_camera[0]);	// view_camera[0] is first viewport in array of viewports
var cheight = camera_get_view_height(view_camera[0]);

camera_set_view_pos(view_camera[0], obj_player.x - cwidth/2, obj_player.y - cheight/2);	// sets camera position to where the player is with the player in the center of the frame

if (keyboard_check(ord("R"))){	// restart game
	room_goto(Room1);
	room_restart();
}