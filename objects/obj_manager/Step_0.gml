// @description Game states

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
if (room == Room4) {
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
				show_debug_message("CONGRATTS")
			}
		}
		else {
			// insert code for when player completes wire connecting mini game
		}
	}
}


if (keyboard_check(ord("R"))){	// restart game
	room_restart();
}

if (keyboard_check(ord("1"))){	// go to first room
	room_goto(Room1);
}

if (keyboard_check(ord("2"))){	// go to second room
	room_goto(room_bomb);
}

if (keyboard_check(ord("3"))){	// go to third room
	room_goto(Room3);
}

if (keyboard_check(ord("4"))){	// go to fourth room
	room_goto(Room4);
}