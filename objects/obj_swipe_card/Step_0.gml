/// @description Card click and move

if (!drag) {
   if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
      drag = true;
      mx = x - mouse_x;
   }
} else {
   x = mouse_x + mx;
   if (!mouse_check_button(mb_left)) {
      drag = false;
   }
}

if (hspeed > 10) {
	
}