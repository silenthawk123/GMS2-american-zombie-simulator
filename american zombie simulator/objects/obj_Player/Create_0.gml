spd = 3;
gun = 1;
firerate = 0.8;
weapon = 1;
attacking = false;
Mhp = 30;
hp = 30;
Gdirection = 0;
reloading = 0;
dmg = 3;
mDmg = 5;
AUTO = false;
alarm_set(2,4)

//Declaring x and y Weapon Variables
Wx = (mouse_x - (x * 0.80) - (camera_get_view_width(0)/2)) * 0.01;
Wy = (mouse_y - (camera_get_view_height(0)/2)) * 0.01;

//Clamping The Zombie To The Room
x = clamp(x,0,room_width);
y = clamp(y,0,room_height);