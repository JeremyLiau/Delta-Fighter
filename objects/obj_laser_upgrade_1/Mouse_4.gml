/// @description 
if(global.playerScore >= cost && !global.laser1_purchased)
{
	global.laser1_purchased = true;
	global.playerScore -= cost;
	image_index = 3;
	global.laserSize *= 2;
	global.laserImage += 1;
}