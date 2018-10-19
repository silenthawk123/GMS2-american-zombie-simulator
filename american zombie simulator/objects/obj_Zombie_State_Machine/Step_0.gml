//Setting the nearestEnemy
if (instance_exists(obj_Player) && instance_exists(obj_Bandit))
{
	if
	(distance_to_object(obj_Bandit) < distance_to_object(obj_Player))
	{
		nearestEnemy = instance_nearest(x,y,obj_Bandit)
	}
	else
	{
		nearestEnemy = obj_Player
	}
}

//Alert and Attack State
if (instance_exists(obj_Player))
{if (distance_to_object(nearestEnemy) < 300 && distance_to_object(nearestEnemy) > 30)
{state = states.alert}
else
{if (distance_to_object(nearestEnemy) < 30)
	{state = states.attack}}};
	else
	{
		if(state = states.attack)
		{
			state = states.idle
		}
	}

//Alert - Idle State
if(state = states.alert && instance_exists(obj_Player))
{if (distance_to_object(nearestEnemy) > 300)
{state = states.idle}};

//fixing a bug
if (distance_to_object(nearestEnemy) < 30)
	{state = states.attack};
	else
	{
		if(state = states.attack)
		{
			state = states.idle
		}
	}