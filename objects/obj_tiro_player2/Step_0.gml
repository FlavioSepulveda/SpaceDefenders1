event_inherited();

// @Fazendo ele mudar de direção quendo atingir 50px;
//xstart = da a posição inicial do meu x;
//ystart = da a posiçao inicial do y;

//Checando se eu me movi 50px pra esquerda

if (x > xstart + 50 or x < xstart - 50)
{
	hspeed *= -1;
}
