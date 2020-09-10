if(Players == 1)
{
	game_over = 1;

	if(game_over == 1)
	{
	
	}

	with(obj_plr_2) var l51D0B754_0 = plr_2_alive == 1;
	if(l51D0B754_0)
	{
		with(plr_2_score) {
		plr2score = plr2score+1;
		
		}
	
		global.p2globalscore = global.p2globalscore+1;
	
		game_over = 0;
	
		Players = 4;
	}

	with(obj_plr_1) var l619A4517_0 = plr_1_alive == 1;
	if(l619A4517_0)
	{
		with(plr_1_score) {
		plr1score = plr1score+1;
		
		}
	
		global.p1globalscore = global.p1globalscore+1;
	
		game_over = 0;
	
		Players = 4;
	}

	with(obj_plr_3) var l4C417673_0 = plr_3_alive == 1;
	if(l4C417673_0)
	{
		with(plr_3_score) {
		plr3score = plr3score+1;
		
		}
	
		global.p3globalscore = global.p3globalscore+1;
	
		game_over = 0;
	
		Players = 4;
	}

	with(obj_plr_4) var l27952449_0 = plr_4_alive == 1;
	if(l27952449_0)
	{
		with(plr_4_score) {
		plr4score = plr4score+1;
		
		}
	
		global.p4globalscore = global.p4globalscore+1;
	
		game_over = 0;
	
		Players = 4;
	}
}