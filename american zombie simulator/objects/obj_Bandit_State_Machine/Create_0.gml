if (position_meeting(x,y,obj_collision))
{
	instance_destroy()
}

//Creating The States Enum
enum Bstates {
	idle = 1,
	wander = 2,
	shoot = 3
}

//Setting the default State
state = Bstates.idle

//Setting the alarms
alarm_set(0,300)

//Base Stats
hp = 20;
mHp = 20;
spd = 2;
myGun = random_range(0,5);
firerate = global.FireRate[myGun];
accuracy = global.Accuracy[myGun];
dmg = global.Dmg[myGun];
shots = global.Shots[myGun];
Bclip = global.Clipsize[myGun]
reloading = 0;
