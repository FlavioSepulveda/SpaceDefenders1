//Criando sistema de movimentação do jogo
//Iniciando a velocidade do player
veloc = 5;
//Variavel de vida;
vida = 3;
//Quantidade de escudos;
escudos = 3;
//Variavel de controle do escudo
meu_escudo = noone;
// @Limitando o tiro;
espera_tiro = room_speed/5;

//Niveis do tiro
level_tiro = 1;
//criando metodo do tiro 2
tiro2 = function()
{
		//Variavel do y do tiro
		var YY = y - sprite_height/3;
		 //criando o tiro na asa esquerda
			 //Mudando a direção dos tiros
		var tiro1 = instance_create_layer(x - 60, YY, "Tiros", obj_tiro_player2);
		tiro1.hspeed = + 7;
			//criando tiro na asa direita
			//Mudando a direção do tiro;
		var tiro2 = instance_create_layer(x + 60, YY, "Tiros", obj_tiro_player2);
		tiro2.hspeed = -7;
}
//Criando o metodo atirar;
atirando = function()
{
	//Variavel do y do tiro
	var YY = y - sprite_height/3;
	//Sistema de tiro
	var bullet = keyboard_check(vk_space);
	if (bullet && alarm[0] == -1) //se for verdadeiro
	{
		alarm[0] = espera_tiro;
		//Ele atira 
		if (level_tiro == 1)
		{
		instance_create_layer(x, YY, "Tiros", obj_tiro_player1);
		}
		//Criando o segundo tiro
		else if (level_tiro == 2)
		{
			tiro2();
		}
		else if (level_tiro == 3)
		{
		tiro3();
		}
		else if (level_tiro == 4)
		{
		tiro4();
		}
		else if (level_tiro == 5)
		{
		tiro5();
		}
	} 
	//Metodo do tiro 4;
	tiro4 = function()
{
			var YY = y - sprite_height/3;
			var direcao = 75;
			repeat(3)
		{
			var  meu_tiro = instance_create_layer(x, YY, "Tiros", obj_tiro_player1);
			
			//Fazendo o meu tiro ir pra novas direções
			meu_tiro.hspeed = 7;
			//Definindo a direção dele;
			meu_tiro.direction = direcao;
			//Fazendo meu tiro olhar pra onde ele esta indo
			meu_tiro.image_angle = meu_tiro.direction - 90 ;
			//aumentando direcao em 15
			direcao += 15;
		}

}
	//Metodo do tiro 3;
	tiro3 = function()
	{
		var YY = y - sprite_height/3;
		//instanciando o tiro 1;
		instance_create_layer(x, YY, "Tiros", obj_tiro_player1);
		//instanciando o tiro nivel 2;
		tiro2();
	}
	tiro5 = function()
	{
		tiro2();
		tiro3();
		tiro4();
	}
}
///@method levelUp(chance)
levelUp = function(_chance)
{
	if (_chance >= 90)
	{
		//Aumenta o level do tiro SE disponivel;
		if (level_tiro < 5)
		{
			level_tiro++;
		}
		else
		{
			scoreboost(150); // @Chamando um script de scoreboost;
		}
	}
	else if (_chance >= 45) 
	{
		//Checando se a espera do tiro é maior que 20 que é o limite
		if (espera_tiro > 20)
		{
			espera_tiro *= 0.9;
		}
		else
		{
			scoreboost(100);	// @Chamando um script de scoreboost;
		}
	}
	else if (_chance <= 35) && (escudos < 3)
	{
		escudos++;	//dando mais escudos ao player
	}
	else if (_chance <= 50) 
	{
		if  (vida < 3) 
		{
			vida++;	//Dando mais vida ao player;
		}
	}
	else
	{
		//Se a velocidae for menor que 10;
		if (veloc <= 10)
		{
			veloc++;
		}
	}
}

escudo = function()
{
	var esc = keyboard_check_pressed(ord("E"))
	//Quando aperto o escudo, se eu tiver escudo e se meu escudo tem o valor invalido;
	if (esc && escudos  > 0 && !meu_escudo)
	{
		var shield = instance_create_layer(x, y, "Escudo",obj_escudo)
		
		shield.alvo = id;
		///Avisando que quando ele criar um escudo esse escudo é o escudo do player
		meu_escudo = shield;
		//Diminuindo a quantidade de escudos;
		escudos--;
	}
}
///@method perder_vida();
perder_vida = function()
{
	//So vou perde vida se meu escudo for igual a noone.
	if (!meu_escudo)
	{
		//Se eu levei um tiro e nao morri;
		if (vida >=1)
		{
			vida--;
		
			screenshake(5);
		}
		else
		{
			instance_destroy();
		}
	}
}