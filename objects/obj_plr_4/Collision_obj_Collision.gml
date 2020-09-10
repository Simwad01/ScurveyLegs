if(plr_4_alive == 1)
{
	// Play cannon Sound for crash
	var splay_crash = audio_play_sound(snd_cannon_fire, 0, 0);
	// Set cannon pitch to random
	audio_sound_pitch(splay_crash, random_range(4.0,7.0));
	// Set cannon volume
	audio_sound_gain(splay_crash,0.5,0)

	image_angle += 180;

	direction += 180;
}

plr_4_alive = 1;

spd_plr4 = 1;

speed = spd_plr4;