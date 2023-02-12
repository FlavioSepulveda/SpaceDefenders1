//A ordem do codigo importa pra essa em questao o draw_self vem primeiro;
//Eu vou me desenhar ;
draw_self();
/*
	Meu tiro é 16 x 24 = 16x24 
	Meu brilho a escala dele é 59x109 = maior que o tiro
*/

//alterando como a placa e video trata as cores;
gpu_set_blendmode(bm_add);
//Fazendo ele escolher a cor do tiro;
//A variavel esta no envento create;
//Desenhar o brilho ao redor do tiro;
draw_sprite_ext(brilho, image_index, x, y, image_xscale * 0.7, image_yscale * 0.7, image_angle, cor, 0.5);
//Voltando ao normal pra nao ficar tudo branco;
gpu_set_blendmode(bm_normal);