/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_blue)
for(var i=1; i<ds_list_size(trail_x); i++)
{
    draw_line_width(trail_x[|i], trail_y[|i], trail_x[|i-1], trail_y[|i-1],15);
}
draw_set_alpha(1);
draw_line_width(trail_x[|i-1], trail_y[|i-1], p_x, p_y,15);

draw_self()