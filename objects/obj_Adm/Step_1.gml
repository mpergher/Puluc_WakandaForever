/// @description Insert description here
// You can write your code in this editor

var tLMTalocan, tLMWakanda, TalocanMorto, WakandaMorto;

tLMWakanda = ds_list_size(global.listMorreuW);
tLMTalocan = ds_list_size(global.listMorreuT);

for(var i = 0; i < tLMWakanda; i++)
{
	WakandaMorto[i] = ds_list_find_value(global.listMorreuW, i);
	WakandaMorto[i].x = 832 + (i * 64);
	WakandaMorto[i].y = 50;
	WakandaMorto[i].layer = layer_get_id("Mortos");
}

for(var i = 0; i < tLMTalocan; i++)
{
	TalocanMorto[i] = ds_list_find_value(global.listMorreuT, i);
	TalocanMorto[i].x = 704 - (i * 64);
	TalocanMorto[i].y = 50;
	TalocanMorto[i].layer = layer_get_id("Mortos");
}

if(global.jogoAcontecendo && !global.gameOver)
{
	if ds_list_empty(global.listTalocan)
	{
		show_message("Wakanda venceu!");
		global.gameOver = true;
		game_restart()
	}
	if ds_list_empty(global.listWakanda)
	{
		show_message("Talocan venceu!");
		global.gameOver = true;
		game_restart()
	}
}

