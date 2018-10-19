alarm_set(0,150)

direction = random_range
(
instance_nearest(x,y,obj_Bandit).direction
+instance_nearest(x,y,obj_Bandit).accuracy,
instance_nearest(x,y,obj_Bandit).direction
-instance_nearest(x,y,obj_Bandit).accuracy
);
image_angle = direction;
speed = 48;
