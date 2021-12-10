/// @description Set variables for game states

// Bomb Global
global.num_filled = false;

// Wire Game Global
global.wires = ds_list_create();	// list of wires
global.rand_int = irandom_range(0,2);	// randomizes the colors of the right side wires
global.wires_connected = false;	// true when all wires connected

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