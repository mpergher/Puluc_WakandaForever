/// @description Insert description here
// You can write your code in this editor


var podeParar, ancoraDireita, ancoraEsquerda, regiao, eu, aliado, inimigo;

if(pego)
{
	try
	{
		if instance_exists(obj_AncoraDireita)
		{
			ancoraDireita = instance_find(obj_AncoraDireita, 0);
			if(x >= ancoraDireita.x + 35)
				podeParar = false
			else
			podeParar = true;
		}
		
		if instance_exists(obj_AncoraEsquerda)
		{
			ancoraEsquerda = instance_find(obj_AncoraEsquerda, 0);
			if(x <= ancoraEsquerda.x - 35)
				podeParar = false
			else
			podeParar = true;
		}	
		
		if !place_meeting(x, y, Areas_Parent)
			podeParar = false;

		if(!podeParar)
		{		
			x = xSaida;
			y = ySaida;
		}
		else
		{
			if(naOrigem)
			{
				x = xOrigem;
				y = yOrigem;
			mudaJogador();
			}
			else if (naAreaInimiga && !capturado)
			{
				eu = self;
				var listaMorte = global.listMorreuW
				destroiCapturados(eu, listaMorte);
				x = xOrigem;
				y = yOrigem;
			mudaJogador();
			}
			else
			{
				eu = self;
				regiao = instance_place(x, y, Areas_Parent);
				
				x = regiao.x;
				y = 352;
				
				aliado = instance_place(x, y, T_Parent);
				if(aliado != noone && !aliado.capturado)
				{
					x = xSaida;
					y = ySaida;
				}
				else
				{
					inimigo = collision_line(x, y - 5000, x, y + 5000 , W_Parent, false, true)
					if(inimigo != noone && !inimigo.capturado  && !inimigo.morto)
					{	
						checaCaptura(eu, inimigo, 1);
					}
					mudaJogador();
				}
			}
		}
	}
	catch (exception)
	{
	
	}
	finally
	{
		global.movendo = false;
		global.movendoAgora = undefined;
		pego = false;
		instance_destroy(obj_Ancoras);
		instance_destroy(obj_Ancorinhas);
	}
}
