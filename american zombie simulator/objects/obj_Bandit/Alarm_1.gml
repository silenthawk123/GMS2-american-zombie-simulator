if (state = Bstates.shoot)
{
	if (shots > 1)
	{
		repeat(shots) instance_create_layer(x,y,"Weapons",obj_Bullet1)
	}
	else
	{
		instance_create_layer(x,y,"Weapons",obj_Bullet1)
	}
}
alarm_set(1,firerate)