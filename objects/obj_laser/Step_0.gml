/// @description 
if(!instance_exists(obj_cursor))
{
	instance_destroy();
}
if(alphaVal > 0)
{
	alphaVal -= 0.1;
}
else
{
	instance_destroy();
}