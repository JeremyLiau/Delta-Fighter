damage = argument0;
instance_destroy();
other.armor -= damage;

if(!global.challenge)
{
	if(global.shield <= 4)
	{
		global.shield = min(global.shield+1, 5);
	}
}