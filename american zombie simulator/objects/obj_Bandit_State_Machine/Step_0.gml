
//Setting the nearestEnemy
if (instance_exists(obj_Player) && instance_exists(obj_Zombie))
{
	if
	(distance_to_object(obj_Zombie) < distance_to_object(obj_Player))
	{
		nearestEnemy = instance_nearest(x,y,obj_Zombie)
	}
	else
	{
		nearestEnemy = obj_Player
	}
}

//Switching to the Shoot State
if (distance_to_object(nearestEnemy) < 400 && 
collision_line(x,y,nearestEnemy.x,nearestEnemy.y,obj_collision,false,false) = noone)
{state = Bstates.shoot}
else
{
	if (state = Bstates.shoot)
	{
		state = Bstates.idle
	}
}

