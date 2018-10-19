draw_self()
//Drawing The Gun
if mouse_check_button(mb_right)
{if (gun != -1 && reloading = 0)
	if (sprite_index != spr_Player_up)
	{
		if (Gdirection > 90 && Gdirection < 270)
			{draw_sprite_ext(global.sprLeft[gun],0,x,y + 12,1,1,Gdirection,c_white,1)}
			else
			{draw_sprite_ext(global.sprRight[gun],0,x,y + 12,1,1,Gdirection,c_white,1)}
	}
	else
	{
		if (Gdirection > 90 && Gdirection < 270)
			{draw_sprite_ext(global.sprLeft[gun],0,x,y + 12,1,1,Gdirection,c_white,1)}
			else
			{draw_sprite_ext(global.sprRight[gun],0,x,y + 12,1,1,Gdirection,c_white,1)}
			draw_self()
	}
};
				
//Drawing The Melee Weapon
if mouse_check_button(mb_right){}
else
{if !instance_exists(obj_meleeWeapon)
	{if (weapon = 0){
			if (sprite_index != spr_Player_up){
				if (Gdirection > 90 && Gdirection < 270)
				{draw_sprite_ext(spr_Knife_left,0,x + Wx-20,y + Wy+12,1,1,110,c_white,1)}
				else
				{draw_sprite_ext(spr_Knife_right,0,x + Wx+20,y + Wy+12,1,1,70,c_white,1)}}}
	if (weapon = 1){
			if (sprite_index != spr_Player_up){
				if (Gdirection > 90 && Gdirection < 270)
				{draw_sprite_ext(spr_Cleaver_left,0,x + Wx-20,y + Wy+12,1,1,110,c_white,1)}
				else
				{draw_sprite_ext(spr_Cleaver_right,0,x + Wx+20,y + Wy+12,1,1,70,c_white,1)}}}}};

//Drawing The Healthbar
Dhp = hp/Mhp*100;
draw_healthbar(x-28,y+48,x+28,y+64,Dhp,c_red,c_green,c_green,0,false,true);

