
// Inherit the parent event
event_inherited();

if(instance_exists(obj_boss))
{
	//Fazendo o tiro ir em direçao a ele;
	direction = point_direction(x, y, obj_boss.x, obj_boss.y)
	//Faxendo eles olharem para o boss;
	image_angle = direction + 90;
}