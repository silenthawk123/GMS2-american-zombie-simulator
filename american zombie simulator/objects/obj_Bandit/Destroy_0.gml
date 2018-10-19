instance_create_layer(x,y,"Background",obj_blood);
instance_create_layer(x,y,"Weapons",obj_Coin);
instance_create_layer(
random_range(1,room_width),
random_range(1,room_height),
"Living",
obj_Bandit
)
