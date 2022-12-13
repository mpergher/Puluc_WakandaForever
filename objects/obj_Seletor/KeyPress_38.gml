/// @description Insert description here
// You can write your code in this editor

var p, l, objP, indiceL, tam;


if(global.jogadorUm)
{
	l = global.listTalocan;
	objP = instance_place(x, y, T_Parent)
}
	//p1 = ds_list_find_value(list, 0);
	//p2 = global.namora;
	//p3 = global.talocan1;
	//p4 = global.talocan2;
	//p5 = global.attuma;
else
{
	l = global.listWakanda
	objP = instance_place(x, y, W_Parent)
}
	//p1 = global.shuri;
	//p2 = global.okoye;
	//p3 = global.riri;
	//p4 = global.aneka;
	//p5 = global.nakia;
indiceL = ds_list_find_index(l, objP);
tam = ds_list_size(l);

for(var i = 0; i < tam; i++)
{
	p[i] = ds_list_find_value(l, i);
}	

if(indiceL == tam - 1)
{
	y = p[0].y;
}
else
{
	y = p[indiceL + 1].y	
}

//if(instance_place(x, y, p1))
//{
//	x = p2.x;
//	y = p2.y;
//}
//else if(instance_place(x, y,  p2))
//{
//	x = p3.x;
//	y = p3.y;
//}
//else if(instance_place(x, y, p3))
//{
//	x = p4.x;
//	y = p4.y;
//}
//else if(instance_place(x, y, p4))
//{
//	x = p5.x;
//	y = p5.y;
//}
//else if(instance_place(x, y, p5))
//{
//	x = p1.x;
//	y = p1.y;
//}