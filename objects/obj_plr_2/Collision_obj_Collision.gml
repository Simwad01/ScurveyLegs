if(plr_alive == 1)
{
	// Play cannon Sound for crash
	var splay_crash = audio_play_sound(snd_cannon_fire, 0, 0);
	// Set cannon pitch to random
	audio_sound_pitch(splay_crash, random_range(4.0,7.0));
	// Set cannon volume
	audio_sound_gain(splay_crash,0.5,0)

	// turn the ship around
	image_angle += 180;
	direction += 180;
	
	// bounce the ship back
	x = xprevious;
	y = yprevious;
}


plr_health -= 1;

if(plr_health == 2)
{
	sprite_index = spr_plr_blue_dmg_1;
	image_index = 0;
}

if(plr_health == 1)
{
	sprite_index = spr_plr_blue_dmg_2;
	image_index = 0;
}

if(plr_health == 0)
{
	sprite_index = spr_plr_blue_dead;
	image_index = 0;

	plr_alive = 0;
	GameTracker.Players -= 1;

	plr_spd = 0;
	speed = plr_spd;
}