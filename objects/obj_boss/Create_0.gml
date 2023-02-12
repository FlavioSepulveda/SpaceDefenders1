// @Criando variaaveis do chefão do jogo;
// @Criando o primeiro estado do boss;

/*
	Estado 01 - Parado dando o tiro 2;
	Estado 02 - Movendo dando o tiro 1;
	Estado 03 - Parado intercalando os tiros;

	Estado 04 - Parado e invulneravel, recuperando vida;
	
*/

// @Iniciando a maquina de estados;
estado_atual = choose("estado 1","estado 2","estado 3");
tempo_de_recarga = room_speed / 3; //o tempo de recarga igual a meio segundo;
esperar = 0;
// @Variaveis da troca de estado;
delay_estado = room_speed * 15;
espera_estado = delay_estado;
// @Variaveis de movimentação;
velocidade_horizontal = 3.5;
// @Variavel de vida
vida_maxima = 1;
vida_atual = vida_maxima;
//Minions
criando_minions = true;

// @Metodos do chefão
estado_main = function()
{
	// @Fazendo ele trocar os estados;
espera_estado--;
if (espera_estado <= 0)
{
	if (vida_atual >= vida_maxima / 2)
	{
		estado_atual = choose("estado 1","estado 2","estado 3");
	}
	else	//Estou com metade da vida ou menos;
	{
		estado_atual = choose("estado 1","estado 2","estado 3","estado 4");
	}
	// Fazendo o estado de espera ter um valor alto novamente;
	espera_estado = delay_estado;
	//Pode criar minions
	criando_minions = true;
}
}
///@method tiro_01(true_direita_false_esquerda);
tiro_01 = function(_direita)
{
	if (_direita)
	{
		var _posx = 160;
	}
	else
	{
		var _posx = -160;
	}
	//Instanciando os tiros;
	instance_create_layer(x + _posx, y + 10, "Tiros", obj_tiro1);
}
///@method tiro_02();
tiro_02 = function()
{
	instance_create_layer(x, y + 90, "Tiros", obj_tiro2);
}
// @Metodo do estado 1
estado_1 = function()
{
		//Fazendo o tempo de espera resetar;	
		esperar--;
		//Codigos do estado 1;
		//Criando o tiro 2;
		//Fazendo ele arirar com um delay;
		if (esperar <= 0)
		{
		//Criando o tiro;
		instance_create_layer(x, y + 90,"Tiros",obj_tiro2);
		//Atirei e tenho que esperar;
		esperar = tempo_de_recarga;
		}
}
// @Metodo do estado 2
estado_2 = function()
{
	//Criando a movimentação desse estado;
	x += velocidade_horizontal;
	if (x>=1632 or x<=288)
	{
		velocidade_horizontal *= -1;
	}
	//Comando para ele resetar o tempo de espera dos tiros:
	esperar--;
	if (esperar <= 0)
	{
		// Criando tiro da esquerda
		tiro_01(false);
		// Criando tiro da direita
		tiro_02(true);
		//Pedindo a ele que espere um pouco;
		esperar = tempo_de_recarga * 1.55;
	}
	//fazendo ele se movimentar;
	
}
// @Metodo do estado 3
estado_3 = function()
{
	esperar--;
	if (esperar <= 0)
	{
		tiro_02();
		esperar = tempo_de_recarga * 2;
	}
	if (esperar == tempo_de_recarga)
	{
		//Criando tiro na esquerda;
		tiro_01(false);
	}
	if (esperar == tempo_de_recarga + round(tempo_de_recarga / 4))
	{
		//Criando tiro na direita;
		tiro_01(true);
	}
}
// @Metodo do estado 4
estado_4 = function()
{
	//Fazendo o boss ficar com o sprite escuro no 4° estado;
	sprite_index = spr_boss_surge; 
	//Fazendo ele se mover
	//A função sign da um sinal que pode ser positivo ou negativo;
	x += sign(room_width / 2 - x)
	//Criando minions
	if (criando_minions)
	{
	//Minion da esquerda
	var _minion = instance_create_layer(128, 672, "Inimigos", obj_minion);
	//Ajustando o angulo que ele é criado
	_minion.image_angle = 90;
	//Minion da direita
	_minion = instance_create_layer(1760, 672, "Inimigos", obj_minion);
	_minion.image_angle = 270;
	
	//Evitando que ele crie mais minions
	criando_minions = false;
	}
	
}


                                              


