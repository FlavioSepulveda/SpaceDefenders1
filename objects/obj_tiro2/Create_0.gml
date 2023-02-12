//herdando os comandos/eventos do pai;
event_inherited();

//Definindo a minha velocidade
speed = 8;


//chencando a existencia do player;
if(instance_exists(obj_player))	//evitando que o jogo pare de funcionar quando o player morrer;
{
	//Achando a direção para onde devo ir;
	//Utilizaremos a função point_direction;
	//E indo para aquela direção;
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	//Fazendo a bala apontar para o player;
	image_angle = direction + 90;

}