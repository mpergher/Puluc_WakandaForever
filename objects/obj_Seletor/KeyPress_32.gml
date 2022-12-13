/// @description Insert description here
// You can write your code in this editor

var obj;

if(global.jogadorUm)
	obj = instance_place(x, y, T_Parent);
else
	obj = instance_place(x, y, W_Parent);

if(!obj.capturado)
{
	obj.habilitado = true;

	xAD = obj.x + (global.nMovimentos * 135);
	xAE = obj.x - (global.nMovimentos * 135);

	if(global.jogadorUm)
		global.movendoAgora = instance_place(x, y, T_Parent);
	else
		global.movendoAgora = instance_place(x, y, W_Parent);
	
	instance_create_depth(xAD, 352, 1, obj_Ancoras)
	instance_create_depth(xAE, 352, 1, obj_Ancoras)

	instance_destroy();
}
else
	show_message("Peça capturada. Escolha outra peça");