//Idle And Wander State
if(state = states.idle || state = states.wander)
{
	state = choose(states.idle,states.wander)
}

if(state = states.wander)
{Goalx = random_range(x + 1000, x - 1000)
Goaly = random_range(y + 1000, y - 1000)}

alarm_set(0,40);
