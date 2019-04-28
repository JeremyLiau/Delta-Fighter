/// @description 
x = mouse_x;
y = mouse_y;
image_index = global.laserImage;


if(global.mouseEnable == true && (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)))
{
	if(global.mute = 0)
	{
		if(global.laserImage = 0)
		{
			audio_play_sound(sfx_laser_1, 5, 0);
		}
		else if (global.laserImage = 1)
		{
			audio_play_sound(sfx_laser_2, 5, 0);
		}
		else
		{
			audio_play_sound(sfx_laser_3, 5, 0);	
		}
	}
	instance_create_layer(x, y, "Player", obj_projectile);
	if(global.shield > 1 && room = rm_flying && !global.zen)
	{
		global.shield -= 1;
	}
	instance_create_layer(x, y, "Player", obj_laser);
	global.playerCombo += 1;
}

if(global.shield <= 0)
{
	instance_destroy();
	instance_create_layer(room_width/2, room_height/2-32, "Instances", obj_game_over);
}