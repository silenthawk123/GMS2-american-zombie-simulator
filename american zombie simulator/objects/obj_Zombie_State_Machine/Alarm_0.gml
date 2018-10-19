//Idle And Wander State
if(state = states.idle || state = states.wander)
{
	state = choose(states.idle,states.wander)
}
alarm_set(0,40);
