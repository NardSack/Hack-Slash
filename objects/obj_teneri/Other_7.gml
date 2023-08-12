if !instance_exists(obj_pauser)
{
switch (current_state)
	{
		case enemy_states.DEAD:
			image_index = image_number - 1;
			image_speed = 0;
			instance_destroy();
		break;
		
		case enemy_states.ATTACK:
			current_state = enemy_states.IDLE;
		break;
	}
}























// Inherit the parent event
event_inherited();

