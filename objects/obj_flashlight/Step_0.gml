/// @description Flashlight follows mouse

x = mouse_x;
y = mouse_y;
depth = -12000;

// try to change cursor

if (keyboard_check_released(vk_space)) {
	show_debug_message("Space Pressed!");
}

