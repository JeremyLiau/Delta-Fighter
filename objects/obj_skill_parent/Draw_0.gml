/// @description 
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(selected)
{
	draw_text(room_width/2,room_height-64,text);
	if(image_index < 3)
	{
		draw_text(room_width/2,room_height-32,"COST: " + string(cost));
	}
	else
	{
		draw_text(room_width/2,room_height-32,"PURCHASED!");
	}
}