instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_1);

instance_destroy();

with(obj_plr_2) var l403E28E1_0 = plr_2_alive == 1;
if(l403E28E1_0)
{
	instance_create_layer(x + 0, y + 0, "Instances", obj_body);
}