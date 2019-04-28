/// @description 
if(image_xscale <= 4)
{
	image_xscale += .02;
	image_yscale += .02;
}
else
{
	instance_destroy();
	if(global.ringCount < 3)
	{
		if(!global.zen)
		{
			global.shield -= 1;
		}
		if(!global.mute)
		{
			audio_play_sound(sfx_damaged, 5, false);
		}
		instance_create_layer(x, y, "Instances", obj_screenshake);
	}
}

image_index = armor-1;