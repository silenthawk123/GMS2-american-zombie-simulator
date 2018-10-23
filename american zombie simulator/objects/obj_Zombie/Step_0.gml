event_inherited();
//Changing Sprites With Direction
if(direction < 45 or direction > 315)
{sprite_index = spr_Zombie_Right};
if(direction > 45 && direction < 135)
{sprite_index = spr_Zombie_Up};
if(direction > 135 && direction < 225)
{sprite_index = spr_Zombie_Left};
if(direction > 225 && direction < 315)
{sprite_index = spr_Zombie_Down};

//Moving And Not Moving With Different States
if(state = states.idle or state = states.attack)
{image_speed = 0
	image_index = 0
	speed = 0};
	if(state = states.alert or state = states.wander or state = states.sound)
{image_speed = 1};
	
//Attacking The Player
if(state = states.attack)
{if(alarm_get(4) = -1)
	{alarm_set(4,25)
}};

//Attack State Behaviors
if(state = states.attack && instance_exists(obj_Player))
{speed = 0
	image_index = 0
	image_speed = 0
	direction = point_direction(x,y,nearestEnemy.x,nearestEnemy.y)};
	
//Making The Zombies Die
if(hp <= 0)
{instance_destroy(self,true)};

//Clamping The Zombie To The Room
x = clamp(x,0,room_width);
y = clamp(y,0,room_height);

//Randomizing The Script
randomize();
	
//Chasing The Player If Alert
if (state = states.alert)
{mp_potential_step(nearestEnemy.x,nearestEnemy.y,spd,false)
	image_speed = 1};

if instance_exists(obj_meleeWeapon)
{
	if (point_distance(x,y,obj_meleeWeapon.x,obj_meleeWeapon.y) < 120)
	{
		alarm_set(3,2)
	}
}



