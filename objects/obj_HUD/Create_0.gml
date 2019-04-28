/// @description 
randomize();

global.playerScore = 0;
global.shield = 5; //4 shield bars + 1 "extra" if shooting with no health left.
global.playerCombo = 0; // Not working
global.laserSize = 4;
global.laserImage = 0;
global.mute = 0;
global.level = 0;
global.upgrading = false;
global.mouseEnable = true;
global.ringCount = 0;
global.gameCycles = 0;
global.laser1_purchased = false;
global.laser2_purchased = false;
global.zen = false;
global.standard = false;
global.challenge = false;

level_time_length = 30;

timer = 0;
alarm[0] = room_speed;