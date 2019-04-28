/// @description 
if (armor <= 0)
{
	instance_create_layer(x, y, "Instances", obj_explosion);
	instance_create_layer(x, y, "Instances", obj_screenshake);
	// Increase the player's shield
	if(!global.challenge)
	{
		if(global.shield <= 4)
		{
			global.shield = min(global.shield+1, 5);
		}
	}
	global.playerScore += max_armor;
	if(!global.mute)
	{
		audio_play_sound(sfx_explosion, 5, false);
	}
	instance_destroy();
}