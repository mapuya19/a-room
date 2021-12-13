/// @description Game states and bomb timer

// play bad click sound effect if clicked anything other than an object
if (room == room_main && mouse_check_button_pressed(mb_left)) { 
	if !(position_meeting(mouse_x, mouse_y, obj_mainroom_mark) || position_meeting(mouse_x, mouse_y, obj_main_bomb)
		|| position_meeting(mouse_x, mouse_y, obj_main_generator) || position_meeting(mouse_x, mouse_y, obj_main_lightswitch)) {
	
		audio_play_sound(sound_bad_click, 11, 0);
	
	}
}

if (room == room_title_screen) {
	if (keyboard_check(vk_space)){	// restart room
		room_goto(room_start_clock);
	}
}

if (room == room_main) {
    if (audio_is_playing(sound_scrub)) {
        audio_pause_sound(sound_scrub);
    }
}

// if (game state == connect wires)
if (room == room_wires) {
	global.lighton = 0;
	global.poweron = 0;
	var num_wires = ds_list_size(global.wires);
	if (num_wires < 3) {	// first 3 wires on the left side
		
		var wire = instance_create_depth(-64, 96 + (num_wires * 160), -100, obj_wire);
		var wire_end = instance_create_depth(0, 96 + (num_wires * 160), -100, obj_wire_end);
		
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
		
			var wire = instance_create_depth(576, 96 + (num_wires_right * 160), -100, obj_wire);
			var wire_end = instance_create_depth(576, 96 + (num_wires_right * 160), -100, obj_wire_end);
		
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
			if (global.wires_connected) {
				audio_play_sound(sound_power_on, 9, 0);
				obj_start_clock.alarm[4] = room_speed * 3.4;
			}
		}
		else {
			// insert code for when player completes wire connecting mini game
			global.poweron = 1;
		
		}
	}
}

if (room == room_win || room == room_loss) {
	audio_stop_sound(sound_whirring);
	if (keyboard_check(ord("Q"))){	// restart game
		game_restart();
	}
}

if (keyboard_check(ord("R"))){	// restart room
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