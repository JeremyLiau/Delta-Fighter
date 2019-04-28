/// @description 
image_blend = make_colour_hsv(255, 10, 105);
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