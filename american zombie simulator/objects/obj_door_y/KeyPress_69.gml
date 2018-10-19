if (position_meeting(mouse_x,mouse_y,self))
{
if (point_distance(x,y,obj_Player.x,obj_Player.y) < 200)
{if (sprite_index = spr_door_y_open)
	{sprite_index = spr_door_y_closed
	solid = true}
else
	{sprite_index = spr_door_y_open;
	solid = false}}
};