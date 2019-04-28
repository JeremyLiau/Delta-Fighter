/// @description
depth = -9999;
a = 0;
fade = 1;
global.ringCount = 0; // Reset the ring count before each level
global.shield = 5; // Replenish the shield before each level
if(global.level == 3 && room = rm_upgrade_menu)
{
	currentRoom = rm_upgrade_menu;
	nextRoom = rm_ring_test;
}
else if(room = rm_difficulty_selection)
{
	currentRoom = rm_difficulty_selection;
	nextRoom = rm_flying;
}
else if (room = rm_flying)
{
	currentRoom = rm_flying;
	nextRoom = rm_upgrade_menu;
}
else if (room = rm_upgrade_menu)
{
	currentRoom = rm_upgrade_menu;
	nextRoom = rm_flying;
}
else if (room = rm_ring_test)
{
	currentRoom = rm_ring_test;
	nextRoom = rm_upgrade_menu;
}

global.mouseEnable = false;