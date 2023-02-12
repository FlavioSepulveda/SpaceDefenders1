//se seu alvo tiver valor siga-o, se nao se mate;

if (!alvo or !instance_exists(alvo))	//nao tiver alvo
{
	instance_destroy();		// Se destroi 
}

x = alvo.x;
y = alvo.y;

