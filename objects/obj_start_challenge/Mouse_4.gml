/// @description 
if(global.mouseEnable)
{
	global.challenge = true;
	instance_create_layer(x, y, "Instances", obj_fade);
}