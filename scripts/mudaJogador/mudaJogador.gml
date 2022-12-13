// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mudaJogador()
{
	var objT, objW;
	global.jogadorUm = !global.jogadorUm
	
	// Estabelece as peças de Talokan
	for(var i = 0; i < instance_number(T_Parent); i++)
	{
		objT[i] = instance_find(T_Parent, i);
	}
	
	// Estabelece as peças de Wakanda
	for(var i = 0; i < instance_number(W_Parent); i++)
	{
		objW[i] = instance_find(W_Parent, i);
	}
	
	if(global.jogadorUm)
	{
		for(var i = 0; i < instance_number(T_Parent); i++)
		{
			objT[i].habilitado = true;
		}
		
		for(var i = 0; i < instance_number(W_Parent); i++)
		{
			objW[i].habilitado = false;
		}
		
		audio_stop_sound(We_Know_What_You_Whisper);
		audio_play_sound(Sirens, 5, true);
		global.moveIcone.sprite_index = sprt_move2Talocan;
		global.moveIcone.image_blend = make_colour_rgb(20, 196, 79);	
	}
	else
	{
		for(var i = 0; i < instance_number(T_Parent); i++)
		{
			objT[i].habilitado = false;
		}
		
		for(var i = 0; i < instance_number(W_Parent); i++)
		{
			objW[i].habilitado = true;
		}
		audio_stop_sound(Sirens);
		audio_play_sound(We_Know_What_You_Whisper, 5, true);
		global.moveIcone.sprite_index = sprt_move3Wakanda;
		global.moveIcone.image_blend = make_colour_rgb(157, 0, 189);	
	}
	
	global.nMovimentos = irandom_range(1,5);
	//seleciona();	
}