//movendo a tela esquerda e direita;
view_xport[0] = random_range (- shake, shake);
//movendo a tela para cima e para baixo;
view_yport[0] = random_range (- shake, shake);

//Enfraquecendo a vibração
shake *= .95;
//se o valor do shake for menor que 0.5 entao ele se destroi;

if (shake < .5)
{
	instance_destroy();
	
}