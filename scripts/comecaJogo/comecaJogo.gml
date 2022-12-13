// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function comecaJogo()
{
	global.jogoAcontecendo = true;
	a = irandom_range(0,1);
	if(a = 1)
	{
		global.moveIcone.sprite_index = sprt_move2Talocan;
		global.moveIcone.image_blend = make_colour_rgb(20, 196, 79);
		global.jogadorUm = true;
	}
	else
	{
		global.moveIcone.sprite_index = sprt_move3Wakanda;
		global.moveIcone.image_blend = make_colour_rgb(157, 0, 189);
		global.jogadorUm = false;	
	}
	show_message("O jogo começou")
}