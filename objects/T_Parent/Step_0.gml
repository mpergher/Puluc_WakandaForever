/// @description Insert description here
// You can write your code in this editor
	
var areaInicial = instance_place(x, y, obj_AreaInicialT)
var areaInimiga = instance_place(x, y, obj_AreaInicialW)
var pecaR = instance_place(x, y, T_Parent)
var pecaC = instance_place(x, y, W_Parent)

if areaInicial != noone	
	naOrigem = true;
else 
	naOrigem = false;

if areaInimiga != noone
	naAreaInimiga = true;
else
	naAreaInimiga = false;

if pecaR != noone
{
	if(pecaR.habilitado) ocupando = true;
	else ocupando = false;
}
	
if pecaC != noone
	pecaWakanda = pecaC;
else
	pecaWakanda = undefined;
	
//if(capturado && !morto)
//{
//	x = captor.x;
//	y = captor.y+5;
//	depth = captor.depth+5;
//}

num = ds_list_size(listCapturados)

var refem;
for(var i = 0; i < num; i++)
{
	refem[i] = ds_list_find_value(listCapturados, i);
}
for(var i = 0; i < num; i++)
{
	if(!refem[i].capturado)
	{
		var pos = ds_list_find_index(listCapturados, refem[i]);
		ds_list_delete(listCapturados, pos);
	}
	else
	{
		refem[i].x = x;
		refem[i].y = y + (5 * (i + 1));
		refem[i].depth = depth + (5 * (i + 1));
	}
}