/// @description 
spawn_x = random_range(0, room_width);
spawn_y = random_range(0, room_height);
instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy_2);
alarm[1] = random_range(room_speed*2, room_speed*3);