if(plr_3_alive == 1)
{
	audio_sound_pitch(snd_cannon_fire, random_range(4.0,7.0));

	audio_play_sound(snd_cannon_fire, 0, 0);

	image_angle += 180;

	direction += 180;
}

plr_3_alive = 1;

spd_plr3 = 1;

speed = spd_plr3;