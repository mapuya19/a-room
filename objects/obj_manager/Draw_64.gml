/// @description Draw Winning

if (room == room_win) {
	draw_text_transformed_colour(room_width / 4, 200, "YOU WIN!!!", 3, 3, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_colour(room_width / 8, 300, "Press Q to restart!", 3, 3, 0, c_white, c_white, c_white, c_white, 1);
}

if (room == room_loss) {
	draw_text_transformed_colour(room_width / 4, 200, "YOU LOSE!!!", 3, 3, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_colour(room_width / 8, 300, "Press Q to restart!", 3, 3, 0, c_white, c_white, c_white, c_white, 1);
}