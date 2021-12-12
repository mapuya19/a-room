/// @description Decrement time

// bomb timer

if !(global.detonated) {
	++global.clock;
	if (global.clock % room_speed == 0) {	// decrement seconds every second
		--global.time_seconds;
		
		if (global.time_minutes < 1 && global.time_seconds > 0) {
			if (global.time_seconds < 15) {
				alarm[3] = room_speed * 0.25
				alarm[2] = room_speed * 0.5;
				alarm[1] = room_speed * 0.75;
			}
			else if (global.time_seconds < 30) {
				alarm[2] = room_speed * 0.33;
				alarm[1] = room_speed * 0.66;
			}
			else{
				alarm[1] = room_speed * 0.5;
			}
		}
		
		audio_play_sound(sound_tick,1,0)
	}

	if (global.time_seconds < 0) {
		if (global.time_minutes > 0) {	// if seconds go to 0, decrement minute
			--global.time_minutes;
			global.time_seconds = 59;
		}
		else {	// if time is up, display 00:00
			global.time_seconds = 0;
			global.detonated = true;
			alarm[0] = room_speed * 0.5;	// triggers camera shake and explosion sound
		}
	}
}

var sec_tens_place = global.time_seconds div 10;
var sec_ones_place = global.time_seconds mod 10;

for (i = 0; i < 10; ++i) {
	if (i == global.time_minutes) {
		global.min_ones = global.buttons_spr[| 0][i]
	}
	if (i == sec_tens_place) {
		global.sec_tens = global.buttons_spr[| 0][i]
	}
	if (i == sec_ones_place) {
		global.sec_ones = global.buttons_spr[| 0][i]
	}
}

if (room == room_win) {
	instance_destroy(self);
}