draw_self()
//Drawing The Gun
	if (sprite_index != spr_Player_up)
	{
		if (direction > 90 && direction < 270)
			{draw_sprite_ext(global.sprLeft[myGun],0,x,y + 12,1,1,direction,c_white,1)}
			else
			{draw_sprite_ext(global.sprRight[myGun],0,x,y + 12,1,1,direction,c_white,1)}
	}
	else
	{
		if (direction > 90 && direction < 270)
			{draw_sprite_ext(global.sprLeft[myGun],0,x,y + 12,1,1,direction,c_white,1)}
			else
			{draw_sprite_ext(global.sprRight[myGun],0,x,y + 12,1,1,direction,c_white,1)}
			draw_self()
	}

//Drawing The Healthbar
Dhp = hp/mHp*100;
draw_healthbar(x-28,y+48,x+28,y+64,Dhp,c_red,c_green,c_green,0,false,true);