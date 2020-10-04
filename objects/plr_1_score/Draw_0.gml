
draw_set_font(fnt_score);
draw_set_colour($FFFFFFFF & $ffffff);
draw_text(810, 1030, string("") + string(playerref.plr_score));
//show_debug_message(string("Player 1 score is ") + string(playerref.plr_score))