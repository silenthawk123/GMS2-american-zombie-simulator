instance_destroy(obj_Gun)
instance_destroy(obj_ammo)
instance_destroy(obj_Weapon)
while ((instance_number(obj_Weapon) + instance_number(obj_Gun) + instance_number(obj_ammo)) < 1000)
{
	instance_create_layer(random_range(1, room_width),
	random_range(1, room_height),
	"Weapons",
	choose(obj_ammo,obj_Gun,obj_Weapon)
	)
}
alarm_set(0,6000)

