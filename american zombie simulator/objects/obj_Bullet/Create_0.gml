alarm_set(0,150)

direction = random_range(point_direction(x,y,mouse_x,mouse_y)+obj_Player.accuracy,
point_direction(x,y,mouse_x,mouse_y)-obj_Player.accuracy);
image_angle = direction;

