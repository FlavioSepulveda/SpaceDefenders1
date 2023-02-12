//Diminuindo a escala do tiro e do brilho;

/*
	lerp é um comando de aproximação, eu faço o meu valor chegar em outro valor por uma porcentagem.
	lerp(valor que eu tenho, valor pra chegar, porcentagem de aproximação);
*/
//Fazendo meu x scale voltar a 1 de maneira suave;
image_xscale = lerp(image_xscale,1,0.3);
image_yscale = lerp(image_yscale,1,0.3);