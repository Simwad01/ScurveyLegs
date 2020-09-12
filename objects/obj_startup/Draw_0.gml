if(global.mapselect == 0)
{
	draw_set_font(fnt_map);

	draw_set_colour($FF35FF23 & $ffffff);
	var l4C99639E_0=($FF35FF23 >> 24);
	draw_set_alpha(l4C99639E_0 / $ff);

	draw_text(600, 600, string("  Rum Rumbles") + "");
}

if(global.mapselect == 1)
{
	draw_set_font(fnt_map);

	draw_set_colour($FF35FF23 & $ffffff);
	var l4C11C115_0=($FF35FF23 >> 24);
	draw_set_alpha(l4C11C115_0 / $ff);

	draw_text(600, 600, string("  Deck Swabber") + "");
}

if(global.mapselect == 2)
{
	draw_set_font(fnt_map);

	draw_set_colour($FF0FB7FF & $ffffff);
	var l27346A7B_0=($FF0FB7FF >> 24);
	draw_set_alpha(l27346A7B_0 / $ff);

	draw_text(600, 600, string("Poop Deck Posse") + "");
}

if(global.mapselect == 3)
{
	draw_set_font(fnt_map);

	draw_set_colour($FF0FB7FF & $ffffff);
	var l51BCBEBE_0=($FF0FB7FF >> 24);
	draw_set_alpha(l51BCBEBE_0 / $ff);

	draw_text(600, 600, string("Cannon Stuffer") + "");
}

if(global.mapselect == 4)
{
	draw_set_font(fnt_map);

	draw_set_colour($FF2626FF & $ffffff);
	var l49A6F23D_0=($FF2626FF >> 24);
	draw_set_alpha(l49A6F23D_0 / $ff);

	draw_text(600, 600, string("Is that a peg leg?") + "");
}

if(global.mapselect == 5)
{
	draw_set_font(fnt_map);

	draw_set_colour($FF2626FF & $ffffff);
	var l175261C1_0=($FF2626FF >> 24);
	draw_set_alpha(l175261C1_0 / $ff);

	draw_text(600, 600, string("Walk the plank") + "");
}

draw_set_font(fnt_main);

variable = draw_get_halign();

draw_set_colour($FF6DFFF2 & $ffffff);

draw_text(550, 100, string("Scurvey") + "");

draw_text(750, 300, string("Legs") + "");