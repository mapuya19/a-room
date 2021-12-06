/// @description Set variables for game states

global.wires = ds_list_create();
global.rand_int = irandom_range(0,2);
global.hover = false;
global.hovering_object = noone;
//global.saved_hover = 0;
global.wires_connected = false;