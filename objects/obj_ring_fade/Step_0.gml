/// @description 

image_angle += 6;
image_blend = make_colour_hsv(random_range(120, 200), 255, 255);
if(image_alpha > 0)
{
	image_xscale += .02;
	image_yscale += .02;
	image_alpha -= .02;
}
else
{
	instance_destroy();
}