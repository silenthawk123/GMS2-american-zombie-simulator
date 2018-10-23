if (distance_to_object(obj_Player) < 100 &&
position_meeting(mouse_x,mouse_y,self))
{
global.ammo += 1
instance_destroy()
};