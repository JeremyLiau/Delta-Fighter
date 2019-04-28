/// @description Level timer

if(instance_exists(obj_ship))
{
	timer += 1;
}
else
{
	timer = 0;
}
alarm[0] = room_speed;