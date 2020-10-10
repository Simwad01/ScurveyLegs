// Start with firing in cooldown
plr_alarm = 8;
alarm_set(plr_alarm, 60);
shot_clock = 0;
shot_type = 0;

//Basic player settings
plr_id = 4;
plr_alive = 1;
plr_health = 3;
plr_spd = 0;
ai_state = 0;
ai_timer = 30;

// Use object score or global??
global.playerscore[plr_id] = 0;
plr_score = 0;

image_angle = 90;
speed = plr_spd;

bbb = 1;
if(bbb == 1)
{
	image_angle += 145;
	direction += 145;
	bbb = 0;
}

playerref[1] = obj_plr_1.id;
playerref[2] = obj_plr_2.id;
playerref[3] = obj_plr_3.id;
playerref[4] = obj_plr_4.id;
