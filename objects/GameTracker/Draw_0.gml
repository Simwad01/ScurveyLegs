if (game_over == 1) {
	
	// Draw some stuff
	draw_set_font(fnt_main);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_set_colour(c_white);
	//draw_text((room_width/2), (room_height/2), "Game Over!");
	
	draw_set_alpha(0.5);
	draw_set_colour(c_black); 
	draw_text((room_width/2)+5, (room_height/2)+5, "Game Over!");
	draw_set_alpha(1); 
	draw_set_colour(c_white); 
	draw_text((room_width/2), (room_height/2), "Game Over!");

	// reset to stop other text getting mis-aligned
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

}