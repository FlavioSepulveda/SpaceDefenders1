//Fazendo ele se desenhar
draw_self();

//Manipulando como a placa de video gera as cores;
gpu_set_blendmode(bm_add);

//Criando sistema de cores;
draw_sprite_ext(spr_brilho2, image_index, x, y,image_xscale *.7, image_yscale * .7, image_angle, cor, image_alpha);

//Fazendo a gpu voltar ao normal
gpu_set_blendmode(bm_normal);
