// Don't hit own bullet!
if (other.Owner != self.id ) {
	// Kill the bullet
	with other instance_destroy();

	// If the player is alive, shit happens, otherwise not.
	if(plr_alive == 1)
	{
		//Korn reference????
		instance_create_layer(x + 0, y + 0, "Instances", obj_body);

		// Fireworks
		instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_1);

		//Play hit sound
		var hitsnd = audio_play_sound(snd_hit, 0, 0);
		audio_sound_pitch(hitsnd, random_range(1.0,2.0));

		// Deal damage
		plr_health -= 1;

		// Update state based on damage
		if(plr_health == 2)
		{
			sprite_index = spr_plr_green_dmg_1;
			image_index = 0;
		}

		if(plr_health == 1)
		{
			sprite_index = spr_plr_green_dmg_2;
			image_index = 0;
		}

		if(plr_health < 1)
		{
			// Dead!
			sprite_index = spr_plr_green_dead;
			image_index = 0;

			plr_alive = 0;
			GameTracker.Players -= 1;
		}
	}
}