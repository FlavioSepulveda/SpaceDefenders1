//Simplivicação do codigo; 
//Melhoria nivel 2;
var up, down, left, right;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

//movendo o y com base no resultado da subtração pra so depois multiplicar por 5;
y += (down - up) * veloc;
//movendo o x com base no resultado da subtração pra so depois multiplicar por 5;
x += (right - left) * veloc;

//Chamando o escudo
escudo();

//impedindo que ele saia da tela 
/*if(x<=64) x = 64;
if (x >= 1856) x = 1856;
if(y<= 64) y = 64;
if(y >=1024) y = 1024;*/

//Se meu personagem sair dos intervalos delimitados;
x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);

//Chamando o metodo atirando do player;
atirando();
var tiro = keyboard_check_pressed(vk_up);
// Upando o tiro apenas se o tiro for menor que 5
if (tiro)
{
	if ( level_tiro < 5)
	{
		level_tiro++;
	}
}
// Diminuindo o nivel do tiro sempre que ele for maior que 1 e a seta pra baixo for pressionadas
var tiro_menos = keyboard_check_pressed(vk_down);

if (tiro_menos)
{
	if (level_tiro > 1)
	{
		level_tiro--;
	}
}

var tiro_menos_espera = keyboard_check_pressed(vk_left);
var tiro_mais_espera = keyboard_check_pressed(vk_right);
if ((tiro_menos_espera) && espera_tiro > 20)
{
	if (espera_tiro > 10)
{
	espera_tiro *= 0.9;
}
}
if (tiro_mais_espera)
{
	espera_tiro *= 1.1;
}


