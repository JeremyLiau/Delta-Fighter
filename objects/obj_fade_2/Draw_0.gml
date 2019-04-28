/// @description 
a = clamp(a + (fade * 0.05), 0, 1);

if(a==1)
{
	room_goto(rm_menu);
	fade = -1;
}

if (a == 0) && (fade == -1)
{
	global.mouseEnable = true;
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], 0);
draw_set_alpha(1);
draw_set_color(c_white);