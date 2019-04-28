/// @description 

x = clamp(x, 16, room_width-16);
y = clamp(y, 16, room_height-16);

// Find the cursor
var cursor = instance_find(obj_cursor, 0);

if(!instance_exists(obj_cursor))
{
	instance_destroy();
	exit;
}

// Point the ship in the direction of the cursor
var cursor_direction = point_direction(x, y, cursor.x, cursor.y);

// Accelerate towards the cursor
if(point_distance(x, y, cursor.x, cursor.y) > 4)
{
	motion_add(cursor_direction, 5);
	speed = point_distance(x, y, cursor.x, cursor.y)/10;
}
else
{
	speed = 0.0;
}

if(point_distance(x, y, cursor.x, cursor.y) < 10) // Set sprite to default
{
	image_index = 0;
	image_angle = 0;
}
else if (cursor_direction <= 45 && cursor_direction >= 0 || cursor_direction >= 315 and cursor_direction <= 359) // Ship moving right
{
	image_index = 0;
	image_angle = -45;
}
else if (cursor_direction >= 135 && cursor_direction <= 225) // Ship moving left
{
	image_index = 0;
	image_angle = 45;
}
else if (cursor_direction > 45 && cursor_direction < 135) // Ship moving up
{
	image_index = 1;
	image_angle = 0;
}
else if (cursor_direction > 225 && cursor_direction < 315) // Ship moving down
{
	image_index = 2;
	image_angle = 0;
}