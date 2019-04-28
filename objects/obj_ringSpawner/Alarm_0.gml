/// @description 
spawn_x = random_range(32, room_width-32);
spawn_y = random_range(32, room_height-32);
instance_create_layer(spawn_x, spawn_y, "Instances", obj_ring);
alarm[0] = random_range(room_speed*7, room_speed*13);