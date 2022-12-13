/// @description Insert description here
// You can write your code in this editor

var p, l, objP, indiceL, tam, ultimo;

if(global.jogadorUm)
{
	l = global.listTalocan;
	objP = instance_place(x, y, T_Parent)
}
else
{
	l = global.listWakanda
	objP = instance_place(x, y, W_Parent)
}

indiceL = ds_list_find_index(l, objP);
tam = ds_list_size(l);
ultimo = tam-1;

for(var i = 0; i < tam; i++)
{
	p[i] = ds_list_find_value(l, i);
}	

if(indiceL == 0)
{
	x = p[ultimo].x
	y = p[ultimo].y;
}

else
{
	y = p[indiceL-1].x;
	y = p[indiceL-1].y;
}