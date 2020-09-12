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
			show_debug_message("Gamepad " + string(i) + " is " + gamepad_get_description(i));
			show_debug_message("Gamepad " + string(i) + " has " + string(gamepad_axis_count(i)) + "axes");
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
			show_debug_message("Gamepad " + string(i) + " is " + gamepad_get_description(i));
			show_debug_message("Gamepad " + string(i) + " has " + string(gamepad_axis_count(i)) + "axes");
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

// Allow Player 1 to control gmae if they have a controller assigned
if (global.PlayerGamePad[1] != -1)
{
	//Change maps with left and right
	//show_debug_message("Found gamepad number " + string(i));
	if (gamepad_button_check_pressed(global.PlayerGamePad[1],gp_padr)) {
		global.mapselect += 1;
		if(global.mapselect >= global.mapcount) {
				global.mapselect -= global.mapcount;
		}
		show_debug_message("Map select changed to " + string(global.mapselect));
	} else if (gamepad_button_check_pressed(global.PlayerGamePad[1],gp_padl)) {
		global.mapselect -= 1;
		if(global.mapselect < 0) {
				global.mapselect += global.mapcount;
		}
		show_debug_message("Map select changed to " + string(global.mapselect));
	// Start/Options button starts level
	} else if (gamepad_button_check_pressed(global.PlayerGamePad[1],gp_start)) {
		global.timeglobal = 0;
		var roomindex = asset_get_index("room" + string(global.mapselect));
		show_debug_message("About to enter room" + string(i) + " (index " + string(roomindex) + ")");
		if (room_exists(roomindex)) {
			room_goto(roomindex);	
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
	var roomindex = asset_get_index("room" + string(global.mapselect));
	show_debug_message("About to enter room" + string(i) + " (index " + string(roomindex) + ")");
	if (room_exists(roomindex)) {
		room_goto(roomindex);	
	}
}
	