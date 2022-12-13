// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroiCapturados(eu, listaMorte){
	var inimigo, tamanho;
	tamanho = ds_list_size(eu.listCapturados);
	
	
	for(var i = 0; i < tamanho; i++)
	{
		inimigo[i] = ds_list_find_value(eu.listCapturados, i);
		inimigo[i].capturado = false;
		inimigo[i].morto = true;
		libertaCapturados(inimigo[i].listCapturados);
		ds_list_add(listaMorte, inimigo[i]);
	}
}