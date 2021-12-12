/// @description Bomb explodes

show_debug_message("EXPOLSION!");

// camera shake

// explosion animation

// explosion sound
audio_play_sound(sound_beep_explosion, 1, 0);

audio_stop_sound(sound_whirring);

instance_destroy(self);