// @Iniciando os estados;
//show_message(estado_atual);

//checando se ão estou no estado 4;
if estado_atual != "estado 4"
{
	//Usando a sprite original;
	sprite_index = spr_boss_ataca;
}

// @Iniciando a state machine;
estado_main();
//iniciando o estado 1
/*
	A vantagem deste tipo de maquina de estados é que, caso ocorra um bug, saberemos em qual estado esta;
*/
if (estado_atual == "estado 1")
{
	//Metodo do estado 1 do boss;
	estado_1();
}
else if (estado_atual == "estado 2")
{
		//Metodo do estado 2 do boss;
		estado_2();
}
else if (estado_atual == "estado 3")
{
		//Metodo do estado 3 do boss;
		estado_3();
}
else if (estado_atual == "estado 4")
{
		//Metodo do estado 4 do boss;
		estado_4();
}

if (keyboard_check(ord("B")))
{
	vida_atual-=10;
}