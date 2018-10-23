if (state = Bstates.shoot && Bclip > 0)
{
	if (shots > 1)
	{
		repeat(shots) instance_create_layer(x,y,"Weapons",obj_Bullet1)
		Bclip -= 1
		if (instance_nearest(x,y,obj_noise) != noone)
		{
			if !(x = instance_nearest(x,y,obj_noise).x && y = instance_nearest(x,y,obj_noise).y)
			{
				instance_create_layer(x,y,"Collision",obj_noise)
			}
		}
	}
	else
	{
		instance_create_layer(x,y,"Weapons",obj_Bullet1)
		Bclip -= 1
		if (instance_nearest(x,y,obj_noise) != noone)
		{
			if !(x = instance_nearest(x,y,obj_noise).x && y = instance_nearest(x,y,obj_noise).y)
			{
				instance_create_layer(x,y,"Collision",obj_noise)
			}
		}
	}
}
alarm_set(1,firerate)
