if (distance_to_object(obj_Player) < 100 &&
position_meeting(mouse_x,mouse_y,self))
{
previousA = A
A = global.clip
previousGun = gun;
gun = image_index;
image_index = previousGun
global.clip = instance_nearest(mouse_x,mouse_y,obj_Gun).previousA;
};