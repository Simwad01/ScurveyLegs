instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_1);

instance_destroy();

with(obj_plr_1) var l7586738F_0 = plr_1_alive == 1;
if(l7586738F_0)
{
	instance_create_layer(x + 0, y + 0, "Instances", obj_body);
}