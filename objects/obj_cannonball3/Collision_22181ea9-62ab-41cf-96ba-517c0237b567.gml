instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_1);

instance_destroy();

with(obj_plr_4) var l076C5D95_0 = plr_4_alive == 1;
if(l076C5D95_0)
{
	instance_create_layer(x + 0, y + 0, "Instances", obj_body);
}