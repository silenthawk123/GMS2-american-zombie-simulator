if (point_distance(x,y,obj_Player.x,obj_Player.y) >= 820)
{
	image_alpha += -0.002
};

if (image_alpha <= 0.1)
{
	instance_destroy()
};
