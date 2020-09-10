var gp_num = gamepad_get_device_count();
show_debug_message("Checking " + string(gp_num) + " gamepads");
for (var i = 0; i < gp_num; i++;)
{
    if gamepad_is_connected(i)
    {
		global.gp[i] = true;
		var _gpMap = gamepad_get_mapping(i);
		show_debug_message("Found Gamepad Number " + string(i));
		show_debug_message("Gamepad Mapping = " + _gpMap);
    }
    else
    {
		global.gp[i] = false;
    }
}
show_debug_message("Completed Gamepad Check");


audio_play_sound(snd_music, 0, 1);