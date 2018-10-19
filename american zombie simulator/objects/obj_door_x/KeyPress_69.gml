if (point_distance(x,y,obj_Player.x,obj_Player.y) < 200 &&
position_meeting(mouse_x,mouse_y,self))
{if (sprite_index = spr_door_x_open)
	{sprite_index = spr_door_x_closed
	solid = true}
else
	{sprite_index = spr_door_x_open;
	solid = false}};