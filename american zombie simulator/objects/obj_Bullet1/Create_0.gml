alarm_set(0,150)

dmg = instance_nearest(x,y,obj_Bandit).dmg

direction = random_range
(
instance_nearest(x,y,obj_Bandit).direction
+instance_nearest(x,y,obj_Bandit).accuracy,
instance_nearest(x,y,obj_Bandit).direction
-instance_nearest(x,y,obj_Bandit).accuracy
);
image_angle = direction;

