/// @description Insert description here
// You can write your code in this editor

//var l = global.listTalocan;
//var tam = ds_list_size(l);
//var aux = undefined;
//var naLista = false

var obj, xAD, xAE;

if(!global.movendo && habilitado && !capturado && !morto)
{
	global.movendo = true;
	global.movendoAgora = self;
	obj = self;
	pego = true;
	
	xAD = obj.x + (global.nMovimentos * 128);
	xAE = obj.x - (global.nMovimentos * 128);
	
	instance_create_depth(xAD, 352, 1, obj_AncoraDireita);
	instance_create_depth(xAE, 352, 1, obj_AncoraEsquerda);
	
	for(var i = 1; i < global.nMovimentos; i++)
	{
		instance_create_depth(obj.x + (128 * i), 352, 1, obj_Ancorinhas)
		instance_create_depth(obj.x - (128 * i), 352, 1, obj_Ancorinhas)
	}
	
	xSaida = x;
	ySaida = y;
}