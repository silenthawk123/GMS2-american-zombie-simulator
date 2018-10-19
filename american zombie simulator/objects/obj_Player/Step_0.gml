
//Making The Player Move
if keyboard_check(ord("A"))
{speed = spd
	direction = 180}
else {x += 0};
if keyboard_check(ord("D"))
{speed = spd
	direction = 0}
else {x += 0};
if keyboard_check(ord("W"))
{speed = spd
	direction = 90}
else {y += 0};
if keyboard_check(ord("S"))
{speed = spd
	direction = 270}
else {y += 0};
	
//Changing Sprites With Direction
if(direction < 45 && direction > -1 || direction < 360 && direction > 315)
{sprite_index = spr_Player_right};
if(direction > 45 && direction < 135)
{sprite_index = spr_Player_up};
if(direction > 135 && direction < 225)
{sprite_index = spr_Player_left};
if(direction > 225 && direction < 315)
{sprite_index = spr_Player_down};

//Melee Attack
if (weapon != -1)
{if (mouse_check_button(mb_left) && !instance_exists(obj_meleeWeapon) && !mouse_check_button(mb_right))
{instance_create_layer(x,y,"Weapons",obj_meleeWeapon)}};
			

//Aim Direction
Gdirection = point_direction(x,y,mouse_x,mouse_y);
if (speed = 0){
	if(Gdirection < 45 && Gdirection > 0 || Gdirection < 360 && Gdirection > 315)
	{sprite_index = spr_Player_right}
	if(Gdirection > 45 && Gdirection < 135)
	{sprite_index = spr_Player_up}
	if(Gdirection > 135 && Gdirection < 225)
	{sprite_index = spr_Player_left}
	if(Gdirection > 225 && Gdirection < 315)
	{sprite_index = spr_Player_down}
};

//Making The Player Die
if(hp <= 0)
{instance_destroy(self,true)
instance_create_layer(640,360,"Living",obj_Player);};

//reloading
if (keyboard_check(ord("R")) && global.clip < clipsize && reloading = 0 && global.ammo > 0){
alarm_set(1,120)
instance_destroy(obj_loading,true)
instance_create_layer(x,y-80,"GUI",obj_loading)
reloading = 1};

//Changing The Stats With The Gun
if (gun != -1)
{dmg = global.Dmg[gun]
clipsize = global.Clipsize[gun]
accuracy = global.Accuracy[gun]
shots = global.Shots[gun]
AUTO = global.AUTO[gun]
firerate = global.FireRate[gun]};

//Changing The Stats With The Weapon
if(weapon != -1)
{
	mDmg = global.mDmg[weapon]
};

//Declaring x and y Weapon Variables
Wx = (mouse_x - (x * 0.80) - (camera_get_view_width(0)/2)) * 0.01;
Wy = (mouse_y - (y * 0.80) - (camera_get_view_height(0)/2)) * 0.01;
if (!keyboard_check(ord("S")) &&
!keyboard_check(ord("W")) &&
!keyboard_check(ord("A")) &&
!keyboard_check(ord("D")))
{image_index = 0
speed = 0
x = round(x/8) * 8
y = round(y/8) * 8};

//Not moving while reloading
if (reloading = true)
{
	image_speed = 0
	image_index = 0
	speed = 0
}


