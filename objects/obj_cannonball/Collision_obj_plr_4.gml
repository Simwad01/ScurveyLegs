instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_1);

instance_destroy();

if(obj_plr_4.plr_4_alive == 1)
{
	instance_create_layer(x + 0, y + 0, "Instances", obj_body);
}