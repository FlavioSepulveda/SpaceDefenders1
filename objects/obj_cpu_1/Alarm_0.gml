// @Checando se o objeto inimigo existe antes de rodar o codigo;
// @Se o objeto inimigo não existe , rodar esse codigo;
if (!instance_exists(obj_inimigo1) )
{
	// @Função que ira criar os inimigos;
	var repetir = 10 * level;
	// @fazendo o codigo seer repetido;
	// @Fazendo isso apenas quando nao esta no nivel 10
	if (level<10)
	{
		repeat(repetir)
		{
			cria_inimigo();
		}
	}
	else
	{
		//Cria o boss;
		layer_sequence_create("Sequencias",960,512, sq_boss_chegando);
	}
	//Criando a animação do boss
	
}

// @Reiniciando o alarme
alarm[0]= room_speed * 5;

