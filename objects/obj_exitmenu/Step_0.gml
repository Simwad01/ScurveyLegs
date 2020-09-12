var gamepadindex = global.PlayerGamePad[1];
if(gamepadindex >= 0 && gamepad_is_connected(gamepadindex) && gamepad_button_check_pressed(gamepadindex, gp_start))
{
	room_goto(Start);
}