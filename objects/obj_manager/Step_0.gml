/// @description Game states

if (keyboard_check(ord("R"))){	// restart game
	room_restart();
}

if (keyboard_check(ord("Q"))){	// go to next room
	room_goto_next();
}