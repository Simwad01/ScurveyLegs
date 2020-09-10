if(plr_2_alive == 1)
{
	var l5329171A_0 = 1;
	var l5329171A_1 = gp_padl;
	if(gamepad_is_connected(l5329171A_0) && (gamepad_button_check(l5329171A_0, l5329171A_1) || gamepad_button_check_released(l5329171A_0, l5329171A_1)))
	{
		image_angle += 1;
	
		direction += 1;
	}

	var l1FA84700_0 = 1;
	var l1FA84700_1 = gp_padr;
	if(gamepad_is_connected(l1FA84700_0) && (gamepad_button_check(l1FA84700_0, l1FA84700_1) || gamepad_button_check_released(l1FA84700_0, l1FA84700_1)))
	{
		image_angle += -1;
	
		direction += -1;
	}

	var l42829E1C_0 = 1;
	var l42829E1C_1 = gp_padu;
	if(gamepad_is_connected(l42829E1C_0) && gamepad_button_check_pressed(l42829E1C_0, l42829E1C_1))
	{
		spd_plr2 = spd_plr2+1;
	
		speed = spd_plr2;
	}

	if(spd_plr2 > 3)
	{
		spd_plr2 = 3;
	
		speed = spd_plr2;
	}

	if(spd_plr2 < 0)
	{
		spd_plr2 = 0;
	
		speed = spd_plr2;
	}

	var l60810A14_0 = 1;
	var l60810A14_1 = gp_padd;
	if(gamepad_is_connected(l60810A14_0) && gamepad_button_check_pressed(l60810A14_0, l60810A14_1))
	{
		spd_plr2 = spd_plr2-1;
	
		speed = spd_plr2;
	}

	var l68E87585_0 = 1;
	var l68E87585_1 = gp_face3;
	if(gamepad_is_connected(l68E87585_0) && gamepad_button_check_pressed(l68E87585_0, l68E87585_1))
	{
		var newBullet = instance_create_layer(obj_plr_2.x, obj_plr_2.y, "Instances", obj_cannonball2);
	
		audio_sound_pitch(snd_cannon_fire, random_range(4.0,7.0));
	
		audio_play_sound(snd_cannon_fire, 0, 0);
	
		newBullet.direction += image_angle+0;
	
		var newBullet = instance_create_layer(obj_plr_2.x, obj_plr_2.y, "Instances", obj_cannonball2);
	
		newBullet.direction += image_angle+10;
	
		var newBullet = instance_create_layer(obj_plr_2.x, obj_plr_2.y, "Instances", obj_cannonball2);
	
		newBullet.direction += image_angle-10;
	}

	var l09418EDF_0 = 1;
	var l09418EDF_1 = gp_face2;
	if(gamepad_is_connected(l09418EDF_0) && gamepad_button_check_pressed(l09418EDF_0, l09418EDF_1))
	{
		var newBullet = instance_create_layer(obj_plr_2.x, obj_plr_2.y, "Instances", obj_cannonball2);
	
		audio_sound_pitch(snd_cannon_fire, random_range(4.0,7.0));
	
		audio_play_sound(snd_cannon_fire, 0, 0);
	
		newBullet.direction += image_angle-180;
	
		var newBullet = instance_create_layer(obj_plr_2.x, obj_plr_2.y, "Instances", obj_cannonball2);
	
		newBullet.direction += image_angle-190;
	
		var newBullet = instance_create_layer(obj_plr_2.x, obj_plr_2.y, "Instances", obj_cannonball2);
	
		newBullet.direction += image_angle-170;
	}
}

if(plr_2_alive == 0)
{
	speed = 0;
}

var l5CEBA6AB_0 = 1;
var l5CEBA6AB_1 = gp_face4;
if(gamepad_is_connected(l5CEBA6AB_0) && gamepad_button_check_pressed(l5CEBA6AB_0, l5CEBA6AB_1))
{
	shot_type_2 = 1;
}

var l514CEC25_0 = 1;
var l514CEC25_1 = gp_face1;
if(gamepad_is_connected(l514CEC25_0) && gamepad_button_check_pressed(l514CEC25_0, l514CEC25_1))
{
	shot_type_2 = 0;
}