/// @description 
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,text);

if(image_index == 1)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(x, y+96, "No shield regained from destroying asteroids.");
}