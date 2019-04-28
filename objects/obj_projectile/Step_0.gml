/// @description
image_index = global.laserImage;
if(image_alpha > 0)
{
	image_alpha -= .08;
	image_alpha -= .08;
}
else
{
	instance_destroy();
}