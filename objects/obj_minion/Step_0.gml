//Fazendo ele ficar visivel


if (image_alpha < 1)
{
	image_alpha +=1/room_speed
}
//Fazendo ele aumentar e diminuir de tamanhoquandfo a escala for menor que 1.5;
//Fazendo ele inverrter a escala se ela for menor que 0.5;
if (escala > 2 ||escala < 1)
{
	aumento_escala *= -1; //Fazendo a escala aumentar por um valor especifico;
}
//Aumentando a escala pelo valor de aumento;
escala += aumento_escala;
//Diminuindo a escala enquanto ela for menor que 0.5








