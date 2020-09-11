// Check Controller and assign Players
for (var i = 0; i < global.gpcount; i++;)
{
    if (gamepad_button_check(i,gp_face1))
    {
		//show_debug_message("Found gamepad number " + string(i));
		if (global.PlayerGamePad[NumPlayers] <0 && global.gpMapped[i] = false) {
			// Button pressed on unassigned controller, current player does *not* have assignment (ie first player)
			global.PlayerGamePad[NumPlayers] = i;
			global.gpMapped[i] = true;
			show_debug_message("Gamepad " + string(i) + " mapped to player " + string(NumPlayers));
			switch (NumPlayers) {
				case 1:
					with(obj_plr_1_icon) {
						visible = true;
					}
					break;
				case 2:
					with(obj_plr_2_icon) {
						visible = true;
					}
					break;
				case 3:
					with(obj_plr_3_icon) {
						visible = true;
					}
					break;
				case 4:
					with(obj_plr_4_icon) {
						visible = true;
					}
					break;
			}
			// Play bleep for player join
			audio_play_sound(cute_bleep, 0, 0);
		} else if (global.gpMapped[i] = false && NumPlayers < 4) {
			// Button pressed on unassigned controller, current player *does* have assignment
			// So add new player
			NumPlayers += 1;
			global.PlayerGamePad[NumPlayers] = i;
			global.gpMapped[i] = true;
			show_debug_message("Gamepad " + string(i) + " mapped to player " + string(NumPlayers));
			switch (NumPlayers) {
				case 1:
					with(obj_plr_1_icon) {
						visible = true;
					}
					break;
				case 2:
					with(obj_plr_2_icon) {
						visible = true;
					}
					break;
				case 3:
					with(obj_plr_3_icon) {
						visible = true;
					}
					break;
				case 4:
					with(obj_plr_4_icon) {
						visible = true;
					}
					break;
			}
			// Play bleep for player join
			audio_play_sound(cute_bleep, 0, 0);
		} 
    }
}

//Maybe Keyboard input too
if (keyboard_check(vk_escape)) {
	// Escape quits
	game_end();
} else if (keyboard_check(vk_enter)) {
	//Enter starts game
	global.timeglobal = 0;
	switch (global.mapselect)
	{
		case 1:
			room_goto(room0);
			break;
		case 2:
			room_goto(room1);
			break;
		case 3:
			room_goto(room2);
			break;
		case 4:
			room_goto(room3);
			break;
		case 5:
			room_goto(room4);
			break;
		case 6:	
			room_goto(room5);
			break;
	}
}
	