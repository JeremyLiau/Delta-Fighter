/// @description 
if(global.upgrading == 1)
{
	sprite_index = spr_upgrade_room;
}
else if(global.level == 0)
{
	sprite_index = spr_star_travel;
}
else if(global.level == 1)
{
	sprite_index = spr_land_world;
}
else if(global.level == 2)
{
	sprite_index = spr_ice_world;
}
else if(global.level == 3)
{
	sprite_index = spr_purple_world;
}
else if(global.level == 4)
{
	sprite_index = spr_ring_level;
}
else
{
	global.level = 0;
	sprite_index = spr_star_travel;
}