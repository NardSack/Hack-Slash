//ai stuff
switch (current_state)
{
	case enemy_states.IDLE:
		check_for_player();
		if path_index != -1 {current_state = enemy_states.MOVE} //if no longer idle
		enemy_anim();
	break;
	
	case enemy_states.MOVE:
		check_for_player();
		check_facing();
		if path_index == -1 {current_state = enemy_states.IDLE} //if no longer moving
		enemy_anim();
	break;
	
	case enemy_states.ATTACK:
		enemy_anim();
	break;
}

//damage
event_inherited();