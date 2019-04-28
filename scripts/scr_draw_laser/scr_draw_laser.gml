laserSize = argument0;
var ship = instance_find(obj_ship, 0);
draw_sprite_pos(spr_laser, global.laserImage, x, y-laserSize, x-laserSize, y+laserSize, x+laserSize, y+laserSize, ship.x, ship.y, alphaVal);