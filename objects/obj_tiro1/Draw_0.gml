//Criando o efeito do tiro do inimigo;
draw_self();

//Fazendo a gpu processar o brilho melhor;
gpu_set_blendmode(bm_add);
//Desenhando o brilho
draw_sprite_ext(spr_brilho2, image_index, x, y, image_xscale*.7, image_yscale*.7, image_angle, cor, 0.5);
//Fazendo a gpu parar de processar o brilho;
gpu_set_blendmode(bm_normal);