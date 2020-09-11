if(plr_1_alive == 1)
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

temp_health = variable_instance_exists(id, "__dnd_health") ? __dnd_health : 0;

__dnd_health = temp_health-1;

temp_health = variable_instance_exists(id, "__dnd_health") ? __dnd_health : 0;

if(temp_health == 2)
{
	sprite_index = spr_plr_blue_dmg_1;
	image_index = 0;
}

if(temp_health == 1)
{
	sprite_index = spr_plr_blue_dmg_2;
	image_index = 0;
}

if(temp_health == 0)
{
	sprite_index = spr_plr_blue_dead;
	image_index = 0;

	plr_1_alive = 0;

	with(object14) {
	Players = Players-1;
	
	}

	spd_plr1 = 0;

	speed = spd_plr1;
}