
//Switching the state from idle to wander and back
if (state = Bstates.idle or state = Bstates.wander)
{
	state = choose(Bstates.idle,Bstates.wander)
}

alarm_set(0,300)
