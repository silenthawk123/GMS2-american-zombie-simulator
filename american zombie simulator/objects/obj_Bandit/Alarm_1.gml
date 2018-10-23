if (state = Bstates.shoot && Bclip > 0)
{
	if (shots > 1)
	{
		repeat(shots) instance_create_layer(x,y,"Weapons",obj_Bullet1)
		Bclip -= 1
		instance_create_layer(x,y,"Collision",obj_noise)
	}
	else
	{
		instance_create_layer(x,y,"Weapons",obj_Bullet1)
		Bclip -= 1
		instance_create_layer(x,y,"Collision",obj_noise)
	}
}
alarm_set(1,firerate)
