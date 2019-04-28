/// @description

font = font_add_sprite_ext(spr_custom_font1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?.-():'", false, 0);
draw_set_font(font);

health_sprite = spr_health_1;
score_sprite = spr_score;
ring_sprite = spr_rings_collected;
ring_bonus_sprite = spr_rings_collected_bonus;

health_sprite_width_align = sprite_get_width(health_sprite)/2;
health_sprite_height_align = sprite_get_height(health_sprite)/2;
score_sprite_width_align = sprite_get_width(score_sprite)/2;
score_sprite_height_align = sprite_get_height(score_sprite)/2;
ring_sprite_width_align = sprite_get_width(ring_sprite)/2;
ring_sprite_height_align = sprite_get_height(ring_sprite)/2;
ring_bonus_sprite_width_align = sprite_get_width(ring_bonus_sprite)/2;
ring_bonus_sprite_height_align = sprite_get_height(ring_bonus_sprite)/2;


if (room = rm_flying || room = rm_ring_test)
{
	// Draw timer
	/*
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]-32, view_hport[0]-32, "Time until end: " + string(30-timer));
	*/
	
	// Draw ring count
	/*
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]-32, view_hport[0]-32, "Rings: " + string(global.ringCount));
	*/
}

// Draw score
if(room != rm_menu && room != rm_instructions && room != rm_credits && room != rm_difficulty_selection)
{
	// Draw the score sprite
	draw_sprite(score_sprite, 0, view_wport[0]-score_sprite_width_align-16, score_sprite_height_align);
	
	// Draw the score text
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text_transformed(view_wport[0]-32, 34, string(global.playerScore), 1.4, 1.4, 0);
}

// Draw the rings collected in the level
if(room = rm_flying)
{
	draw_sprite(spr_rings_collected, global.ringCount, view_wport[0]-ring_sprite_width_align-16-sprite_get_width(score_sprite), ring_sprite_height_align);
}

// Draw shields
if(room = rm_flying || room = rm_ring_test)
{
	// Draw the shield sprite
	if(global.shield > 0)
	{
		draw_sprite(health_sprite, global.shield, health_sprite_width_align+16, health_sprite_height_align+16);
	}
	else
	{
		draw_sprite(health_sprite, 0, health_sprite_width_align+16, health_sprite_height_align+16);
	}
}

// Show game cycles if greater than 0
if(room = rm_upgrade_menu && global.gameCycles > 0)
{
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]-32, view_hport[0]-32, "GAME CYCLES COMPLETED (DIFFICULTY LEVEL): " + string(global.gameCycles));
}

// Draw the 15 ring tracker during the low action stage
if(room = rm_ring_test)
{
	if(global.ringCount < 15)
	{
		draw_sprite(spr_rings_collected_bonus, global.ringCount, view_wport[0]-ring_bonus_sprite_width_align-64-sprite_get_width(score_sprite), ring_bonus_sprite_height_align);
	}
	else if(global.ringCount >= 15)
	{
		draw_sprite(spr_rings_collected_bonus, 15, view_wport[0]-ring_bonus_sprite_width_align-64-sprite_get_width(score_sprite), ring_bonus_sprite_height_align);
	}
}

// Draw the title in the menu
if(room = rm_menu)
{
	draw_sprite(spr_title, 0, view_wport[0]/2, view_hport[0]/2-160);
}

if(room = rm_instructions)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]/2, view_hport[0]/4+32, "USE YOUR MOUSE TO CONTROL THE CURSOR AND YOUR DELTA FIGHTER");
	draw_text(view_wport[0]/2, view_hport[0]/4+64, "AIM AND CLICK TO SHOOT THE ASTEROIDS");
	draw_text(view_wport[0]/2, view_hport[0]/4+96, "SHOOTING COSTS SHIELD POWER");
	draw_text(view_wport[0]/2, view_hport[0]/4+128, "YOU CAN'T GO BELOW 1 SHIELD WHEN SHOOTING");
	draw_text(view_wport[0]/2, view_hport[0]/4+160, "DIRECT YOUR SHIP THROUGH THE RINGS TO COMPLETE EACH LEVEL!");
}

if(room = rm_credits)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]/2, view_hport[0]/4+32, "MADE BY JEREMY LIAU IN 48 HOURS FOR LUDUM DARE 44");
	draw_text(view_wport[0]/2, view_hport[0]/4+64, "IDE: GAME MAKER STUDIO 2");
	draw_text(view_wport[0]/2, view_hport[0]/4+96, "SFX: BFXR");
	draw_text(view_wport[0]/2, view_hport[0]/4+128, "PARTICLE EFFECTS: PIXEL FX DESIGNER BY CODEMANU");
}

// Tutorial - How to shoot (Wow, handholding these days, amiright?)
if(room = rm_flying && global.level == 0 && global.gameCycles == 0 && global.playerScore == 0)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	if(global.challenge)
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "PRO-TIP: DON'T MISS.");
	}
	else
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "AIM WITH YOUR MOUSE AND LEFT-CLICK TO SHOOT!");
	}
}

// Tutorial - Ludum Dare 44 theme - Shooting costs shield power
if(room = rm_flying && global.level == 0 && global.gameCycles == 0 && global.playerScore > 0 && global.playerScore < 6)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	if(global.zen)
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "SHIELDS DON'T DEPLETE IN THIS MODE!");
	}
	else if(global.challenge)
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "SHOOTING COSTS SHIELD POWER. SHIELDS REGENERATE AFTER EACH LEVEL.");
	}
	else
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "SHOOTING COSTS SHIELD POWER. DESTROY ASTROIDS TO REGENERATE SHIELD.");
	}
}

// Tutorial - Flying through rings
if(room = rm_flying && global.level == 0 && global.gameCycles == 0 && global.playerScore >= 6 && global.ringCount < 2 && !instance_exists(obj_fade))
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]/2, view_hport[0]-32, "FLY YOUR SHIP THROUGH THE GOLD RINGS TO ADVANCE!");
}