if instance_exists(obj_pauser)
{
	image_speed = 0;
}
else
{
	image_speed = 1;
//receive damage
get_damaged( obj_damage_enemy );
//depth
depth = -bbox_bottom;

//death
if hp <= 0
	{
		current_state = enemy_states.DEAD;
		hp = 0;
		image_index = 0;
	}

	switch (current_state)
	{
		case enemy_states.DEAD:
			instance_destroy();
		break;
	}
}