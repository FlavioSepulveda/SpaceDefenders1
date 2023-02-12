// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake)
{
	//Criando o screeshake;
	var screen = instance_create_layer(0, 0, layer, obj_ssk);
	screen.shake = _shake;
}
//função para ganhar pontos

function scoreboost(_pontos)
{
	//Checando se o objeto cpu existe pra boostar os pontos dele
	if (instance_exists(obj_cpu_1))
	{
		//dando mais pontos ao pegar power ups em excesso;
		obj_cpu_1.ganhar_pontos(100);
	}
}

function self_destruction()
{
	//Tentando pegar a sequencia da minha layer;
	var elementos = layer_get_all_elements("Sequencias");
	layer_sequence_destroy(elementos[0]);
	//Criando o Chefe ao acabar a animação
	instance_create_layer(960,256,"Boss",obj_boss);
}