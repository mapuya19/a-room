// @description Game states and bomb timer

if (room == room_main) {
	if (global.hover == false && global.hover_bomb != noone && position_meeting(mouse_x, mouse_y, global.hover_bomb)) {
		global.hover = true;
		global.saved_hover = global.hover_bomb.target_y;
		global.hovering_object = global.hover_bomb;
		global.hover_bomb.target_y = global.hover_bomb.target_y - 15;
	} else if (global.hover == false && global.hover_swipe != noone && position_meeting(mouse_x, mouse_y, global.hover_swipe)) {
		global.hover = true;
		global.saved_hover = global.hover_swipe.target_y;
		global.hovering_object = global.hover_swipe;
		global.hover_swipe.target_y = global.hover_swipe.target_y - 15;
	}
		
	if (global.hover == true && global.hovering_object != noone && !position_meeting(mouse_x, mouse_y, global.hovering_object)) {
		global.hovering_object.target_y = global.saved_hover;
		global.hovering_object = noone;
		global.hover = false;
	}
}

// if (game state == connect wires)
if (room == room_wires) {
	var num_wires = ds_list_size(global.wires);
	if (num_wires < 3) {	// first 3 wires on the left side
		
		var wire = instance_create_depth(0, 192 + (num_wires * 192), -100, obj_wire);
		var wire_end = instance_create_depth(128, 192 + (num_wires * 192), -100, obj_wire_end);
		
		wire.wire_connection = wire_end;
		wire_end.wire_connection = wire;
		wire_end.movable = true;
		
		wire.image_index = num_wires;
		wire.image_speed = 0;
		wire_end.image_index = num_wires;
		wire_end.image_speed = 0;
		
		ds_list_add(global.wires, wire)
	}
	else if (num_wires < 6) {	// next 3 wires on the right side
		var num_wires_right = num_wires - 3;
		if (num_wires_right < 3) {
		
			var wire = instance_create_depth(1248, 192 + (num_wires_right * 192), -100, obj_wire);
			var wire_end = instance_create_depth(1248, 192 + (num_wires_right * 192), -100, obj_wire_end);
		
			wire.wire_connection = wire_end;
			wire_end.wire_connection = wire;
			
			// randomize the colors of the wires on the right
			wire.image_index = (global.rand_int + num_wires_right) % 3;
			wire.image_speed = 0;
			wire_end.image_index = (global.rand_int + num_wires_right) % 3;
			wire_end.image_xscale = -1;
			wire_end.image_speed = 0;
		
			ds_list_add(global.wires, wire)
		}
		
	}
	else {	// check if all the wires have been connected
		
		if !(global.wires_connected) {
			for (i = 0; i < 6; ++i) {
				global.wires_connected = true;
				if (global.wires[| i].wire_connection.movable) {	// if any wires are movable, they have not been connected
					global.wires_connected = false;
					break;
				}
			}
		}
		else {
			// insert code for when player completes wire connecting mini game
		}
	}
}

//// bomb timer

//if !(global.detonated) {
//	++global.clock;
//	if (global.clock % room_speed == 0) {	// decrement seconds every second
//		--global.time_seconds;
//	}

//	if (global.time_seconds < 0) {
//		if (global.time_minutes > 0) {	// if seconds go to 0, decrement minute
//			--global.time_minutes;
//			global.time_seconds = 59;
//			// tick sound effect
//		}
//		else {	// if time is up, display 00:00
//			global.time_seconds = 0;
//			global.detonated = true;
//			alarm[0] = room_speed * 0.5;	// triggers camera shake and explosion sound
//		}
//	}
//}

//var sec_tens_place = global.time_seconds div 10;
//var sec_ones_place = global.time_seconds mod 10;

//for (i = 0; i < 10; ++i) {
//	if (i == global.time_minutes) {
//		global.min_ones = global.buttons_spr[| 0][i]
//	}
//	if (i == sec_tens_place) {
//		global.sec_tens = global.buttons_spr[| 0][i]
//	}
//	if (i == sec_ones_place) {
//		global.sec_ones = global.buttons_spr[| 0][i]
//	}
//}

//if (global.time_seconds < 10) {	// add trailing zeros to seconds if necessary
//	global.time_str =  "0" + string(global.time_minutes) + ":0" + string(global.time_seconds);
//}
//else {
//	global.time_str = "0" + string(global.time_minutes) + ":" + string(global.time_seconds)	;
//}

if (keyboard_check(ord("R"))){	// restart game
	room_restart();
}

if (keyboard_check(ord("1"))){	// go to room main
	room_goto(room_main);
}

if (keyboard_check(ord("2"))){	// go to room bomb
	room_goto(room_bomb);
}

if (keyboard_check(ord("3"))){	// go to room swipe
	room_goto(room_swipe);
}

if (keyboard_check(ord("4"))){	// go to room wires
	room_goto(room_wires);
}

if (keyboard_check(ord("5"))){	// go to room maze
	room_goto(room_maze);
}

if (keyboard_check(ord("6"))){	// go to room lightswitch
	room_goto(room_light);
}

if (keyboard_check(ord("7"))){	// go to room screen wipe
	room_goto(room_screen_wipe);
}