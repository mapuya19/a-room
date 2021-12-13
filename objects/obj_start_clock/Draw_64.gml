/// @description Display timer

draw_sprite(global.min_tens, 0, 360, 8);
draw_sprite(global.min_ones, 0, 420, 8);
draw_sprite(global.sec_tens, 0, 490, 8);
draw_sprite(global.sec_ones, 0, 550, 8);

if (global.swipe_discovered || global.maze_discovered || global.wall_discovered) {
	draw_sprite(global.first_digit, 0, 0, 8);
	draw_sprite(global.second_digit, 0, 40, 8);
	draw_sprite(global.third_digit, 0, 80, 8);
	draw_sprite(global.fourth_digit, 0, 120, 8);
	draw_sprite(global.fifth_digit, 0, 160, 8);
}