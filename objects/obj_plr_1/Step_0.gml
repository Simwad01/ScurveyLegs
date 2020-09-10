if(plr_1_alive == 1)
{
	if(global.timeglobal == 1)
	{
		axis0 = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;
	
		var l68E87585_0 = 0;
		var l68E87585_1 = gp_face3;
		if(gamepad_is_connected(l68E87585_0) && gamepad_button_check_pressed(l68E87585_0, l68E87585_1))
		{
			if(p1_shot_clock == 1)
			{
				var newBullet = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
			
				audio_sound_pitch(snd_cannon_fire, random_range(4.0,7.0));
			
				audio_play_sound(snd_cannon_fire, 0, 0);
			
				newBullet.direction += image_angle+0;
			
				var newBullet = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
			
				newBullet.direction += image_angle+10;
			
				var newBullet = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
			
				newBullet.direction += image_angle-10;
			
				p1_shot_clock = 0;
			
				alarm_set(11, 60);
			}
		}
	
		var l09418EDF_0 = 0;
		var l09418EDF_1 = gp_face2;
		if(gamepad_is_connected(l09418EDF_0) && gamepad_button_check_pressed(l09418EDF_0, l09418EDF_1))
		{
			if(p1_shot_clock == 1)
			{
				var newBullet = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
			
				audio_sound_pitch(snd_cannon_fire, random_range(4.0,7.0));
			
				audio_play_sound(snd_cannon_fire, 0, 0);
			
				newBullet.direction += image_angle-170;
			
				var newBullet = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
			
				newBullet.direction += image_angle-190;
			
				var newBullet = instance_create_layer(obj_plr_1.x, obj_plr_1.y, "Instances", obj_cannonball);
			
				newBullet.direction += image_angle-180;
			
				p1_shot_clock = 0;
			
				alarm_set(11, 60);
			}
		}
	}

	var l6AD39DC2_0 = 0;
	var l6AD39DC2_1 = gp_padr;
	if(gamepad_is_connected(l6AD39DC2_0) && (gamepad_button_check(l6AD39DC2_0, l6AD39DC2_1) || gamepad_button_check_released(l6AD39DC2_0, l6AD39DC2_1)))
	{
		image_angle += -1;
	
		direction += -1;
	}

	var l1FA84700_0 = 0;
	var l1FA84700_1 = gp_padl;
	if(gamepad_is_connected(l1FA84700_0) && (gamepad_button_check(l1FA84700_0, l1FA84700_1) || gamepad_button_check_released(l1FA84700_0, l1FA84700_1)))
	{
		image_angle += 1;
	
		direction += 1;
	}

	var l42829E1C_0 = 0;
	var l42829E1C_1 = gp_padu;
	if(gamepad_is_connected(l42829E1C_0) && gamepad_button_check_pressed(l42829E1C_0, l42829E1C_1))
	{
		spd_plr1 = spd_plr1+1;
	
		speed = spd_plr1;
	}

	if(spd_plr1 > 3)
	{
		spd_plr1 = 3;
	
		speed = spd_plr1;
	}

	if(spd_plr1 < 0)
	{
		spd_plr1 = 0;
	
		speed = spd_plr1;
	}

	var l60810A14_0 = 0;
	var l60810A14_1 = gp_padd;
	if(gamepad_is_connected(l60810A14_0) && gamepad_button_check_pressed(l60810A14_0, l60810A14_1))
	{
		spd_plr1 = spd_plr1-1;
	
		speed = spd_plr1;
	}

	var l63F160D4_0 = 0;
	var l63F160D4_1 = gp_face4;
	if(gamepad_is_connected(l63F160D4_0) && gamepad_button_check_pressed(l63F160D4_0, l63F160D4_1))
	{
		shot_type = 1;
	}

	var l6765C24B_0 = 0;
	var l6765C24B_1 = gp_face1;
	if(gamepad_is_connected(l6765C24B_0) && gamepad_button_check_pressed(l6765C24B_0, l6765C24B_1))
	{
		shot_type = 0;
	}
}