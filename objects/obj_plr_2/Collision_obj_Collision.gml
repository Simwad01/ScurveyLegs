if(plr_2_alive == 1)
{
	audio_sound_pitch(snd_cannon_fire, random_range(4.0,7.0));

	audio_play_sound(snd_cannon_fire, 0, 0);

	image_angle += 180;

	direction += 180;
}

plr_2_alive = 1;

temp_health = variable_instance_exists(id, "__dnd_health") ? __dnd_health : 0;

__dnd_health = temp_health-1;

temp_health = variable_instance_exists(id, "__dnd_health") ? __dnd_health : 0;

if(temp_health == 2)
{
	sprite_index = spr_plr_green_dmg_1;
	image_index = 0;
}

if(temp_health == 1)
{
	sprite_index = spr_plr_green_dmg_2;
	image_index = 0;
}

if(temp_health == 0)
{
	sprite_index = spr_plr_green_dead;
	image_index = 0;

	plr_2_alive = 0;

	with(object14) {
	Players = Players-1;
	
	}

	spd_plr2 = 0;

	speed = spd_plr2;
}