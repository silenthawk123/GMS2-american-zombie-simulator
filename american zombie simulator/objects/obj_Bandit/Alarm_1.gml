if (state = Bstates.shoot && Bclip > 0)
{
	if (shots > 1)
	{
		repeat(shots) instance_create_layer(x,y,"Weapons",obj_Bullet1)
		Bclip -= 1
	}
	else
	{
		instance_create_layer(x,y,"Weapons",obj_Bullet1)
		Bclip -= 1
	}
}
alarm_set(1,firerate)