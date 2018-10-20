if (showInv)
{
	var x1, x2, y1, y2
	x1 = 0
	x2 = 64
	y1 = (camera_get_view_height(0) - (64 * maxItems)) * 0.5
	y2 = (maxItems * 64) + y1
	
	draw_set_color(c_black)
	draw_set_alpha(0.7)
	draw_rectangle(x1, y1, x2, y2, 0)
	draw_set_alpha(1)
	
	for (i = 0; i < maxItems; i += 1)
	{
		draw_sprite(spr_inventory_slot, 0, x1, y1 + (i * 64))
		if (global.inventory[i] != -1)
		{
			draw_sprite(spr_items, global.inventory[i], x1, y1 + (i * 64))
		}
	}
};

draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0,0,192,64,false);
draw_sprite(spr_inventory_slot,0,0,0)
draw_sprite(spr_guns,gun,0,0)
draw_sprite(spr_inventory_slot,0,64,0)
draw_sprite(spr_weapons,weapon,64,0)
draw_sprite(spr_inventory_slot,0,128,0)
draw_sprite(spr_ammo,0,128,0)
draw_set_font(Font1)
draw_set_color(c_white);
draw_text_transformed(160,32,global.ammo,2,2,0);
draw_set_color(c_black);
draw_set_alpha(1)

if (global.clip <= 106)
{
	for (e = 0; e < global.clip; e += 1)
	{
		draw_sprite(spr_GUI_bullet, 0, 2 + (e * 12), camera_get_view_height(0) - 76)
	}
}
else
{
	if (global.clip <= 116)
	{
		for (e = 0; e < global.clip; e += 1)
		{
			draw_sprite(spr_GUI_bullet, 0, 2 + (e * 11), camera_get_view_height(0) - 76)
		}
	}
	else
	{
		for (e = 0; e < global.clip; e += 1)
		{
			draw_sprite(spr_GUI_bullet, 0, 2 + (e * 10), camera_get_view_height(0) - 76)
		}
	}
}



