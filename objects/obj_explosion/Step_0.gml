/// @description 
if(image_alpha > 0)
{
	image_xscale += .04;
	image_yscale += .04;
	image_alpha -= .02;
}
else
{
	instance_destroy();
}