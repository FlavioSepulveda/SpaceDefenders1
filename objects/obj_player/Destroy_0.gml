//Criando a explosão quando ele morrer;

instance_create_layer(x, y, "player", obj_impacto2);

//Criando o screenshake quando ele morrer
var shakeShake = instance_create_layer(0, 0, "Player", obj_ssk);
shakeShake.shake = 80;

