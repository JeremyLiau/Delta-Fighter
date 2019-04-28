/// @description 
if(keyboard_check_pressed(vk_escape))
{
	game_end();
}

if(room = rm_flying)
{
	// Use this if debugging, to shorten transitions between levels and rooms
	/*
	if(timer >= level_time_length)
	{
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_level_complete);
	}
	*/
	
	// Use this for the actual game
	if(global.ringCount >= 3)
	{
		instance_create_layer(room_width/2, room_height/2-32, "Instances", obj_level_complete);
	}
}
else if (room = rm_ring_test)
{
	if(global.ringCount >= 15)
	{
		instance_create_layer(room_width/2, room_height/2-32, "Instances", obj_level_complete);
	}
}
else
{
	timer = 0;
}
//DEBUG
/*
if(keyboard_check_pressed(vk_up))
{
	global.playerScore += 10;
}
else if (keyboard_check_pressed(vk_down))
{
	global.playerScore -= 10;
}
if(keyboard_check_pressed(vk_left))
{
	global.laserImage -= 1;
	global.laserSize /= 2;
}
else if(keyboard_check_pressed(vk_right))
{
	global.laserImage += 1;
	global.laserSize *= 2;
}*/

/*
if(keyboard_check_pressed(vk_up))
{
	global.level += 1;
}
else if (keyboard_check_pressed(vk_down))
{
	global.level -= 1;
}
*/