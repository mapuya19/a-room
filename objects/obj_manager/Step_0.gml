/// @description Game states

if (keyboard_check(ord("R"))){	// restart game
	room_restart();
}

if (keyboard_check(ord("1"))){	// go to first room
	room_goto(Room1);
}

if (keyboard_check(ord("2"))){	// go to second room
	room_goto(room_bomb);
}

if (keyboard_check(ord("3"))){	// go to third room
	room_goto(Room3);
}