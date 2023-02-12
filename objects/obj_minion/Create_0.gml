//Variaveis 
vida = 10;
escala = 1;
aumento_escala = 0;
//Iniciando alarme;
alarm[0]= room_speed;

//Fazendo ele iniciar invisivel;
image_alpha = 0;

//Checando se foi criado um minion e mudando o y deles pra -60;
if (place_meeting(x,y, obj_minion))
{
	y -= 128; //Se eu colidir com outro minion eu subo 60px;
}