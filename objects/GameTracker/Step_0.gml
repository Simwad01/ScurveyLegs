if(Players < 2 and global.timeglobal == 1)
{
	// Game Over?
	//room_goto(Start);
	
	// This should stop ships
	global.timeglobal = 0;
	game_over = 1;
	
}