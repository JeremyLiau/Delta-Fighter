/// @description 
if (armor <= 0)
{
	instance_create_layer(x, y, "Instances", obj_screenshake);
	instance_create_layer(x, y, "Instances", obj_explosion);
	// Increase the player's shield
	if(!global.challenge)
	{
		if(global.shield <= 4)
		{
			global.shield = min(global.shield+1, 5);
		}
	}
	global.playerScore += max_armor;
	repeat(2)
	{
		instance_create_layer(x+(random_range(-splitting_distance, splitting_distance)), y+(random_range(-splitting_distance, splitting_distance)), "Instances", obj_split_asteroid);
	}
	if(!global.mute)
	{
		audio_play_sound(sfx_explosion, 5, false);
	}
	instance_destroy();
}