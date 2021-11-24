depth = -y;

if (!(keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")))){
	sprite_index = spr_player_idle;
	image_index = last_animation_index;	// prevents automatic animations
}

if (keyboard_check(ord("W"))){
	
	sprite_index = spr_player_up;
	
	last_animation_index = 1;
}

if (keyboard_check(ord("S"))){

	sprite_index = spr_player_down;
	
	last_animation_index = 0;
}

if (keyboard_check(ord("A"))){

	sprite_index = spr_player_side;
	
	last_animation_index = 2; 
	image_xscale = -1;	// reverse image
}

if (keyboard_check(ord("D"))){

	sprite_index = spr_player_side;
	
	last_animation_index = 2;
	image_xscale = 1;
}


prev_x = x;
prev_y = y;