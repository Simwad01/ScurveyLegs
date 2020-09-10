var l600683FC_0 = 0;
var l600683FC_1 = gp_start;
if(gamepad_is_connected(l600683FC_0) && gamepad_button_check_pressed(l600683FC_0, l600683FC_1))
{
	game_end();
}

var l256CEB6C_0 = 0;
var l256CEB6C_1 = gp_padr;
if(gamepad_is_connected(l256CEB6C_0) && gamepad_button_check_pressed(l256CEB6C_0, l256CEB6C_1))
{
	with(object24) {
	global.mapselect = global.mapselect+1;
	
	}

	if(global.mapselect > 6)
	{
		with(object24) {
		global.mapselect = 1;
		
		}
	}
}

var l4B1FF949_0 = 0;
var l4B1FF949_1 = gp_face1;
if(gamepad_is_connected(l4B1FF949_0) && gamepad_button_check_pressed(l4B1FF949_0, l4B1FF949_1))
{
	if(global.mapselect == 1)
	{
		global.timeglobal = 0;
	
		room_goto(room0);
	}

	if(global.mapselect == 2)
	{
		global.timeglobal = 0;
	
		room_goto(room1);
	}

	if(global.mapselect == 4)
	{
		global.timeglobal = 0;
	
		room_goto(room3);
	}

	if(global.mapselect == 3)
	{
		global.timeglobal = 0;
	
		room_goto(room2);
	}

	if(global.mapselect == 5)
	{
		global.timeglobal = 0;
	
		room_goto(room4);
	}

	if(global.mapselect == 6)
	{
		global.timeglobal = 0;
	
		room_goto(room5);
	}
}