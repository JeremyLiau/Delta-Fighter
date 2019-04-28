/// @description Spawn an asteroid

spawn_x = random_range(64, room_width-64);
spawn_y = random_range(64, room_height-64);
if(global.gameCycles > 0)
{
	randX = room_speed*0.5-(global.gameCycles*10);
	randY = room_speed*2-(global.gameCycles*40);
	if(randX < 15)
	{
		randX = 15;
	}
	if(randY < 30)
	{
		randY = 30;
	}
	
	instance_create_layer(spawn_x, spawn_y, "Instances", obj_asteroid);
	alarm[0] = random_range(randX, randY);
}
else if(global.level == 0 || global.level > 1)
{
	instance_create_layer(spawn_x, spawn_y, "Instances", obj_asteroid);
	alarm[0] = random_range(room_speed*0.5, room_speed*2);
}