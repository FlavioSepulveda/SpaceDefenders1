// Herdando os eventos do pai;
//o inherited sempre vem em primeiro;
event_inherited();

//Iniciando variaveis de controle;
//Posso me mover pro lado ou nao?

mover_pro_lado = true;	//Ela sempre vai checar se pode se mover;

//criando o sistema de tiro dele 
bala = function()
{
	if(y>0)	//Checando se ainda esta dentro da room, pra atirar;
	{
	instance_create_layer(x - 3, y + sprite_height/3, "Tiros", obj_tiro2);
	}
}
// Chance de dropar item de power up;
chance = 30;
pontos = 25;