if(plr_1_alive == 1)
{
	if(global.timeglobal == 1)
	{
		// Check player gamepad assigment
		var gamepadindex = global.PlayerGamePad[1]
		if ( gamepadindex >= 0 && gamepad_is_connected(gamepadindex)) {
			
			axis0 = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;
	
			if(gamepad_button_check_pressed(gamepadindex, gp_face3)) {
				if(p1_shot_clock == 1)
				{
					// play sound and set pitch
					var bulletsnd = audio_play_sound(snd_cannon_fire, 0, 0);
					audio_sound_pitch(bulletsnd, random_range(4.0,7.0));

					// Spawn 3 bullets
					var newBullet1 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
					newBullet1.direction += image_angle;
			
					var newBullet2 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
					newBullet2.direction += image_angle+10;
			
					var newBullet3 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);			
					newBullet3.direction += image_angle-10;

					// Set bullet cooldown
					p1_shot_clock = 0;
					alarm_set(11, 60);
				}
			} else if(gamepad_button_check_pressed(gamepadindex, gp_face2))	{
				if(p1_shot_clock == 1)
				{
					// play sound and set pitch
					var bulletsnd = audio_play_sound(snd_cannon_fire, 0, 0);
					audio_sound_pitch(bulletsnd, random_range(4.0,7.0));

					// Spawn 3 bullets
					var newBullet1 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
					newBullet1.direction += image_angle-170;
			
					var newBullet2 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
					newBullet2.direction += image_angle-190;
			
					var newBullet3 = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);			
					newBullet3.direction += image_angle-180;

					// Set bullet cooldown
					p1_shot_clock = 0;
					alarm_set(11, 60);
				}
			} else if(gamepad_button_check(gamepadindex, gp_padr) || gamepad_button_check_released(gamepadindex, gp_padr)) {
				image_angle += -1;
				direction += -1;
			} else if(gamepad_button_check(gamepadindex, gp_padl) || gamepad_button_check_released(gamepadindex, gp_padl)) {
				image_angle += 1;	
				direction += 1;
			} else if(gamepad_button_check_pressed(gamepadindex, gp_padu)) {
				spd_plr1 = spd_plr1+1;	
				if(spd_plr1 > 3) then spd_plr1 = 3;
				speed = spd_plr1;
			} else if(gamepad_button_check_pressed(gamepadindex, gp_padd)) {
				spd_plr1 = spd_plr1-1;
				if(spd_plr1 < 0) then spd_plr1 = 0;
				speed = spd_plr1;
			} else if(gamepad_button_check_pressed(gamepadindex, gp_face4))	{
				shot_type = 1;
			} else if(gamepad_button_check_pressed(gamepadindex, gp_face1))	{
				shot_type = 0;
			}
		}
	}
}