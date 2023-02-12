//diminuir o alpha em 10%;
image_alpha -=.2;

//me destruindo quendo o alpha for menor que .5;
if(image_alpha <= 0)
{
	instance_destroy(id, false);
}

//repetir a cada 1segundo;

alarm[0]=room_speed;