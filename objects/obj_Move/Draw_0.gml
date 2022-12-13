/// @description Insert description here
// You can write your code in this editor

draw_self()

if(global.jogoAcontecendo)
{
	draw_text(x, y+40, string(global.nMovimentos));
	draw_set_halign(fa_center);
}