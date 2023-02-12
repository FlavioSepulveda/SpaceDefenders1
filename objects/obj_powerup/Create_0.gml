//Definindo as chances de dropagem (Entre 0 e 100) pra ele decidir qual vai ser o upgrade;
randomize();
chance = random(100);	//chance vai ficar entre 0 e 100

//Se o valor de chance for entre 90 ou mais ela cria o power up espera do tiro;
//Se o valor da chance for entre 45 ou mais ela cria o power up da velocidade;
//Se nao ela cria o power up do level do tiro;

direction = random(359);

// Deependendo da tipagem a cor sera diferente.
//Criando um metodo pra isso;

if (chance >= 90) //level do tiro;
	{
		cor = c_purple;
	}
else if (chance >= 45)
	{
		cor = c_yellow;	
	}
	else if (chance >= 35)
	{
		cor = c_green;	
	}
	else if (chance >= 50)
	{
		cor = c_red;	
	}
else 
	{
		cor = c_aqua;
	}
	//Fazendo ele sumir apos 5 s;
	alarm[0]=room_speed;