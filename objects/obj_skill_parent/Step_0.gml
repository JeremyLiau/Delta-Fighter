/// @description

// If the item has not been purchased and the player does not have enough score to purchase the upgrade, darken the icon

if(image_index != 3)
{
	if(global.playerScore < cost)
	{
		image_index = 2;
	}
	else if (!selected)
	{
		image_index = 0;
	}
}