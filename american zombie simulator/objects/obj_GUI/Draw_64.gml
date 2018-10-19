draw_set_font(Font1)
draw_set_color(c_black)
draw_text_transformed(64,640,string(global.clip) + "/" + string(global.ammo),4,4,0);
draw_sprite(spr_Coin, frame, 1056, 0);
draw_set_color(c_black);
draw_set_font(Font1);
draw_text_transformed(1120,-12,global.gold,4,4,0);


