/// @description Start clock and go to next room

persistent = true

global.poweron = 0; //power is off
global.lighton = 0; //light switch is off
global.stop_flip = false;

global.attempts = 3;

global.detonated = false;
global.clock = 0;

global.time_seconds = 0;	// seconds left mod min
global.time_minutes = 3;	// minutes left 

global.buttons_spr = ds_list_create();	// list of button sprites *** WILL BE REPLACED BY OTHER SPRITES MADE BY LILY
ds_list_add(global.buttons_spr, [spr_button0 , spr_button1,  spr_button2, spr_button3, spr_button4, spr_button5, spr_button6, spr_button7, spr_button8, spr_button9])

// sprites for each digit
global.min_tens = spr_button0
global.min_ones = spr_button0
global.sec_tens = spr_button0
global.sec_ones = spr_button0

room_goto_next()