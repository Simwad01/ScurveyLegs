instance_create_layer(x + 0, y + 0, "Instances", obj_body);

audio_sound_pitch(snd_hit, random_range(1.0,2.0));

audio_play_sound(snd_hit, 0, 0);

temp_health = variable_instance_exists(id, "__dnd_health") ? __dnd_health : 0;

__dnd_health = temp_health-1;

temp_health = variable_instance_exists(id, "__dnd_health") ? __dnd_health : 0;

if(temp_health == 2)
{
	sprite_index = spr_plr_yellow_dmg_1;
	image_index = 0;
}

if(temp_health == 1)
{
	sprite_index = spr_plr_yellow_dmg_2;
	image_index = 0;
}

if(temp_health == 0)
{
	sprite_index = spr_plr_yellow_dead;
	image_index = 0;

	plr_4_alive = 0;

	with(object14) {
	Players = Players-1;
	
	}
}