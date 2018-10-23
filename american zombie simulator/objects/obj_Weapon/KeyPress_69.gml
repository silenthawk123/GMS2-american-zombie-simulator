if (distance_to_object(obj_Player) < 100 &&
position_meeting(mouse_x,mouse_y,self))
{
previousWeapon = weapon;
weapon = image_index;
image_index = previousWeapon;
};