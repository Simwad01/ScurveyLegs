//gamepad_set_axis_deadzone(0, 1);

// Start with firing in cooldown
alarm_set(11, 60);
shot_clock = 0;
shot_type = 0;

//Basic player settings
plr_id = 1;
plr_alive = 1;
plr_health = 3;
plr_spd = 1;

image_angle = 90;
speed = plr_spd;

// NFI what this is all about??
bbb = 1;
if(bbb == 1)
{
	image_angle += -45;
	direction += -45;
	bbb = 0;
}