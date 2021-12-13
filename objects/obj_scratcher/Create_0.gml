/// @description Set cover as surface


cover_surface = surface_create(sprite_get_width(spr_handprintswipe), sprite_get_height(spr_handprintswipe));

surface_set_target(cover_surface);

draw_sprite(spr_handprintswipe, 0,0,0);

surface_reset_target();