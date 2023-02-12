//Criando uma tela de exibição da vida do personagem;
//var altura_gui = display_get_gui_height();

//Desenhando a barrade vida;
//Desenhando a quantidade de pontos de vida na tela;
//Desenhando uma vida do lado da outra;
var multi = 0;
var espaco = 40;
repeat(vida){
	//A primeira fica no 40, a segunda no 40 + 20, a terceira no 40 + 40;
	draw_sprite_ext(spr_player, 0, 40 + espaco *multi, 50, 0.3, 0.3, 0, c_white, .7);
	//depois de desenhar, aumentar o valor do multiplicador;
	multi++;
}
//resetando o valor do multiplicador;
multi = 0;
//Desenhando os escudos;
repeat(escudos)
{
	draw_sprite_ext(spr_ecudo_1, 2, 40 + espaco*multi, 100, 0.3, 0.3, 0, c_white, .7)
	//aumenta a quantidade de escudos a serem exibidos pelo usuario;
	multi++;
}