/// @description Drag wire ends with mouse

draw_self();

var start_x = wire_connection.x + 128;
var start_y = wire_connection.y;

var color;

if (image_index == 0) { color = c_red; }
else if (image_index == 1) { color = c_yellow; }
else { color = c_blue; }

if (movable) {
	
	// allows wire end to move with mouse
	if (!drag) {
		if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
			drag = true;
			mx = x - mouse_x;
			my = y - mouse_y;
		}
	} 
	else {
		
		x = mouse_x + mx;
		y = mouse_y + my;
		
		// draw wire extension as player moves wire
		draw_line_width_color(start_x - 8, start_y + 11.5, x, y + 12.5, 21, color, color);
		
		if (!mouse_check_button(mb_left)) {
			drag = false;
			if (x > 1118 && x < 1165) {
				var top_wire = global.wires[| 3];
				var mid_wire = global.wires[| 4];
				var bottom_wire = global.wires[| 5];
			
				// connect wires if placed on the correct wire
				if (y > top_wire.y - 23 && y < top_wire.y + 23 && image_index == top_wire.image_index) {
					y = top_wire.y;
					x = 1141;
					movable = false;
				}
				else if (y > mid_wire.y - 23 && y < mid_wire.y + 23 && image_index == mid_wire.image_index) {
					y = mid_wire.y;
					x = 1141;
					movable = false;
				}
				else if (y > bottom_wire.y - 23 && y < bottom_wire.y + 23 && image_index == bottom_wire.image_index) {
					y = bottom_wire.y;
					x = 1141;
					movable = false;
				}
				else {	// return to start position if invalid placement
					x = wire_connection.x + 128;
					y = wire_connection.y;
				}
			}
			else{	// return to start position if invalid placement
				x = wire_connection.x + 128;
				y = wire_connection.y;
			}
		}
	}
}

else {	// keep drawing wires after they've been connected
	for (i = 0; i < 3; ++i) {
	
		if (global.wires[| i].wire_connection == id) {
		
			draw_line_width_color(start_x - 8, start_y + 11.5, x + 5, y + 12.5, 21, color, color);
		}

	}
}