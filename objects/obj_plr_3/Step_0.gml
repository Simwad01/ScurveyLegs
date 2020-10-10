if(plr_alive == 1)
{
	var gamepadindex = global.PlayerGamePad[plr_id];
	if(global.timeglobal == 1)
	{
		// Check player gamepad assigment
		if ( gamepadindex >= 0 && gamepad_is_connected(gamepadindex)) {
			
			// shooting
			if(gamepad_button_check(gamepadindex, gp_face3)) {
				if(shot_clock == 1)
				{
					// play sound and set pitch
					var bulletsnd = audio_play_sound(snd_cannon_fire, 0, 0);
					audio_sound_pitch(bulletsnd, random_range(4.0,7.0));

					// Spawn 3 bullets
					var newBullet1 = instance_create_layer(x, y, "Instances", obj_cannonball);
					newBullet1.direction += image_angle;
					newBullet1.Owner = self.id;
			
					var newBullet2 = instance_create_layer(x, y, "Instances", obj_cannonball);
					newBullet2.direction += image_angle+10;
					newBullet2.Owner = self.id;
			
					var newBullet3 = instance_create_layer(x, y, "Instances", obj_cannonball);			
					newBullet3.direction += image_angle-10;
					newBullet3.Owner = self.id;

					// Set bullet cooldown
					shot_clock = 0;
					alarm_set(plr_alarm, FireSpeed);
				}
			}
			if(gamepad_button_check(gamepadindex, gp_face2)) {
				if(shot_clock == 1)
				{
					// play sound and set pitch
					var bulletsnd = audio_play_sound(snd_cannon_fire, 0, 0);
					audio_sound_pitch(bulletsnd, random_range(4.0,7.0));

					// Spawn 3 bullets
					var newBullet1 = instance_create_layer(x, y, "Instances", obj_cannonball);
					newBullet1.direction += image_angle-170;
					newBullet1.Owner = self.id;
			
					var newBullet2 = instance_create_layer(x, y, "Instances", obj_cannonball);
					newBullet2.direction += image_angle-190;
					newBullet2.Owner = self.id;
			
					var newBullet3 = instance_create_layer(x, y, "Instances", obj_cannonball);			
					newBullet3.direction += image_angle-180;
					newBullet3.Owner = self.id;

					// Set bullet cooldown
					shot_clock = 0;
					alarm_set(plr_alarm, FireSpeed);
				}
			}
			
			// turning
			var axis0 = gamepad_axis_value(gamepadindex, gp_axislh);
			var axis1 = gamepad_axis_value(gamepadindex, gp_axislv);
			//show_debug_message("Read axis0 as " + string_format(axis0,1,2));
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
				speed = plr_spd/2;
			} else if(gamepad_button_check_pressed(gamepadindex, gp_padd) || (axis1 > 0.5)) {
				plr_spd -= 1;
				if(plr_spd < 0) then plr_spd = 0;
				speed = plr_spd/2;
			} 
			
			// other controls
			if(gamepad_button_check_pressed(gamepadindex, gp_face4)) {
				shot_type = 1;
			} else if(gamepad_button_check_pressed(gamepadindex, gp_face1))	{
				shot_type = 0;
			}
		} else {
			// No gamepad, so use AI control
			switch (ai_state) {
				case 1:
					// Seeking
					
					// Check right
					if (place_meeting(x + lengthdir_x(70, direction+15), y + lengthdir_y(70, direction+15), obj_Collision)) {
						// Short Turn left
						ai_state = 2;
						ai_timer = 10 + irandom(30);
						image_angle -= -1;
						direction -= -1;
						plr_spd = 1;
						speed = plr_spd/2;
					}
					//check left
					else if (place_meeting(x + lengthdir_x(70, direction-15), y + lengthdir_y(70, direction-15), obj_Collision)) {
						// Short Turn Right
						ai_state = 3;
						ai_timer = 10 + irandom(30);
						image_angle += -1;
						direction += -1;
						plr_spd = 1;
						speed = plr_spd/2;
					}
					// check straight ahead
					else if (place_meeting(x + lengthdir_x(50, direction), y + lengthdir_y(50, direction), obj_Collision)) {
						// Which way to turn??
						if (random(2)>1) {
							// Long Turn left
							ai_state = 2;
							ai_timer = 30 + irandom(30);
							image_angle -= -1;
							direction -= -1;
						} else {
							// Long Turn Right
							ai_state = 3;
							ai_timer = 30 + irandom(30);
							image_angle += -1;
							direction += -1;
						}
					} else if (plr_spd < 3 and ai_timer == 0) {
						// speed up if not turning
						plr_spd += 1;
						speed = plr_spd/2;
						ai_timer = 30;
					}
					break;
				case 2:
					// Turning Left
					image_angle -= 1;
					direction -= 1;
					//abort turn if no longer going to collide
					//if (!place_meeting(x + lengthdir_x(70, direction+20), y + lengthdir_y(70, direction+10), obj_Collision)) ai_state = 1 ;
					break;
				case 3:
					// Turning Right
					image_angle += 1;
					direction += 1;
					//if (!place_meeting(x + lengthdir_x(70, direction-20), y + lengthdir_y(70, direction-10), obj_Collision)) ai_state = 1 ;
					break;
				case 0:
					// Idle
					ai_state = 1;
					plr_spd = 1;
					speed = plr_spd/2;
					break;
			}
			// Regardless of state, check if we can shoot something
			if(shot_clock == 1)
			{
				var check_deflection = 20;
				var check_distance = 300;
				
				for (var i = 1; i <= 4; i += 1) {  
					// Skip self
					if (i == plr_id ) continue;
					
					// Skip if too far away
					if (point_distance(x,y,playerref[i].x,playerref[i].y) > check_distance) continue;
					var otherplr_angle = point_direction(x,y,playerref[i].x,playerref[i].y) - direction;
					show_debug_message("Player " + string(i) + " relative angle is " + string(otherplr_angle) + " my angle is " + string(direction));
					var fire_angle = -90;
					if (otherplr_angle > fire_angle - check_deflection and otherplr_angle < fire_angle + check_deflection) {
						// play sound and set pitch
						var bulletsnd = audio_play_sound(snd_cannon_fire, 0, 0);
						audio_sound_pitch(bulletsnd, random_range(4.0,7.0));

						// Spawn 3 bullets
						var newBullet1 = instance_create_layer(x, y, "Instances", obj_cannonball);
						newBullet1.direction += direction+fire_angle-10;
						newBullet1.Owner = self.id;
			
						var newBullet2 = instance_create_layer(x, y, "Instances", obj_cannonball);
						newBullet2.direction += direction+fire_angle;
						newBullet2.Owner = self.id;
			
						var newBullet3 = instance_create_layer(x, y, "Instances", obj_cannonball);			
						newBullet3.direction += direction+fire_angle+10;
						newBullet3.Owner = self.id;

						// Set bullet cooldown
						shot_clock = 0;
						alarm_set(plr_alarm, FireSpeed);
						
						// Change angle for next check
						fire_angle = 90;
					} else if (otherplr_angle > fire_angle - check_deflection and otherplr_angle < fire_angle + check_deflection) {
						// play sound and set pitch
						var bulletsnd = audio_play_sound(snd_cannon_fire, 0, 0);
						audio_sound_pitch(bulletsnd, random_range(4.0,7.0));

						// Spawn 3 bullets
						var newBullet1 = instance_create_layer(x, y, "Instances", obj_cannonball);
						newBullet1.direction += direction+fire_angle-10;
						newBullet1.Owner = self.id;
			
						var newBullet2 = instance_create_layer(x, y, "Instances", obj_cannonball);
						newBullet2.direction += direction+fire_angle;
						newBullet2.Owner = self.id;
			
						var newBullet3 = instance_create_layer(x, y, "Instances", obj_cannonball);			
						newBullet3.direction += direction+fire_angle+10;
						newBullet3.Owner = self.id;

						// Set bullet cooldown
						shot_clock = 0;
						alarm_set(plr_alarm, FireSpeed);
					}
				}	
			}
		

			ai_timer -= 1;
			if (ai_timer < 1) {
				ai_timer = 0;
				ai_state = 1;
			}
		}
	} else {
		// Game in stopped state
		if ( gamepadindex >= 0 && gamepad_is_connected(gamepadindex)) {
			if (gamepad_button_check(gamepadindex,gp_face1)) {
				if (GameTracker.game_over == 1) {
					room_goto(Start);
				} else {
					global.timeglobal = 1 ;
				}
			}
		}
		plr_spd = 0;
		speed = plr_spd;

	}
}