/// @description Insert description here
// You can write your code in this editor

num = ds_list_size(global.listMorreuW)
var l, obj, nome;

for(var i = 0; i < num; i++)
{
	l[i] = ds_list_find_value(global.listMorreuW, i);
}

for(var i = 0; i < num; i++)
{
	obj[i] = l[i].id;
	nome[i] = object_get_name(obj[i].object_index)
	show_message(nome[i]);
}