if (AUTO = false && gun != -1 && reloading = 0 && global.clip >= 1 && mouse_check_button(mb_right))
{
	audio_play_sound(global.sound[gun],10,false)
	if (shots > 1)
	{
		repeat(shots) instance_create_layer(x,y,"Weapons",obj_Bullet)
		global.clip += -1
	}
	else
	{
		instance_create_layer(x,y,"Weapons",obj_Bullet)
		global.clip += -1
	}
};
