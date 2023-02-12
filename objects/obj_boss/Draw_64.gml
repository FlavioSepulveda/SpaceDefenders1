// @Criando uma barra de vida via codigo;
//Este comando desenha uma barra de vida na tela;
//Criando variavel de vida;
var _vida = (vida_atual / vida_maxima * 100)

draw_healthbar(100, 20, 1080, 40, _vida, c_black, c_red, c_green, 0, true, 1);