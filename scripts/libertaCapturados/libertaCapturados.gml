// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function libertaCapturados(lista)
{
	var tamanho, refem;
	
	tamanho = ds_list_size(lista);
	if tamanho > 0
	{
		for(var i = 0; i < tamanho; i++)
		{
			refem[i] = ds_list_find_value(lista, i);
			refem[i].capturado = false;
			refem[i].x = refem[i].xOrigem;
			refem[i].y = refem[i].yOrigem;
		}
	}
}