/// @description Game states

if (keyboard_check(ord("R"))){	// restart game
	room_goto(Room1);
	room_restart();
}