event_inherited();

//Changing Sprites With Direction
if(direction < 45 or direction > 315)
{sprite_index = spr_Bandit_right};
if(direction > 45 && direction < 135)
{sprite_index = spr_Bandit_up};
if(direction > 135 && direction < 225)
{sprite_index = spr_Bandit_left};
if(direction > 225 && direction < 315)
{sprite_index = spr_Bandit_down};

//Making The Bandit Die
if(hp <= 0)
{instance_destroy(self,true)};

//Moving And Not Moving With Different States
if(state = Bstates.idle or state = Bstates.shoot)
{image_speed = 0
	image_index = 0
	speed = 0};
	if(state = Bstates.wander)
{image_speed = 1};

//Moving to Goal
if (state = Bstates.wander)
{
	mp_potential_step(Goalx,Goaly,spd,false)
}

//Facing the nearest enemy if your in the shoot state
if (state = Bstates.shoot)
{
direction = point_direction(x,y,nearestEnemy.x,nearestEnemy.y)
}

//Melee Damage
if instance_exists(obj_meleeWeapon)
{
	if (point_distance(x,y,obj_meleeWeapon.x,obj_meleeWeapon.y) < 120)
	{
		alarm_set(3,2)
	}
}
