/// @description Card click and move

if (!drag) {
   if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
      drag = true;
      mx = x - mouse_x;
      //my = y - mouse_y;
   }
} else {
   x = mouse_x + mx;
   //y = mouse_y + my;
   if (!mouse_check_button(mb_left)) {
      drag = false;
   }
}