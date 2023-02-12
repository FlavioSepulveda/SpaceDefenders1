//Se redesenhando na tela;
draw_self();

//manipulando a gpu
gpu_set_blendmode(bm_add);
//criando o brilho
draw_sprite_ext(spr_impacto, image_index, x, y, image_xscale*2, image_yscale*2, image_angle, cor, 0.5);
//parando de manipular a gpu
gpu_set_blendmode(bm_normal);
