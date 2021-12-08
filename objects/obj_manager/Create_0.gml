/// @description Set variables for game states

// Hover Global
global.hover = false;
global.hovering_object = noone;

// Bomb Global
global.num_filled = false;

// Wire Game Global
global.wires = ds_list_create();
global.rand_int = irandom_range(0,2);
global.wires_connected = false;

// Global Numbers
global.num_total = 5; 
global.num_one = 3;
global.num_two = 6;
global.num_three = 7;
global.num_four = 2;
global.num_five = 9;
global.correct = "36729";

// Win Global
global.win = false;