//Matando ele ao ser colidido com o tiro do player:

if (vida>0)
{
	vida--;
}
else
{
	//me matando
	instance_destroy();
}
//destruindo o tiro
instance_destroy(other);