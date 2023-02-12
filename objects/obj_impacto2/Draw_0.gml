//Se desenhando na tela do jogador;
draw_self();

//alterando como a gpu processa mistura de cores;
gpu_set_blendmode(bm_add);
//criando o efeito;
draw_sprite_ext(spr_impacto2, image_index, x, y, image_xscale*1.2, image_yscale*1.2, image_angle,cor, 0.3);

//Fazendo a gpu voltar ao normal;
gpu_set_blendmode(bm_normal);