//Fazendo o escudo seguir o alvo;

alvo = noone;

//Aumentando o escudo
image_xscale = 1.2;
image_yscale = image_xscale;

image_alpha = .7;

//METODO DO EUTO DESTRUIÇÃO QUE FAZ O PLAYER SOFRER DANO AO TER O ESCUDO REDUZIDO A ZERO;
destruir = function()
{
	if (image_index >= 0)
	{
		image_alpha -= .2;
	}
	else
	{
		instance_destroy();
	}
}
