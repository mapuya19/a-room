/// @description Enter other room

if (room == Room1) {
	room_goto(Room2);
	x = prev_x;
	y = prev_y;
}
else {
	room_goto(Room1);
	x = prev_x;
	y = prev_y;
}