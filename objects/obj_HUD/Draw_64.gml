/// @description

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
	draw_text_transformed(view_wport[0]-32, 36, string(global.playerScore), 1.4, 1.4, 0);
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
	draw_text(view_wport[0]-32, view_hport[0]-32, "Game cycles completed (difficulty level): " + string(global.gameCycles));
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
	draw_text(view_wport[0]/2, view_hport[0]/4+32, "Use your mouse to control the cursor and your Delta Fighter.");
	draw_text(view_wport[0]/2, view_hport[0]/4+64, "Aim and click to shoot the asteroids.");
	draw_text(view_wport[0]/2, view_hport[0]/4+96, "Shooting costs shield power.");
	draw_text(view_wport[0]/2, view_hport[0]/4+128, "You can't go below 1 shield while shooting.");
	draw_text(view_wport[0]/2, view_hport[0]/4+160, "Direct your ship through the rings to complete each level!");
}

if(room = rm_credits)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]/2, view_hport[0]/4+32, "Made by Jeremy Liau in 48 hours for Ludum Dare 44");
	draw_text(view_wport[0]/2, view_hport[0]/4+64, "IDE: GameMaker Studio 2");
	draw_text(view_wport[0]/2, view_hport[0]/4+96, "Sound: BFXR (www.bfxr.net)");
	draw_text(view_wport[0]/2, view_hport[0]/4+128, "Particle Effects: Pixel Fx Designer by CodeManu");
}

// Tutorial - How to shoot (Wow, handholding these days, amiright?)
if(room = rm_flying && global.level == 0 && global.gameCycles == 0 && global.playerScore == 0)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	if(global.challenge)
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "Pro-tip: Don't miss.");
	}
	else
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "Aim with your mouse and left-click/SPACEBAR to shoot the asteroids!");
	}
}

// Tutorial - Ludum Dare 44 theme - Shooting costs shield power
if(room = rm_flying && global.level == 0 && global.gameCycles == 0 && global.playerScore > 0 && global.playerScore < 6)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	if(global.zen)
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "Shields don't deplete in this mode!");
	}
	else
	{
		draw_text(view_wport[0]/2, view_hport[0]-32, "Shooting costs shield power. Destroying asteroids regains shield.");
	}
}

// Tutorial - Flying through rings
if(room = rm_flying && global.level == 0 && global.gameCycles == 0 && global.playerScore >= 6 && global.ringCount < 2 && !instance_exists(obj_fade))
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]/2, view_hport[0]-32, "Fly your ship through the gold rings to advance the level!");
}