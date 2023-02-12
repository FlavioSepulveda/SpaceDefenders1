//Criando a explosão dos inimigos;
instance_create_layer(x,y,"Inimigos", obj_impacto2);

// @Teste do script do shake
screenshake(5);

// @rodando o metodo de ganhar pontos;
// @E fazendo ele checar se o obj cpu esta no jogo
if (instance_exists(obj_cpu_1))
{
	obj_cpu_1.ganhar_pontos(pontos);
}
//metodo de dropagem
dropa_item(chance)