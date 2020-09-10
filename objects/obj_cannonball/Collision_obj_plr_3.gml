instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_1);

instance_destroy();

with(obj_plr_3) var l2218847A_0 = plr_3_alive == 1;
if(l2218847A_0)
{
	instance_create_layer(x + 0, y + 0, "Instances", obj_body);
}