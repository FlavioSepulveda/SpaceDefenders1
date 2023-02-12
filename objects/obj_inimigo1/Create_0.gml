//Velocidade do marginal;
vspeed = 3;
pontos = 15;
//Dropar item
chance = 20;

//Marginal atirando;
alarm[0] = random_range(1, 2) * room_speed;

// @Checando se estou em cima de outro inimigo (Colisão)
if (place_meeting(x, y, obj_inimigo1))
{
	//Nao executando o evento destroy;
	instance_destroy(id, false);
}
//criando o metodo que faz o inimigo atirar
bala = function()
{
	if (y >= 0)
	{
		instance_create_layer(x - 3, y + sprite_height/2, "Tiros", obj_tiro1);
	}
}
///@method dropa_item(chance de dropar em porcentagem);
dropa_item = function(_chance)
{
	var valor = random(100);
	
	if(valor < chance && y > 96 )
	{
	instance_create_layer(x, y, "Tiros", obj_powerup)
	}
	
}
