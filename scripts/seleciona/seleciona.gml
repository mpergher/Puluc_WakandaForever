// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function seleciona(){
	if (global.jogadorUm)
	{
		var iT = ds_list_find_value(global.listTalocan, 0);
		instance_create_depth(iT.x, iT.y, 1, obj_Seletor);
		
		global.moveIcone.sprite_index = sprt_move2Talocan;
		global.moveIcone.image_blend = make_colour_rgb(20, 196, 79);
		
		//if(!global.namor.capturado)
		//	instance_create_depth(global.namor.x, global.namor.y, 1, obj_Seletor);
		//else if(!global.namora.capturado)
		//	instance_create_depth(global.namora.x, global.namora.y, 1, obj_Seletor);
		//else if(!global.attuma.capturado)
		//	instance_create_depth(global.attuma.x, global.attuma.y, 1, obj_Seletor);
		//else if(!global.talocan1.capturado)
		//	instance_create_depth(global.talocan1.x, global.talocan1.y, 1, obj_Seletor);
		//else if(!global.talocan2.capturado)
		//	instance_create_depth(global.talocan2.x, global.talocan2.y, 1, obj_Seletor);		
	}
	else 
	{
		var iW = ds_list_find_value(global.listWakanda, 0);
		instance_create_depth(iW.x, iW.y, 1, obj_Seletor);
		
		global.moveIcone.sprite_index = sprt_move3Wakanda;
		global.moveIcone.image_blend = make_colour_rgb(157, 0, 189);
		
		
		//if(!global.shuri.capturado)
		//	instance_create_depth(global.shuri.x, global.shuri.y, 1, obj_Seletor);
		//else if(!global.okoye.capturado)
		//	instance_create_depth(global.okoye.x, global.okoye.y, 1, obj_Seletor);
		//else if(!global.nakia.capturado)
		//	instance_create_depth(global.nakia.x, global.nakia.y, 1, obj_Seletor);
		//else if(!global.riri.capturado)
		//	instance_create_depth(global.riri.x, global.riri.y, 1, obj_Seletor);
		//else if(!global.aneka.capturado)
		//	instance_create_depth(global.aneka.x, global.aneka.y, 1, obj_Seletor);		
	}	
}