/// @description 
if(image_xscale <= 3)
{
	image_xscale += .02;
	image_yscale += .02;
}
else
{
	if(instance_place(x, y, obj_ship))
	{
		global.ringCount++;
		global.playerScore++;
		if(!global.mute)
		{
			audio_play_sound(sfx_ring, 5, false);
		}
		instance_create_layer(x, y, "Thrusters", obj_ring_fade)
	}
	instance_create_layer(x, y, "Thrusters", obj_ring_fade_miss);
	instance_destroy();
}