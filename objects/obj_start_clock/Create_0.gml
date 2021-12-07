/// @description Start clock and go to next room

show_debug_message("CREATE IS RUNNING")

object_set_persistent(id, true)

room_persistent = true;
persistent = true
global.detonated = false;
global.clock = 0;

global.time_seconds = 0;
global.time_minutes = 3;

global.buttons_spr = ds_list_create()
ds_list_add(global.buttons_spr, [spr_button0 , spr_button1,  spr_button2, spr_button3, spr_button4, spr_button5, spr_button6, spr_button7, spr_button8, spr_button9])

global.time_str = "";

global.min_tens = spr_button0
global.min_ones = spr_button0
global.sec_tens = spr_button0
global.sec_ones = spr_button0

alarm[0] = 1;

room_goto_next()