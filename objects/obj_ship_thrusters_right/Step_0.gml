/// @description 

x = clamp(x, 16, room_width-16);
y = clamp(y, 16, room_height-16);

// Find the ship
var ship = instance_find(obj_ship, 0);

if(!instance_exists(obj_ship))
{
	instance_destroy();
	exit;
}

// Point the flame in the direction of the ship
var ship_direction = point_direction(x, y, ship.x, ship.y);

// Accelerate towards the ship
if(point_distance(x, y, ship.x, ship.y) > 1)
{
	motion_add(ship_direction, 100);
	speed = point_distance(x, y, ship.x, ship.y);
}
else
{
	speed = 0.0;
}

if(ship.image_index == 0 && ship.image_angle == 0)
{
	image_angle = 0;
}
else if (ship.image_index == 0 && ship.image_angle == -45) // Ship moving right
{
	image_angle = -45;
}
else if (ship.image_index == 0 && ship.image_angle == 45) // Ship moving left
{
	image_angle = 45;
}
else if (ship.image_index == 1) // Ship moving up
{
	image_angle = 0;
}
else if (ship.image_index == 2) // Ship moving down
{
	image_angle = 180;
}
