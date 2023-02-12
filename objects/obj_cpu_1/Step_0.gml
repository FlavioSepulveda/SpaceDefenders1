//Checando se o player existe;
if (!instance_exists(obj_player) && !gameover_seq)
{
	//Criando apeas uma sequencia;
	gameover_seq =layer_sequence_create("Sequencias", room_width/2,room_height/2 , sq_gameover);
}