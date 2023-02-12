//Evento herdado do obj_inimigo1
event_inherited();

//Fazendo ele mudar de direção;
//Checando em qual altura ele esta (checando se passei de 1/3 da tela);
if(y > room_height/3 && mover_pro_lado == true)
{
	//Checando em que lado da sala ele esta;
	if(x < room_width/2)
	{
		//show_message("Estou na esquerda!");
		//fazendo a direção mudar;
		hspeed = 4;
		
		//Flagueando que ele nao pode se mover mais;
		mover_pro_lado = false;
	}
	else // o mesmo que (x > room_width/2)
	{
		//show_message("estou na direita");
		hspeed = -4;
		
		//flagueando que ele nao pode mais se mover;
		mover_pro_lado = false;
	}
}








