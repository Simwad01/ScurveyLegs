if(plr_alive == 1)
{
	if(global.timeglobal == 1)
	{
		// Check player gamepad assigment
		var gamepadindex = global.PlayerGamePad[plr_id];
		if ( gamepadindex >= 0 && gamepad_is_connected(gamepadindex)) {
			
			// shooting
			if(gamepad_button_check(gamepadindex, gp_face3)) {
				if(shot_clock == 1)
				{
					// play sound and set pitch
					var bulletsnd = audio_play_sound(snd_cannon_fire, 0, 0);
					audio_sound_pitch(bulletsnd, random_range(4.0,7.0));

					// Spawn 3 bullets
					var newBullet1 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
					newBullet1.direction += image_angle;
					newBullet1.Owner = self.id;
			
					var newBullet2 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
					newBullet2.direction += image_angle+10;
					newBullet2.Owner = self.id;
			
					var newBullet3 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);			
					newBullet3.direction += image_angle-10;
					newBullet3.Owner = self.id;

					// Set bullet cooldown
					shot_clock = 0;
					alarm_set(11, FireSpeed);
				}
			}
			if(gamepad_button_check(gamepadindex, gp_face2)) {
				if(shot_clock == 1)
				{
					// play sound and set pitch
					var bulletsnd = audio_play_sound(snd_cannon_fire, 0, 0);
					audio_sound_pitch(bulletsnd, random_range(4.0,7.0));

					// Spawn 3 bullets
					var newBullet1 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
					newBullet1.direction += image_angle-170;
					newBullet1.Owner = self.id;
			
					var newBullet2 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
					newBullet2.direction += image_angle-190;
					newBullet2.Owner = self.id;
			
					var newBullet3 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);			
					newBullet3.direction += image_angle-180;
					newBullet3.Owner = self.id;

					// Set bullet cooldown
					shot_clock = 0;
					alarm_set(11, FireSpeed);
				}
			}
			
			// turning
			var axis0 = gamepad_axis_value(gamepadindex, gp_axislh);
			var axis1 = gamepad_axis_value(gamepadindex, gp_axislv);
			show_debug_message("Read axis0 as " + string_format(axis0,1,2));
			if(gamepad_button_check(gamepadindex, gp_padr) || (axis0 > 0.1)) {
				image_angle += -1;
				direction += -1;
			} else if(gamepad_button_check(gamepadindex, gp_padl) || (axis0 < -0.1)) {
				image_angle += 1;	
				direction += 1;
			}
			
			// Speed
			if(gamepad_button_check_pressed(gamepadindex, gp_padu) || (axis1 < -0.5)) {
				plr_spd += 1;	
				if(plr_spd > 3) then plr_spd = 3;
				speed = plr_spd;
			} else if(gamepad_button_check_pressed(gamepadindex, gp_padd) || (axis1 > 0.5)) {
				plr_spd -= 1;
				if(plr_spd < 0) then plr_spd = 0;
				speed = plr_spd;
			} 
			
			// other controls
			if(gamepad_button_check_pressed(gamepadindex, gp_face4)) {
				shot_type = 1;
			} else if(gamepad_button_check_pressed(gamepadindex, gp_face1))	{
				shot_type = 0;
			}
		}
	}
}