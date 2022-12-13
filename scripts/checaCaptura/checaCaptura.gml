// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checaCaptura(eu, inimigo, lista)
{
	if(inimigo	!= undefined)
		 {
			 peca1 = eu.id;
			 peca2 = inimigo.id;
			 nome1 = object_get_name(peca1.object_index);
			 nome2 = object_get_name(peca2.object_index);
			 
			 if(!peca2.capturado)
			 {
				 show_message(nome1 + " capturou " + nome2 + "!");
				 peca2.capturado = true;
				 peca2.captor = peca1;
				 peca2.mask_index = sprt_Vazia;
				 ds_list_add(eu.listCapturados, inimigo);
				 inimigo.mask_index = -1;
				 if (lista = 0) ds_list_add(global.listCapturadosT, inimigo);
				 else if (lista = 1) ds_list_add(global.listCapturadosW, inimigo);					
			 }
		 }
}