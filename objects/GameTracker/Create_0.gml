window_set_fullscreen(true);

game_over = 0;

Players = 4;

for (var i = 1; i <= Players; i++;) {
	global.playerscore[i] = 0;
}



alarm_set(0, 30);