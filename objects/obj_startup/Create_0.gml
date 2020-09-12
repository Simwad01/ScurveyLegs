// Setup Controllers
global.gpcount = gamepad_get_device_count();
show_debug_message("System has " + string(global.gpcount) + " gamepads");
for (var i = 0; i < global.gpcount; i++;) {
	global.gpMapped[i] = false;
}

// Unset player controller assignments
for (var i = 1; i <= 4; i++;) {
	global.PlayerGamePad[i] = -1;
}

// Define Levels
global.mapcount = 6;

// Play startup music
audio_play_sound(snd_music, 0, 1);