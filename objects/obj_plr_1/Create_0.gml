gamepad_set_axis_deadzone(0, 1);

alarm_set(11, 60);

axis0 = 0;

p1_shot_clock = 0;

shot_type = 0;

plr_1_alive = 1;

__dnd_health = 3;

image_angle = 90;

spd_plr1 = 1;

speed = spd_plr1;

bbb = 1;

if(bbb == 1)
{
	image_angle += -45;

	direction += -45;

	bbb = 0;
}