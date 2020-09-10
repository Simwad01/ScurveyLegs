with(obj_plr_4) var l4CB3C41D_0 = shot_type == 0;
if(l4CB3C41D_0)
{
	instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_1);

	instance_destroy();
}