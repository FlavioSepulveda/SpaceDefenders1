 //@Randomizando tudo;
randomize();
// @Iniciando objeto CPU1

// @Fazendo a CPU gerar um inimigo por segundo
alarm[0]=room_speed;

// @Iniciando sistema de pontos
pontos = 0;
// @Quantidade de pontos pra subir de nivel;
proximo_level = 1;
// @Iniciando sistema de niveis;
level = 1;
//variavel de sequencias;
gameover_seq = noone;

// @Criando metodos pra ganhar pontos
///@method ganhar_pontos(ponto)
ganhar_pontos = function(_pontos)
{
	pontos += _pontos * level;
	// Se meus pontos forem maior que 100, subo do de nivel;;
	if (pontos > proximo_level)
	{
		level++;
		//Dobrando os pontos nescessarios para subir de nivel;
		proximo_level += proximo_level * 2;
	}
}

// @Criando inimigos;
cria_inimigo = function()
{
	// @Sistema de geração de inimigos automatica;

	var xx = irandom_range(68,1840);
	//Aumentando o limite com base no level do jogo
	var yy = irandom_range(-96,-1504 - (level * 800));
	//Criando inimigo
	var inimigo = obj_inimigo1;
	//criando a variavel de chance;
	var chance = random_range(0, level);
	//Se a chance for maior que 2 ele cria os inimigos

	if (chance > 2)
	{
		inimigo = obj_inimigo2;
	}
	//Criando inimigo na posição definida; 
	instance_create_layer(xx, yy, "Inimigos", inimigo);


}

//Fazendo a cpu criar o boss no nivel 10;
if (level == 10)
{
	
}