if(weapon != -1)
if(mouse_x < x)
	{direction = point_direction(x,y,mouse_x,mouse_y) - 40}
	else
	{direction = point_direction(x,y,mouse_x,mouse_y) + 40}
alarm_set(1,20);
if(mouse_x < x)
{left = true}
	else
{left = false}
yy = y
xx = x
x_x = x
y_y = y
